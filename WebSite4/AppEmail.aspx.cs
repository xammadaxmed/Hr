using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class AppEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void buttonSend_Click(object sender, EventArgs e)
    {
        
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("mohsanshah@gmail.com");
            mail.To.Add(textTo.Text);
            mail.Subject = textSubject.Text;
            mail.Body = textMessage.Text;





            SmtpServer.Port = 587;

            SmtpServer.Credentials = new System.Net.NetworkCredential("mohsanshah@gmail.com", "069m");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
        


    }
}