<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript">

        function checkAll() {
            /* איפוס כל הודעות השגיאה לפני בדיקה מחדש */
            fullnameerror.innerHTML = "";
            emailerror.innerHTML = "";
            passworderror.innerHTML = "";
            prefixerror.innerHTML = "";
            phoneerror.innerHTML = "";
            radioerror.innerHTML = "";
            updateerror.innerHTML = "";
            submiterror.innerHTML = "";

            let f = true; /* משתנה שמייצג האם כל הבדיקות עברו */

            /* קריאה לכל פונקציות הבדיקה */
            if (!checkFullName()) f = false;
            if (!checknumber()) f = false;
            if (!checkemail()) f = false;
            if (!checkpassword()) f = false;
            if (!checkprefix()) f = false;
            if (!checkradio()) f = false;
            if (!checkupdate()) f = false;

            return f; /* אם משהו נכשל — הטופס לא יישלח */
        }

        function checkFullName() {
            /* בדיקת שדה שם מלא */
            let name = document.getElementById("fullname").value;

            if (name == "") {
                fullnameerror.innerHTML = "לא הכנסת שם מלא";
                return false;
            }
            if (name.length < 2 || name.length > 30) {
                fullnameerror.innerHTML = "אורך השם לא תקין";
                return false;
            }

            /* בדיקה שאין מספרים בשם */
            for (let i = 0; i < name.length; i++) {
                if (name[i] >= '0' && name[i] <= '9') {
                    fullnameerror.innerHTML = "השם לא יכול להכיל מספרים";
                    return false;
                }
            }

            /* בדיקה שהשם מכיל רק אותיות בעברית/אנגלית ורווח */
            for (let i = 0; i < name.length; i++) {
                let ch = name[i];

                if (!(ch >= 'א' && ch <= 'ת') &&
                    !(ch >= 'a' && ch <= 'z') &&
                    !(ch >= 'A' && ch <= 'Z') &&
                    ch != ' ') {

                    fullnameerror.innerHTML = "השם יכול להכיל אותיות בלבד";
                    return false;
                }
            }
            return true;
        }

        function checknumber() {
            /* בדיקת מספר טלפון (7 ספרות ללא קידומת) */
            let phone = document.getElementById("phoneNumber").value;

            if (phone.length == 0) {
                phoneerror.innerHTML = "לא הכנסת מספר";
                return false;
            }
            if (phone.length != 7 || isNaN(phone)) {
                phoneerror.innerHTML = "מספר טלפון חייב להיות 7 ספרות";
                return false;
            }
            return true;
        }

        function checkemail() {
            /* בדיקת אימייל בסיסית */
            let email = document.getElementById("EMAIL").value;

            if (email == "") {
                emailerror.innerHTML = "הכנס אימייל";
                return false;
            }
            if (email.indexOf("@") == -1 || email.indexOf(".") == -1) {
                emailerror.innerHTML = "אימייל לא תקין";
                return false;
            }
            if (email.indexOf("@") == -1 || email.indexOf("@") != email.lastIndexOf("@")) {
                emailerror.innerHTML = "חייב להיות @ אחד";
                return false;
            }
            return true;
        }

        function checkpassword() {
            /* בדיקת סיסמה */
            let pass = document.getElementById("password").value;

            if (pass == "") {
                passworderror.innerHTML = "הכנס סיסמה";
                return false;
            }
            if (pass.length < 6) {
                passworderror.innerHTML = "הסיסמה קצרה מדי";
                return false;
            }
            return true;
        }

        function checkprefix() {
            /* בדיקת בחירת קידומת */
            let prefix = document.getElementById("Prefix").value;

            if (prefix == "") {
                prefixerror.innerHTML = "בחר קידומת";
                return false;
            }
            return true;
        }

        function checkradio() {
            /* בדיקה שנבחרה אפשרות מה אתה רוצה לעשות */
            let r = document.querySelector('input[name="radio1"]:checked');

            if (!r) {
                radioerror.innerHTML = "בחר אפשרות";
                return false;
            }
            return true;
        }

        function checkupdate() {
            /* בדיקה האם המשתמש בחר אם לקבל עדכונים */
            let r = document.querySelector('input[name="radio2"]:checked');

            if (!r) {
                updateerror.innerHTML = "בחר אם לקבל עדכונים";
                return false;
            }
            return true;
        }

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- עיצוב כללי: מרכז את התוכן ומגביל רוחב --%>
<div style="max-width: 800px; margin: auto; line-height: 1.6; padding: 20px;">

    <h2>הרשמה</h2>

    <!-- טופס הרשמה עם בדיקות JavaScript  לפני שליחה -->
    <form dir="rtl" method="post" runat="server" onsubmit="return checkAll();">

        :שם מלא 
        <input type="text" name="fullname" id="fullname">
        <span class="error" id="fullnameerror"></span>
        <br />

        :אימייל 
        <input type="text" name="EMAIL" id="EMAIL">
        <span class="error" id="emailerror"></span>
        <br />

        :סיסמה לאתר 
        <input type="text" name="password" id="password">
        <span class="error" id="passworderror"></span>
        <br />

        טלפון
        <input type="text" name="phoneNumber" id="phoneNumber">
        <span class="error" id="phoneerror"></span>

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
        <span class="error" id="prefixerror"></span>
        <br />

        מה אתה רוצה לעשות?<br />
        <input type="radio" name="radio1" id="rd1" value="לחפש חיה אבודה">לחפש חיה אבודה<br />
        <input type="radio" name="radio1" id="rd2" value="להעלות חיה אבודה שמצאת">להעלות חיה אבודה שמצאת<br />
        <input type="radio" name="radio1" id="rd3" value="להעלות חיה לחיפוש">להעלות חיה לאימוץ<br />
        <input type="radio" name="radio1" id="rd4" value="לאמץ חיה">לאמץ חיה
        <br />
        <span class="error" id="radioerror"></span>
        <br />

        תרצה לקבל עדכונים?<br />
        <input type="radio" name="radio2" id="ad1" value="כן">כן<br />
        <input type="radio" name="radio2" id="ad2" value="לא">לא<br />
        <span class="error" id="updateerror"></span>
        <br />

        <input type="submit" value="שלח"/>
        <span class="error" id="submiterror"></span>

    </div>
    </form>

<!-- הצגת הודעה מהשרת -->
<%=st %>

</asp:Content>


