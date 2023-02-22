using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpAppraisalSummery0102 : System.Web.UI.Page
{
    int t;
    protected void Page_Load(object sender, EventArgs e)
    {

    
    
			if(Page.IsPostBack)
			{




                SqlConnection myConnection9 = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
				SqlDataAdapter mySqlda9 = new SqlDataAdapter("Select ColumnScore01,ColumnScore02,ColumnScore03,ColumnScore04,ColumnScore05 from EmpAppraisal01 where EmpID = '"+Convert.ToString(Session["id"])+"'",myConnection9);
				DataSet myds = new DataSet();
				mySqlda9.Fill(myds,"EmpAppraisal01");


				SqlDataAdapter mySqlda10 = new SqlDataAdapter("Select ColumnScore1,ColumnScore2,ColumnScore3,ColumnScore4,ColumnScore5 from EmpAppraisal02 where EmpID = '"+Convert.ToString(Session["id"])+"' ",myConnection9);
				DataSet myds10 = new DataSet();
				mySqlda10.Fill(myds10,"EmpAppraisal02");
				



				int a= Convert.ToInt32(myds.Tables[0].Rows[0]["ColumnScore01"].ToString());
				//int a=Convert.ToInt32(ColumnScore01)+Convert.ToInt32(ColumnScore1);

				int b=Convert.ToInt32(myds10.Tables[0].Rows[0]["ColumnScore1"].ToString());

				int c=a+b;



				this.lblOutstanding.Text=c.ToString();

				int f= Convert.ToInt32(myds.Tables[0].Rows[0]["ColumnScore02"].ToString());
				//int a=Convert.ToInt32(ColumnScore01)+Convert.ToInt32(ColumnScore1);

				int g=Convert.ToInt32(myds10.Tables[0].Rows[0]["ColumnScore2"].ToString());

				int h=f+g;

				this.lblVeryGood.Text=h.ToString();




				int i= Convert.ToInt32(myds.Tables[0].Rows[0]["ColumnScore03"].ToString());
				//int a=Convert.ToInt32(ColumnScore01)+Convert.ToInt32(ColumnScore1);

				int j=Convert.ToInt32(myds10.Tables[0].Rows[0]["ColumnScore3"].ToString());

				int k=i+j;

				this.lblGood.Text=k.ToString();




				int l= Convert.ToInt32(myds.Tables[0].Rows[0]["ColumnScore04"].ToString());
				//int a=Convert.ToInt32(ColumnScore01)+Convert.ToInt32(ColumnScore1);

				int m=Convert.ToInt32(myds10.Tables[0].Rows[0]["ColumnScore4"].ToString());

				int n=l+m;

				this.lblAverage.Text=n.ToString();




				int o= Convert.ToInt32(myds.Tables[0].Rows[0]["ColumnScore05"].ToString());
				//int a=Convert.ToInt32(ColumnScore01)+Convert.ToInt32(ColumnScore1);

				int p=Convert.ToInt32(myds10.Tables[0].Rows[0]["ColumnScore5"].ToString());

				int q=o+p;

				this.lblBelowAverage.Text=q.ToString();
				
				int w= Convert.ToInt32(c)+Convert.ToInt32(h)+Convert.ToInt32(k)+Convert.ToInt32(n)+Convert.ToInt32(q);
				this.lblSum.Text=w.ToString();


				Convert.ToInt32(w);

				
				
				if(w >=1 && w<=24)
				{
					this.lblSum.Text="<font color=#ff0033>"+w+"</font>";
				}
				else if(w>=25 && w<=29)
				{
					this.lblSum.Text="<font color=#ff6633>"+w+"</font>";
				}

				else if(w>=30 && w<=34)
				{
					this.lblSum.Text="<font color=#666699>"+w+"</font>";
				}

				else if(w>=35 && w<=44)
				{
					this.lblSum.Text="<font color=#009999>"+w+"</font>";
				}
				else if(w>=45 && w<=50)
				{
                  t  =Convert.ToInt32( this.lblSum.Text);
                    this.lblSum.Text="<font color=#00cc00>"+w+"</font>";
				}

								  


			}// Put user code to initialize the page here
		}

		

		public void btnSubmit_Click(object sender, System.EventArgs e)
		{
          
            this.lblDate.Text=DateTime.Now.Date.ToShortDateString();
			string st="insert into EmpAppraisal0102Summary(EmpID,Outstanding,VeryGood,Good,Average,BelowAverage,TotalSum,Supervisor,Date) Values ('"+Convert.ToString(Session["id"])+"','"+this.lblOutstanding.Text+"','"+this.lblVeryGood.Text+"','"+this.lblGood.Text+"','"+this.lblAverage.Text+"','"+this.lblBelowAverage.Text+"','"+t+"','"+"admin"+"','"+this.lblDate.Text+"')";
			dbconnect.add(st); 
			this.lblMessage.Visible=true;
			this.lblMessage.Text="Information Submitted Successfully";
		}

}