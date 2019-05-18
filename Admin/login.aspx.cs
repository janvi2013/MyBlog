using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_login : System.Web.UI.Page
{
    String username;
    String password;
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    public void Login()
    {
        if(txtusername.Text=="admin" && txtpassword.Text=="admin123")
        {
            Response.Redirect("~/Admin/welcomeAdmin.aspx");
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Login();
    }
}