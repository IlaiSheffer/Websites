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
    public string stadp = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        String sql = "Select [Adoptionplacename],[placephonenumber],[Adoptioncenteraddress],[pets],[moreinfo] " +
            "from Adoptionplaces";
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);
        if (dt.Rows.Count == 0)
        {
            stadp = "אין נתונים";
        }
        else
        {

            stadp = "<table border='1' style='border-collapse:collapse; width:100%; font-size:24px; text-align:center'>";
            stadp += "<tr>";
            stadp += "<td>שם מקום אימוץ</td>";
            stadp += "<td>טלפון מקום אימוץ </td>";
            stadp += "<td>כתובת מקום אימוץ</td>";
            stadp += "<td>חיות לאימוץ</td>";
            stadp += "<td>מידע נוסף </td>";
            stadp += "</tr>";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                stadp += "<tr>";
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    stadp += "<td style='border: 3px solid black'>";
                    stadp += dt.Rows[i][j];
                    stadp += "</td>";
                }
                stadp += "</tr>";
            }
            stadp += "</table>";
        }
    }
}