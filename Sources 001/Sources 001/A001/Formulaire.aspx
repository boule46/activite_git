<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Formulaire.aspx.cs" Inherits="Formulaire" %>

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

    %>
             <table  border="1" style="background-color: lightseagreen; border-color: white; border-collapse:collapse;">
        <thead><tr><td>Propriété</td><td>Valeur</td></tr></thead>
    <%
        foreach (string key in clesValeurs.AllKeys)
        {
            foreach (string value in clesValeurs.GetValues(key))
            {
                reponse.Write("<tr><td>"+key+"</td>");
                reponse.Write("<td>"+value+"</td></tr>");
            }

        }

    %>

        <table  border="1" style="background-color: lightseagreen; border-color: white; border-collapse:collapse;">
        <thead><tr><td>Propriété</td><td>Valeur</td></tr></thead>
    <%

        string paramInfo = "";

        NameValueCollection parameters = Request.Params;

        foreach (string key in parameters.AllKeys)
        {
            foreach (string value in parameters.GetValues(key))
            {
               reponse.Write("<tr><td>"+key+"</td>");
               reponse.Write("<td>"+value+"</td></tr>");
            }


        }


    %>

        
   
  </td></tr></table>



    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
