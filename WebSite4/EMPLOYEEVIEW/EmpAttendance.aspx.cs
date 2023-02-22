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
using System.Net;

public partial class EMPLOYEEVIEW_EmpAttendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTimeIn_Click(object sender, EventArgs e)
    {
        this.lblEmpTimeIn.Text = DateTime.Now.ToShortTimeString();
        this.lblEmpDate.Text = DateTime.Now.Date.ToShortDateString();
        this.btnTimeOut.Visible = true;
        this.btnTimeIn.Visible = false;
        string a = "09:00 AM";



        if (Convert.ToDateTime(this.lblEmpTimeIn.Text) > Convert.ToDateTime(a))
        {
            this.lbltrack.Visible = true;
            this.lbltrack.Text = "<font color=red>" + "late arrival" + "</font>";

        }
        else
        {
            this.lbltrack.Visible = true;
            this.lbltrack.Text = "<font color=green>" + "Arrived Earlier" + "</font>";
        }
    }
    protected void btnTimeOut_Click(object sender, EventArgs e)
    {
        this.lblEmpTimeOut.Text = DateTime.Now.ToShortTimeString();
        this.btnTimeOut.Visible = false;
        string st =Convert.ToString(( Convert.ToDateTime(lblEmpTimeOut.Text)).Subtract(Convert.ToDateTime(lblEmpTimeIn.Text)));

        SqlConnection myConnection = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
        SqlCommand myCommand = new SqlCommand("insert into Emp_Attendance Values ('" + Convert.ToString(Session["Login"]) + "','" + this.lblEmpDate.Text + "','" + this.lblEmpTimeIn.Text + "','" + this.lblEmpTimeOut.Text + "','"+st+"')", myConnection);
        myConnection.Open();
        myCommand.ExecuteNonQuery();
        myConnection.Close();




        SqlDataAdapter mySqlda = new SqlDataAdapter("SELECT LEFT(CONVERT(VARCHAR,CAST(' " + this.lblEmpTimeOut.Text + "' AS DATETIME)-CAST('" + this.lblEmpTimeIn.Text + "' AS DATETIME), 108),5)", myConnection);
        DataSet myds = new DataSet();
        mySqlda.Fill(myds, "Emp_Attendance");

        dbgMyGrid.DataSource = myds.Tables["Emp_Attendance"].DefaultView;

        dbgMyGrid.DataBind();
        this.dbgMyGrid.Visible = true;


        test.Text = myds.Tables[0].Rows[0][0].ToString();
    }
    public string IpAddress()
    {

        string hostName = Dns.GetHostName();
        Console.WriteLine("Local hostname: {0}", hostName);
        IPHostEntry myself = Dns.GetHostByName(hostName);
        foreach (IPAddress address in myself.AddressList)
        {
            Console.WriteLine("IP Address: {0}", address.ToString());
            this.Label5.Text = address.ToString();
        }

        this.Label2.Text = this.Label5.Text.Substring(0, 7);







        //string strIpAddress;
        //strIpAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        //if (strIpAddress == null)
        //{
        //	strIpAddress = Request.ServerVariables["REMOTE_ADDR"];
        //	//this.Label1.Visible=true;
        //	this.Label1.Text="remote";
        //}
        //this.lblmessage.Text="Your IP Address is: "+ strIpAddress;
        //this.Label2.Text= strIpAddress.Substring(0,5);

        if (this.Label3.Text == this.Label2.Text)
        {
            this.Label4.Visible = true;
            this.Label4.Text = "You are With in Campus";
            this.lblmessage.Text = "Your IP Address is: ";

        }
        else
        {
            this.btnTimeIn.Visible = false;
            this.Label4.Visible = true;
            this.Label4.Text = "You are Outside Campus, Can't Mark Attendance";
            this.lblmessage.Text = "Your IP Address is: ";
        }
        //return strIpAddress;
        return hostName;
    }
}