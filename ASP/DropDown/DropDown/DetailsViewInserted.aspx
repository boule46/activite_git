<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailsViewInserted.aspx.cs" Inherits="DropDown.DetailsViewInserted" StylesheetTheme="Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">





    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" AutoGenerateRows="False" CssClass="table table-striped table-condensed table-responsive table-bordered">
        <Fields>
            <asp:TemplateField HeaderText="ProductID" SortExpression="ProductID">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ProductID") %>' ID="TextBox1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ProductID est obligatoire." Text="ProductID est obligatoire." Display="Dynamic" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("ProductID") %>' ID="Label1"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ProductName") %>' ID="TextBox2"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="ProductName est obligatoire." Text="ProductName est obligatoire." Display="Dynamic" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("ProductName") %>' ID="Label2"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SupplierID" SortExpression="SupplierID">

                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("SupplierID") %>' ID="TextBox3"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="SupplierID est obligatoire." Text="SupplierID est obligatoire." Display="Dynamic" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("SupplierID") %>' ID="Label3"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CategoryID" SortExpression="CategoryID">

                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("CategoryID") %>' ID="TextBox4"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="CategoryID est obligatoire." Text="CategoryID est obligatoire." Display="Dynamic" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("CategoryID") %>' ID="Label4"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit">
                
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("QuantityPerUnit") %>' ID="TextBox5"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Quantity per unit est obligatoire." Text="Quantity per unit est obligatoire." Display="Dynamic" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("QuantityPerUnit") %>' ID="Label5"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UnitPrice" SortExpression="UnitPrice">
               
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("UnitPrice") %>' ID="TextBox6"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="UnitPrice est obligatoire." Text="UnitPrice est obligatoire." Display="Dynamic" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("UnitPrice") %>' ID="Label6"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UnitsInStock" SortExpression="UnitsInStock">
                
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("UnitsInStock") %>' ID="TextBox7" ReadOnly="True">0</asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Unit in Stock est obligatoire." Text="Unit in Stock est obligatoire." Display="Dynamic" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("UnitsInStock") %>' ID="Label7"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder">
               
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("UnitsOnOrder") %>' ID="TextBox8"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Units in order est obligatoire." Text="Units in order est obligatoire." Display="Dynamic" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("UnitsOnOrder") %>' ID="Label8"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReorderLevel" SortExpression="ReorderLevel">
               
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ReorderLevel") %>' ID="TextBox9"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Reorderlevel est obligatoire." Text="Reorderlevel est obligatoire." Display="Dynamic" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("ReorderLevel") %>' ID="Label9"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Discontinued" SortExpression="Discontinued">
               
                <InsertItemTemplate>
                    <asp:CheckBox runat="server" Checked='<%# Bind("Discontinued") %>' ID="CheckBox1"></asp:CheckBox>
                   
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox runat="server" Checked='<%# Bind("Discontinued") %>' Enabled="false" ID="CheckBox1"></asp:CheckBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UnitsReserved" SortExpression="UnitsReserved">
                
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("UnitsReserved") %>' ID="TextBox10"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="UnitsReserved est obligatoire." Text="UnitsReserved est obligatoire." Display="Dynamic" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
               
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("UnitsReserved") %>' ID="Label10"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ShowInsertButton="True"></asp:CommandField>
           
        </Fields>
    </asp:DetailsView>

    <asp:Button ID="Button1" runat="server" Text="Retour formulaire" OnClick="Button1_Click" CssClass="buttonRetour" />




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ComptoirAnglais_V1 %>' SelectCommand="SELECT * FROM [Products]" InsertCommand="INSERT INTO [Products] ([ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [UnitsReserved]) VALUES (@ProductName, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitPrice, @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued, @UnitsReserved)" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [SupplierID] = @SupplierID, [CategoryID] = @CategoryID, [QuantityPerUnit] = @QuantityPerUnit, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock, [UnitsOnOrder] = @UnitsOnOrder, [ReorderLevel] = @ReorderLevel, [Discontinued] = @Discontinued, [UnitsReserved] = @UnitsReserved WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="SupplierID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="CategoryID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="QuantityPerUnit" Type="String"></asp:Parameter>
            <asp:Parameter Name="UnitPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="UnitsInStock" Type="Int16" DefaultValue="0"></asp:Parameter>
            <asp:Parameter Name="UnitsOnOrder" Type="Int16"></asp:Parameter>
            <asp:Parameter Name="ReorderLevel" Type="Int16"></asp:Parameter>
            <asp:Parameter Name="Discontinued" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="UnitsReserved" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="SupplierID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="CategoryID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="QuantityPerUnit" Type="String"></asp:Parameter>
            <asp:Parameter Name="UnitPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="UnitsInStock" Type="Int16"></asp:Parameter>
            <asp:Parameter Name="UnitsOnOrder" Type="Int16"></asp:Parameter>
            <asp:Parameter Name="ReorderLevel" Type="Int16"></asp:Parameter>
            <asp:Parameter Name="Discontinued" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="UnitsReserved" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ProductID" Type="Int32"></asp:Parameter>
        </UpdateParameters>

    </asp:SqlDataSource>














</asp:Content>











