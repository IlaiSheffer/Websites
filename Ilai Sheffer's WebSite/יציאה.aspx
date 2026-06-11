<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="יציאה.aspx.cs" Inherits="יציאה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%Session.Abandon();// מחיקת כל הסשן — מוציא את המשתמש מהמערכת
        Response.Redirect("כניסה.aspx");
        %>
    יציאה
</asp:Content>

