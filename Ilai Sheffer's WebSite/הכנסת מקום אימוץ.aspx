<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הכנסת מקום אימוץ.aspx.cs" Inherits="הכנסת_מקום_אימוץ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <script language="javascript">

      function checkAll() {

          Adoptionplacenameerror.innerHTML = "";
          phoneNumbererror.innerHTML = "";
          addresserror.innerHTML = "";
          petserror.innerHTML = "";
          infoerror.innerHTML = "";

          let f = true;

          if (!checkAdoptionplacename()) f = false;
          if (!checkphoneNumber()) f = false;
          if (!checkaddress()) f = false;
          if (!checkpets()) f = false;
          if (!checkinfo()) f = false;

          return f;
      }
      function checkAdoptionplacename() {
          let name = document.getElementById("Adoptionplacename").value;
          if (name == "") {
              Adoptionplacenameerror.innerHTML = "אנא הכנס שם";
              return false;
          }
          return true;
      }
      function checkphoneNumber() {
          let phone = document.getElementById("phoneNumber").value;
          if (phone == "") {
              phoneNumbererror.innerHTML = "אנא הכנס מספר";
              return false;
          }
          if (phone.length != 10) {
              phoneNumbererror.innerHTML = "אנא הכנס מספר באורך תקני";
              return false;
          }
          return true;
      }
      function checkaddress() {
            let address = document.getElementById("address").value;
            if (address == "") {
                addresserror.innerHTML = "אנא הכנס כתובת";
                return false;
            }
            return true;
      }
        function checkpets() {
            let pet1 = document.getElementById("pet1").checked;
            let pet2 = document.getElementById("pet2").checked;
            let pet3 = document.getElementById("pet3").checked;
    
            if (!pet1 && !pet2 && !pet3) {
                petserror.innerHTML = "אנא בחר לפחות חיה אחת";
                return false;
            }
            return true;
      }
      function checkinfo() {
          let more = document.getElementById("info").value;
          if (more == "") {
              infoerror.innerHTML = "הכנס מידע נוסף";
              return false;
          }
          return true;
      }
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <h2>הכנסת מקום אימוץ</h2>
        <form dir="rtl" method="post" runat="server" onsubmit="return checkAll();">
    :שם מקום אימוץ <input type="text" name="Adoptionplacename" id="Adoptionplacename"><span class="error" id="Adoptionplacenameerror"></span>
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

    <input type="text" name="phoneNumber" id="phoneNumber"><span class="error" id="phoneNumbererror"></span>
    <br />
  :כתובת של מיקום האימוץ <input type="text" name="address" id="address"><span class="error" id="addresserror"></span>
<br />
    אילו חיות יש לאימוץ:
            <br />
   <input type="checkbox" id="pet1" name="pets" value="כלב">
  <label for="pet1"> כלב</label><br>
  <input type="checkbox" id="pet2" name="pets" value="חתול">
  <label for="pet2"> חתול</label><br>
  <input type="checkbox" id="pet3" name="pets" value="עוד">
  <label for="pet3"> עוד מגוון</label><br>
            <br />
       <span class="error" id="petserror"></span>
<div>עוד מידע על המקום:</div>
<textarea rows="5" cols="20" name="info" id="info"></textarea>
<span class="error" id="infoerror"></span>

<br />
<input type="submit" value="שלח"/><span class="error" id="submiteerror"></span>
</form>
    <%=st %>
</asp:Content>

