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
using System.Net.Mail;

public partial class AppShortlisted : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
          
            string st="Select DISTINCT dDate from AppShortListed ";
            DataTable dt = new DataTable();
            dt = dbconnect.show(st);

            this.ddlDate.DataSource = dt;
            this.ddlDate.DataTextField = "dDate";
            //this.ddlDegree.DataTextField="AppPassword";
            this.ddlDate.DataBind();

        }

        
        //BindGrid();
    }



    public void BindGrid()
    {

        
        string st="Select * from AppShortListed where dDate='" + this.ddlDate.SelectedValue + "' ";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
       dbgMyGrid.DataSource = dt;
        dbgMyGrid.DataBind();



    }

    


    






    private void btnSubmit_Click(object sender, System.EventArgs e)
    {
        
       string st="Update AppShortListed set Status='" + this.rblSelection.SelectedValue + "' WHERE  AppID='" + this.lblBCValues.Text + "'";
    dbconnect.add(st);
        try
        {
            


            BindGrid();


        }
        catch (Exception excep)
        {

            this.txtEmailMessage.Text = "";
            this.txtEmailSubject.Text = "";
            this.lblEmailTo.Text = "";
            this.lblStatus.Visible = true;
            this.lblStatus.Text = "Mail Not Send. Try to Send Again";

        }

    }

    private void btnNewMessage_Click(object sender, System.EventArgs e)
    {

    }



    void DisplayBoundColumnValues(Object sender, DataGridCommandEventArgs e)
    {




        

    }
    protected void dbgMyGrid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGrid();
    }
    protected void dbgMyGrid_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string bc1 = dbgMyGrid.SelectedRow.Cells[1].Text;
        string bc2 = dbgMyGrid.SelectedRow.Cells[5].Text;

        //this.lblBCValues.Visible=true;
        lblBCValues.Text = bc1;
        lbl2.Text = bc2;
        string st = "Select *  from apdata where AppID='" + dbgMyGrid.SelectedRow.Cells[1].Text + "'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);

        //lblBCValues.Text = bc1 + "  <p>"+  bc2 + "<p><hr><p>";
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

        lblFNameSR.Text = dt.Rows[0]["AppFName"].ToString();
        lblMNameSR.Text = dt.Rows[0]["AppMName"].ToString();
        lblLNameSR.Text = dt.Rows[0]["AppLName"].ToString();
        lblHPhoneSR.Text = dt.Rows[0]["AppHPhone"].ToString();
        lblCellSR.Text = dt.Rows[0]["AppCPhone"].ToString();
        lblNICSR.Text = dt.Rows[0]["AppNIC"].ToString();
        lblEmailSR.Text = dt.Rows[0]["AppEmailID"].ToString();
        this.lblEmailTo.Text = this.lblEmailSR.Text;
    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        
        string st = "Update AppShortListed set Status='" + this.rblSelection.SelectedValue + "' WHERE  id='" +dbgMyGrid.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(st);
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("tosifabbbas321@gmail.com");
            mail.To.Add(lblEmailTo.Text);
            mail.Subject = txtEmailSubject.Text;
            mail.Body = txtEmailMessage.Text;


            btnSubmit.Visible = false;
            this.lblStatus.Visible = true;
            this.lblStatus.Text = "Message Sent";


            SmtpServer.Port = 587;
            
                SmtpServer.Credentials = new System.Net.NetworkCredential("tosifabbas321@gmail.com", "touseefabbas321");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
           
            ////////
               
                 
            BindGrid();


        }
        catch (Exception excep)
        {

            this.txtEmailMessage.Text = "";
            this.txtEmailSubject.Text = "";
            this.lblEmailTo.Text = "";
            this.lblStatus.Visible = true;
            this.lblStatus.Text = "Mail Not Send. Try to Send Again";

        }
    }
}