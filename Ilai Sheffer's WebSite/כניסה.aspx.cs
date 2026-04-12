using System;
using System.Collections.Generic;
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
                Session["username"] = "מנהל";
                Response.Redirect("מנהל.aspx");
            }
            else
            {
                string sqlSelect =
                                "Select * from tUsers Where email = " + "N'" + strEmail + "' and password = " + "N'" + strPassword + "'";

                bool userExists = MyAdoHelper.IsExist(sqlSelect);


                if (!userExists)
                {
                    Session["username"] = "אורח";
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    Session["username"] = "רשום";
                    Response.Redirect("דף הבית.aspx");
                }
            }

             

        }
    }
}