using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpLeaveVacationDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
   string st="insert into Leave_Vacation Values ('"+ this.txtVacationName.Text + "','" + this.txtVacationDays.Text + "')";
        dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        BindGrid();
    }
    public void BindGrid()
    {
        string st = "select *  from Leave_Vacation";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtVacationName.Text = GridView1.SelectedRow.Cells[2].Text;
        this.txtVacationDays.Text = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st = "Update Leave_Vacation SET LeaveVacationzType='" + txtVacationName.Text + "' , Leave_VacationDesc='" + this.txtVacationDays.Text + "' WHERE  leaveId='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(st);
        this.lblMessage.Visible = true;
        this.lblMessage.Text = "Record Updated";
        txtVacationName.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string st = "delete from Leave_Vacation where leaveId='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Delete.";
        BindGrid();
        txtVacationName.Text = "";
    }
}