using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nsMyBlogs;

public partial class Admin_Default : System.Web.UI.Page
{
    nsMyBlogs.clsMyBlogs objMyBlog = new clsMyBlogs();
    nsMyBlogs.clsBlogSystemprp objMyBlogprp = new clsBlogSystemprp();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    
    protected void btnSavePost_Click1(object sender, EventArgs e)
    {
        String allnull = "It is null at this time";
        //  bool nul = true;

       
        if (PublishField.Checked)
        {
            btnSavePost.Enabled = true;
            objMyBlogprp.p_Author = Request.Form["text-author"];
            objMyBlogprp.p_Title = Request.Form["text-title"];
            objMyBlogprp.p_ShortDescription = Request.Form["text-title"];
            objMyBlogprp.p_Description = Request.Form["textarea-input"];
            objMyBlogprp.p_Meta = allnull;
            objMyBlogprp.p_UrlSlug = allnull;
            objMyBlogprp.p_Published = true;
            objMyBlogprp.p_PostedDate = DateTime.Now;
            objMyBlogprp.p_ModifiedDate = DateTime.Now;
            objMyBlogprp.p_Category = CategoryField.Items[CategoryField.SelectedIndex].Text;
            objMyBlog.saveBlogSystem(objMyBlogprp);
        }
        else
        {

           
            
        }

    }
}