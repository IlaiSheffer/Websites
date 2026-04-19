using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הכנסת_מקום_אימוץ : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            
            string Adoptionplacename = Request.Form["Adoptionplacename"];
            string animalsforadoption = Request.Form["animalsforadoption"];
            string Prefix = Request.Form["Prefix"];
            string phoneNumber = Request.Form["phoneNumber"];
            string address = Request.Form["address"];
            string info = Request.Form["info"];


            string sqlSelect =
            "Select * from Adoptionplaces Where Adoptionplacename = " + "N'" + Adoptionplacename + "'";

            bool userExists = MyAdoHelper.IsExist(sqlSelect);

           if (!userExists)
            {
                string sqlInsert =
                    "INSERT INTO Adoptionplaces (Adoptionplacename,animalsforadoption,placephonenumber,Adoptioncenteraddress,moreinfo) VALUES (" +
                    "N'" + Adoptionplacename + "'," +
                    "N'" + animalsforadoption + "'," +
                    "'" + phoneNumber + "'," +
                    "N'" + address + "'," +
                    "N'" + info + "'" +
                    ")";
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
                Response.Redirect("דף הבית.aspx");
            }
            else
            {
                st = "המקום הנתון כבר רשום במערכת";
            }
        }
    }
}
    