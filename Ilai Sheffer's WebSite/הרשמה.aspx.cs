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
        if (Page.IsPostBack) // בדיקה האם הטופס נשלח
        {
            // קבלת נתונים מהטופס
            string radio1 = Request.Form["radio1"];
            string fullName = Request.Form["fullname"];
            string email = Request.Form["EMAIL"];
            string Prefix = Request.Form["Prefix"];
            string phoneNumber = Request.Form["phoneNumber"];
            string update = Request.Form["radio2"];
            string password = Request.Form["password"];

            // בדיקה האם האימייל כבר קיים במסד הנתונים
            string sqlSelect =
            "Select * from tUsers Where email = " + "N'" + email + "'";

            bool userExists = MyAdoHelper.IsExist(sqlSelect);

            /*  
                // בדיקה האם האימייל הוא "manger" — כנראה ניסיון לבדוק אימייל מנהל
                if (email == "manger")
                {
                    st = "האיימיל הנתון תפוס על ידי המערכת";
                }
            */

            if (!userExists) // אם המשתמש לא קיים — מוסיפים אותו
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

                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert); // הכנסת המשתמש למסד
                Response.Redirect("כניסה.aspx"); // מעבר לדף כניסה
            }
            else
            {
                st = "האיימיל הנתון כבר רשום במערכת"; // הודעה אם האימייל כבר קיים
            }
        }
    }
}

/*<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>*/