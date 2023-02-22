using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpHistroy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlEmpDepartment_SelectedIndexChanged(object sender, EventArgs e)
    {
        string st = "select username,EmpID from forid where deptID='"+ddlEmpDepartment.SelectedValue.ToString()+"'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(st);

        ddlEmployeeID.DataTextField = "username";
        ddlEmployeeID.DataValueField = "EmpID";
        ddlEmployeeID.DataSource = dt;
        this.ddlEmployeeID.DataBind();
    }
    protected void ddlEmployeeID_SelectedIndexChanged(object sender, EventArgs e)
    {
        string st = "select Grade,EmpDate from history where EmpID='"+ddlEmployeeID.SelectedValue.ToString()+"'";
            DataTable dt = new DataTable();
        dt = dbconnect.show(st);
        dbgMyGrid.DataSource = dt;
        dbgMyGrid.DataBind();
    }
}