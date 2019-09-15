using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Amr_Groups
{
    public partial class NewUser : System.Web.UI.Page
    {
        BL.Session Sa = new BL.Session();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = Sa.Create_User(TextBox1.Text);
            if (dt.Rows.Count > 0)
            {
                Label5.Text = "User name not avaliable ";
                Label5.Visible = true;
                Label5.ForeColor = System.Drawing.Color.Red;
                TextBox1.Text = "";
                TextBox1.Focus();
            }
            else
            {

                Sa.ins_User(TextBox1.Text.ToLower(), TextBox2.Text);
                Label5.Visible = true;
            }
        }
    }
}