using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpAppraisal01 : System.Web.UI.Page
{


  public  int rbl1pk = 0;
  public int rbl2pk = 0;
  public  int rbl3pk = 0;
  public int rbl4pk = 0;
  public int rbl5pk = 0;
  public int rbl1qt = 0;
  public int rbl2qt = 0;
  public int rbl3qt = 0;
  public int rbl4qt = 0;
  public int rbl5qt = 0;
  public int rbl1pd = 0;
  public int rbl2pd = 0;
  public int rbl3pd = 0;
  public int rbl4pd = 0;
  public int rbl5pd = 0;
  public int rbl1po = 0;
  public int rbl2po = 0;
  public int rbl3po = 0;
  public int rbl4po = 0;
  public int rbl5po = 0;
  public int rbl1wh = 0;
  public int rbl2wh = 0;
  public int rbl3wh = 0;
  public int rbl4wh = 0;
  public int rbl5wh = 0;
    
    protected void Page_Load(object sender, EventArgs e)
    {

			//this.lblOutstandingSum.Text="Label";// Put user code to initialize the page here
		/*	if(!Page.IsPostBack)
			{
				SqlConnection myConnection4 = new SqlConnection("server=WAHEED;uid=sa;pwd=waheed;database=HRMS_EMPLOYEE");
				SqlDataAdapter mySqlda4 = new SqlDataAdapter("Select DeptID from EmpDepartment order by 1",myConnection4);
				DataSet myds4 = new DataSet();
				mySqlda4.Fill(myds4,"EmpDepartment");
				myConnection4.Close();
				this.ddlDepartment.DataSource = myds4.Tables["EmpDepartment"];
				this.ddlDepartment.DataTextField="DeptID";
				this.ddlDepartment.DataBind();
			}

			if(Page.IsPostBack)
			{
				SqlConnection myConnection8 = new SqlConnection("server=WAHEED;uid=sa;pwd=waheed;database=HRMS_EMPLOYEE");
				SqlDataAdapter mySqlda8 = new SqlDataAdapter("Select EmpID from EmpPosition where DeptID = '"+this.ddlDepartment.SelectedValue+"' order by 1",myConnection8);
				DataSet myds8 = new DataSet();
				mySqlda8.Fill(myds8,"EmpPosition");
				myConnection8.Close();
				this.ddlEmployeeID.DataSource = myds8.Tables["EmpPosition"];
				this.ddlEmployeeID.DataTextField="EmpID";
				this.ddlEmployeeID.DataBind();
			}*/
		}

		




	public void btnSum_Click(object sender, System.EventArgs e)
		{
			
//radio button list 1 rbl1
			if(rbl1.SelectedIndex == 0)
			{
					this.lblOutstandingSum.Text="YOu selected Outstsnding";
					rbl1pk=5;
			}

			if(rbl2.SelectedIndex == 0)
			{				
				this.lblOutstandingSum.Text="YOu selected Outstsnding";
				rbl2pk=5;
			}

			if(rbl3.SelectedIndex == 0)
			{				
				this.lblOutstandingSum.Text="YOu selected Outstsnding";
				rbl3pk=5;
			}

			if(rbl4.SelectedIndex == 0)
			{
				this.lblOutstandingSum.Text="YOu selected Outstsnding";
				rbl4pk=5;
			}
			if(rbl5.SelectedIndex == 0)
			{
				this.lblOutstandingSum.Text="YOu selected Outstsnding";
				rbl5pk=5;
			}
			int b=rbl1pk+rbl2pk+rbl3pk+rbl4pk+rbl5pk;
			this.lblOutstandingSum.Text=b.ToString();

//end of rbl1

			//start of rbl2

			if(rbl1.SelectedIndex == 1)
			{
				this.lblVeryGoodSum.Text="YOu selected Outstsnding";
				rbl1qt=4;
			}
			if(rbl2.SelectedIndex == 1)
			{
				this.lblVeryGoodSum.Text="YOu selected Outstsnding";
				rbl2qt=4;
			}
			if(rbl3.SelectedIndex == 1)
			{
				this.lblVeryGoodSum.Text="YOu selected Outstsnding";
				rbl3qt=4;
			}
			if(rbl4.SelectedIndex == 1)
			{
				this.lblVeryGoodSum.Text="YOu selected Outstsnding";
				rbl4qt=4;
			}
			if(rbl5.SelectedIndex == 1)
			{
				this.lblVeryGoodSum.Text="YOu selected Outstsnding";
				rbl5qt=4;
			}
			int c=rbl1qt+rbl2qt+rbl3qt+rbl4qt+rbl5qt;
			this.lblVeryGoodSum.Text=c.ToString();
			//end of rbl2


//start of rbl3
//lblGoodSum


			if(rbl1.SelectedIndex == 2)
			{
				this.lblGoodSum.Text="YOu selected Outstsnding";
				rbl1pd=3;
			}
			if(rbl2.SelectedIndex == 2)
			{
				this.lblGoodSum.Text="YOu selected Outstsnding";
				rbl2pd=3;
			}
			if(rbl3.SelectedIndex == 2)
			{
				this.lblGoodSum.Text="YOu selected Outstsnding";
				rbl3pd=3;
			}
			if(rbl4.SelectedIndex == 2)
			{
				this.lblGoodSum.Text="YOu selected Outstsnding";
				rbl4pd=3;
			}
			if(rbl5.SelectedIndex == 2)
			{
				this.lblGoodSum.Text="YOu selected Outstsnding";
				rbl5pd=3;
			}
			int d=rbl1pd+rbl2pd+rbl3pd+rbl4pd+rbl5pd;
			this.lblGoodSum.Text=d.ToString();

//end of rbl3


			//start of rbl4
			if(rbl1.SelectedIndex == 3)
			{
				this.lblAverageSum.Text="YOu selected Outstsnding";
				rbl1po=2;
			}
			if(rbl2.SelectedIndex == 3)
			{
				this.lblAverageSum.Text="YOu selected Outstsnding";
				rbl2po=2;
			}
			if(rbl3.SelectedIndex == 3)
			{
				this.lblAverageSum.Text="YOu selected Outstsnding";
				rbl3po=2;
			}
			if(rbl4.SelectedIndex == 3)
			{
				this.lblAverageSum.Text="YOu selected Outstsnding";
				rbl4po=2;
			}
			if(rbl5.SelectedIndex == 3)
			{
				this.lblAverageSum.Text="YOu selected Outstsnding";
				rbl5po=2;
			}
			int f=rbl1po+rbl2po+rbl3po+rbl4po+rbl5po;
			this.lblAverageSum.Text=f.ToString();
			//lblAverageSum
			//end of rbl4


//start of rbl5
			//lblBelowAverage
			if(rbl1.SelectedIndex == 4)
			{
				this.lblBelowAverage.Text="YOu selected Outstsnding";
				rbl1wh=1;
			}
			if(rbl2.SelectedIndex == 4)
			{
				this.lblBelowAverage.Text="YOu selected Outstsnding";
				rbl2wh=1;
			}
			if(rbl3.SelectedIndex == 4)
			{
				this.lblBelowAverage.Text="YOu selected Outstsnding";
				rbl3wh=1;
			}
			if(rbl4.SelectedIndex == 4)
			{
				this.lblBelowAverage.Text="YOu selected Outstsnding";
				rbl4wh=1;
			}
			if(rbl5.SelectedIndex == 4)
			{
				this.lblBelowAverage.Text="YOu selected Outstsnding";
				rbl5wh=1;
			}
			int g=rbl1wh+rbl2wh+rbl3wh+rbl4wh+rbl5wh;
			this.lblBelowAverage.Text=g.ToString();
//end of rbl5
            int a = Convert.ToInt32(rbl5.SelectedValue.ToString()) + Convert.ToInt32(rbl4.SelectedValue.ToString()) + Convert.ToInt32(rbl3.SelectedValue.ToString()) + Convert.ToInt32(rbl2.SelectedValue.ToString()) + Convert.ToInt32(rbl1.SelectedValue.ToString()); 
			this.lblScoreA.Text= a.ToString();
			//this.lblOutstandingSum.Text = this.rbl5.SelectedValue + this.rbl4.SelectedValue + this.rbl3.SelectedValue +this.rbl2.SelectedValue + this.rbl1.SelectedValue; 
			Convert.ToInt32(this.lblOutstandingSum.Text);

			this.lblDate.Text=DateTime.Now.Date.ToShortDateString();
		}

		public void btnSubmit_Click(object sender, System.EventArgs e)
		{
			
            string st="insert into EmpAppraisal01 Values ('" +DropDownList1.SelectedValue.ToString() + "','" + this.rbl1.SelectedItem+ "','" + this.rbl2.SelectedItem+ "','" + this.rbl3.SelectedItem+ "','" + this.rbl4.SelectedItem+ "','" + this.rbl5.SelectedItem+ "','"+"admin"+"','"+this.lblDate.Text+"','"+this.lblOutstandingSum.Text+"','"+this.lblVeryGoodSum.Text+"','"+this.lblGoodSum.Text+"','"+this.lblAverageSum.Text+"','"+this.lblBelowAverage.Text+"','"+this.lblScoreA.Text+"')";
		dbconnect.add(st);
			this.lblMessage.Text ="Your Information Has been Successfully Submitted.";
            Session["id"] = DropDownList1.SelectedValue.ToString();
			this.lblMessage.Visible=true;
		}

		


}
