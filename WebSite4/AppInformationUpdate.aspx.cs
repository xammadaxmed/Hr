using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppInformationUpdate : System.Web.UI.Page
{
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    public void BindGrid()
    {
        string query = " select appid from Applogin where username='" + Session["Login"] + "'";
        DataTable dt1 = new DataTable();
        dt1 = dbconnect.show(query);
        id = dt1.Rows[0][0].ToString();
        string qu = " select AppFName,AppMName,AppLName,AppHobbies,AppInterest,AppHPhone,AppCPhone,AppDOB,AppEmailID from Apdata where AppID = '" + dt1.Rows[0][0].ToString() +"'";
        DataTable dt = new DataTable();
        dt = dbconnect.show(qu);
        dbgMyGrid.DataSource = dt;
        dbgMyGrid.DataBind();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
     string qu= "Update Apdata SET AppFName='" + this.txtFName.Text + "', AppMName='" + this.txtMName.Text + "', AppLName='" + this.txtLName.Text + "', AppHobbies='" + this.txtHobbies.Text + "',AppInterest='" + this.txtInterest.Text + "',AppHPhone='" + this.txtResPhone.Text + "',AppCPhone='" + this.txtCellPhone.Text + "',AppDOB='" + this.txtDOB.Text + "',AppNIC='" + this.txtNIC.Text + "',AppEmailID='" + this.txtEmail.Text + "' WHERE  AppID='" + id + "'";
     dbconnect.add(qu);
        BindGrid();
    }
}