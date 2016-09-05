<%@ Page Title="Formulaire" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulaire.aspx.cs" Inherits="MonPremierFormulaire._Formulaire" Theme="themeFormulaire" EnableEventValidation ="false" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 <form id='frmCoordonnees' enctype="application/x-www-form-urlencoded" >
        <fieldset id='fsCoordonnees'>
            <legend>Saisie des informations vous concernant</legend>
           
<%--//Question Homme - Femme--%>
                <div class="row">
                <div class="col-md-offset-1 col-md-4">
                <asp:Label ID="Label1" runat="server" Text="Sexe : "></asp:Label></>
                </div>
                <div class="col-md-4">
                    <asp:RadioButtonList ID="RadioButtonListSexe" runat="server" OnCheckedChanged="radioBtn2_CheckedChanged">

                    <asp:ListItem>Homme</asp:ListItem>
                    <asp:ListItem>Femme</asp:ListItem>

                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="ValidatorSexe" runat="server" ErrorMessage="Cochez une case" Display="Dynamic" Text="Cochez une case" ControlToValidate="RadioButtonListSexe"></asp:RequiredFieldValidator>
                    </div>
            </div>
<%--Question votre nom--%>
             <div class="row">
                <div class="col-md-offset-1 col-md-4">
               <p><asp:Label ID="txtNom" runat="server" Text="Nom : " CssClass="Label"></asp:Label></p>
                   </div>
                <div class="col-md-4">
                 <p><asp:TextBox ID="Nom" runat="server" MaxLength="20" CssClass="inputText"></asp:TextBox></p>
                  <asp:RequiredFieldValidator ID="ValidatorNom" runat="server" ErrorMessage="* le nom doit être renseigné" Display="Dynamic" Text="Nom obligatoire" ControlToValidate="Nom" CssClass="validator"></asp:RequiredFieldValidator>
                   </div>
            </div>
<%--Question prenom--%>
             <div class="row">
                <div class="col-md-offset-1 col-md-4">
            <p><asp:Label ID="txtPrenom" runat="server" Text="Prénom : " CssClass="Label"></asp:Label></p>
                    </div>
                <div class="col-md-4">
            <p><asp:TextBox ID="Prenom" runat="server" MaxLength="20" CssClass="inputText"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="ValidatorPrenom" runat="server" ErrorMessage="le prénom doit être renseigné" Display="Dynamic" Text="Prénom obligatoire" ControlToValidate="Prenom" CssClass="validator"></asp:RequiredFieldValidator>
                  </div>
            </div>
<%--Question adresse--%>            
             <div class="row">
                <div class="col-md-offset-1 col-md-4">
                <p><asp:Label ID="txtAdresse" runat="server" Text="Adresse : " CssClass="Label"></asp:Label></p>
                </div>
                <div class="col-md-4">
                <p><asp:TextBox ID="Adresse" runat="server" MaxLength="50" CssClass="inputText"></asp:TextBox></p>
                <asp:RequiredFieldValidator ID="ValidatorAdresse" runat="server" ErrorMessage="L'adresse doit être renseigné" Display="Dynamic" Text="Adresse obligatoire" ControlToValidate="Adresse" CssClass="validator"></asp:RequiredFieldValidator>
                     </div>
              </div>
<%--Complement adresse--%>
                     <div class="row">
                <div class="col-md-offset-1 col-md-4">
              <p><asp:Label ID="txtCompl" runat="server" Text="Compément adresse" CssClass="Label"></asp:Label></p>
                    </div>
                <div class="col-md-4">
                <p><asp:TextBox ID="Complement" runat="server" MaxLength="50" CssClass="inputText"></asp:TextBox></p>
                      </div>
            </div>
<%--Code Postal--%>
             <div class="row">
                <div class="col-md-offset-1 col-md-4">
            <p><asp:Label ID="txtCodePostal" runat="server" Text="Code Postal et ville : "></asp:Label></p>
                </div>
                <div class="col-md-4">
            <p><asp:TextBox ID="CodePostal" runat="server" MaxLength="5" CssClass="inputText"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="ValidatorCodePostal" runat="server" ErrorMessage="Le code postal est obligatoire" Display="Dynamic" Text="Code postal obligatoire" ControlToValidate="CodePostal" CssClass="validator"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCodePostal" runat="server" ErrorMessage="Le code postal n'est pas correct" Display="Dynamic" Text="Forme code postal incorrect" ControlToValidate="CodePostal" ValidationExpression="[0-9]{5}$" CssClass="validator"></asp:RegularExpressionValidator>
            <p><asp:TextBox ID="Ville" runat="server" MaxLength="50" CssClass="inputText"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="ValidatorVille" runat="server" ErrorMessage="Renseigné lieu d'habitation" Display="Dynamic" Text="Ville obligatoire" ControlToValidate="Ville" CssClass="validator"></asp:RequiredFieldValidator>
                          </div>
            </div>
