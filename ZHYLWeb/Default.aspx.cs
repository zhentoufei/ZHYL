using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BLL;
using MODEL;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = new LoginManager().Test().Port.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.html");
    }
}