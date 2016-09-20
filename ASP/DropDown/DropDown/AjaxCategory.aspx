<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjaxCategory.aspx.cs" Inherits="DropDown.AjaxCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Afficher les produits avec ajax, rafraichissment de la page partielle!</h1>

    <h2>Choississez une catégory : </h2>

    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName" AutoPostBack="True" onchange="getListeProduit();"></asp:DropDownList></p>

    <h2>Les produits de la categorie <asp:Label ID="NomCat" runat="server" Text=""></asp:Label></h2>

    <div id="ListProduits"></div>

  








    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT [CategoryName] FROM [Categories]"></asp:SqlDataSource>

   



  
</asp:Content>
