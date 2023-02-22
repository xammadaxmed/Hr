using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpAppraisal04 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        this.lblEmpDate.Text = DateTime.Now.Date.ToShortDateString();
        SqlConnection myConnection = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
        SqlCommand myCommand = new SqlCommand("insert into EmpAppraisal04  Values ('" + Convert.ToString(Session["id"]) + "','" + this.txtEmpJustification.Text + "','" + "admin" + "','" + this.lblEmpDate.Text + "')", myConnection);
        myConnection.Open();
        myCommand.ExecuteNonQuery();
        myConnection.Close();
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
        this.txtEmpJustification.Text = "";
    }
}