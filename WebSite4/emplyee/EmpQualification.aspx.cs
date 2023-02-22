using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpQualification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlDepartmentID_SelectedIndexChanged(object sender, EventArgs e)
    {
    string st= "Select EmpID from Emp_Position where DeptID = '"+this.ddlDepartmentID.SelectedValue+"'";
    DataTable dt = new DataTable();
    dt = dbconnect.show(st);
				this.ddlEmployeeID.DataSource = dt;
				this.ddlEmployeeID.DataTextField="EmpID";
				this.ddlEmployeeID.DataBind();
    }
    private void btnSubmit_Click(object sender, System.EventArgs e)
    {
         string st="insert into Emp_Qualification(EmpID,EmpDegree,EmpUniversity,EmpCompletedIn,EmpMajor,EmpDivision) Values ('" + Convert.ToString(Session["User"]) + "','" + this.dllEmpDegree.SelectedValue + "','" + this.txtEmpUniversity.Text + "','" + this.ddlEmpCompletedIn.SelectedValue + "','" + this.txtEmpMajor.Text + "','" + this.ddlEmpDivision.SelectedValue + "')";
         dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        this.txtEmpMajor.Text = "";
        this.txtEmpUniversity.Text = "";
    }
}