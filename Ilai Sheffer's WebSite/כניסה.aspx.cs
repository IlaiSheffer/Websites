using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class כניסה : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string strEmail = Request.Form["EMAIL"];
             string strPassword = Request.Form["password"];
            if(strEmail=="manger"&& strPassword == "big boss 123")
            {
                Session["manger"] = "ok";
                Session["username"] = "מנהל";
                Response.Redirect("מנהל.aspx");
            }
            else
            {
                string sqlSelect =
                                "Select * from tUsers Where email = " + "N'" + strEmail + "' and password = " + "N'" + strPassword + "'";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);


                if (dt.Rows.Count==0)
                {
                    Session["guest"] = "ok";
                    Session["username"] = "אורח";
                    st = "                                  אימייל או סיסמה שגויים";

                }
                else
                {
                    Session["user"] = "ok";
                    Session["username"] = dt.Rows[0]["fullname"];
                    Response.Redirect("דף הבית.aspx");
                }
            }

             

        }
    }
}