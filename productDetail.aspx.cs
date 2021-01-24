using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace project_702
{
    public partial class productDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void use(object sender, DataListItemEventArgs e)
        {

            Label prd = (Label)e.Item.FindControl("productNameLabel");
            ViewState["poductName"] = prd.Text;
            Label brd = (Label)e.Item.FindControl("brandLabel");
            ViewState["brand"] = brd.Text;
            Image img = (Image)e.Item.FindControl("Image1");
            ViewState["image"] = img.ImageUrl.ToString();
            Label dis = (Label)e.Item.FindControl("discriptionLabel");
            ViewState["discription"] = dis.Text;
            /* Label img = (Label)e.Item.FindControl("Image1");
             Label1.Text += img.Text;

         */





        }


        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
