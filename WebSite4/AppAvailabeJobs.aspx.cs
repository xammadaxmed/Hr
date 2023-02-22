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
public partial class App : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }

    public void BindGrid()
    {
       string qu="select * from Job ";
       DataTable dt = new DataTable();
       dt = dbconnect.show(qu);
        dbgMyGrid.DataSource = dt;
        dbgMyGrid.DataBind();
    }
}