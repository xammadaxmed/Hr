using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EMPLOYEEVIEW_EmpAppraisal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection myConnection = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
            SqlDataAdapter mySqlda1 = new SqlDataAdapter("Select EmpFName,EmpMName,EmpLName from EmpData where EmpID='" + Convert.ToString(Session["Login"]) + "' ", myConnection);
            SqlDataAdapter mySqlda2 = new SqlDataAdapter("Select deptID,PositionID from Emp_Position where EmpID='" + Convert.ToString(Session["Login"]) + "' ", myConnection);
            SqlDataAdapter mySqlda3 = new SqlDataAdapter("Select EmpCurrentContractStart, EmpCurrentContractEnd from Emp_Contract  where EmpID='" + Convert.ToString(Session["Login"]) + "' ", myConnection);
            DataSet myds1 = new DataSet();
            DataSet myds2 = new DataSet();
            DataSet myds3 = new DataSet();
            mySqlda1.Fill(myds1, "EmpData");
            mySqlda2.Fill(myds2, "Emp_Position");
            mySqlda3.Fill(myds3, "Emp_Contract");
            this.lblEmpFName.Text = myds1.Tables[0].Rows[0]["EmpFName"].ToString();
            this.lblEmpMName.Text = myds1.Tables[0].Rows[0]["EmpMName"].ToString();
            this.lblEmpLName.Text = myds1.Tables[0].Rows[0]["EmpLName"].ToString();
            this.lblEmpDepartment.Text = myds2.Tables[0].Rows[0]["deptID"].ToString();
            this.lblEmpPosition.Text = myds2.Tables[0].Rows[0]["PositionID"].ToString();
            this.lblEmpPositionStartDate.Text = myds3.Tables[0].Rows[0]["EmpCurrentContractStart"].ToString();
            this.lblEmpExpDate.Text = myds3.Tables[0].Rows[0]["EmpCurrentContractEnd"].ToString();
            SqlDataAdapter mySqlda4 = new SqlDataAdapter("Select ExtraDuties from EmpExtraDuties where EmpID='" + Convert.ToString(Session["Login"]) + "' order by 1", myConnection);
            DataSet myds4 = new DataSet();
            mySqlda4.Fill(myds4, "EmpExtraDutie");
            myConnection.Close();
            this.ddlExtraDuties.DataSource = myds4.Tables["EmpExtraDutie"];
            this.ddlExtraDuties.DataTextField = "ExtraDuties";
            this.ddlExtraDuties.DataBind();
            this.lblMessage.Visible = false;

        }// Put user code to initialize the page here
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        this.lblTodayDate.Text = DateTime.Now.Date.ToShortDateString();
        SqlConnection myConnection5 = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
        SqlCommand myCommand5 = new SqlCommand("insert into EmpAppraisal(EmpID,EmpFName,EmpMName,EmpLName,EmpPosition,EmpDepartment,EmpSupervisor,EmpDateOfApptToPost,EmpDateOfExpCurrCont,EmpDateSubmission,EmpExtraDuties) Values ('" + Convert.ToString(Session["Login"]) + "','" + this.lblEmpFName.Text + "','" + this.lblEmpMName.Text + "','" + this.lblEmpLName.Text + "','" + this.lblEmpPosition.Text + "','" + this.lblEmpDepartment.Text + "','" + this.txtEmpSupervisor.Text + "','" + this.lblEmpPositionStartDate.Text + "','" + this.lblEmpExpDate.Text + "','" + this.lblTodayDate.Text + "','" + this.ddlExtraDuties.SelectedValue + "')", myConnection5);
        myConnection5.Open();
        myCommand5.ExecuteNonQuery();
        myConnection5.Close();
        this.lblMessage.Visible = true;
        this.lblMessage.Text = "Information Submitted Successfully";
    }
}