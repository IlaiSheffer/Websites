using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הרשמה : System.Web.UI.Page
{
    public string firstName, email, age, Prefix, phoneNumber, radio1, checkCities, textarea1,update,password;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            radio1 = "what u wanna do = " + Request.Form["radio1"];
            firstName = "full Name = " + Request.Form["firstname"];
            email = "email = " + Request.Form["EMAIL"];
            Prefix = "Prefix = " + Request.Form["Prefix"];
            phoneNumber = "phoneNumber = " + Request.Form["phoneNumber"];
            update = "update= "+ Request.Form["radio2"];
            password = "password = " + Request.Form["password"];
        }
    }
}
