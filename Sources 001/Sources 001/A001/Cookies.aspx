<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cookies.aspx.cs" Inherits="Sources_001_A001_Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <%
         HttpContext requeteCourante = HttpContext.Current;
        HttpRequest requete = requeteCourante.Request;
        HttpResponse reponse = requeteCourante.Response;
        //NameValueCollection clesValeurs = requete.QueryString;
        NameValueCollection clesValeurs = requete.Form;


        HttpBrowserCapabilities capacitesNavigateur = Request.Browser;

        %>

        <table border="1" style="background-color: lightseagreen; border-color: white; border-collapse:collapse;">
        <thead><tr><td>Informations sur les capacités du browser : </td></tr></thead>

        <tr><td>Marque du navigateur : </td><td><%=capacitesNavigateur.Browser%></td></tr>
        <tr><td>Dans sa version : </td><td><%=capacitesNavigateur.Version%></td></tr>
        <tr><td>Accepte les cookies : </td><td><%=capacitesNavigateur.Cookies%></td></tr>
        <tr><td>Accepte la version de javascript : </td><td><%=capacitesNavigateur.EcmaScriptVersion.ToString()%></td></tr>
        <tr><td>Accepte les Activex : </td><td><%=capacitesNavigateur.ActiveXControls%></td></tr>

        </table>
   

    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
