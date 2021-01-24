using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace project_702
{
    public partial class addM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = @"~\img\product\" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(s));
            SqlConnection a = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String cmd = "insert into product(productName,brand,image,catagory,discription) values('" + nameText.Text + "','" + brandText.Text + "','" + s + "','" + catText.Text + "','" + disText.Text + "')";

            SqlCommand b = new SqlCommand(cmd, a);
            a.Open();
            b.ExecuteNonQuery();
            a.Close();
        }
    }
}