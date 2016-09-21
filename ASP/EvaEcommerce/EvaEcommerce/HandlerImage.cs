using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EvaEcommerce
{
    public class HandlerImage : IHttpHandler
    {
        public bool IsReusable
        {
            get { return false; }
        }

        public void ProcessRequest(HttpContext context)
        {
            int? idImage = int.Parse(context.Request.Params["parametre passer en post ou get"]);
            if(idImage != null)
            {
                GetImage(context.Response, (int)idImage);
            }
        }


    }
}