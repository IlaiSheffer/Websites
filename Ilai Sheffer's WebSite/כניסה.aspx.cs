using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class כניסה : System.Web.UI.Page
{
    public string st = ""; // משתנה להצגת הודעות שגיאה/מידע למשתמש

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) // בדיקה האם המשתמש לחץ על "שלח"
        {
            string strEmail = Request.Form["EMAIL"];      // קבלת האימייל מהטופס
            string strPassword = Request.Form["password"]; // קבלת הסיסמה מהטופס

            // בדיקה האם זה מנהל (אימייל + סיסמה מיוחדים)
            if (strEmail == "manger" && strPassword == "big boss 123")
            {
                Session["manger"] = "ok";     // סימון שהמשתמש הוא מנהל
                Session["username"] = "מנהל"; // שם שיוצג באתר
                Response.Redirect("מנהל.aspx"); // מעבר לדף מנהל
            }
            else
            {
                // בדיקה במסד הנתונים האם המשתמש קיים
                string sqlSelect =
                    "Select * from tUsers Where email = " + "N'" + strEmail + "' and password = " + "N'" + strPassword + "'";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect); // קבלת התוצאה מהמסד

                if (dt.Rows.Count == 0) // אם אין תוצאות — המשתמש לא קיים
                {
                    Session["guest"] = "ok";       // סימון כאורח
                    Session["username"] = "אורח"; // שם שיוצג באתר
                    st = " אימייל או סיסמה שגויים"; // הודעת שגיאה
                }
                else
                {
                    Session["user"] = "ok"; // סימון כמשתמש רגיל
                    Session["username"] = dt.Rows[0]["fullname"]; // שם המשתמש מהמסד
                    Response.Redirect("דף הבית.aspx"); // מעבר לדף הבית
                }
            }
        }
    }
}