using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODEL
{
    public class NetInfo
    {
        private string _ipAddress;

        public string IpAddress
        {
            get { return _ipAddress; }
            set { _ipAddress = value; }
        }

        private int _port;

        public int Port
        {
            get { return _port; }
            set { _port = value; }
        }

    }
}
