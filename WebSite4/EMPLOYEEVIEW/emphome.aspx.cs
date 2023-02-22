using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EMPLOYEEVIEW_emphome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         string st="select * from EmpData where EmpID = '" + Convert.ToString(Session["Login"]) + "'  ";
         DataTable dt = new DataTable();
        // Put user code to initialize the page here
         dt = dbconnect.show(st);
        this.lblEmpID.Text = "" + Session["Login"];
        this.lblEmpFName.Text = dt.Rows[0]["EmpFName"].ToString();
        this.lblEmpMName.Text = dt.Rows[0]["EmpMName"].ToString();
        this.lblEmpLName.Text = dt.Rows[0]["EmpLName"].ToString();
        this.lblEmpGender.Text = dt.Rows[0]["EmpGender"].ToString();
        this.lblEmpEmailAddress.Text = dt.Rows[0]["EmpEmail"].ToString();
        this.lblEmpResPhone.Text = dt.Rows[0]["EmpPhone"].ToString();
        this.lblEmpMailingAddress.Text = dt.Rows[0]["EmpAddress"].ToString();
        this.lblEmpProvince.Text = dt.Rows[0]["EmpProvince"].ToString();
        this.lblEmpCountry.Text = dt.Rows[0]["EmpCountry"].ToString();
     
        this.lblEmpCity.Text =dt.Rows[0]["EmpCity"].ToString();
        this.lblNICNo.Text = dt.Rows[0]["EmpNIC"].ToString();





       string qu="select Grade,DeptName  from dept where EmpID='" + Convert.ToString(Session["Login"]) + "' ";
       DataTable dt1= new DataTable();
      dt1 = dbconnect.show(qu);

      //  this.lblEmpPosition.Text = dt1.Rows[0]["Grade"].ToString();
       // this.lblEmpDepartment.Text = dt1.Rows[0]["DeptName"].ToString();



        
        string s="select * from Emp_Contract where EmpID = '" + Convert.ToString(Session["Login"]) + "'  ";
        DataTable dt2 = new DataTable();
        dt2 = dbconnect.show(s);
        this.lblEmpJoiningDate.Text = dt2.Rows[0]["EmpDateOfJoining"].ToString();
        this.lblEmpRegularizationDate.Text = dt2.Rows[0]["EmpRegularisationDate"].ToString();
        this.lblEmpContractStart.Text = dt2.Rows[0]["EmpCurrentContractStart"].ToString();
        this.lblEmpContractEnd.Text = dt2.Rows[0]["EmpCurrentContractEnd"].ToString();
       this.lblEmpNextIncrement.Text = dt2.Rows[0]["EmpDueDateOfNextIncrement"].ToString();

    }
}