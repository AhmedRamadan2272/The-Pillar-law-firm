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
    public partial class UpDateProjects : System.Web.UI.Page
    {
        BL.MasterPic BL = new BL.MasterPic();

        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Image1.ImageUrl =  (GridView1.SelectedRow.Cells[2].Text.ToString());
            TxtName.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
            TxtName_En.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
            ViewState["PICID"] = GridView1.SelectedRow.Cells[3].Text.ToString();
            TextArea1.InnerHtml = GridView1.SelectedRow.Cells[5].Text.ToString();
            DropDownList1.SelectedIndex = ddlType.SelectedIndex;
            

                

        }
        private void Clear()
        {
            Panel1.Visible = false;
        }

        protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                Clear();
 
            
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            BL.Delete_tblMasterPic(int.Parse(ViewState["PICID"].ToString()));
            try
            {
                FileInfo fi = new FileInfo(Server.MapPath((GridView1.SelectedRow.Cells[2].Text.ToString())));
                fi.Delete();
            }
            catch { return; }
            Response.Redirect("UpDateProjects.aspx", false);
        }
        string GetNewName()
        {
            string str = DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "");
            str += DateTime.Now.Millisecond.ToString();
            str = str.Substring(0, str.Length - 2);
            return str;


        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
           
            try
            {
                if (!FileUploadMAster.HasFile)
                {

                    BL.Update_tblMasterPic(TxtName.Text, TxtName_En.Text, "", int.Parse(ViewState["PICID"].ToString()), false, TextArea1.InnerText,DropDownList1.SelectedIndex);

                }
                else
                {
                    var Finfo = new FileInfo(FileUploadMAster.PostedFile.FileName);

                    if (Finfo.Extension.ToLower() == ".jpg" || Finfo.Extension.ToLower() == ".png" || Finfo.Extension.ToLower() == ".gif" || Finfo.Extension.ToLower() == ".jpeg")
                    {
                        string Name = GetNewName();
                        string path = Server.MapPath("~/images/portfolio/" + Name + Path.GetExtension(FileUploadMAster.PostedFile.FileName));
                        FileUploadMAster.SaveAs(path);
                        try
                        {
                            FileInfo fi = new FileInfo(Server.MapPath((GridView1.SelectedRow.Cells[2].Text.ToString())));
                            fi.Delete();
                        }
                        catch { return; }


                        BL.Update_tblMasterPic(TxtName.Text, TxtName_En.Text, (@"images\portfolio\" + Name + Path.GetExtension(FileUploadMAster.PostedFile.FileName)), int.Parse(ViewState["PICID"].ToString()), true, TextArea1.InnerText, DropDownList1.SelectedIndex);
                    }
                    else { Label13.Visible = true; }

                }
                Response.Redirect("UpDateProjects.aspx", false);

            }
            catch { Response.Redirect("Error.aspx", false); }
            finally{
                //this.ViewState.Clear();
             
             
            
            
            }
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("UpDateSubPic.aspx?ID=" + GridView1.SelectedRow.Cells[4].Text.ToString(), false);
            
        }
    }
}