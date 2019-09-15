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
    public partial class UpDateSubPic : System.Web.UI.Page
    {
        BL.MasterPic BL = new BL.MasterPic();
        

        protected void Page_Load(object sender, EventArgs e)
        {
         
            if (GridView2.Rows.Count==0)
            {
                Panel1.Visible = true;
                btnAdd.Visible=btnAdd0.Visible=false;
                
            }
            ViewState["UID"] = Request.QueryString["ID"];
        }


 
        
            
         

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            Panel1.Visible = true;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = true;
             
           ViewState["IDSubPIC"] = GridView2.SelectedRow.Cells[1].Text.ToString();
           ViewState["Dest"] = GridView2.SelectedRow.Cells[0].Text.ToString();
           Image2.ImageUrl = ViewState["Dest"].ToString();
          // ViewState["UID"] = Request.QueryString["ID"];
           Image2.Visible = true;
        }

        protected void btnAdd0_Click(object sender, EventArgs e)
        {
            BL.Delete_tblSubPic(int.Parse(ViewState["IDSubPIC"].ToString()));
           
            try
            {
                FileInfo fi = new FileInfo(Server.MapPath( ViewState["Dest"].ToString()));
                fi.Delete();
            }
            catch { return; }
            Response.Redirect("UpDateSubPic.aspx?ID="+ViewState["UID"], false);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
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
                        string path = Server.MapPath("~/images/portfolio/" + Name + Path.GetExtension(fuImg01.PostedFile.FileName));
                        fuImg01.SaveAs(path);
                        try
                        {
                            FileInfo fi = new FileInfo(Server.MapPath(ViewState["Dest"].ToString()));
                            fi.Delete();
                        }
                        catch { return; }


                        BL.Update_tblSubPic((@"images\portfolio\" + Name + Path.GetExtension(fuImg01.PostedFile.FileName)), int.Parse(ViewState["IDSubPIC"].ToString()));
                        Response.Redirect("UpDateSubPic.aspx?ID=" + ViewState["UID"], false);
                    }
                    else { Label13.Visible = true; }
                }

            }
            catch { Response.Redirect("Error.aspx", false); }
          //  finally { //this.ViewState.Clear(); }
          

        }

        string GetNewName()
        {
            string str = DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "");
            str += DateTime.Now.Millisecond.ToString();
            str = str.Substring(0, str.Length - 2);
            return str;


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var Finfo = new FileInfo(fuImg01.PostedFile.FileName);

            if (!fuImg01.HasFile)
            {



            }
            else
            {
                try
                {
                    if (Finfo.Extension.ToLower() == ".jpg" || Finfo.Extension.ToLower() == ".png" || Finfo.Extension.ToLower() == ".gif" || Finfo.Extension.ToLower() == ".jpeg")
                    {
                        string Name = GetNewName();
                        string path = Server.MapPath("/images/portfolio/" + Name + Path.GetExtension(fuImg01.PostedFile.FileName));
                        fuImg01.SaveAs(path);
                        BL.ins_tblSubPic((@"images\portfolio\" + Name + Path.GetExtension(fuImg01.PostedFile.FileName)), Guid.Parse(Request.QueryString["ID"]));
                        Response.Redirect("UpDateSubPic.aspx?ID=" + ViewState["UID"], false);
                    }
                    else { Label13.Visible = true; }
                }
                catch { Response.Redirect("Error.aspx", false); }
            }
        }
    }
}