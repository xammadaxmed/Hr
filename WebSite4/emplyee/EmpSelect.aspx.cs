using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpSelect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string st = " Select EmpID,EmpFName from EmpData where EmpID='1'";
        //in(   Select    EmpID from Emp_Position where deptID = '" + DropDownList1.SelectedValue.ToString()+ "')";
         DataTable dt = new DataTable();
         dt = dbconnect.show(st);
        
          //Session["User"] = this.ddlEmployeeID.SelectedValue;
        //this.lblMessage.Text=Convert.ToString(Session["User"]);

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        Session["id"] = this.ddlEmployeeID.SelectedValue;
        this.lblMessage.Text = Convert.ToString(Session["User"]);

        string st = "select EmpFName,EmpMName,EmpLName from EmpData where EmpID = '" + this.ddlEmployeeID.SelectedValue.ToString() + "'";
        DataTable dt = new DataTable(); ;
        dt = dbconnect.show(st);
        this.EmpFName.Text = dt.Rows[0]["EmpFName"].ToString();
        this.EmpMName.Text = dt.Rows[0]["EmpMName"].ToString();
        this.EmpLName.Text = dt.Rows[0]["EmpLName"].ToString();
        this.EmpName.Text = this.EmpFName.Text + " " + this.EmpMName.Text + " " + this.EmpLName.Text;
        this.lblEmpID.Visible = true;
        this.lblEmpName.Visible = true;
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string st = "Select EmpID from Emp_Position where DeptID = '"+DropDownList1.SelectedValue.ToString()+"'";
        //in(   Select    EmpID from Emp_Position where deptID = '" + DropDownList1.SelectedValue.ToString()+ "')";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        this.ddlEmployeeID.DataSource = dt;
        this.ddlEmployeeID.DataTextField = "EmpID";
        this.ddlEmployeeID.DataValueField= "EmpID";
        this.ddlEmployeeID.DataBind();

    }
}