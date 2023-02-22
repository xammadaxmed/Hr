using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppRecord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Session["login"] == "")
            Response.Redirect("~/Home.aspx");
        if (!IsPostBack)
            BindGrid();
    }
    public void BindGrid()
    {
        string qu="Select AppID as 'ID',AppFName as 'First Name',AppMName as 'Middle Name',AppLName as 'Last Name',AppHPhone as 'Tel No',AppCPhone as 'Cell Number',AppNIC as 'NIC',AppEmailID as 'Email' from apdata  where AppID = '" + this.txtAppID.Text + "'";
        DataTable dt=new DataTable();
        dt=dbconnect.show(qu);
        dbgMyGrid.DataSource = dt;
        dbgMyGrid.DataBind();
    }
    protected void SelectApplicant(object sender, EventArgs e)
    {
        BindGrid();
    }
}