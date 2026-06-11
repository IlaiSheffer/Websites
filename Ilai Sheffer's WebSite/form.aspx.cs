using System;                     // ספרייה בסיסית של .NET
using System.Collections.Generic; // מאפשר שימוש ברשימות ומבנים מתקדמים
using System.Linq;                // מאפשר פעולות LINQ (לא חובה כאן)
using System.Web;                 // ספריות של Web Forms
using System.Web.UI;              // מאפשר עבודה עם דפי ASPX
using System.Web.UI.WebControls;  // מאפשר עבודה עם פקדי שרת

public partial class form : System.Web.UI.Page
{
    // משתנים ציבוריים שמוצגים בדף form.aspx
    public string firstName, email, age, Prefix, phoneNumber, radio1, checkCities, textarea1, password;

    protected void Page_Load(object sender, EventArgs e)
    {
        // בדיקה האם הדף נטען בעקבות שליחה של הטופס (POST)
        if (Page.IsPostBack)
        {
            // קריאת הערכים מהטופס ושמירתם במשתנים
            radio1 = "radio1 = " + Request.Form["radio1"];               // ערך כפתור רדיו
            checkCities = "checkCities = " + Request.Form["checkCities"]; // ערך צ'קבוקס
            textarea1 = "textarea1 = " + Request.Form["textarea1"];       // טקסט חופשי
            firstName = "firstName = " + Request.Form["firstname"];       // שם פרטי
            email = "email = " + Request.Form["EMAIL"];                   // אימייל
            age = "age = " + Request.Form["age"];                         // גיל
            Prefix = "Prefix = " + Request.Form["Prefix"];                // קידומת טלפון
            phoneNumber = "phoneNumber = " + Request.Form["phoneNumber"]; // מספר טלפון
            password = "password = " + Request.Form["password"];          // סיסמה
        }
    }
}
