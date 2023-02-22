using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Net.Mail;
using System.Net;
using System.Web.UI.WebControls;

public partial class AppForInterview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    public void BindGrid()
    {

          string st="Select * from AppShortListed where Status='Selected' ";

          DataTable dt = new DataTable();
          dt = dbconnect.show(st);
        GridView1.DataSource = dt;
          GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string bc1 = GridView1.SelectedRow.Cells[1].Text;
        string bc2 = GridView1.SelectedRow.Cells[5].Text;
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
        //this.lblBCValues.Visible=true;
        lblBCValues.Text = bc1;
        lbl2.Text = bc2;
        string st = "Select *  from apdata where AppID='" + GridView1.SelectedRow.Cells[2].Text + "'";
          DataTable dt = new DataTable();
          dt = dbconnect.show(st);

        //lblBCValues.Text = bc1 + "  <p>"+  bc2 + "<p><hr><p>";

        lblFNameSR.Text = dt.Rows[0]["AppFName"].ToString();
        lblMNameSR.Text =dt.Rows[0]["AppMName"].ToString();
        lblLNameSR.Text =dt.Rows[0]["AppLName"].ToString();
        lblHPhoneSR.Text =dt.Rows[0]["AppHPhone"].ToString();
        lblCellSR.Text = dt.Rows[0]["AppCPhone"].ToString();
        lblNICSR.Text = dt.Rows[0]["AppNIC"].ToString();
        lblEmailSR.Text = dt.Rows[0]["AppEmailID"].ToString();
        this.lblEmailTo.Text = this.lblEmailSR.Text;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        


        string st = "Update AppShortListed SET Status='" + this.rblSelection.SelectedValue + "' WHERE  id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        dbconnect.add(st);

        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("tosifabbas321@gmail.com");
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