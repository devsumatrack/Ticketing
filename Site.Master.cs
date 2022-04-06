using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticketing
{
    public partial class SiteMaster : MasterPage
    {
        private Class.InfosParametre P = new Class.InfosParametre();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && !Class.InfosParametre.Logged)
            {
                ButtonAcceuil.Visible = false;           
            }                  
        }
        public void ShowMenu()
        {
           
                   
        }
    }
}