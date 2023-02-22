using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppInformationDelete : System.Web.UI.Page
{
    SqlConnection mySqlConnection;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<center><b><u>Deleting Data</center></b></u>");
         mySqlConnection = new SqlConnection("Data Source=.;Initial Catalog=HRM1;Integrated Security=True");
        if (!IsPostBack)
            BindGrid();
    }

    public void dbgMyGrid_Delete(Object sneder, DataGridCommandEventArgs e)
    {
        string strDelete = " Delete from apdata where AppID = @AppID";
        SqlCommand mySqlCommand = new SqlCommand(strDelete, mySqlConnection);
        mySqlCommand.Parameters.Add(new SqlParameter("@AppID", SqlDbType.Char, 10));
        mySqlCommand.Parameters["@AppID"].Value = dbgMyGrid.DataKeys[(char)e.Item.ItemIndex];
        mySqlConnection.Open();

        try
        {
            mySqlCommand.ExecuteNonQuery();
           
        }

        catch (SqlException)
        {
            
        }

        mySqlConnection.Close();
        BindGrid();
    }

    public void BindGrid()
    {
        SqlDataAdapter mySqlDa = new SqlDataAdapter("Select * from apdata where AppID = '" + Convert.ToString(Session["id"]) + "'", mySqlConnection);
        DataSet myds = new DataSet();
        mySqlDa.Fill(myds, "Applicants");
        dbgMyGrid.DataSource = myds.Tables["Applicants"].DefaultView;
        dbgMyGrid.DataBind();
    }
    protected void dbgMyGrid_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}