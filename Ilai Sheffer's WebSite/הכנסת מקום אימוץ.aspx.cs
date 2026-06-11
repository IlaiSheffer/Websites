using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הכנסת_מקום_אימוץ : System.Web.UI.Page
{
    public string st = ""; // משתנה להצגת הודעה למשתמש (למשל אם המקום כבר קיים)

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) // בדיקה האם הדף נטען בעקבות שליחת טופס
        {
            // קבלת הערכים שנשלחו מהטופס
            string Adoptionplacename = Request.Form["Adoptionplacename"];
            //string animalsforadoption = Request.Form["animalsforadoption"]; // שורה לא בשימוש
            string Prefix = Request.Form["Prefix"]; // כרגע לא בשימוש כי ה־select בהערה
            string phoneNumber = Request.Form["phoneNumber"];
            string address = Request.Form["address"];
            string pets = Request.Form["pets"]; // אם נבחרו כמה חיות, יתקבל רק ערך אחד
            string info = Request.Form["info"];

            // שאילתת בדיקה האם מקום האימוץ כבר קיים במסד הנתונים
            string sqlSelect =
            "Select * from Adoptionplaces Where Adoptionplacename = " + "N'" + Adoptionplacename + "'";

            bool userExists = MyAdoHelper.IsExist(sqlSelect); // בדיקה האם התוצאה קיימת

            if (!userExists) // אם המקום לא קיים — מוסיפים אותו
            {
                // בניית שאילתת INSERT להוספת מקום אימוץ חדש
                string sqlInsert =
                    "INSERT INTO Adoptionplaces (Adoptionplacename," +
                                 "placephonenumber," +
                                 "Adoptioncenteraddress,pets,moreinfo) VALUES (" +
                    "N'" + Adoptionplacename + "'," +
                    "'" + phoneNumber + "'," +
                    "N'" + address + "'," +
                    "N'" + pets + "'," +
                    "N'" + info + "'" +
                    ")";

                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert); // ביצוע השאילתה במסד הנתונים

                Response.Redirect("שליפת מקום אימוץ.aspx"); // מעבר לדף הצגת המקומות
            }
            else
            {
                st = "המקום הנתון כבר רשום במערכת"; // הודעה למשתמש אם המקום כבר קיים
            }
        }
    }
}