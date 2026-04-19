using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class שליפת_מקום_אימוץ : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "Select * from Adoptionplaces";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);
        if (dt.Rows.Count == 0)
        {
            st = "אין נתונים";
        }
        else
        {

            st = "<table border='1' style='border-collapse:collapse; width:100%; font-size:24px; text-align:center'>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    st += "<td style='border: 3px solid black'>";
                    st += dt.Rows[i][j];
                    st += "</td>";
                }
                st += "</tr>";
            }
            st += "</table>";
        }
    }
}