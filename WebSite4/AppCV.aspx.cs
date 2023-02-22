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

public partial class AppCV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

 private void btnOk_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("testing.aspx");
        }

 private void btnUpload_Click(object sender, System.EventArgs e)
 {

     SqlConnection myConnection = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
     


    
 }}
    }
