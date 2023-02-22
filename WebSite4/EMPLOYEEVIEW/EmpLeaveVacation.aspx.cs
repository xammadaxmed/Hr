using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EMPLOYEEVIEW_EmpLeaveVacation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    protected void btnEmpApplicationDate_Click(object sender, EventArgs e)
    {
        this.Calendar1.Visible = true;
    }
    protected void btnEmpStartDate_Click(object sender, EventArgs e)
    {
        this.Calendar2.Visible = true;
    }
    protected void btnEmpEndDate_Click(object sender, EventArgs e)
    {
        this.Calendar3.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtEmpApplicationDate.Text = Calendar1.SelectedDate.ToShortDateString();
        this.Calendar1.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtEmpStartDate.Text = Calendar2.SelectedDate.ToShortDateString();
        this.Calendar2.Visible = false;
    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        txtEmpEndDate.Text = Calendar3.SelectedDate.ToShortDateString();
        this.Calendar3.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        string st = "insert into Emp_Leave_Vacation  Values ('" + Convert.ToString(Session["Login"]) + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList2.SelectedValue.ToString() + "','" + this.ddlEmpLeaveType.SelectedValue.ToString() + "','" + this.txtEmpStartDate.Text + "','" + this.txtEmpEndDate.Text + "','" + this.txtEmpApplicationDate.Text + "')";
       dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        BindGrid();
        this.txtEmpEndDate.Text = "";
        this.txtEmpStartDate.Text = "";
        this.txtEmpApplicationDate.Text = "";

    }

    public void BindGrid()
    {
         string st="select * from Emp_Leave_Vacation where EmpID='"+Session["Login"].ToString()+"'";
       DataTable dt=new DataTable();
        dt=dbconnect.show(st);
        
        GridView1.DataSource =dt ;

        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st = "update Emp_Leave_Vacation set EmpPayGrade='" + DropDownList1.SelectedValue.ToString() + "',PositionID='" + DropDownList2.SelectedValue.ToString() + "',EmpLeaveType='"+this.ddlEmpLeaveType.SelectedValue.ToString()+"',EmpStartDate='"+this.txtEmpStartDate.Text+"',EmpEndDate='"+this.txtEmpEndDate.Text+"',EmpDate='"+this.txtEmpApplicationDate.Text+"'  where id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(st);
        BindGrid();
        this.txtEmpEndDate.Text = "";
        this.txtEmpStartDate.Text = "";
        this.txtEmpApplicationDate.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string st = "delete from Emp_Leave_Vacation  where id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(st);
        this.txtEmpEndDate.Text = "";
        this.txtEmpStartDate.Text = "";
        this.txtEmpApplicationDate.Text = "";
        BindGrid();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {
         this.txtEmpStartDate.Text=GridView1.SelectedRow.Cells[6].Text;
        this.txtEmpEndDate.Text = GridView1.SelectedRow.Cells[7].Text;
        this.txtEmpApplicationDate.Text = GridView1.SelectedRow.Cells[8].Text;

    }
}