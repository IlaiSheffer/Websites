using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AspNet : System.Web.UI.Page
{
    public string strkefel;
    protected void Page_Load(object sender, EventArgs e)
    {
        strkefel = "<table border='1' style='border-collapse:collapse; width:100%; height:600px; font-size:24px; text-align:center'>";
        for (int i = 1; i <= 10; i++)
        {
            strkefel += "<tr>";
            for (int j = 1; j <= 10; j++)
            {
                strkefel += "<td>";
                strkefel += j * i;
                strkefel += "</td>";
            }
            strkefel += "</tr>";
        }
        strkefel += "</table>";
    }
}