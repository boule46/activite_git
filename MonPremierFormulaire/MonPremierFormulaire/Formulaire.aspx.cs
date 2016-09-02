using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.IO;
using System.Xml.Serialization;

namespace MonPremierFormulaire
{
    public partial class _Formulaire : Page
    {

        //[Serializable]
        //public class Pays
        //{
        //    public string IdPays2 { get; set; }
        //    public string IdPays3 { get; set; }
        //    public int IdPaysNum { get; set; }
        //    public string IdDevise { get; set; }
        //    public string LibellePays { get; set; }
        //}


        protected void Page_Load(object sender, EventArgs e)
        {
            //XmlDocument docPays = new XmlDocument();
            //docPays.Load(Server.MapPath("/App_Data/Pays.XML"));

            //XmlNodeList FieldNames = docPays.SelectNodes("LibellePays");


            //foreach (XmlElement item in docPays.DocumentElement.ChildNodes)
            //{

            //}
            

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            //function envoyer() {
            //    if (isFormulaireValide())
            //    {
            //        document.forms['frmCoordonnees'].submit();
            //    };
            //}
            //function isFormulaireValide() {
            //    var idPays = document.forms['frmCoordonnees'].elements['selPays'][document.forms['frmCoordonnees'].elements['selPays'].selectedIndex].value;
            //    var paysCourant = (idPays) ? findPays(idPays) : null;
            //    var bNom = hasValeur(document.getElementById('txtNom').value);
            //    var bPrenom = hasValeur(document.getElementById('txtPrenom').value);
            //    var bAdresse = hasValeur(document.getElementById('txtAdresse_P1').value);
            //    var bCodePostal = hasValeur(document.getElementById('txtCodePostal').value);
            //    var bVille = hasValeur(document.getElementById('txtVille').value);
            //    var bMail = hasValeur(document.getElementById('txtMail').value);
            //    if (bCodePostal)
            //    {
            //        var expRegCPostal = new RegExp(paysCourant.formatCodePostal);
            //        bCodePostal = expRegCPostal.test(document.getElementById('txtCodePostal').value);
            //    }
            //    if (bMail)
            //    {
            //        var expRegMail = cExpRegMail;
            //        bMail = expRegMail.test(document.getElementById('txtMail').value);
            //    }
            //    // Remettre tous les span visibles
            //    EffacerMessagesErreurs('span');
            //    // Afficher les erreurs
            //    if (!bNom) AfficherMessageErreur('M_Nom');
            //    if (!bPrenom) AfficherMessageErreur('M_Prenom');
            //    if (!bAdresse) AfficherMessageErreur('M_Adresse');
            //    if (!bCodePostal || !bVille)
            //    {
            //        var message = document.getElementById('M_CpVille');
            //        if (!bCodePostal && !bVille)
            //            message.innerHTML = ' * le code postal et la ville sont erronés';
            //        else if (!bCodePostal) message.innerHTML = ' * le code postal est erroné';
            //        else if (!bVille) message.innerHTML = " * la ville n''est pas renseignée";
            //        AfficherMessageErreur('M_CpVille');
            //    }
            //    if (!bMail) AfficherMessageErreur('M_Mail');
            //    var bInterets = isInteretsValide();
            //    if (!bInterets) AfficherMessageErreur('M_Interets');
            //    return (bNom && bPrenom && bAdresse && bCodePostal && bVille && bMail && bInterets);
            //}






















            if (FileUpload1.HasFile)
            {
                if(FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    try
                    {
                        string filename = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/App_GlobalResources/Images_Upload") + filename);
                        UploadLabel1.Text = "Image uploaded";
                    }
                    catch(Exception ex)
                    {
                        UploadLabel1.Text = "Erreur, l'image n'a pas se charger, essayer un autre photo";
                    }
                }
                else
                {
                    UploadLabel1.Text = "Vous pouvez que charger des photo en format JPEG";
                }
            }
        }

        protected void radioBtn2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}