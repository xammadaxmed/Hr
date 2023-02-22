using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient; 

public partial class AppExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string qu = "insert into AppProExp(AppID,AppJobTitle,AppFrom,AppTo,AppContactNo,AppOrganization,AppMajorResponsibilities) Values ('" + Convert.ToString(Session["id"]) + "','" + this.txtJobTitle.Text + "','" + this.txtAppFrom.Text + "','" + this.txtAppTo.Text + "','" + this.txtAppContract.Text + "','" + this.txtAppOrg.Text + "','" + this.txtAppResp.Text + "')";
        dbconnect.add(qu);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        this.txtAppContract.Text = "";
        this.txtAppFrom.Text = "";
        this.txtAppOrg.Text = "";
        this.txtAppResp.Text = "";
        this.txtAppTo.Text = "";
        this.txtJobTitle.Text = "";
        bind();
    }
    void bind()
    {
        string qu = "SELECT *FROM  AppProExp where AppID='"+Session["id"]+"'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(qu);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       this.txtJobTitle.Text= GridView1.SelectedRow.Cells[3].Text;
        this.txtAppFrom.Text = GridView1.SelectedRow.Cells[4].Text;
             this.txtAppTo.Text= GridView1.SelectedRow.Cells[5].Text;
                 this.txtAppContract.Text= GridView1.SelectedRow.Cells[6].Text;
        this.txtAppOrg.Text = GridView1.SelectedRow.Cells[7].Text;
        this.txtAppResp.Text = GridView1.SelectedRow.Cells[8].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qu = "Update AppProExp SET AppJobTitle='" + this.txtJobTitle.Text + "', AppFrom='" + this.txtAppFrom.Text + "', AppTo='" + this.txtAppTo.Text + "', AppContractNo='" + this.txtAppContract.Text + "', AppOrganization='" + this.txtAppOrg.Text + "', AppMajorResp='" + this.txtAppResp.Text + "' WHERE AppJobTitle='" + this.txtAppResp.Text + "' and AppID='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        bind();
        this.txtAppContract.Text = "";
        this.txtAppFrom.Text = "";
        this.txtAppOrg.Text = "";
        this.txtAppResp.Text = "";
        this.txtAppTo.Text = "";
        this.txtJobTitle.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qu = "delete from AppProExp where ID='"+GridView1.SelectedRow.Cells[1].Text+"'";
        dbconnect.add(qu);
        bind();
        this.txtAppContract.Text = "";
        this.txtAppFrom.Text = "";
        this.txtAppOrg.Text = "";
        this.txtAppResp.Text = "";
        this.txtAppTo.Text = "";
        this.txtJobTitle.Text = "";
    }
}