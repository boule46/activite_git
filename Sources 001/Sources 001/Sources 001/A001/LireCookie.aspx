<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LireCookie.aspx.cs" Inherits="Sources_001_A001_LireCookie" %>

<%
    if (Request.Cookies["Client"] != null)
    {
        System.Text.StringBuilder chaineAffichee = new System.Text.StringBuilder();

        HttpCookie cookie = Request.Cookies["Client"];

        if (cookie.HasKeys)
        {
            NameValueCollection MaCollection = new NameValueCollection(cookie.Values);

            foreach (string key in MaCollection.AllKeys)
            {

                Response.Write("<p>" + key + " : ");
                  Response.Write(MaCollection[key] + "</p>");
            }
        }



    }
%>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>










    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
