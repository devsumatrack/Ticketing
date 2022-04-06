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
    public partial class Accueil : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(Class.InfosParametre.StringConnection);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ShowInfos();
            }
        }
        private void ShowInfos()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT* FROM Client WHERE ID=@ID";
            cmd.Parameters.AddWithValue("@ID", Class.InfosParametre.ID);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    string Nom = reader.GetValue(1).ToString().Trim();
                    string Téléphone = reader.GetValue(2).ToString().Trim();
                    string Mail = reader.GetValue(3).ToString().Trim();


                    LblNom.Text = Nom;
                    LblTéléphone.Text = Téléphone;
                    lblMail.Text = Mail;
                 
                }
            }
            con.Close();
        }

        protected void Button2_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "Ticket")
            {
                Response.Redirect("ListeTicket");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("liste_Materiel");
        }
    }
}