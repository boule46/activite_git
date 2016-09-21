﻿using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using EvaEcommerce.DataSetEcommerceTableAdapters;
using System.Text;
using Newtonsoft.Json;
using System.Data.SqlClient;
using System.Data;

namespace EvaEcommerce
{
    public partial class SiteMaster : MasterPage
    {
        private DataSetEcommerce DS;
        private CategoryTableAdapter TA;
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // Le code ci-dessous vous aide à vous protéger des attaques XSRF
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Utiliser le jeton Anti-XSRF à partir du cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Générer un nouveau jeton Anti-XSRF et l'enregistrer dans le cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Définir un jeton Anti-XSRF
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Valider le jeton Anti-XSRF
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Échec de la validation du jeton Anti-XSRF.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            getPrincipalesCategoryMenu();

        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

        public void getPrincipalesCategoryMenu()
        {

            DS = new DataSetEcommerce();
            TA = new CategoryTableAdapter();
            TA.Fill(DS.Category);

            StringBuilder SB = new StringBuilder();

            foreach (DataSetEcommerce.CategoryRow item in DS.Category)
            {
                if(item.ParentCategoryId == 0)//si c'est des menu parent
                {
                    DataRow[] ligneEnfants = DS.Category.Select("ParentCategoryId = " + item.Id);
                    if (ligneEnfants.Length > 0)//si les menu ont des souscategories
                    {
                        SB.Append("<li class='DropDown'>" + "<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>" + item.Name + "<span class='caret'></span></a>");

                        SB.Append("<ul class='dropdown-menu'>");

                        foreach (DataSetEcommerce.CategoryRow element in ligneEnfants)
                        {
                            SB.AppendFormat("<li><a href=\"Produit.aspx?categoryId={0}\">{1}</a></li>", element.Id, element.Name);
                        }

                        SB.Append("</ul></li>");

                    }
                    else { SB.Append("<li><a href='#'>" + item.Name + "</a></li>"); }//si il n'y a pas des sous-categories
                }

            }

            catPrin.InnerHtml = SB.ToString(); // + SBsous.ToString();

        }

        

    }
    

}