<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>form</h2>
        <form dir="rtl">
        :שם פרטי <input type="text" name="firstname">
        <br />
        :אימייל <input type="text" name="EMAIL">
        <br />
        טלפון
        <select name=מספר טלפון>
            <option value="1">050</option>
            <option value="2">051</option>
            <option value="3">052</option>
            <option value="4">053</option>
            <option value="5">054</option>
            <option value="6">055</option>
            <option value="7">056</option>
            <option value="8">057</option>
            <option value="9">058</option>
            <option value="10">059</option>
        </select>
    
        <input type="text" name="text1">
        <br />
        :גיל <input type="text" name="age">
        <br />
        כפר סבא?
        <input type="y" name="כן" checked>
        <input type="n" name="לא">
        <br />
        <p>באילו ערים היית:</p>
        <input type="checkbox" name="רעננה" checked>
        <input type="checkbox" name="הוד השרון">
        <input type="checkbox" name="הרצליה">
        <br />
        <p>ספר על עצמך:</p>
        <textarea rows="5" cols="20" name="textarea1"></textarea>
        <br />

    </form>
</asp:Content>

