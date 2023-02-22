using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EMPLOYEEVIEW_EmpAppraisalStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myConnection = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
        SqlDataAdapter myAdapter = new SqlDataAdapter("select * from EmpAppraisal04 where EmdID = '" + Convert.ToString(Session["Login"]) + "' ", myConnection);
        DataSet myDataSet = new DataSet();
        myAdapter.Fill(myDataSet, "UserCheck");
        if (myDataSet.Tables["UserCheck"].Rows.Count == 0)
        {

            this.lblMessage1.Visible = true;
            this.lblMessage1Status.Text = "No Action Still Taken on Your Appraisal Form by Your Supervisor.";

        }
        else
        {
            this.lblMessage1.Text = "Action Taken on Your Appraisal Form By Your Supervisor.";
            this.lblMessage1Status.Visible = true;
        }


        SqlConnection myConnection1 = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
        SqlDataAdapter myAdapter1 = new SqlDataAdapter("select * from EmpAppraisalRector where EmpID = '" + Convert.ToString(Session["Login"]) + "' ", myConnection1);
        DataSet myDataSet1 = new DataSet();
        myAdapter1.Fill(myDataSet1, "UserCheck");
        if (myDataSet1.Tables["UserCheck"].Rows.Count == 0)
        {

            this.lblMessage2.Visible = true;
            this.lblMessage2Status.Text = "No Action Still Taken on Your Appraisal Form by Committee/Rector.";

        }
        else
        {
            this.lblMessage2.Text = "Action Taken on Your Appraisal Form By Committee/Rector.";
            this.lblMessage2Status.Visible = true;
        }
    }
}