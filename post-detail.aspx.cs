using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using nsMyBlogs;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;



public partial class _Default : System.Web.UI.Page
{
    Int32 id;
    nsMyBlogs.clsMyBlogs obj = new nsMyBlogs.clsMyBlogs();
    nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ToString();
        if (con.State==ConnectionState.Closed)
        {
            con.Open();
        }
        Hidden_PostId.Value= (HttpContext.Current.Request.QueryString["Id"]);
       
        id= Convert.ToInt32((HttpContext.Current.Request.QueryString["Id"]));
        // DataTable dt = obj.GetBlogDetails(id);
        SqlCommand cmd = new SqlCommand("sp_getBlogDetails_ForMyBlog", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        
        HtmlGenericControl Title = ((HtmlGenericControl)this.Page.Master.FindControl("titleforshare"));
        Title.InnerText = dt.Rows[0]["Title"].ToString();

        HtmlGenericControl MetaDescription = ((HtmlGenericControl)this.Page.Master.FindControl("MetaForDescription"));
        MetaDescription.Attributes.Add("content", HttpUtility.HtmlDecode( dt.Rows[0]["DescText"].ToString()));

        HtmlGenericControl MetaImage = ((HtmlGenericControl)this.Page.Master.FindControl("MetaForImage"));
        string pattern = Regex.Match(dt.Rows[0]["Thumbnailimage"].ToString(), "<img.+?src=[\"'](.+?)[\"'].+?>", RegexOptions.IgnoreCase).Groups[1].Value;
        MetaImage.Attributes.Add("content", "http://www.thenewsdigital.com" + pattern);
    }

    [WebMethod]
    [ScriptMethod(UseHttpGet = true)]
    public static List<clsBlogSystemprp> GetPostDetails()
    {
        nsMyBlogs.clsMyBlogs obj = new nsMyBlogs.clsMyBlogs();
        //nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if(con.State==ConnectionState.Closed)
        {
            con.Open();
        }
        
        try
        {
          //  Int32 id = Convert.ToInt32(HttpContext.Current.Request.QueryString["Id"]);
            // DataTable dt = obj.GetNewPost();
            SqlCommand cmd = new SqlCommand("sp_getBlogDetails_ForMyBlog", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(HttpContext.Current.Request.QueryString["Id"]);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            List<clsBlogSystemprp> ListToReturn = new List<clsBlogSystemprp>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();
                objprp.p_Author = dt.Rows[i]["Author"].ToString();
                objprp.p_Title = dt.Rows[i]["Title"].ToString();
                HttpContext.Current.Session["Title"]= dt.Rows[i]["Title"].ToString();
                
                objprp.p_ShortDescription = dt.Rows[i]["ShortDescription"].ToString();
                objprp.p_Description = dt.Rows[i]["Description"].ToString();
                HttpContext.Current.Session["Description"] = dt.Rows[i]["Description"].ToString();
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
    public static List<clsBlogSystemprp> GetRelatedPosts()
    {
        nsMyBlogs.clsMyBlogs obj = new nsMyBlogs.clsMyBlogs();
        //nsMyBlogs.clsBlogSystemprp objprp = new clsBlogSystemprp();

        try
        {
            DataTable dt = obj.GetRelatedPosts(Convert.ToInt32(HttpContext.Current.Request.QueryString["Id"]));
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