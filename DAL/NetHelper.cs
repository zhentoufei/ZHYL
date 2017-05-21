using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Web.Configuration;
using MODEL;
using System.Threading;
using System.Net;
using System.Net.Sockets;

namespace DAL
{
    public class NetHelper
    {

        NetInfo netInfo = null;
        static Socket serverSocket = null;
        private static byte[] result = null;
        public NetHelper()
        {
            netInfo = new NetInfo();
            result = new byte[1024 * 1024];
        }
        /// <summary>
        /// 从web.config里面获取IP进而Port信息
        /// </summary>
        /// <returns>网络IP和端口信息</returns>
        public NetInfo GetNetInfo()
        {
            netInfo.IpAddress = WebConfigurationManager.AppSettings["IP"].ToString();
            netInfo.Port = Int32.Parse(WebConfigurationManager.AppSettings["Port"].ToString());
            return netInfo;
        }
        /// <summary>
        /// 打开网站的监听端口，开始监听端口传过来的数据
        /// </summary>
        /// <param name="netInfo">网络信息，包括端口号和IP地址</param>
        /// <param name="myThread">线程</param>
        public void StartListener(NetInfo netInfo, Thread myThread)
        {
            IPAddress ip = IPAddress.Parse(netInfo.IpAddress);
            int port = netInfo.Port;
            serverSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            serverSocket.Bind(new IPEndPoint(ip, port));  //绑定IP地址：端口  
            serverSocket.Listen(10);    //设定最多10个排队连接请求  
            Console.WriteLine("启动监听{0}成功", serverSocket.LocalEndPoint.ToString());
            //通过Clientsoket发送数据  
            myThread = new Thread(ListenClientConnect);
            myThread.Start();
        }
        private static void ListenClientConnect()
        {
            while (true)
            {
                Socket clientSocket = serverSocket.Accept();
                clientSocket.Send(Encoding.ASCII.GetBytes("Server Say Hello"));
                Thread receiveThread = new Thread(ReceiveMessage);
                receiveThread.Start(clientSocket);
            }
        }
        
        private static void ReceiveMessage(object clientSocket)
        {
            Socket myClientSocket = (Socket)clientSocket;
            while (true)
            {
                try
                {
                    //通过clientSocket接收数据  
                    int receiveNumber = myClientSocket.Receive(result);
                    Console.WriteLine("接收客户端{0}消息{1}", myClientSocket.RemoteEndPoint.ToString(), Encoding.ASCII.GetString(result, 0, receiveNumber));
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    Console.WriteLine("客户端{0}已经断开连接！", myClientSocket.RemoteEndPoint.ToString());
                    myClientSocket.Shutdown(SocketShutdown.Both);
                    myClientSocket.Close();
                    break;
                }
            }
        }
    }
}
