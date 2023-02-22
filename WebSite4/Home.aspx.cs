using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        

            string qu = "select * from Applogin  where username='" + this.txtAppID.Text + "' and pass'" + TextBox1.Text + "'";
            DataTable dt = new DataTable();
            dt = dbconnect.show(qu); 
         
            if (dt.Rows.Count == 0)
            {
                this.lblMessage.Text = "ID Does not Exist or Password is Wrong!!! Please Enter correct ID and Password.!";
                this.lblMessage.Visible = true;
                this.txtAppID.Text = "";
                TextBox1.Text = "";
            }

            else
            {
                Session["Login"] = this.txtAppID.Text;
                Response.Redirect("testing.aspx");
            }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qu = "select * from Applogin  where username='" + this.txtAppID.Text + "' and pass='" + TextBox1.Text + "'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(qu);

        if (dt.Rows.Count == 0)
        {
            this.lblMessage.Text = "ID Does not Exist or Password is Wrong!!! Please Enter correct ID and Password.!";
            this.lblMessage.Visible = true;
            this.txtAppID.Text = "";
            TextBox1.Text = "";
        }

        else
        {
            Session["Login"] = this.txtAppID.Text;
            Session["id"]=dt.Rows[0][0].ToString();
            Response.Redirect("testing.aspx");
        }
    }
}