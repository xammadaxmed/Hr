using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpExtraDuties : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    void BindGrid()
    {
        string st = "select * from EmpExtraDuties";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string  st="insert into EmpExtraDuties Values ('" +DropDownList1.SelectedValue.ToString()+ "','" + this.txtExtraDuties.Text + "')";
        dbconnect.add(st);
        this.lblMessage.Visible = true;
        this.lblMessage.Text = "Information Submitted";
        BindGrid();
        this.txtExtraDuties.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qu = "Update EmpExtraDuties SET ExtraDuties='" + this.txtExtraDuties.Text + "' WHERE   id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.txtExtraDuties.Text = "";
        BindGrid();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtExtraDuties.Text=GridView1.SelectedRow.Cells[3].Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qu = "delete from EmpExtraDuties where id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.txtExtraDuties.Text = "";
        BindGrid();
    }
}