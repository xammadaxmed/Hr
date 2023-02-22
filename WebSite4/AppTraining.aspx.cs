using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppTraining : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblTestMessage.Text = "Welcome :: " + Session["Login"];// Put user code to initialize the page here
        BindGrid();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qu = "delete from AppTraining where id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        this.lblMessage.Text = "Your Information Has been Successfully Deleted.";
        this.lblMessage.Visible = true;
        this.txtAppDescription.Text = "";
        this.txtAppInstitute.Text = "";
        this.txtAppTopic.Text = "";
        this.txtAppYear.Text = "";

        BindGrid();
    }
    public void BindGrid()
    {
        string st="select Id, AppTopic,AppYear,AppDescription,AppInstitute from AppTraining where AppID = '" + Convert.ToString(Session["id"]) + "'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        GridView1.DataSource = dt;

        GridView1.DataBind();
    }
    protected void btnAppTraining_Click(object sender, EventArgs e)
    {
       
         string st="insert into AppTraining(AppID,AppTopic,AppYear,AppDescription,AppInstitute) Values ('" + Convert.ToString(Session["id"]) + "','" + this.txtAppTopic.Text + "','" + this.txtAppYear.Text + "','" + this.txtAppDescription.Text + "','" + this.txtAppInstitute.Text + "')";
         dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        this.txtAppDescription.Text = "";
        this.txtAppInstitute.Text = "";
        this.txtAppTopic.Text = "";
        this.txtAppYear.Text = "";
       
        BindGrid();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtAppTopic.Text = GridView1.SelectedRow.Cells[2].Text;
         
            this.txtAppYear.Text= GridView1.SelectedRow.Cells[3].Text;
    this.txtAppDescription.Text    = GridView1.SelectedRow.Cells[4].Text;
    this.txtAppInstitute.Text = GridView1.SelectedRow.Cells[5].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st = "Update AppTraining SET AppTopic='" + this.txtAppTopic.Text + "', AppYear='" + this.txtAppYear.Text + "', AppDescription='" + this.txtAppDescription.Text + "', AppInstitute='" + this.txtAppInstitute.Text + "' WHERE  id='" + GridView1.SelectedRow.Cells[1].Text + "'";
       dbconnect.add(st);
        this.lblMessage.Text = "Record Updated";
        this.lblMessage.Visible = true;
        this.txtAppDescription.Text = "";
        this.txtAppInstitute.Text = "";
        this.txtAppTopic.Text = "";
        this.txtAppYear.Text = "";

        BindGrid();
    }
}