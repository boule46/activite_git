<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulaire1.aspx.cs" Inherits="DropDown.WebForm1" Trace="true"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
     <div class="form-horizontal">
        <h1>Categories et Produits</h1>
          <div class="form-group">
        <p><label class="control-label col-md-3">Choissisez le nom de catégories :</label>
            <div class="col-md-6">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID" AutoPostBack="True" Width="100%" BackColor="Gray" ForeColor="#CCCCCC"></asp:DropDownList></p>
        </div>
        </div>
       <p>
           <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" Width="100%" RowStyle-Height="16px" RowStyle-BackColor="#3366FF" RowStyle-ForeColor="White" AllowPaging="True" AllowSorting="True" AutoGenerateSelectButton="False" DataKeyNames="ProductName" BackColor="#333333" ForeColor="#CCCCCC" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" RowStyle-HorizontalAlign="Left">
               <Columns>
                   <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                   <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName"></asp:BoundField>
               </Columns>
              
               <RowStyle Height="16px"></RowStyle>
           </asp:GridView></p>

        <asp:DetailsView runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ProductName" DataSourceID="SqlDataSource3" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" BackColor="#3366FF" ForeColor="White">
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

        <asp:TextBox ID="EventBox" runat="server" TextMode="MultiLine" ReadOnly="True" Width="100%" Height="100px" AutoPostBack="True"></asp:TextBox>






        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [UnitsReserved] FROM [Products] WHERE (([ProductName] = @ProductName) AND ([ProductName] = @ProductName2))" OnSelected="SqlDataSource3_Selected" OnSelecting="SqlDataSource3_Selecting" OnUpdated="SqlDataSource3_Updated" OnUpdating="SqlDataSource3_Updating" OnDataBinding="SqlDataSource3_DataBinding" EnableCaching="True">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="ProductName" Type="String"></asp:ControlParameter>
                <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="ProductName2" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT [ProductName] FROM [Products] WHERE ([CategoryID] = @CategoryID)" OnSelected="SqlDataSource3_Selected" OnSelecting="SqlDataSource3_Selecting" OnUpdated="SqlDataSource3_Updated" OnUpdating="SqlDataSource3_Updating" OnDataBinding="SqlDataSource3_DataBinding" EnableCaching="True">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="CategoryID" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT [CategoryName], [CategoryID] FROM [Categories]" OnSelected="SqlDataSource3_Selected" OnSelecting="SqlDataSource3_Selecting" OnUpdated="SqlDataSource3_Updated" OnUpdating="SqlDataSource3_Updating" OnDataBinding="SqlDataSource3_DataBinding" EnableCaching="True">
        </asp:SqlDataSource>
    </div>
    </div>

</section>



</asp:Content>
