using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string st = "select * from EmpLog where username = '" + this.txtEmpID.Text + "'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);

        if (dt.Rows.Count == 0)
        {
            string qu = "insert into EmpLog Values ('" + this.txtEmpID.Text + "','" + this.txtEmpPassword.Value + "')";
            dbconnect.add(qu);
            string st1 = "select * from EmpLog where username = '" + this.txtEmpID.Text + "'";
            DataTable dt1 = new DataTable();
            dt1 = dbconnect.show(st1);
            string st2 = "insert into  EmpData Values( '" + dt1.Rows[0][0].ToString() + "','" + this.txtEmpFName.Text + "','" + this.txtEmpMName.Text + "','" + this.txtEmpLName.Text + "','" + this.txtEmpNIC.Text + "','" + this.txtEmpDOB.Text + "','" + this.rblEmpGender.SelectedValue + "','" + this.txtEmpMailingAddress.Text + "','" + this.txtEmpCity.Text + "','" + this.txtEmpProvince.Text + "','" + this.ddlEmpCountry.SelectedValue + "','" + this.txtEmpResPhone.Text + "','" + this.txtEmpCellPhone.Text + "','" + this.txtEmpDomicile.Text + "','" + this.txtEmpEmailAddress.Text + "')";
            
            dbconnect.add(st2);
            this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
            this.lblMessage.Visible = true;
            this.txtEmpCellPhone.Text = "";
            this.txtEmpCity.Text = "";
            this.txtEmpDOB.Text = "";
            this.txtEmpDomicile.Text = "";
            this.txtEmpEmailAddress.Text = "";
            this.txtEmpFName.Text = "";
            this.txtEmpLName.Text = "";
            this.txtEmpMailingAddress.Text = "";
            this.txtEmpMName.Text = "";
            this.txtEmpNIC.Text = "";
           
            this.txtEmpProvince.Text = "";
            this.txtEmpResPhone.Text = "";
        }
        else
        {
            this.lblMessage.Text = "ID Related Information Already Exists, Enter Correct ID or For Record Updation Click Update";
            this.lblMessage.Visible = true;
        } 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}