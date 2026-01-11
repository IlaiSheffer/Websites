<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    הרשמה
    <h2>form</h2>
         <form dir="rtl" method="post" runat="server">
     :שם מלא <input type="text" name="firstname" id="firstname">
     <br />
     :אימייל <input type="text" name="EMAIL" id="EMAIL">
     <br />
     :סיסמה לאתר <input type="text" name="password" id="password">
     <br />
     טלפון
     <select name="Prefix" id="Prefix">
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
     </select>

     <input type="text" name="phoneNumber" id="phoneNumber">
     <br />
     מה אתה רוצה לעשות?<br />
     <input type="radio" name="radio1" id="rd1" value="לחפש חיה אבודה" checked>לחפש חיה אבודה<br />
     <input type="radio" name="radio1" id="rd2" value="להעלות חיה אבודה שמצאת">להעלות חיה אבודה שמצאת<br />
     <input type="radio" name="radio1" id="rd3" value="להעלות חיה לחיפוש" checked>להעלות חיה לאימוץ<br />
     <input type="radio" name="radio1" id="rd4" value="לאמץ חיה">לאמץ חיה
     <br />
      תרצה לקבל עדכונים?<br />
     <input type="radio" name="radio2" id="ad1" value="כן" checked>כן<br />
     <input type="radio" name="radio2" id="ad2" value="לא">לא<br />
     <input type="submit" value="שלח"/>
           <div>
               <%=firstName%><br />
               <%=email%><br />
               <%=Prefix%><br />
               <%=phoneNumber%><br />
               <%=radio1%><br />
               <%=update%><br />
               <%=password%><br />
           </div>
 </form>
</asp:Content>


