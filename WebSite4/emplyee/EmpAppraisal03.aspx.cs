using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpAppraisal03 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

       

        if (Page.IsPostBack)
        {
            
            if (rbl2.SelectedIndex == 0)
            {
                this.lblHonorariumAmount.Visible = true;
                this.lblHonorariumSt.Visible = true;
                this.TextBox1.Visible = true;
            }

            else if (rbl2.SelectedIndex == 1)
            {
                this.lblHonorariumAmount.Visible = false;
                this.lblHonorariumSt.Visible = false;
                this.TextBox1.Visible = false;
            }

            else if (rbl2.SelectedIndex == 2)
            {
                this.lblHonorariumAmount.Visible = false;
                this.lblHonorariumSt.Visible = false;
                this.TextBox1.Visible = false;
            }


            if (rbl3.SelectedIndex == 0)
            {
                this.lblAdditionalAmount.Visible = true;
                this.lblAdditionalAmountSt.Visible = true;
                this.TextBox2.Visible = true;
            }

            else if (rbl3.SelectedIndex == 1)
            {
                this.lblAdditionalAmount.Visible = false;
                this.lblAdditionalAmountSt.Visible = false;
                this.TextBox2.Visible = false;
            }

            else if (rbl3.SelectedIndex == 2)
            {
                this.lblAdditionalAmount.Visible = false;
                this.lblAdditionalAmountSt.Visible = false;
                this.TextBox2.Visible = false;
            }



        }// Put user code to initialize the page here
        this.lblDate.Text = DateTime.Now.Date.ToShortDateString();
    }

 

    public void btnSubmit_Click(object sender, System.EventArgs e)
    {
        SqlConnection myConnection = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
        SqlCommand myCommand = new SqlCommand("insert into EmpAppraisal03  Values ('" + Convert.ToString(Session["id"]) + "','" + this.rbl1.SelectedItem.ToString() + "','" + this.rbl2.SelectedItem.ToString() + "','" + this.rbl3.SelectedItem.ToString() + "','" + this.rbl4.SelectedItem.ToString() + "','" + this.rbl5.SelectedItem.ToString() + "','" + "admin" + "','" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.lblDate.Text + "')", myConnection);
         myConnection.Open();
        myCommand.ExecuteNonQuery();
        myConnection.Close();
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;

    }
}