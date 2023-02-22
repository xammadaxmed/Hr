using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppPreviousJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    public void BindGrid()
    {
       string st="select * from Job ";
       DataTable dt = new DataTable();
       dt = dbconnect.show(st);
        dbgMyGrid.DataSource = dt;
        dbgMyGrid.DataBind();
    }
}