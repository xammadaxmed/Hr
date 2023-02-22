using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for dbconnect
/// </summary>
public class dbconnect
{

    public static void add(string query)
            {
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand();
                con.ConnectionString = "Data Source=.;Initial Catalog=HRM1;Integrated Security=True";
                con.Open();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();

           }

    public static DataTable show(string query)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=.;Initial Catalog=HRM1;Integrated Security=True";
        SqlDataAdapter adt = new SqlDataAdapter(query,con);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        return dt;




    }




	
}