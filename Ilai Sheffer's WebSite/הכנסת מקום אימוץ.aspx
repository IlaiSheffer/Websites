<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הכנסת מקום אימוץ.aspx.cs" Inherits="הכנסת_מקום_אימוץ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <script language="javascript">
    function cheackAll(){
    return true;
    }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       הכנסת מקום אימוץ
   <h2>form</h2>
        <form dir="rtl" method="post" runat="server" onsubmit="return cheackAll();">
    :שם מקום אימוץ <input type="text" name="Adoptionplacename" id="Adoptionplacename"><span class="error" id="Adoptionplacenameerror"></span>
    <br />
    :חיות לאימוץ <input type="text" name="animalsforadoption" id="animalsforadoption"><span class="error" id="animalsforadoptionerror"></span>
    <br />
    טלפון של מקום האימוץ
    <!--select name="Prefix" id="Prefix">
        <option value="050">050</option>
        <option value="051">051</option>
        <option value="052">052</option>
        <option value="053">053</option>
        <option value="054">054</option>
        <option value="055">055</option>
        <option value="056">056</option>
        <option value="057">057</option>
        <option value="058">058</option>
        <option value="059">059</option>
    </select-->

    <input type="text" name="phoneNumber" id="phoneNumber">
    <br />
  :כתובת של מיקום האימוץ <input type="text" name="address" id="address"><span class="error" id="addresserror"></span>
<br />
:עוד מידע על המקום<textarea rows="5" cols="20" name="info" id="info"></textarea><span class="error" id="infoerror"></span>
            <br />
                 <input type="submit" value="שלח"/><span class="error" id="submiteerror"></span>
</form>
    <%=st %>
</asp:Content>

