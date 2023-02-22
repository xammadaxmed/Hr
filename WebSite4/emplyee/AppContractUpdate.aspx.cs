using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
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
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string st = "Update EmpContract SET EmpDateOfJoining='" + this.txtEmpDateOfJoining.Text + "', EmpRegularisationDate='" + this.txtEmpRegularizationDate.Text + "', EmpCurrentContractStart='" + this.txtEmpContractStartDate.Text + "', EmpCurrentContractEnd='" + this.txtEmpContractEndDate.Text + "',EmpDueDateOfNextIncrement='" + this.txtEmpDateOfNextIncrement.Text + "' WHERE  EmpID='" + DropDownList1.SelectedValue.ToString() + "'";
        
        this.lblMessage.Visible = true;
        this.lblMessage.Text = "Record Updated";

         this.lblMessage.Visible = true;
        this.txtEmpContractEndDate.Text = "";
        this.txtEmpContractStartDate.Text = "";
        this.txtEmpDateOfJoining.Text = "";
        this.txtEmpDateOfNextIncrement.Text = "";
        this.txtEmpRegularizationDate.Text = "";
        this.lblMessage.Text = "Record Updated";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string st = "select * from Emp_Contract  where EmpID='" + DropDownList1.SelectedValue.ToString() + "'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        this.txtEmpContractEndDate.Text = dt.Rows[0][5].ToString();
        this.txtEmpContractStartDate.Text = dt.Rows[0][4].ToString();
        this.txtEmpDateOfJoining.Text =dt.Rows[0][2].ToString();
        this.txtEmpDateOfNextIncrement.Text = dt.Rows[0][6].ToString();
        this.txtEmpRegularizationDate.Text = dt.Rows[0][3].ToString();

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
          string strDelete = " Delete from Emp_Contract where EmpID = '" +DropDownList1.SelectedValue.ToString() + "'";
       
        this.lblMessage.Visible = true;


        try
        {
            dbconnect.add(strDelete);

            lblMessage.Text = "<b> Record Deleted</b><br>";
        }

        catch (Exception sq)
        {

            lblMessage.Text = "ERROR: Could not delete reocrd";

        }
        this.lblMessage.Visible = true;
        this.txtEmpContractEndDate.Text = "";
        this.txtEmpContractStartDate.Text = "";
        this.txtEmpDateOfJoining.Text = "";
        this.txtEmpDateOfNextIncrement.Text = "";
        this.txtEmpRegularizationDate.Text = "";
        this.lblMessage.Text = "Record Deleted";
    }
}