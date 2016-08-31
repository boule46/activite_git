<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="Sources_001_A001_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" action="LireCookie.aspx" method="post" enctype="application/x-www-form-urlencoded" runat="server">
        <div>
            <label id="lblNom" for="txtNom" runat="server">Entrez votre nom :</label>
            <input id="txtNom" name="txtNom" type="text" runat="server" /><br />
            <input id="Submit1" type="submit" value="Envoyer" runat="server" />
        </div>




    </form>
</body>
</html>
