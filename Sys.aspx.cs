using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Amr_Groups
{
    public partial class Sys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BL.Session BL = new BL.Session();


            DataTable dt = new DataTable();
            dt = BL.Login(TextBox1.Text.ToLower(), TextBox2.Text);

            if (dt.Rows.Count > 0)
            {

                Session["LogName"] = dt.Rows[0][0].ToString();
                Session["LogPass"] = dt.Rows[0][1].ToString();


                Response.Redirect("~/MangerOf_Projects.aspx", false);

            }
        }
    }
}