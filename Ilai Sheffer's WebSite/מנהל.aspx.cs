using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Images_מנהל : System.Web.UI.Page
{
    public string stusers  ="";
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Page.IsPostBack) {
            string name = Request.Form["fullname"];
            string wannado = Request.Form["radio1"];
            string sql = "Select * from tUsers WHERE " + "fullname LIKE N'%" + name + "%' AND " + "whatWannaDo LIKE N'%" + wannado + "%'"; 

        DataTable dt = MyAdoHelper .ExecuteDataTable(sql);
        if (dt.Rows.Count == 0)
        {
            stusers = "אין נתונים";
        }
        else
        {

            stusers = "<table border='1' style='border-collapse:collapse; width:100%; font-size:24px; text-align:center'>";
            stusers += "<tr>";
            stusers += "<td>שם מלא</td>";
            stusers += "<td>אימייל</td>";
            stusers += "<td>סיסמה</td>";
            stusers += "<td>קידומת לפני מספר הטלפון</td>";
            stusers += "<td> מספר טלפון</td>";
            stusers += "<td>מה רוצה לעשות באתר</td>";
            stusers += "<td>עדכונים</td>";
            stusers += "</tr>";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                stusers += "<tr>";
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    stusers += "<td style='border: 3px solid black'>";
                    stusers += dt.Rows[i][j];
                    stusers += "</td>";
                }
                stusers += "</tr>";
            }
            stusers += "</table>";
        }
       // }
    }
}