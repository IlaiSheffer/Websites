<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="גלריה.aspx.cs" Inherits="גלריה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* עיצוב פשוט כדי לסדר 2 תמונות בשורה */
        .my-gallery img {
            width: 45%;          /* קובע שכל תמונה תתפוס כמעט חצי מהשורה (45% מהרוחב) */
            height: 350px;       /* גובה אחיד ויפה לתמונות גדולות ומכובדות */
            object-fit: cover;   /* שומר שהתמונות לא יימתחו או יתעווותו בגודל החדש */
            margin: 15px;        /* מרווח קטן ואסתטי בין התמונות */
            border-radius: 12px; /* פינות מעוגלות למראה מודרני */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <h2>גלריה</h2>

    
<div class="my-gallery" style="text-align: center; /* ממרכז את התוכן של הגלריה */ padding: 20px; /* (בין התמונות)מוסיף מרווח פנימי מסביב */">        
        <img src="Images/חתול-ישן-ואולי-חולם-600.jpg" />
        <img src="Images/webp.net-resizeimage6154703625049578725.jpg" />
        <img src="Images/exotic-pet-home.jpg" />
        <img src="Images/taylor-swift-cats-121123-tout-545440c7ab4a4be699f0b9232b51374d.jpg" />
        <img src="Images/istockphoto-1364253107-612x612.jpg" />
        <img src="Images/25b8Tpt9n8KtbcFGPZyHHc.jpg" />

    </div>

</asp:Content>