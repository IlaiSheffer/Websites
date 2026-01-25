using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הרשמה : System.Web.UI.Page
{
    public string fullName, email, age, Prefix, phoneNumber, radio1, checkCities, textarea1, update, password, st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            radio1 = Request.Form["radio1"];
            fullName = Request.Form["fullname"];
            email = Request.Form["EMAIL"];
            Prefix = Request.Form["Prefix"];
            phoneNumber = Request.Form["phoneNumber"];
            update = Request.Form["radio2"];
            password = Request.Form["password"];


            string sqlSelect =
            "Select * from tUsers Where email = " + "N'" + email + "'";

            bool userExists = MyAdoHelper.IsExist(sqlSelect);


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
