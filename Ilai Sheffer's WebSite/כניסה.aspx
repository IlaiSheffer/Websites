<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="כניסה.aspx.cs" Inherits="כניסה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
    <%-- עיצוב כללי: ה-DIV עוטף את כל תוכן העמוד כדי לשלוט ברוחב ובמרכוז --%>
<div style="max-width: 800px; margin: auto; line-height: 1.6; padding: 20px;">
         <form dir="rtl" method="post" runat="server">
<h2>כניסה</h2>
     :אימייל <input type="text" name="EMAIL" id="EMAIL">
     <br />
     :סיסמה לאתר <input type="text" name="password" id="password">
     <br />
     <input type="submit" value="שלח"/>
             </div>
 </form>
    <%=st %>
</asp:Content>

