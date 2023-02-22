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
        string st="insert into Des Values ('" + this.txtDeptName.Text + "')";
        dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        this.txtDeptName.Text = "";
       
        BindGrid();
    }
    public void BindGrid()
    {
        string st = "select *  from Des";
         DataTable dt = new DataTable();
         dt = dbconnect.show(st);
         GridView1.DataSource = dt;
         GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtDeptName.Text = GridView1.SelectedRow.Cells[2].Text;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qu = "Update Des SET PositionDescription='" + this.txtDeptName.Text + "' WHERE  PositionID='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.txtDeptName.Text = "";
        BindGrid();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qu = "delete from Des where PositionID='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.txtDeptName.Text = "";
        BindGrid();
    }
}