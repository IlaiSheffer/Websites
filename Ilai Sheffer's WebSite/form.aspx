<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- אזור ה־HEAD של הדף (לרוב שמים פה CSS או JS) -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>form</h2>

    <!-- טופס ששולח נתונים לשרת -->
    <form dir="rtl" method="post" runat="server">

        <!-- שדה שם פרטי -->
        :שם פרטי <input type="text" name="firstname" id="firstname">
        <br />

        <!-- שדה אימייל -->
        :אימייל <input type="text" name="EMAIL" id="EMAIL">
        <br />

        <!-- שדה סיסמה -->
        :סיסמה לאתר <input type="text" name="password" id="password">
        <br />

        <!-- בחירת קידומת לטלפון -->
        טלפון
        <select name="Prefix" id="Prefix">
            <!-- רשימת קידומות -->
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

        <!-- המשך מספר הטלפון -->
        <input type="text" name="phoneNumber" id="phoneNumber">
        <br />

        <!-- שדה גיל -->
        :גיל <input type="text" name="age" id="age">
        <br />

        <!-- רדיו: האם גר בכפר סבא -->
        האם אתה גר בכפר סבא?<br />
        <input type="radio" name="radio1" id="rd1" value="כן" checked>כן<br />
        <input type="radio" name="radio1" id="rd2" value="לא">לא
        <br />

        <!-- צ'קבוקסים: ערים שבהן היית -->
        <p>באילו ערים היית:</p>
        <input type="checkbox" name="checkCities" id="chk1" value="רעננה" checked>רעננה<br/>
        <input type="checkbox" name="checkCities" id="chk2" value="הוד השרון">הוד השרון<br />
        <input type="checkbox" name="checkCities" id="chk3" value="הרצליה">הרצליה
        <br />

        <!-- טקסט חופשי -->
        <p>ספר על עצמך:</p>
        <textarea rows="5" cols="20" name="textarea1" id="textarea1"></textarea>
        <br />

        <!-- כפתור שליחה -->
        <input type="submit" value="שלח"/>

        <!-- כאן מוצגים הנתונים שהמשתמש מילא אחרי השליחה -->
        <div>
            <!-- הצגת הערכים מהשרת -->
            <%=firstName%><br />
            <%=email%><br />
            <%=age%><br />
            <%=Prefix%><br />
            <%=phoneNumber%><br />
            <%=radio1%><br />
            <%=checkCities%><br />
            <%=textarea1%><br />
            <%=password%><br />
        </div>

    </form>
</asp:Content>
