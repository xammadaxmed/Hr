using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpPositions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         string st="insert into Emp_Position Values ('" + ddlEmpID.SelectedValue.ToString() + "','" + this.ddlPositionID.SelectedValue.ToString() + "','" + this.ddlEmpDeptID.SelectedValue.ToString() + "','" + this.ddlEmpDesignation.SelectedValue.ToString() + "')";
        string st1="insert into EmpHistory(EmpID,EmpPosition,EmpDate) Values ('" + ddlEmpID.SelectedValue.ToString() + "','" + this.ddlPositionID.SelectedValue.ToString() + "','" + DateTime.Now.ToShortDateString() + "')";
       dbconnect.add(st);
  dbconnect.add(st1);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
    }
}