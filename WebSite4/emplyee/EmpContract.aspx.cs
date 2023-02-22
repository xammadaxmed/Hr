using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpContract : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void Calendar1_SelectionChanged(object sender, System.EventArgs e)
    {

    }

    private void Calendar2_SelectionChanged(object sender, System.EventArgs e)
    {


    }

    private void Calendar3_SelectionChanged(object sender, System.EventArgs e)
    {
        txtEmpContractStartDate.Text = Calendar3.SelectedDate.ToShortDateString();
        this.Calendar3.Visible = false;
    }

    private void Calendar4_SelectionChanged(object sender, System.EventArgs e)
    {
        txtEmpContractEndDate.Text = Calendar4.SelectedDate.ToShortDateString();
        this.Calendar4.Visible = false;
    }

    private void Calendar5_SelectionChanged(object sender, System.EventArgs e)
    {
        txtEmpDateOfNextIncrement.Text = Calendar5.SelectedDate.ToShortDateString();
    }

    private void btnCalendar3_Click(object sender, System.EventArgs e)
    {
        this.Calendar3.Visible = true;
    }

    private void btnCalendar4_Click(object sender, System.EventArgs e)
    {
        this.Calendar4.Visible = true;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        this.Calendar5.Visible = false;


        string st = "insert into Emp_Contract  Values ('" + DropDownList1.SelectedValue.ToString() + "','" + this.txtEmpDateOfJoining.Text + "','" + this.txtEmpRegularizationDate.Text + "','" + this.txtEmpContractStartDate.Text + "','" + this.txtEmpContractEndDate.Text + "','" + this.txtEmpDateOfNextIncrement.Text + "')";
        dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        this.txtEmpContractEndDate.Text = "";
        this.txtEmpContractStartDate.Text = "";
        this.txtEmpDateOfJoining.Text = "";
        this.txtEmpDateOfNextIncrement.Text = "";
        this.txtEmpRegularizationDate.Text = "";

    }


    private void btnCalender2_Click(object sender, System.EventArgs e)
    {


    }

    private void btnCalendar5_Click(object sender, System.EventArgs e)
    {
        this.Calendar5.Visible = true;
    }
    protected void btnCalender_Click1(object sender, EventArgs e)
    {
        this.Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        txtEmpDateOfJoining.Text = Calendar1.SelectedDate.ToShortDateString();
        this.Calendar1.Visible = false;
    }
    protected void btnCalender2_Click1(object sender, EventArgs e)
    {
        this.Calendar2.Visible = true;

    }
    protected void btnCalendar3_Click1(object sender, EventArgs e)
    {
        this.Calendar3.Visible = true;

    }
    protected void btnCalendar4_Click1(object sender, EventArgs e)
    {
        this.Calendar4.Visible = true;
    }
    protected void btnCalendar5_Click1(object sender, EventArgs e)
    {
        this.Calendar5.Visible = true;
    }
    protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
    {
        txtEmpRegularizationDate.Text = Calendar2.SelectedDate.ToShortDateString();
        this.Calendar2.Visible = false;
    }
    protected void Calendar3_SelectionChanged1(object sender, EventArgs e)
    {
        txtEmpContractStartDate.Text = Calendar3.SelectedDate.ToShortDateString();
        this.Calendar3.Visible = false;
    }
    protected void Calendar4_SelectionChanged1(object sender, EventArgs e)
    {
        txtEmpContractEndDate.Text = Calendar4.SelectedDate.ToShortDateString();
        this.Calendar4.Visible = false;
    }
    protected void Calendar5_SelectionChanged1(object sender, EventArgs e)
    {
        txtEmpDateOfNextIncrement.Text = Calendar5.SelectedDate.ToShortDateString();
        this.Calendar5.Visible = false;
    }
}