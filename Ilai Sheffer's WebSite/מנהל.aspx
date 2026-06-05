<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="מנהל.aspx.cs" Inherits="Images_מנהל" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
               <h2>מנהל</h2>
    <form method="post" runat="server">
    :שם מלא <input type="text" name="fullname" id="fullname">
<br />
         מה המשתמש רוצה לעשות?<br />
     <input type="radio" name="radio1" id="rd1" value="לחפש חיה אבודה">לחפש חיה אבודה<br />
     <input type="radio" name="radio1" id="rd2" value="להעלות חיה אבודה שמצאת">להעלות חיה אבודה שמצאת<br />
     <input type="radio" name="radio1" id="rd3" value="להעלות חיה לחיפוש">להעלות חיה לאימוץ<br />
     <input type="radio" name="radio1" id="rd4" value="לאמץ חיה">לאמץ חיה
     <br />
    <input type="submit" value="חפש"/>
        </form>
    <%=stusers %>
</asp:Content>

