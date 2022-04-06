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
    public partial class AjoutTicket : System.Web.UI.Page
    {

        private SqlConnection con = new SqlConnection(Class.InfosParametre.StringConnection);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetDate();
                GetInfosMateriel();
                if (Class.DT.Modifier)
                {
                    Label1.Text = "MODIFIER";
                   
                     GetInfos();
                    
                    
                } else
                {
                    Label1.Text = "AJOUT";
                    
                }
            }
            
        }

        private void SetDate()
        {
            DateD.Text = DateTime.Now.ToShortDateString();
            DateFin.Text = DateTime.Now.ToShortDateString();
        }
        private void GetInfosMateriel()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT* FROM Table_Materiel WHERE ID_CLIENT=@ID";
            cmd.Parameters.AddWithValue("@ID", Class.InfosParametre.ID);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    string Designation = reader.GetValue(2).ToString().Trim();

                    DropDownCategorie.Items.Add(Designation);
                   
                }
            }
            con.Close();
        }

        private void GetInfos()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT* FROM Table_Client WHERE ID=@ID";
            cmd.Parameters.AddWithValue("@ID", Class.InfosParametre.IDTicket);
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.HasRows)
            {
                while(reader.Read())
                {
                    string Categorie = reader.GetValue(2).ToString().Trim();
                    string Classification = reader.GetValue(3).ToString().Trim();
                    string Statut = reader.GetValue(4).ToString().Trim();
                    string Creation = reader.GetValue(5).ToString().Trim();
                    string Attribue = reader.GetValue(7).ToString().Trim();
                    string DateDs = reader.GetValue(8).ToString().Trim();
                    string DateF = reader.GetValue(9).ToString().Trim();
                    string Dure = reader.GetValue(10).ToString().Trim();
                    string Commentaire = reader.GetValue(11).ToString().Trim();

                    TxtClassification.Text = Classification;
                    DropDownListStatut.Text = Statut;
                    DropDownListAttribue.Text = Attribue;
                    DropDownCategorie.Text = Categorie;
                    DateD.Text= DateDs;
                    DateFin.Text = DateF;
                    LblDure.Text=Dure;
                    TxtCommentaire.Text = Commentaire;
                }
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CalendarDebut.Visible =true;
            CalendarFin.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CalendarFin.Visible = true;
            CalendarDebut.Visible = false;

        }

        protected void CalendarDebut_SelectionChanged(object sender, EventArgs e)
        {
            DateD.Text = CalendarDebut.SelectedDate.ToShortDateString();
            LblDure.Text = (DateTime.Parse(DateFin.Text) - DateTime.Parse(DateD.Text)).ToString();
        }

        protected void CalendarFin_SelectionChanged(object sender, EventArgs e)
        {
          
            DateFin.Text = CalendarFin.SelectedDate.ToShortDateString();
            LblDure.Text = (DateTime.Parse(DateFin.Text) - DateTime.Parse(DateD.Text)).ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (!Class.DT.Modifier)
            {
                
                cmd.CommandText = "INSERT INTO Table_Client VALUES(@ID,@Categorie,@Classification,@Statut,@Creation,@Groupe,@Attribue,@DateCreation,@DateFin,@Dure,@Commentaire)";
                foreach (var L in Class.Data.InfosClient)
                {
                    cmd.Parameters.AddWithValue("@ID", L.ID);
                }
                cmd.Parameters.AddWithValue("@Categorie", DropDownCategorie.Text);
                cmd.Parameters.AddWithValue("@Classification", TxtClassification.Text);
                cmd.Parameters.AddWithValue("@Statut", DropDownListStatut.Text);
                cmd.Parameters.AddWithValue("@Creation", "BBS");
                cmd.Parameters.AddWithValue("@Groupe", "BBS");
                cmd.Parameters.AddWithValue("@Attribue", DropDownListAttribue.Text);
                cmd.Parameters.AddWithValue("@DateCreation", DateD.Text);
                cmd.Parameters.AddWithValue("@DateFin", DateFin.Text);
                cmd.Parameters.AddWithValue("@Dure", LblDure.Text);
                cmd.Parameters.AddWithValue("@Commentaire", TxtCommentaire.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("ListeTicket");
            }else
            {

                cmd.Parameters.AddWithValue("@ID", Class.InfosParametre.IDTicket);               
                cmd.CommandText = "UPDATE Table_Client SET Categorie=@Categorie,Classification=@Classification,Statut=@Statut,Creation=@Creation,Groupe=@Groupe,Attribue=@Attribue,DateCreation=@DateCreation,DateFin=@DateFin,Dure=@Dure,Commentaire=@Commentaire WHERE ID=@ID ";
                cmd.Parameters.AddWithValue("@Categorie", DropDownCategorie.Text);
                cmd.Parameters.AddWithValue("@Classification", TxtClassification.Text);
                cmd.Parameters.AddWithValue("@Statut", DropDownListStatut.Text);
                cmd.Parameters.AddWithValue("@Creation", "BBS");
                cmd.Parameters.AddWithValue("@Groupe", "BBS");
                cmd.Parameters.AddWithValue("@Attribue", DropDownListAttribue.Text);
                cmd.Parameters.AddWithValue("@DateCreation", DateD.Text);
                cmd.Parameters.AddWithValue("@DateFin", DateFin.Text);
                cmd.Parameters.AddWithValue("@Dure", LblDure.Text);
                cmd.Parameters.AddWithValue("@Commentaire", TxtCommentaire.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("ListeTicket");
            }
        }
               
    }
}