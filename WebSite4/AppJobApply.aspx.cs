using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppJobApply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

         string st="insert into AppJob(AppID,JobID) Values ('" + Convert.ToString(Session["id"]) + "','" + this.ddlJobID.SelectedValue + "')";
        dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        BindGrid();
    }

    public void BindGrid()
    {
        string st="select JobID from AppJob where AppID = '" + Convert.ToString(Session["id"]) + "'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        dbgMyGrid.DataSource = dt;
        dbgMyGrid.DataBind();
    }
}