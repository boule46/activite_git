<%@ Page Title="Formulaire" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulaire.aspx.cs" Inherits="MonPremierFormulaire._Formulaire" Theme="themeFormulaire" EnableEventValidation ="false" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 <form id='frmCoordonnees' enctype="application/x-www-form-urlencoded"  >
        <fieldset id='fsCoordonnees'>
            <legend>Saisie des informations vous concernant</legend>
           
<%--//Question Homme - Femme--%>
                <p><asp:Label ID="Label1" runat="server" Text="Sexe : "></asp:Label></p>
                <p><asp:RadioButton ID="radioBtn1" runat="server" AutoPostBack="True" GroupName="Sexe" Text="Homme" OnCheckedChanged ="radioBtn2_CheckedChanged" /></p>
                <p><asp:RadioButton ID="radioBtn2" runat="server" AutoPostBack="True" GroupName="Sexe" Text="Femme" OnCheckedChanged ="radioBtn2_CheckedChanged"/></p>

<%--Question votre nom--%>
               <p><asp:Label ID="txtNom" runat="server" Text="Nom : " CssClass="Label"></asp:Label>
                 <asp:TextBox ID="Nom" runat="server" AutoPostBack="True" MaxLength="20" CssClass="inputText"></asp:TextBox></p>
                   <asp:RequiredFieldValidator ID="ValidatorNom" runat="server" ErrorMessage="* le nom doit être renseigné" Display="Dynamic" Text="Nom obligatoire" ControlToValidate="Nom"></asp:RequiredFieldValidator>
              
<%--Question prenom--%>
            
            <p><asp:Label ID="txtPrenom" runat="server" Text="Prénom : " CssClass="Label"></asp:Label>
            <asp:TextBox ID="Prenom" runat="server" AutoPostBack="True" MaxLength="20" CssClass="inputText"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="ValidatorPrenom" runat="server" ErrorMessage="le prénom doit être renseigné" Display="Dynamic" Text="Prénom obligatoire" ControlToValidate="Prenom"></asp:RequiredFieldValidator>
            
<%--Question adresse--%>            
            
            <p>
                <asp:Label ID="txtAdresse" runat="server" Text="Adresse : " CssClass="Label"></asp:Label>
                <asp:TextBox ID="Adresse" runat="server" AutoPostBack="True" MaxLength="50" CssClass="inputText"></asp:TextBox></p>
                <asp:RequiredFieldValidator ID="ValidatorAdresse" runat="server" ErrorMessage="L'adresse doit être renseigné" Display="Dynamic" Text="Adresse obligatoire" ControlToValidate="Adresse"></asp:RequiredFieldValidator>

<%--Complement adresse--%>
              <p><asp:Label ID="txtCompl" runat="server" Text="Compément adresse" CssClass="Label"></asp:Label>
                <asp:TextBox ID="Complement" runat="server" AutoPostBack="True" MaxLength="50" CssClass="inputText"></asp:TextBox></p>
                
<%--Code Postal--%>
            <p><asp:Label ID="txtCodePostal" runat="server" Text="Code Postal et ville : "></asp:Label>
            <asp:TextBox ID="CodePostal" runat="server" AutoPostBack="True" MaxLength="5" CssClass="inputText"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="ValidatorCodePostal" runat="server" ErrorMessage="Le code postal est obligatoire" Display="Dynamic" Text="Code postal obligatoire" ControlToValidate="CodePostal"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCodePostal" runat="server" ErrorMessage="Le code postal n'est pas correct" Display="Dynamic" Text="Forme code postal incorrect" ControlToValidate="CodePostal" ValidationExpression="/[0-9]{5}/gi"></asp:RegularExpressionValidator>
            <asp:TextBox ID="Ville" runat="server" AutoPostBack="True" MaxLength="50" CssClass="inputText"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValidatorVille" runat="server" ErrorMessage="Renseigné lieu d'habitation" Display="Dynamic" Text="Ville obligatoire" ControlToValidate="Ville"></asp:RequiredFieldValidator>

<%--Question Pays--%>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="inputText">
                <asp:ListItem Text="LibellePays" Value="LibellePays" />
                </asp:DropDownList>
        
                <label>
                    Adresse mail :
                </label>
                <input class="inputText" id="txtMail" name="txtMail" type="text" />
                <span id="M_Mail" class="Message">* l'adresse mail n'est pas valide</span>
            </p>
            <p>
                <label>
                   
                    Tél. Format Inter :
                </label>
                <input class="inputText" id="txtTelephone" name="txtTelephone" type="text" />
                <span id="M_Telephone" class="Message">* l'adresse mail n'est pas valide</span>
            </p>

            <p>
                Vos centres d'intérets
                <input class="inputText" name="chkInterets" value="BR" type="checkbox" />Bricolage
                <input class="inputText" name="chkInterets" value="JD" type="checkbox" />Jardinage
                <input class="inputText" name="chkInterets" value="LC" type="checkbox" />Lecture
                <input class="inputText" name="chkInterets" value="VG" type="checkbox" />Voyages
                <span id="M_Interets" class="Message">* Au moins un</span>
            </p>


             <p>
             <asp:FileUpload ID="FileUpload1" runat="server" /><br />
             <asp:Button ID="UploadButton" runat="server" Text="Valider" onclick="UploadButton_Click" />
             <asp:Label ID="UploadLabel1" runat="server" Text=""></asp:Label>
            </p>




            <p>
                <asp:Button ID="Button1" runat="server" Text="Valider" onclick="UploadButton_Click" /> <input id='btnEnvoyer' class="inputText" onclick="envoyer()" value="Envoyer" type="button" />
            </p>
           
            
        </fieldset>
    </form>















</asp:Content>
