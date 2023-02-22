using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplyee_EmpAppraisal02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    int rbl1pk = 0;
    int rbl2pk = 0;
    int rbl3pk = 0;
    int rbl4pk = 0;
    int rbl5pk = 0;
    int rbl1qt = 0;
    int rbl2qt = 0;
    int rbl3qt = 0;
    int rbl4qt = 0;
    int rbl5qt = 0;
    int rbl1pd = 0;
    int rbl2pd = 0;
    int rbl3pd = 0;
    int rbl4pd = 0;
    int rbl5pd = 0;
    int rbl1po = 0;
    int rbl2po = 0;
    int rbl3po = 0;
    int rbl4po = 0;
    int rbl5po = 0;
    int rbl1wh = 0;
    int rbl2wh = 0;
    int rbl3wh = 0;
    int rbl4wh = 0;
    int rbl5wh = 0;





    public void btnSum_Click(object sender, System.EventArgs e)
    {
        this.lblOutstandingSum.Text = "Label";
        //radio button list 1 rbl1
        if (rbl1.SelectedIndex == 0)
        {
            this.lblOutstandingSum.Text = "YOu selected Outstsnding";
            rbl1pk = 5;
        }

        if (rbl2.SelectedIndex == 0)
        {
            this.lblOutstandingSum.Text = "YOu selected Outstsnding";
            rbl2pk = 5;
        }

        if (rbl3.SelectedIndex == 0)
        {
            this.lblOutstandingSum.Text = "YOu selected Outstsnding";
            rbl3pk = 5;
        }

        if (rbl4.SelectedIndex == 0)
        {
            this.lblOutstandingSum.Text = "YOu selected Outstsnding";
            rbl4pk = 5;
        }
        if (rbl5.SelectedIndex == 0)
        {
            this.lblOutstandingSum.Text = "YOu selected Outstsnding";
            rbl5pk = 5;
        }
        int b = rbl1pk + rbl2pk + rbl3pk + rbl4pk + rbl5pk;
        this.lblOutstandingSum.Text = b.ToString();

        //end of rbl1

        //start of rbl2

        if (rbl1.SelectedIndex == 1)
        {
            this.lblVeryGoodSum.Text = "YOu selected Outstsnding";
            rbl1qt = 4;
        }
        if (rbl2.SelectedIndex == 1)
        {
            this.lblVeryGoodSum.Text = "YOu selected Outstsnding";
            rbl2qt = 4;
        }
        if (rbl3.SelectedIndex == 1)
        {
            this.lblVeryGoodSum.Text = "YOu selected Outstsnding";
            rbl3qt = 4;
        }
        if (rbl4.SelectedIndex == 1)
        {
            this.lblVeryGoodSum.Text = "YOu selected Outstsnding";
            rbl4qt = 4;
        }
        if (rbl5.SelectedIndex == 1)
        {
            this.lblVeryGoodSum.Text = "YOu selected Outstsnding";
            rbl5qt = 4;
        }
        int c = rbl1qt + rbl2qt + rbl3qt + rbl4qt + rbl5qt;
        this.lblVeryGoodSum.Text = c.ToString();
        //end of rbl2


        //start of rbl3
        //lblGoodSum


        if (rbl1.SelectedIndex == 2)
        {
            this.lblGoodSum.Text = "YOu selected Outstsnding";
            rbl1pd = 3;
        }
        if (rbl2.SelectedIndex == 2)
        {
            this.lblGoodSum.Text = "YOu selected Outstsnding";
            rbl2pd = 3;
        }
        if (rbl3.SelectedIndex == 2)
        {
            this.lblGoodSum.Text = "YOu selected Outstsnding";
            rbl3pd = 3;
        }
        if (rbl4.SelectedIndex == 2)
        {
            this.lblGoodSum.Text = "YOu selected Outstsnding";
            rbl4pd = 3;
        }
        if (rbl5.SelectedIndex == 2)
        {
            this.lblGoodSum.Text = "YOu selected Outstsnding";
            rbl5pd = 3;
        }
        int d = rbl1pd + rbl2pd + rbl3pd + rbl4pd + rbl5pd;
        this.lblGoodSum.Text = d.ToString();

        //end of rbl3


        //start of rbl4
        if (rbl1.SelectedIndex == 3)
        {
            this.lblAverageSum.Text = "YOu selected Outstsnding";
            rbl1po = 2;
        }
        if (rbl2.SelectedIndex == 3)
        {
            this.lblAverageSum.Text = "YOu selected Outstsnding";
            rbl2po = 2;
        }
        if (rbl3.SelectedIndex == 3)
        {
            this.lblAverageSum.Text = "YOu selected Outstsnding";
            rbl3po = 2;
        }
        if (rbl4.SelectedIndex == 3)
        {
            this.lblAverageSum.Text = "YOu selected Outstsnding";
            rbl4po = 2;
        }
        if (rbl5.SelectedIndex == 3)
        {
            this.lblAverageSum.Text = "YOu selected Outstsnding";
            rbl5po = 2;
        }
        int f = rbl1po + rbl2po + rbl3po + rbl4po + rbl5po;
        this.lblAverageSum.Text = f.ToString();
        //lblAverageSum
        //end of rbl4


        //start of rbl5
        //lblBelowAverage
        if (rbl1.SelectedIndex == 4)
        {
            this.lblBelowAverage.Text = "YOu selected Outstsnding";
            rbl1wh = 1;
        }
        if (rbl2.SelectedIndex == 4)
        {
            this.lblBelowAverage.Text = "YOu selected Outstsnding";
            rbl2wh = 1;
        }
        if (rbl3.SelectedIndex == 4)
        {
            this.lblBelowAverage.Text = "YOu selected Outstsnding";
            rbl3wh = 1;
        }
        if (rbl4.SelectedIndex == 4)
        {
            this.lblBelowAverage.Text = "YOu selected Outstsnding";
            rbl4wh = 1;
        }
        if (rbl5.SelectedIndex == 4)
        {
            this.lblBelowAverage.Text = "YOu selected Outstsnding";
            rbl5wh = 1;
        }
        int g = rbl1wh + rbl2wh + rbl3wh + rbl4wh + rbl5wh;
        this.lblBelowAverage.Text = g.ToString();
        //end of rbl5


        int a = Convert.ToInt32(rbl5.SelectedValue.ToString()) + Convert.ToInt32(rbl4.SelectedValue.ToString()) + Convert.ToInt32(rbl3.SelectedValue.ToString()) + Convert.ToInt32(rbl2.SelectedValue.ToString()) + Convert.ToInt32(rbl1.SelectedValue.ToString());
        this.lblScoreB.Text = a.ToString();
        this.lblDate.Text = DateTime.Now.Date.ToShortDateString();
    }

    public void btnSubmit_Click(object sender, System.EventArgs e)
    {
         string st="insert into EmpAppraisal02 Values ('" + Convert.ToString(Session["id"]) + "','" + this.rbl1.SelectedItem + "','" + this.rbl2.SelectedItem + "','" + this.rbl3.SelectedItem + "','" + this.rbl4.SelectedItem + "','" + this.rbl5.SelectedItem + "','" +"admin" + "','" + this.lblDate.Text + "','" + this.lblOutstandingSum.Text + "','" + this.lblVeryGoodSum.Text + "','" + this.lblGoodSum.Text + "','" + this.lblAverageSum.Text + "','" + this.lblBelowAverage.Text + "','" + this.lblScoreB.Text + "')";
         dbconnect.add(st);
        this.lblMessage.Text = "Your Information Has been Successfully Submitted.";
        this.lblMessage.Visible = true;
    }
}