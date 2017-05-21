using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BLL;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.html");
        //LoginCheck();
        //LoginCheck();
        //Response.Write("<script>alert('用户名或者密码错误')</script>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("main.html");
    }
    private void LoginCheck()
    {
        LoginManager lm = new LoginManager();
        string userName = Request.Form["username"];
        string userPwd = Request.Form["password"];
        if (lm.LoginCheck(userName, userPwd))
        {
            Response.Redirect("main.html");
        }
    }
}