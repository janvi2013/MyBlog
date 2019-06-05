using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace nsMyBlogs
{
    public interface intBlogSystem
    {
        String p_Author
        {
            get;
            set;

        }
        String p_Title
        {
            get;
            set;
        }
        String p_ShortDescription
        {
            get;
            set;
        }
        String p_Description
        {
            get;
            set;
        }
        String p_Meta
        {
            get;
            set;
        }

        String p_UrlSlug
        {
            get;
            set;
        }
        Boolean p_Published
        {
            get;
            set;
        }
        DateTime p_PostedDate
        {
            get;
            set;
        }
        DateTime p_ModifiedDate
        {
            get;
            set;
        }
        String p_Category
        {
            get;
            set;
        }
    }
    public class clsBlogSystemprp : intBlogSystem
    {
        String Author, Title, ShortDecription, Description, Meta, UrlSlug, Category, ThumbnailImage;
        DateTime Postedon, Modified;
        Boolean Published;
        public string p_Author
        {
            get
            {
                return Author;
            }

            set
            {
                Author = value;
            }
        }
        public string p_Title
        {
            get
            {
                return Title;
            }

            set
            {
                Title = value;
            }
        }
        public string p_ShortDescription
        {
            get
            {
                return ShortDecription;
            }

            set
            {
                ShortDecription = value;
            }
        }
        public string p_Description
        {
            get
            {
                return Description;
            }

            set
            {
                Description = value;
            }
        }
        public string p_Meta
        {
            get
            {
                return Meta;
            }

            set
            {
                Meta = value;
            }
        }
        public string p_UrlSlug
        {
            get
            {
                return UrlSlug;
            }

            set
            {
                UrlSlug = value;
            }
        }
        public DateTime p_PostedDate
        {
            get
            {
                return Postedon;
            }

            set
            {
                Postedon = value;
            }
        }
        public DateTime p_ModifiedDate
        {
            get
            {
                return Modified;
            }

            set
            {
                Modified = value;
            }
        }
        public bool p_Published
        {
            get
            {
                return Published;
            }

            set
            {
                Published = value;
            }
        }       
        public string p_Category
        {
            get
            {
                return Category;
            }

            set
            {
                Category = value;
            }
        }

        public String p_ThumbnailImage
        {
            get
            {
                return ThumbnailImage;
            }

            set
            {
                ThumbnailImage = value;
            }
        }

        public String p_TagValues
        {
            get;
            set;
        }

    }

    public class clsTagprp
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }


    public abstract class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }

    public class clsMyBlogs : clscon
    { 
    public void saveBlogSystem(clsBlogSystemprp p)
    {
        if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
        try
            {
                SqlCommand cmd = new SqlCommand("sp_SaveBlogsforMyBlogs", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.Add("@author", SqlDbType.NVarChar).Value = p.p_Author;
                cmd.Parameters.Add("@title", SqlDbType.NVarChar).Value = p.p_Title;
                cmd.Parameters.Add("@shortdescription", SqlDbType.NVarChar).Value = p.p_ShortDescription;
                cmd.Parameters.Add("@description", SqlDbType.NVarChar).Value = p.p_Description;
                cmd.Parameters.Add("@meta", SqlDbType.NVarChar).Value = p.p_Meta;
                cmd.Parameters.Add("@ulrslug", SqlDbType.NVarChar).Value = p.p_UrlSlug;
                cmd.Parameters.Add("@published", SqlDbType.Bit).Value = p.p_Published;
                cmd.Parameters.Add("@postedon", SqlDbType.DateTime).Value = p.p_PostedDate;
                cmd.Parameters.Add("@modified", SqlDbType.DateTime).Value = p.p_ModifiedDate;
                cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = p.p_Category;
                cmd.Parameters.Add("@thumbnailimage", SqlDbType.NVarChar).Value = p.p_ThumbnailImage;
                cmd.ExecuteNonQuery();
                cmd.Dispose();

            }
            catch(Exception ex)
            {
                throw ex;
            }
    }

    public DataSet BindTagsddl()
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                SqlDataAdapter adp = new SqlDataAdapter("sp_getTagsforMyBlogs", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                return ds;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }


        public DataTable GetNewPost()
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_GetNewPost", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;

        }


        public DataTable GetOldPost()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_GetOldPost", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;

        }

        public DataTable  GetMaxId()
        {
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_GetMaxIdforMyBogs", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;

        }


       

    }


    public class clsTags : clscon
    {
        public List<clsTagprp> GetTags()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adapter;
            List<clsTagprp> ListToReturn = new List<clsTagprp>();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                SqlCommand cmd = new SqlCommand("GetBlogTags", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    clsTagprp tagobj = new clsTagprp();
                    tagobj.Id = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray.GetValue(0));
                    tagobj.Name = Convert.ToString(ds.Tables[0].Rows[i].ItemArray.GetValue(1));
                    ListToReturn.Add(tagobj);
                }
                return ListToReturn;
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}

