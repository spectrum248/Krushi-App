using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace krushi1._1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\krushi1.1\krushi1.1\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            string mob = Server.UrlDecode(Request.QueryString["mob"]);

            string str = " select sum(productdetails.price) from productdetails,cart where productdetails.productid=cart.productid and mob='" + mob + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            int price = Convert.ToInt32(0);
            Response.Redirect("buyitem.aspx?Totalprice="+price);
       }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            string mob = Server.UrlDecode(Request.QueryString["mob"]);

            string str = "Delete  from cart where Productid='"+DropDownList1.SelectedValue+"'and mob='"+mob+"'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            Response.Write("Product removed from cart with id="+DropDownList1.SelectedValue);

        }
    }
}