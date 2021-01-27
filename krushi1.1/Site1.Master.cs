using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace krushi1._1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ("9876543210" == Request.QueryString["mob"])
            {
                Additem.Visible = true;
            }

        }

        protected void Additem_Click(object sender, EventArgs e)
        {
            Response.Redirect("Additem.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Request.Cookies.Clear();
            Response.Redirect("Signup.aspx");
        }
    }
}