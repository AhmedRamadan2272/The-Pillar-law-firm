using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Amr_Groups
{
    public partial class Admin : System.Web.UI.MasterPage
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
          if (Session["LogName"] == null)
            {
                Response.Redirect("Sys.aspx", false);
            }
            else { Label1.Text = "Welcome "+ Session["LogName"].ToString(); }
        }
    }
}