<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulaire1.aspx.cs" Inherits="DropDown.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="form-horizontal">
    <div class="form-group col-md-offset-4 col-md-4">
        <label class="control-label">Choissisez le nom de catégories :</label>
          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
      

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
    </div>
    </div>





</asp:Content>
