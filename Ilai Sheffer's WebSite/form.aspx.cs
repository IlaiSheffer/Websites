using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    public string firstName, email, age, Prefix, phoneNumber, radio1, checkCities,textarea1,password;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack)
        {
            radio1 = "radio1 = " + Request.Form["radio1"];
            checkCities = "checkCities = " + Request.Form["checkCities"];
            textarea1 = "textarea1 = " + Request.Form["textarea1"];
            firstName = "firstName = " + Request.Form["firstname"];
            email = "email = " + Request.Form["EMAIL"];
            age = "age = " + Request.Form["age"];
            Prefix = "Prefix = " + Request.Form["Prefix"];
            phoneNumber = "phoneNumber = " + Request.Form["phoneNumber"];
            password = "password = " + Request.Form["password"];
        }


    }
}