using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EMPLOYEEVIEW_EMPLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Admin")
        {

            string st = "Select * from admin where username = '" + this.txtUserID.Text + "' and pass = '" + this.txtEmpPassword.Value + "'";
            DataTable dt = new DataTable();
            dt = dbconnect.show(st);
            if (dt.Rows.Count == 0)
            {
                this.lblMessage.Text = "ID Does not Exist or Password is Wrong!!! Please Enter correct ID and Password.!";
                this.lblMessage.Visible = true;
                this.txtUserID.Text = "";
                this.txtEmpPassword.Value = "";
            }
            else
            Response.Redirect("~/adminhone.aspx");
        }
        else
        {
            string st = "Select * from EmpLog where username = '" + this.txtUserID.Text + "' and EmpPassword = '" + this.txtEmpPassword.Value + "'";
            DataTable dt1 = new DataTable();
            dt1 = dbconnect.show(st);
            if (dt1.Rows.Count == 0)
            {
                this.lblMessage.Text = "ID Does not Exist or Password is Wrong!!! Please Enter correct ID and Password.!";
                this.lblMessage.Visible = true;
                this.txtUserID.Text = "";
                this.txtEmpPassword.Value = "";
            }

            else
            {
                Session["Login"] = dt1.Rows[0][0].ToString();

                Response.Redirect("~/EMPLOYEEVIEW\\emphome.aspx");
            }
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserID.Text = "";
        txtEmpPassword.Value = "";
    }
}