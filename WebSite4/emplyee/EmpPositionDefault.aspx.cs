using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpDepartmentDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
    }
    public void BindGrid()
    {
        string st = "select *  from Position";
         DataTable dt = new DataTable();
         dt = dbconnect.show(st);
         GridView1.DataSource = dt;
         GridView1.DataBind();

    }
   
    
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string st = "Update Position SET Grade='" + this.txtEmpPositionID.Text + "',PositionDescription='" + this.txtEmpDescription.Text + "', PositionSalary='" + this.txtEmpSalary.Text + "', PositionAllowanceAmount='" + this.txtEmpAllowanceAmount.Text + "',PositionVacations='" + this.txtEmpPositionVacation.Text + "',PositionID='"+DropDownList1.SelectedValue.ToString()+"'  WHERE  ID='" + GridView1.SelectedRow.Cells[1].Text + "' ";
        dbconnect.add(st);
        BindGrid();
        this.txtEmpAllowanceAmount.Text = "";
        this.txtEmpAllowanceType.Text = "";
        this.txtEmpDescription.Text = "";
        this.txtEmpPositionID.Text = "";
        this.txtEmpSalary.Text = "";
        this.txtEmpPositionVacation.Text = "";
        this.lblMessage.Text = "Record Updated";
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string st = "delete from Position where ID='"+GridView1.SelectedRow.Cells[1].Text+"'";
        dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Delete.";
        BindGrid();
        this.lblMessage.Visible = true;
        this.txtEmpAllowanceAmount.Text = "";
        this.txtEmpAllowanceType.Text = "";
        this.txtEmpDescription.Text = "";
        this.txtEmpPositionID.Text = "";
        this.txtEmpSalary.Text = "";
        this.txtEmpPositionVacation.Text = "";
    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        string st="insert into Position Values ('"+DropDownList1.SelectedValue.ToString()+"','" + this.txtEmpPositionID.Text + "','" + this.txtEmpDescription.Text + "','" + this.txtEmpSalary.Text + "','" + this.txtEmpAllowanceType.Text + "','" + this.txtEmpAllowanceAmount.Text + "','" + this.txtEmpPositionVacation.Text + "')";
        dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        BindGrid();
        this.lblMessage.Visible = true;
        this.txtEmpAllowanceAmount.Text = "";
        this.txtEmpAllowanceType.Text = "";
        this.txtEmpDescription.Text = "";
        this.txtEmpPositionID.Text = "";
        this.txtEmpSalary.Text = "";
        this.txtEmpPositionVacation.Text = "";

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtEmpPositionID.Text = GridView1.SelectedRow.Cells[3].Text;
        this.txtEmpDescription.Text = GridView1.SelectedRow.Cells[4].Text;
        this.txtEmpSalary.Text = GridView1.SelectedRow.Cells[5].Text;
        this.txtEmpAllowanceType.Text = GridView1.SelectedRow.Cells[6].Text;
        this.txtEmpAllowanceAmount.Text = GridView1.SelectedRow.Cells[7].Text;
        this.txtEmpPositionVacation.Text = GridView1.SelectedRow.Cells[8].Text;

    }
}