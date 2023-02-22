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
    
    }
    
    protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
    {
        string st = "Select EmpID from Emp_Position where DeptID = '" + this.ddlDepartment.SelectedValue + "'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        this.ddlEmployeeID.DataSource = dt;
        this.ddlEmployeeID.DataTextField = "EmpID";
        this.ddlEmployeeID.DataBind();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string st = "Update Emp_Qualification SET EmpUniversity='" + this.txtEmpUniversity.Text + "', EmpCompletedIn='" + this.ddlEmpCompletedIn.SelectedValue + "', EmpMajor='" + this.txtEmpMajor.Text + "',EmpDivision='" + this.ddlEmpDivision.SelectedValue + "'WHERE  id='" +  GridView1.SelectedRow.Cells[1].Text + "' ";
         dbconnect.add(st);
        this.lblMessage.Visible = true;
        this.lblMessage.Text = "Record Updated";

        this.txtEmpUniversity.Text = "";
        this.txtEmpMajor.Text = "";
        this.lblMessage.Visible = true;
        this.lblMessage.Text = "Record Updated";
    }
    protected void ddlEmployeeID_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGrid(ddlEmployeeID.SelectedValue.ToString());
    }
    public void BindGrid(string qu)
    {
        string st = "select *  from Emp_Qualification where EmpID='"+qu+"'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtEmpUniversity.Text = GridView1.SelectedRow.Cells[4].Text;
        this.txtEmpMajor.Text = GridView1.SelectedRow.Cells[6].Text;
    }
    private void btnDelete_Click(object sender, System.EventArgs e)
    {
        string strDelete = " Delete from Emp_Qualification where id = '" + GridView1.SelectedRow.Cells[1].Text + "'";


        try
        {

            dbconnect.add(strDelete);
            lblMessage.Text = "<b> Record Deleted</b><br>";
        }

        catch (Exception ex)
        {

            lblMessage.Text = "ERROR: Could not delete reocrd";

        }
        this.txtEmpUniversity.Text = "";
        this.txtEmpMajor.Text = "";
    }
}