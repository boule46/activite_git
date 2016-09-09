<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Version2.aspx.cs" Inherits="DropDown.Version2" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section>
     <div class="form-horizontal">
        <h1>Categories et Produits</h1>
          <div class="form-group">
        <p><label class="control-label col-md-3">Choissisez le nom de catégories :</label>
            <div class="col-md-6">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="CategoryName" DataValueField="CategoryID" AutoPostBack="True" Width="100%" BackColor="Gray" ForeColor="#CCCCCC"></asp:DropDownList>

            </div></p>
      
          </div>

     
       <p>
           <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource5"  DataKeyNames="ProductName" AutoGenerateColumns="False" Width="100%" RowStyle-Height="16px" RowStyle-BackColor="#3366FF" RowStyle-ForeColor="White" AllowPaging="True" AllowSorting="True" BackColor="#333333" ForeColor="#CCCCCC" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" RowStyle-HorizontalAlign="Left">
               <Columns>
                   <asp:CommandField ShowSelectButton="True"></asp:CommandField> 
                   <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName"></asp:BoundField>
                   <asp:HyperLinkField DataNavigateUrlFields="ProductName" DataNavigateUrlFormatString="Esclave.aspx?ProductName={0}" Text="Selectionner" HeaderText="EsclaveView"></asp:HyperLinkField>
                   <asp:HyperLinkField></asp:HyperLinkField>
               </Columns>
              
               <RowStyle Height="16px"></RowStyle>
           </asp:GridView></p>

        <asp:DetailsView runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ProductName" DataSourceID="SqlDataSource6" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" BackColor="#3366FF" ForeColor="White">
            <Fields>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" InsertVisible="False" SortExpression="ProductID"></asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName"></asp:BoundField>
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID"></asp:BoundField>
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID"></asp:BoundField>
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit"></asp:BoundField>
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice"></asp:BoundField>
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock"></asp:BoundField>
                <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder"></asp:BoundField>
                <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel"></asp:BoundField>
                <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued"></asp:CheckBoxField>
                <asp:BoundField DataField="UnitsReserved" HeaderText="UnitsReserved" SortExpression="UnitsReserved"></asp:BoundField>
            </Fields>
        </asp:DetailsView>

        






        <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [UnitsReserved] FROM [Products] WHERE (([ProductName] = @ProductName) AND ([ProductName] = @ProductName2))">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" PropertyName="SelectedValue" Name="ProductName" Type="String"></asp:ControlParameter>
                <asp:ControlParameter ControlID="GridView2" PropertyName="SelectedValue" Name="ProductName2" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT [ProductName] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" PropertyName="SelectedValue" Name="CategoryID" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT [CategoryName], [CategoryID] FROM [Categories]">
        </asp:SqlDataSource>
   </div>
  
</section>



</asp:Content>

