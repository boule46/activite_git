<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageCDN.aspx.cs" Inherits="AjaxCDN2.PageCDN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#btn1").click(function(){
                    alert("Text: " + $("#test").text());
                });

            //$('#btn1').click(function afficherDate() {
            //    var maDate = new Date();
            //    var strDate = maDate.localeFormat("dddd, dd MMMM yyyy");
            //    $("txtDate").text = strDate;
            //});
  
           
        </script>
</head>
<body>
    <form id="form1" runat="server">
         
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="True" EnableCdn="True"></asp:ScriptManager>

         <div id="txtDate"></div>
        <p id="test">This is some <b>bold</b> text in a paragraph.</p>
      
      

    <button id="btn1">Klik</button>

        
        
       



    </div>
    </form>
</body>
</html>
