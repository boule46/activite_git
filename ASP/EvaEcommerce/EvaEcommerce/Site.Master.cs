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
            int i = 0;

            DS = new DataSetEcommerce();
            TA = new CategoryTableAdapter();
            TA.FillByParentCategoryId(DS.Category, 0);

            StringBuilder SB = new StringBuilder();

            foreach (DataSetEcommerce.CategoryRow item in DS.Category)
            {
                
                if (i < 3)
                {
                    SB.Append("<li class='DropDown'>" + "<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>" + item.Name + "<span class='caret'></span></a>" + "</li>");
                }
                else { SB.Append("<li><a href='#'>" + item.Name + "</a></li>"); }

                i++;
                    

            }

            catPrin.InnerHtml = SB.ToString(); ;

        }

        public void getSousCategoryMenu(int nombre)
        {
            int i = 0;
            DS = new DataSetEcommerce();
            TA = new CategoryTableAdapter();
            TA.FillByParentCategoryId(DS.Category, nombre);

            StringBuilder SBSous = new StringBuilder();

            foreach (DataSetEcommerce.CategoryRow item in DS.Category)
            {
                if(i == 0)
                {
                    SBSous.Append("< ul class='dropdown-menu'>" + " <li><a href='#'>" + item.Name + "</a></li>");
                }
                else
                {
                    SBSous.Append(" <li><a href='#'>" + item.Name + "</a></li>");
                }



                i++;
            }

            SBSous.Append("</ul>");

            .innerHTML = SBSous.ToString();

    }
    

}