using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;
using System.Web.Script.Serialization;
using MODEL;
using BLL;
public partial class AjaxTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Write("fds");
    }
    [WebMethod]
    public static string sayHi()
    {
        JavaScriptSerializer js = new JavaScriptSerializer();
        Dictionary<string, string> dic = new Dictionary<string, string> { };
        dic.Add("11", "123");
        dic.Add("22", "456");
        LoginManager lg = new LoginManager();
        string json = js.Serialize(lg.LoginCheck("123","123456"));
        return json;
    }
}