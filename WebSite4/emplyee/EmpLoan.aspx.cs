using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpLoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == "")
            Response.Redirect("~/Home.aspx");
       
        bind();
    }
    protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
    {
        string st = "Select EmpFName,EmpID from forname where DeptID = '" + ddlDepartment.SelectedValue.ToString() + "'";
          DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        this.ddlEmployeeID.DataSource = dt;
        this.ddlEmployeeID.DataTextField = "EmpFName";
        this.ddlEmployeeID.DataValueField = "EmpID";
        this.ddlEmployeeID.DataBind();
    }
    void bind()
    {
        string st = "select * from EmpLoan Order by EmpID";
    DataTable dt = new DataTable();
    dt = dbconnect.show(st);
    GridView1.DataSource = dt;
    GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Calendar1.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Calendar2.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtIssueDate.Text = Calendar1.SelectedDate.ToShortDateString();
        this.Calendar1.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtReturnDate.Text = Calendar2.SelectedDate.ToShortDateString();
        this.Calendar2.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         string st="insert into EmpLoan Values ('" + ddlEmployeeID.SelectedValue.ToString() + "','" + this.ddlDepartment.SelectedItem.ToString() + "','" + this.txtAmount.Text + "','" + this.txtIssueDate.Text + "','" + this.txtReturnDate.Text + "')";
         dbconnect.add(st);
        this.lblMessage.Visible = true;
        this.lblMessage.Text = "Information Submitted";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string qu = "Update EmpExtraDuties SET  EmpDepartment ='"+ddlDepartment.SelectedItem.ToString()+"', EmpAmount='" + this.txtAmount.Text + "',EmpIssueDate='" + this.txtIssueDate.Text + "',EmpReturnDate='" + this.txtReturnDate.Text + "' WHERE   id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.txtAmount.Text = "";
        this.txtIssueDate.Text = "";
        this.txtReturnDate.Text = "";
        bind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string qu = "delete from EmpLoan where id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.txtAmount.Text = "";
        this.txtIssueDate.Text = "";
        this.txtReturnDate.Text = "";
        bind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtAmount.Text=GridView1.SelectedRow.Cells[4].Text;
            this.txtIssueDate.Text=GridView1.SelectedRow.Cells[5].Text;
            this.txtReturnDate.Text = GridView1.SelectedRow.Cells[6].Text;
    }
}