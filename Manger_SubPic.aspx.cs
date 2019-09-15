using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace Amr_Groups
{
    public partial class Manger_SubPic : System.Web.UI.Page
    {
        BL.MasterPic BL = new BL.MasterPic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string GetNewName()
        {
            string str = DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "");
            str += DateTime.Now.Millisecond.ToString();
            str = str.Substring(0, str.Length - 2);
            return str;


        }
    
        protected void btnAdd_Click1(object sender, EventArgs e)
        {
            var Finfo = new FileInfo(fuImg01.PostedFile.FileName);
            try
            {
                if (!fuImg01.HasFile)
                {
                    Label12.Visible = true;
                }
                else
                {
                    if (Finfo.Extension.ToLower() == ".jpg" || Finfo.Extension.ToLower() == ".png" || Finfo.Extension.ToLower() == ".gif" || Finfo.Extension.ToLower() == ".jpeg")
                    {
                        string Name = GetNewName();
                        string path = Server.MapPath("/images/portfolio/" + Name + Path.GetExtension(fuImg01.PostedFile.FileName));
                        fuImg01.SaveAs(path);
                        BL.ins_tblSubPic((@"images\portfolio\" + Name + Path.GetExtension(fuImg01.PostedFile.FileName)), Guid.Parse(Request.QueryString["ID"]));
                        this.ViewState.Clear();
                        Response.Redirect("Manger_SubPic.aspx?ID=" + Request.QueryString["ID"], false);
                    }
                    else { Label12.Visible = true; }
                }
            }
            catch { Response.Redirect("Error.aspx", false); }
        }
    }
}