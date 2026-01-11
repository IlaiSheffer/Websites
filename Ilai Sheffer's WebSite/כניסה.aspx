<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="כניסה.aspx.cs" Inherits="כניסה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>כניסה</h2>
   
    <h2>form</h2>
         <form dir="rtl" method="post" runat="server">

     :אימייל <input type="text" name="EMAIL" id="EMAIL">
     <br />
     :סיסמה לאתר <input type="text" name="password" id="password">
     <br />
     <input type="submit" value="שלח"/>
 </form>

</asp:Content>