<%--Question Pays--%>
                 <div class="row">
                <div class="col-md-offset-1 col-md-4">
                    <p><asp:Label ID="txtDropDown" runat="server" Text="Choissisez votre pays : "></asp:Label></p>
                    </div>
                <div class="col-md-4">
               <p><asp:DropDownList ID="DropDownList1" runat="server" CssClass="inputText">
               
                </asp:DropDownList></p>
                      </div>
            </div>
<%--Question mail--%>
         <div class="row">
                <div class="col-md-offset-1 col-md-4">
                <p><asp:Label ID="txtMail" runat="server" Text="Votre mail : "></asp:Label></p>
                    </div>
                <div class="col-md-4">
                    <p><asp:TextBox ID="Mail" runat="server" CssClass="inputText"></asp:TextBox></p>
                <asp:RequiredFieldValidator ID="ValidatorMail" runat="server" ErrorMessage="Le champs mail est obligatoitre" Display="Dynamic" Text="Mail obligatoire" ControlToValidate="Mail" CssClass="validator"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorMail" runat="server" ErrorMessage="Votre adresse mail n'est pas conforme" Display="Dynamic" Text="Forme adresse mail incorrect" ControlToValidate="Mail" ValidationExpression="[a-zA-Z.-]{1,}[@]{1}[a-zA-Z]{1,}[.]{1}[a-zA-Z]{2,4}$" CssClass="validator"></asp:RegularExpressionValidator>
                  </div>
            </div>

<%--question téléphone  --%> 
                        <div class="row">
                <div class="col-md-offset-1 col-md-4">     
            <p>
                <asp:Label ID="txtTel" runat="server" Text="Votre téléphone : "></asp:Label></p>
                    </div>
                <div class="col-md-4">
                <p><asp:TextBox ID="Tel" runat="server" CssClass="inputText"></asp:TextBox></p>
                <asp:RequiredFieldValidator ID="ValidatorTel" runat="server" ErrorMessage="Le numéro téléphone est obligatoire" Display="Dynamic" Text="Téléphone obligatoire" ControlToValidate="Tel" CssClass="validator"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTel" runat="server" ErrorMessage="Votre numéro téléphone n'est pas conforme" Display="Dynamic" Text="Forme téléphone incorrect" ControlToValidate="Tel" ValidationExpression="[+][1-9]{3}[0-9]{8}$" CssClass="validator"></asp:RegularExpressionValidator>
                          </div>
            </div>
<%--Question centre d'interets--%>
                     <div class="row">
                <div class="col-md-offset-1 col-md-4">
            <p>
                <asp:Label ID="txtCentre" runat="server" Text="Vos centres d'intérets : "></asp:Label></p>
                </div>
                <div class="col-md-4">
                <asp:CheckBoxList ID="Centre5" runat="server">
                    <asp:ListItem>Bricolage</asp:ListItem>
                    <asp:ListItem>Jardinage</asp:ListItem>
                    <asp:ListItem>Lecture</asp:ListItem>
                    <asp:ListItem>Voyages</asp:ListItem>
                </asp:CheckBoxList>
<%--Manque control required--%>
            <p><asp:Label ID="Label2" runat="server" Text="Choisissez au moins un centre d'intérêt"></asp:Label></p>

            </div>
            </div>

<%--FileUpLoad--%>

             <p>
             <asp:FileUpload ID="FileUpload1" runat="server" /><br />
             <asp:Label ID="UploadLabel1" runat="server" Text=""></asp:Label> </p>

           <p><asp:Button ID="Button2" runat="server" Text="Envoyer image" onclick="UploadButton_Click" CausesValidation="False" /></p>
            
            
            <asp:Image ID="Image1" runat="server" Width="500" Height="250" />
           
           



<%--bouton--%>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Envoyer" onclick="Button1_Click" /></p>
           
            
        </fieldset>
    </form>















</asp:Content>
