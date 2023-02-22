using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppShortList : System.Web.UI.Page
{
    public DataView myView;
    protected void Page_Load(object sender, EventArgs e)
    {
        myView = new DataView();
        if (!Page.IsPostBack)
        {
            
            

        }// Put user code to initialize the page here
			
    }
    public void SelectApplicant(Object sender, EventArgs e)
    {
        


        this.Label8.Visible = false;
        this.Label10.Visible = false;
        this.Label11.Visible = false;
        this.Label12.Visible = false;
        this.Label13.Visible = false;
        this.Label1.Visible = false;
        this.Label14.Visible = false;
        this.Label15.Visible = false;
        this.Label9.Visible = false;
        this.lblBCValues.Visible = false;
        this.lblFNameSR.Visible = false;
        this.lblMNameSR.Visible = false;
        this.lblLNameSR.Visible = false;
        this.lblHPhoneSR.Visible = false;
        this.lblCellSR.Visible = false;
        this.lblNICSR.Visible = false;
        this.lblEmailSR.Visible = false;
        this.lbl2.Visible = false;
        this.btnShortList.Visible = false;
        this.lblDate.Text = DateTime.Now.Date.ToShortDateString();


        BindGrid();
    }

    public void BindGrid()
    {
       string qu="Select j.JobID,e.AppID,e.AppDegree,e.AppDivision  from AppQualification e, Job j where J.JobID='" + this.ddlJobID.SelectedValue + "' and e.AppDegree = '" + this.ddlDegree.SelectedValue + "' and e.AppDivision = '" + this.ddlDivision1.SelectedValue + "' ";
       // string qu = "Select *  from AppQualification  where AppDegree = '" + this.ddlDegree.SelectedValue + "' ";
        DataTable dt = new DataTable();
        dt = dbconnect.show(qu);
       GridView1 .DataSource = dt;
       GridView1.DataBind();

    }


    private void btnShortList_Click(object sender, System.EventArgs e)
    {


        
        string qu="insert into AppShortListed(AppID,AppFName,AppMName,AppLName,AppEmail,Date) Values ('" + this.lblBCValues.Text + "','" + this.lblFNameSR.Text + "','" + this.lblMNameSR.Text + "','" + this.lblLNameSR.Text + "','" + this.lblEmailSR.Text + "','" + this.lblDate.Text + "')";
        dbconnect.add(qu);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;

    }




    void DisplayBoundColumnValues(Object sender, DataGridCommandEventArgs e)
    {

       
       

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.Label8.Visible = true;
        this.Label10.Visible = true;
        this.Label11.Visible = true;
        this.Label12.Visible = true;
        this.Label13.Visible = true;
        this.Label1.Visible = true;
        this.Label14.Visible = true;
        this.Label15.Visible = true;
        this.Label9.Visible = true;
        this.lblBCValues.Visible = true;
        this.lblFNameSR.Visible = true;
        this.lblMNameSR.Visible = true;
        this.lblLNameSR.Visible = true;
        this.lblHPhoneSR.Visible = true;
        this.lblCellSR.Visible = true;
        this.lblNICSR.Visible = true;
        this.lblEmailSR.Visible = true;
        this.lbl2.Visible = true;
        this.btnShortList.Visible = true;


        string st = "Select *  from apdata where AppID='" + GridView1.SelectedRow.Cells[2].Text + "'";
        DataTable dt1 = new DataTable();
        dt1 = dbconnect.show(st);
        // Put user code to initialize the page here


        //lblBCValues.Text = bc1 + "  <p>"+  bc2 + "<p><hr><p>";
        string bc1 = GridView1.SelectedRow.Cells[2].Text;
       // string bc2 = e.Item.Cells[3].Text;

        this.lblBCValues.Visible = true;
        lblBCValues.Text = GridView1.SelectedRow.Cells[2].Text;
        lbl2.Text = GridView1.SelectedRow.Cells[3].Text;


        lblFNameSR.Text = dt1.Rows[0]["AppFName"].ToString();
        lblMNameSR.Text = dt1.Rows[0]["AppMName"].ToString();
        lblLNameSR.Text = dt1.Rows[0]["AppLName"].ToString();
        lblHPhoneSR.Text = dt1.Rows[0]["AppHPhone"].ToString();
        lblCellSR.Text = dt1.Rows[0]["AppCPhone"].ToString();
        lblNICSR.Text = dt1.Rows[0]["AppNIC"].ToString();
        lblEmailSR.Text = dt1.Rows[0]["AppEmailID"].ToString();
    }
    protected void btnShortList_Click1(object sender, EventArgs e)
    {
        string qu = "insert into AppShortListed(AppID,AppFName,AppMName,AppLName,AppEmail,dDate) Values ('" + this.lblBCValues.Text + "','" + this.lblFNameSR.Text + "','" + this.lblMNameSR.Text + "','" + this.lblLNameSR.Text + "','" + this.lblEmailSR.Text + "','" + DateTime.Now.Date.ToShortDateString() +"')";
        dbconnect.add(qu);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
    }
}