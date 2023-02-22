using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnAppSubmit_Click(object sender, EventArgs e)
    {
       string    query=" select appid from Applogin where username='" +Session["Login"]+"'";
        DataTable dt1=new DataTable();
        dt1=dbconnect.show(query);
        string qu = "select * from Apdata where AppID = '" +dt1.Rows[0][0].ToString()+"' ";
       DataTable dt=new DataTable();
        dt=dbconnect.show(qu);
        if (dt.Rows.Count == 0)
        {
            string t = "insert into Apdata(AppID,AppFName,AppMName,AppLName,AppHobbies,AppInterest,AppHPhone,AppCPhone,AppDOB,AppNIC,AppEmailID) Values ('" + dt1.Rows[0][0].ToString() + "','" + this.txtAppFName.Text + "','" + this.txtAppMNAme.Text + "','" + this.txtAppLName.Text + "','" + this.txtAppHobbies.Text + "','" + this.txtAppInterest.Text + "','" + this.txtAppResPhone.Text + "','" + this.txtAppCellPhone.Text + "','" + this.txtAppDOB.Text + "','" + this.txtAppNIC.Text + "','" + this.txtAppEmail.Text + "')";
            dbconnect.add(t);
            this.lblMessage.Visible = true;
            this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
            this.lblMessage.Visible = true;
            this.txtAppCellPhone.Text = "";
            this.txtAppDOB.Text = "";
            this.txtAppEmail.Text = "";
            this.txtAppFName.Text = "";
            this.txtAppHobbies.Text = "";
            this.txtAppInterest.Text = "";
            this.txtAppLName.Text = "";
            this.txtAppMNAme.Text = "";
            this.txtAppNIC.Text = "";
            this.txtAppResPhone.Text = "";



            //sending e-mail to applicant

            

        }
        else
        {
            this.lblMessage.Text = "ID Related Information Already Exists, Enter Correct ID or For Record Updation Click Update";
            this.lblMessage.Visible = true;
        } 
    }
}