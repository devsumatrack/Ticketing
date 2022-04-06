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
    public partial class Ajout_Materiel : System.Web.UI.Page
    {

        private SqlConnection con = new SqlConnection(Class.InfosParametre.StringConnection);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertData();
        }
        private void InsertData()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Table_Materiel VALUES(@ID,@DESIGNATION,@MARQUE,@MODELE,@FONCTION,@HYPERVISEUR,@QUANTITE,@ANNEA)";
            cmd.Parameters.AddWithValue("@ID",Class.InfosParametre.ID);
            cmd.Parameters.AddWithValue("@DESIGNATION", txtDes.Text);
            cmd.Parameters.AddWithValue("@MARQUE", txtMarque.Text);
            cmd.Parameters.AddWithValue("@MODELE", txtModele.Text);
            cmd.Parameters.AddWithValue("@FONCTION", txtFonction.Text);
            cmd.Parameters.AddWithValue("@HYPERVISEUR", txtHyp.Text);
            cmd.Parameters.AddWithValue("@QUANTITE", txtQTU.Text);
            cmd.Parameters.AddWithValue("@ANNEA", txtAnne.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("liste_Materiel");
        }
    }
}