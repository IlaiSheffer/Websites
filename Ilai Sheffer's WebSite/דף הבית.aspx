<%@ Page Title="דף הבית" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="דף הבית.aspx.cs" Inherits="דף_הבית" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* מה זה div? 
           תג ה-div הוא כמו קופסה ריקה או מיכל (Container). הוא לא עושה כלום בעצמו, 
           אבל הוא משמש כדי לאחד כמה אלמנטים יחד, לעצב אותם כקבוצה אחת או לסדר אותם על המסך.
        */

        /* המיכל הראשי שמחזיק את כל הכרטיסיות ביחד */
        .cards-container {
            display: flex;            
            justify-content: center;  
            gap: 20px;                
            margin-top: 20px;         
            
            /* מה זה flex-wrap? 
               מאפיין שקובע מה קורה כשנגמר המקום בשורה. 
               הערך wrap אומר: "אם הכרטיסיות רחבות מדי ואין להן מקום במסך (למשל בטלפון נייד), 
               אל תמעך אותן – פשוט תוריד את הכרטיסיות הבאות שורה למטה באופן אוטומטי".
            */
            flex-wrap: wrap;          
        }

        /* עיצוב של קופסה (כרטיסייה) בודדת */
        .card {
            width: 180px;             
            border: 2px solid #ccc;   
            border-radius: 8px;       
            
            /* מה זה padding? 
               זהו רווח פנימי. הוא מייצר מרווח בין התוכן של הכרטיסייה (כמו הטקסט) 
               לבין המסגרת (border) שלה. בזכות ה-padding, הטקסט לא יידבק לקצוות של הקופסה.
            */
            padding: 15px;            
            
            text-align: center;       
            background-color: #f9f9f9;
        }

        /* עיצוב הקישור שעוטף את כל הכרטיסייה */
        .card-link {
            display: block;           
            text-decoration: none;    
            color: black;             
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="text-align: center; margin-top: 20px;">
        <h2>ברוכים הבאים לאתר החיות של עיליי!</h2>
        <p>זהו הבית שלכם לכל מה שקשור לחיות – מאימוץ ועד עזרה בחיפוש חברים שהלכו לאיבוד.</p>
        <p>בחר באחת האפשרויות כדי להתחיל:</p>
    </div>

    <div class="cards-container">

        <%-- כרטיסיות שכולם רואים תמיד (אורחים, משתמשים ומנהלים) --%>
        <a href="אודות.aspx" class="card-link">
            <div class="card">
                <h3>אודות</h3>
                <p>מי אני ומה המטרה של האתר</p>
            </div>
        </a>

        <a href="גלריה.aspx" class="card-link">
            <div class="card">
                <h3>גלריית חיות</h3>
                <p>תמונות של החברים המתוקים שלנו</p>
            </div>
        </a>

        <a href="שליפת מקום אימוץ.aspx" class="card-link">
            <div class="card">
                <h3>מקומות אימוץ</h3>
                <p>צפייה במרכזי האימוץ ברחבי הארץ</p>
            </div>
        </a>


        <%-- תנאי 1: אורחים בלבד (מי שלא מחובר בכלל) --%>
        <% if (Session["manger"] != "ok" && Session["user"] != "ok") { %>
            
            <a href="הרשמה.aspx" class="card-link">
                <div class="card">
                    <h3>הרשמה לאתר</h3>
                    <p>הירשמו כדי להוסיף מקומות אימוץ </p>
                </div>
            </a>

            <a href="כניסה.aspx" class="card-link">
                <div class="card">
                    <h3>התחברות</h3>
                    <p>כבר רשומים? היכנסו לחשבון</p>
                </div>
            </a>

        <% } %> 


        <%-- תנאי 2: משתמשים מחוברים (גם משתמש רגיל וגם מנהל) --%>
        <% if (Session["manger"] == "ok" || Session["user"] == "ok") { %>
            
            <a href="הכנסת מקום אימוץ.aspx" class="card-link">
                <div class="card">
                    <h3> הוספת מקום אימוץ</h3>
                    <p>הוספת עמותה או מקום לאימוץ חיות </p>
                </div>
            </a>

        <% } %> 


        <%-- תנאי 3: מנהל המערכת בלבד --%>
        <% if (Session["manger"] == "ok") { %>
            
            <a href="מנהל.aspx" class="card-link">
                <div class="card">
                    <h3>אזור מנהל</h3>
                    <p>ניהול משתמשים ודוחות האתר</p>
                </div>
            </a>

        <% } %> 
        
    </div> 

    <div style="text-align: center; margin-top: 30px;">
        <img src="Images/צילום%20מסך%202026-06-02%20142634.png"  style="width: 60%; height: auto;" />
    </div>

</asp:Content>