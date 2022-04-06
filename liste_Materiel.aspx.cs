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
    public partial class liste_Materiel : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(Class.InfosParametre.StringConnection);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetData();
            }
            
        }

        private void GetData()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT* FROM Table_Materiel WHERE ID_CLIENT=@ID";
            cmd.Parameters.AddWithValue("@ID",Class.InfosParametre.ID);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            GridViewMateriel.DataSource = dt;
            GridViewMateriel.DataBind();
        }

        private void DeleteMateriel(string ID)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM Table_Materiel WHERE ID=@ID";
            cmd.Parameters.AddWithValue("@ID",ID);
            cmd.ExecuteNonQuery();
            con.Close();
            GetData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ajout_Materiel");
        }

        protected void GridViewMateriel_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName== "Del")
            {
                string IDMateriel = e.CommandArgument.ToString();
                DeleteMateriel(IDMateriel);
            }
        }


    }
}