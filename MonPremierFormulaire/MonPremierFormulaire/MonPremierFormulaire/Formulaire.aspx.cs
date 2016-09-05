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
        public DropDownList ChargerDropDown()
        {
            XmlDocument docPays = new XmlDocument();
            docPays.Load(Server.MapPath("/App_Data/Pays.XML"));

            //XmlNodeList element = docPays.SelectNodes("LibellePays");


            foreach (XmlElement item in docPays.DocumentElement.ChildNodes)
            {

                ListItem LI = new ListItem();
                string LibellePays1 = item.ChildNodes[4].FirstChild.Value;

                DropDownList1.Items.Add(LibellePays1);

            }

            return DropDownList1;

        }

        string filename2;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ChargerDropDown();
              
            }

           

        }


        protected void UploadButton_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    try
                    {
                        string filename = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/Images_Upload/") + filename);
                        filename2 =Server.UrlEncode("/Images_Upload/" + filename);
                        UploadLabel1.Text = "Image uploaded";
                       
                        Image1.ImageUrl = filename2;
                     
                    }
                    catch (Exception ex)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
             if (Page.IsValid)
                {
                    Response.Redirect("http://www.afpa.fr");
                }
        }
    }
}