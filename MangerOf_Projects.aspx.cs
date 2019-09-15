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
    public partial class MangerOf_Projects : System.Web.UI.Page
    {
        BL.MasterPic BL = new BL.MasterPic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string GetNewName()
        {
            DateTime dt1970 = new DateTime(1970, 1, 1);
            DateTime current = DateTime.Now;
            TimeSpan span = current - dt1970;
            string text = span.TotalMilliseconds.ToString().Replace(":", "").Replace(".", "");
            return text;


        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
           
            var       Finfo = new FileInfo(FileUploadMAster.PostedFile.FileName);
            try
            {
                if (FileUploadMAster.HasFile)
                {
                    if (Finfo.Extension.ToLower() == ".jpg" || Finfo.Extension.ToLower() == ".png" || Finfo.Extension.ToLower() == ".gif" || Finfo.Extension.ToLower() == ".jpeg")
                    {


                        string Name = GetNewName();
                        string path = Server.MapPath("/images/portfolio/" + Name + Path.GetExtension(FileUploadMAster.PostedFile.FileName));
                        FileUploadMAster.SaveAs(path);
                        BL.ins_tblMasterPic(txtPName.Text, TxtName_En.Text, (@"images\portfolio\" + Name + Path.GetExtension(FileUploadMAster.PostedFile.FileName)), int.Parse(ddlType.SelectedItem.Value),TextArea1.InnerText);
                        DataTable dt = new DataTable();
                        dt = BL.Get_tblMasterPic();
                        this.ViewState.Clear();
                        Response.Redirect("Manger_SubPic.aspx?ID=" + dt.Rows[0][0].ToString(), false);

                    }

                    else { Label5.Visible = true; }
                }
            }
            catch { Response.Redirect("Error.aspx", false); }
           
            
        }

        protected void FileUploadMAster_DataBinding(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}