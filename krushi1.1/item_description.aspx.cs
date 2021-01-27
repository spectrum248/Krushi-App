using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace krushi1._1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\krushi1.1\krushi1.1\App_Data\Database1.mdf;Integrated Security=True");
        string productid;
        string mobile;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            Response.Redirect("buyitem.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            con.Open();
            mobile = Request.QueryString["mob"];
            productid = Server.UrlDecode(Request.QueryString["id"]);
            
            string str = "insert into cart (mob,productid) values('" + mobile + "','"+productid+"')";
            SqlCommand cmd = new SqlCommand(str, con);
            try {
                cmd.ExecuteNonQuery();
                Response.Redirect(String.Format("Cart.aspx?id={0}&mob={1}", Server.UrlEncode(productid), Server.UrlEncode(mobile)));
            }
            catch(Exception)
            {
                Response.Write("Product is already in the cart");
            }
        }

    }
}