using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הרשמה : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string radio1 = Request.Form["radio1"];
            string fullName = Request.Form["fullname"];
            string email = Request.Form["EMAIL"];
            string Prefix = Request.Form["Prefix"];
            string phoneNumber = Request.Form["phoneNumber"];
            string update = Request.Form["radio2"];
            string password = Request.Form["password"];


            string sqlSelect =
            "Select * from tUsers Where email = " + "N'" + email + "'";

            bool userExists = MyAdoHelper.IsExist(sqlSelect);

        /*    if (email == "manger")
            {
                st = "האיימיל הנתון תפוס על ידי המערכת";
            }
        */
            if (!userExists)
            {
                string sqlInsert =
                    "INSERT INTO tUsers VALUES (" +
                    "N'" + fullName + "'," +
                    "N'" + email + "'," +
                    "N'" + password + "'," +
                    "N'" + Prefix + "'," +
                    "N'" + phoneNumber + "'," +
                    "N'" + radio1 + "'," +
                    "N'" + update + "'" +
                    ")";
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
                Response.Redirect("כניסה.aspx");
            }
            else
            {
                st = "האיימיל הנתון כבר רשום במערכת";
            }
            
        }
    }
}
/*<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>*/