using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace DAL
{
    public class LoginDAO
    {
        private SQLHelper sqlhelper = new SQLHelper();
        public LoginDAO()
        {
            sqlhelper = new SQLHelper();
        }

        public bool LoginCheck(string userName, string userPwd)
        { 
            
            bool res = false;
            DataTable dt = new DataTable();
            string sql = "select * from tb_user where userName = @userName and userPwd= @userPwd ";
            SqlParameter[] paras = new SqlParameter[]{
                new SqlParameter("@userName", userName),
                new SqlParameter("@userPwd", userPwd)
            };
            dt = sqlhelper.ExecuteQuery(sql, paras, CommandType.Text);
            if (dt.Rows.Count > 0)
            {
                res = true;
            }
            return res;
        }
    }
}
