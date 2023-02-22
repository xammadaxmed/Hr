﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session["id"] = "";
        Session["Login"] = "";
        Session.Remove("username");
        Session.Remove("id");
        Session.Remove("Login");
        Session.RemoveAll();
        Session.Abandon();
        Session.Clear();

        System.Web.Security.FormsAuthentication.SignOut();

        Response.Redirect("~/Home.aspx");
    }
}