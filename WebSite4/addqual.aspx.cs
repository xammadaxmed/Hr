using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addqual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        this.txtAppUniversity.Text = GridView1.SelectedRow.Cells[4].Text;
        this.txtAppMajor.Text =GridView1.SelectedRow.Cells[6].Text;
        this.txtAppCompletedIn.Text = GridView1.SelectedRow.Cells[5].Text;
        
    }
    void bind()
    {
        string qu = "SELECT *FROM  AppQualification where AppID='" + Session["id"] + "'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(qu);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string qu="insert into AppQualification(AppID,AppDegree,AppUniversity,AppCompletedIn,AppMajor,AppDivision) Values ('" + Convert.ToString(Session["id"]) + "','" + this.ddlAppDegree.SelectedValue + "','" + this.txtAppUniversity.Text + "','" + this.txtAppCompletedIn.Text + "','" + this.txtAppMajor.Text + "','" + this.ddlAppDivision.SelectedValue + "')";
        dbconnect.add(qu);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        this.txtAppCompletedIn.Text = "";
        this.txtAppMajor.Text = "";
        this.txtAppUniversity.Text = "";
        bind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qu = "Update AppQualification SET AppDegree='" + this.ddlAppDegree.SelectedValue + "', AppUniversity='" + this.txtAppUniversity.Text + "', AppCompletedIn='" + this.txtAppCompletedIn.Text + "', AppMajor='" + this.txtAppMajor.Text + "', AppDivision='" + this.ddlAppDivision.SelectedValue + "' WHERE  id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        bind();
     
        this.txtAppCompletedIn.Text = "";
        this.txtAppMajor.Text = "";
        this.txtAppUniversity.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qu = "delete from AppQualification where id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(qu);
        bind();
        this.txtAppCompletedIn.Text = "";
        this.txtAppMajor.Text = "";
        this.txtAppUniversity.Text = "";
    }
}