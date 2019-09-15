using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Amr_Groups
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        BL.Session SA = new BL.Session();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == Session["LogPass"].ToString())
            {
                SA.upDatePassLog(Session["LogName"].ToString(), TextBox2.Text);
                Label5.Visible = true;
                Label5.Text = "Password Changed ";
                Label5.ForeColor = System.Drawing.Color.Green;
                ViewState.Clear();

            }
            else
            {
                Label5.Visible = true;


            }
        }
    }
}