<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspConnecter._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True" SelectCommand='select dbo.Products.ProductID, dbo.Products.ProductName, dbo.Products.UnitPrice from Products'></asp:SqlDataSource>

    <div id="listeProduits" runat="server">
        <%--<% Response.Write(ListeProduits); %>--%>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text="<%# Eval("ProductID") %>"></asp:Label>








            </ItemTemplate>
        </asp:Repeater>
        <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>

    </div>

</asp:Content> 
