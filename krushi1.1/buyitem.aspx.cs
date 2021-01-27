using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace krushi1._1
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string price = Request.QueryString["price"];
            Label1.Text = price;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Your order is placed... ')</script>");
        }
    }
}