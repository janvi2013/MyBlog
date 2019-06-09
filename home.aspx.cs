using nsMyBlogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Script.Services;


public partial class _Default : System.Web.UI.Page
{
    nsMyBlogs.clsMyBlogs obj = new nsMyBlogs.clsMyBlogs();
    nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    [WebMethod]
    [ScriptMethod(UseHttpGet = true)]
    public static List<clsBlogSystemprp> GetNewPosts()
    {
       nsMyBlogs.clsMyBlogs obj = new nsMyBlogs.clsMyBlogs();
        //nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();
       
        try
        {
            DataTable dt = obj.GetNewPost();           
            List<clsBlogSystemprp> ListToReturn = new List<clsBlogSystemprp>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();
                objprp.p_Id = Convert.ToInt32(dt.Rows[i]["Id"]);
                objprp.p_Author = dt.Rows[i]["Author"].ToString();
                objprp.p_Title = dt.Rows[i]["Title"].ToString();
                objprp.p_ShortDescription = dt.Rows[i]["ShortDescription"].ToString();
                objprp.p_Description = dt.Rows[i]["Description"].ToString();
                objprp.p_PostedDate = Convert.ToDateTime(dt.Rows[i]["PostedOn"]);
                objprp.p_ModifiedDate = Convert.ToDateTime(dt.Rows[i]["Modified"]);
                objprp.p_Category = dt.Rows[i]["Category"].ToString();
                objprp.p_ThumbnailImage = dt.Rows[i]["Thumbnailimage"].ToString();
                objprp.p_PostedDays = dt.Rows[i]["PostedDays"].ToString();
                ListToReturn.Add(objprp);
            }

            return ListToReturn;

           



            



        }
        catch (Exception)
        {
            
            throw;
        }
      

    }
    [WebMethod]
    [ScriptMethod(UseHttpGet = true)]
    public static List<clsBlogSystemprp> GetOldPosts()
    {
        nsMyBlogs.clsMyBlogs obj = new nsMyBlogs.clsMyBlogs();
        //nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();

        try
        {
            DataTable dt = obj.GetOldPost();
            List<clsBlogSystemprp> ListToReturn = new List<clsBlogSystemprp>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();

                objprp.p_Id = Convert.ToInt32(dt.Rows[i]["Id"]);
                objprp.p_Author = dt.Rows[i]["Author"].ToString();
                objprp.p_Title = dt.Rows[i]["Title"].ToString();
                objprp.p_ShortDescription = dt.Rows[i]["ShortDescription"].ToString();
                objprp.p_Description = dt.Rows[i]["Description"].ToString();
                objprp.p_PostedDate = Convert.ToDateTime(dt.Rows[i]["PostedOn"]);
                objprp.p_ModifiedDate = Convert.ToDateTime(dt.Rows[i]["Modified"]);
                objprp.p_Category = dt.Rows[i]["Category"].ToString();
                objprp.p_PostedDays = dt.Rows[i]["PostedDays"].ToString();
                objprp.p_ThumbnailImage = dt.Rows[i]["Thumbnailimage"].ToString();
                ListToReturn.Add(objprp);
            }

            return ListToReturn;
            

        }
        catch (Exception)
        {

            throw;
        }

    }
}