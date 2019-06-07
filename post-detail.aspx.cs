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



public partial class _Default : System.Web.UI.Page
{
    Int32 id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Hidden_PostId.Value= (HttpContext.Current.Request.QueryString["Id"]);

    }

    [WebMethod]
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
                objprp.p_ShortDescription = dt.Rows[i]["ShortDescription"].ToString();
                objprp.p_Description = dt.Rows[i]["Description"].ToString();
                objprp.p_PostedDate = Convert.ToDateTime(dt.Rows[i]["PostedOn"]);
                objprp.p_ModifiedDate = Convert.ToDateTime(dt.Rows[i]["Modified"]);
                objprp.p_Category = dt.Rows[i]["Category"].ToString();
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