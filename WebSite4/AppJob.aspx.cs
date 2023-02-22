using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppJob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();

    }
    private void btnSubmit_Click(object sender, System.EventArgs e)
    {
       
    }

    public void BindGrid()
    {
        string qu="select * from Job";
        DataTable dt = new DataTable();
        dt = dbconnect.show(qu) ;
       
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    private void btnDate_Click(object sender, System.EventArgs e)
    {
        this.Calendar1.Visible = true;
    }

    private void Calendar1_SelectionChanged(object sender, System.EventArgs e)
    {
        
    }
    private void InitializeComponent()
    {
        this.btnDate.Click += new System.EventHandler(this.btnDate_Click);
        this.btnSubmit.Click += new System.EventHandler(this.btnSubmit_Click);
        this.Load += new System.EventHandler(this.Page_Load);

    }
    protected void btnDate_Click1(object sender, EventArgs e)
    {
        this.Calendar1.Visible = true;

    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        txtJobDate.Text = Calendar1.SelectedDate.ToShortDateString();
        this.Calendar1.Visible = false;
    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        string qu = "insert into Job(JobTiitle,JobDescription,JobVacancies,JobDate) Values ('" + this.txtJobTitle.Text + "','" + this.txtJobDescription.Text + "','" + this.txtJobvacancies.Text + "','" + this.txtJobDate.Text + "')";
        dbconnect.add(qu);
        this.lblMessage.Text = "Job Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        this.txtJobDate.Text = "";
        this.txtJobDescription.Text = "";

        this.txtJobTitle.Text = "";
        this.txtJobvacancies.Text = "";
        this.Calendar1.Visible = false;
        BindGrid();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtJobTitle.Text = GridView1.SelectedRow.Cells[2].Text;
        this.txtJobDescription.Text  = GridView1.SelectedRow.Cells[3].Text;
        this.txtJobvacancies.Text = GridView1.SelectedRow.Cells[4].Text;
        this.txtJobDate.Text = GridView1.SelectedRow.Cells[5].Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qu = "delete from Job where JobID='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.lblMessage.Visible = true;
        this.txtJobDate.Text = "";
        this.txtJobDescription.Text = "";

        this.txtJobTitle.Text = "";
        this.txtJobvacancies.Text = "";
        this.Calendar1.Visible = false;
        BindGrid();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qu = "Update Job SET JobTiitle='" + this.txtJobTitle.Text + "', JobDescription='" + this.txtJobDescription.Text + "', JobVacancies='" + this.txtJobvacancies.Text + "', JobDate='" + this.txtJobDate.Text + "'WHERE  JobID='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.lblMessage.Visible = true;
        this.txtJobDate.Text = "";
        this.txtJobDescription.Text = "";

        this.txtJobTitle.Text = "";
        this.txtJobvacancies.Text = "";
        this.Calendar1.Visible = false;
        BindGrid();
    }
};