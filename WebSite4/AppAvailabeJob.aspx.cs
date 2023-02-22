using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppAvailabeJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    public void BindGrid()
    {
        string qu = "select * from Job ";
        DataTable dt = new DataTable();
        dt = dbconnect.show(qu);
     
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}