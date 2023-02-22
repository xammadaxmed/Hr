using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAppLogin_Click(object sender, EventArgs e)
    {
       string query ="select * from Applogin where username = '" + this.txtAppID.Text + "'";
       DataTable dt = new DataTable();
        dt=dbconnect.show(query);
        if (dt.Rows.Count == 0)
        {
            string st = "insert into Applogin(username,pass) Values ('" + this.txtAppID.Text + "','" + TextBox1.Text + "')";
            dbconnect.add(st);
           // this.lblMessage.Text = "ID created, Click Home to go Back";
            this.lblMessage.Visible = true;
            this.txtAppID.Text = "";
            
            Response.Redirect("Home.aspx");
        }
        else
        {
            this.lblMessage.Text = "ID Already Exists Try an other ID";
            this.lblMessage.Visible = true;
           Response.Redirect("AppLogin.aspx");
              
        } 

    }
}