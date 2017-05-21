using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BLL;
public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
        //LoginCheck();
        Response.Redirect("main.html");
        //Response.Write("<script>alert('用户名或者密码错误')</script>");
    }

    protected void btn_Register_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("main.html");
    }
}