using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class שליפת_מקום_אימוץ : System.Web.UI.Page
{
    public string stadp = ""; // כאן תוצג הטבלה או הודעה "אין נתונים"

    protected void Page_Load(object sender, EventArgs e)
    {
        // שאילתת SQL שמביאה את כל המקומות לאימוץ מהטבלה Adoptionplaces
        String sql = "Select [Adoptionplacename],[placephonenumber],[Adoptioncenteraddress],[pets],[moreinfo] " +
                     "from Adoptionplaces";

        // ביצוע השאילתה וקבלת תוצאות בטבלה
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0) // אם אין תוצאות
        {
            stadp = "אין נתונים";
        }
        else
        {
            // בניית טבלת HTML להצגת התוצאות
            stadp = "<table border='1' style='border-collapse:collapse; width:100%; font-size:24px; text-align:center'>";
            stadp += "<tr>";
            stadp += "<td>שם מקום אימוץ</td>";
            stadp += "<td>טלפון מקום אימוץ </td>";
            stadp += "<td>כתובת מקום אימוץ</td>";
            stadp += "<td>חיות לאימוץ</td>";
            stadp += "<td>מידע נוסף </td>";
            stadp += "</tr>";

            // לולאה על כל השורות מהמסד
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                stadp += "<tr>";

                // לולאה על כל העמודות
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    stadp += "<td style='border: 3px solid black'>";
                    stadp += dt.Rows[i][j]; // הכנסת הערך מהמסד לתא
                    stadp += "</td>";
                }

                stadp += "</tr>";
            }

            stadp += "</table>";
        }
    }
}
