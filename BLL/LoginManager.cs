using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using DAL;
using MODEL;
namespace BLL
{
    public class LoginManager
    {
        LoginDAO loginDao = null;
        public LoginManager()
        {
            loginDao = new LoginDAO();
        }

        public bool LoginCheck(string userName, string userPwd)
        {
            return loginDao.LoginCheck(userName, userPwd);
        }
        public NetInfo Test()
        {
            return new NetHelper().GetNetInfo();
        }

    }
}
