using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Ticketing
{
    public partial class Loggin : System.Web.UI.Page
    {
        private Class.InfosParametre P = new Class.InfosParametre();

        private SqlConnection con = new SqlConnection(Class.InfosParametre.StringConnection);

        private Class.User DataUser = new Class.User();
        private string user = "Admin";
        private string Passeword = "root";

        protected void Page_Load(object sender, EventArgs e)
        {
   
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckLoggin(TextBox1.Text, TextBox2.Text);
            foreach (var L in Class.User.UserInfos)
            {
                if(L.user == TextBox1.Text && L.passeword == TextBox2.Text)
                {
                    Class.InfosParametre.Logged = true;
                    Master.FindControl("ButtonAcceuil").Visible = true;
                    Response.Redirect("Default");

                }else
                {
                    LblMessage.Visible = true;
                }
            }
        }
                
        private void CheckLoggin(string User,string Passeword)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT* FROM Table_User WHERE Username=@user AND Passeword=@Passeword";
            cmd.Parameters.AddWithValue("@user",User);
            cmd.Parameters.AddWithValue("@Passeword",Passeword);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while(reader.Read())
                {
                    DataUser = new Class.User
                    {
                        user = reader.GetValue(1).ToString().Trim(),
                        passeword = reader.GetValue(2).ToString().Trim(),
                    };
                    Class.User.UserInfos.Add(DataUser);
                }
            }
            con.Close();
           
        }
    }
}