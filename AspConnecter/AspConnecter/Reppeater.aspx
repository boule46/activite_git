<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reppeater.aspx.cs" Inherits="AspConnecter.WebForm1" StylesheetTheme="StyleTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True" SelectCommand='select dbo.Products.ProductID, dbo.Products.ProductName, dbo.Categories.CategoryName, dbo.Products.UnitPrice from Products join dbo.Categories on dbo.Products.CategoryID = dbo.Categories.CategoryID;'></asp:SqlDataSource>

     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
         <HeaderTemplate>
            <table id="table">
                <tr>
                    <th id="th">Produits ID</th>
                    <th  id="th">Nom Produits</th>
                    <th id="th">Nom Categorie</th>
                    <th id="th">Prix Unitaire</th>
                </tr>
     

         </HeaderTemplate>
            <ItemTemplate>
               
                    <tr id="tr">
                        <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>' ></asp:Label>
                        </td>
                      
                        <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductName") %>' ></asp:Label>
                        </td>
                        
                         <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CategoryName") %>' ></asp:Label>
                        </td>

                         <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("UnitPrice") %>' ></asp:Label>
                        </td>


                    </tr>

            </ItemTemplate>
         <FooterTemplate>
             </table>
         </FooterTemplate>
         
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
