using nsMyBlogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static List<clsBlogSystemprp> GetNewPosts()
    {
        try
        {
            List<clsBlogSystemprp> ListToReturn = new List<clsBlogSystemprp>();

            clsBlogSystemprp obj1 = new clsBlogSystemprp();
            obj1.p_Category = "News";
            obj1.p_Title = "CBSE 12th Results 2019";
            ListToReturn.Add(obj1);

            clsBlogSystemprp obj2 = new clsBlogSystemprp();
            obj2.p_Category = "Business";
            obj2.p_Title = "SpiceJet examines taking over widebody Jet Airways ";
            ListToReturn.Add(obj2);

            clsBlogSystemprp obj3 = new clsBlogSystemprp();
            obj3.p_Category = "Technology";
            obj3.p_Title = "Microsoft announcement for .NET Core";
            ListToReturn.Add(obj3);

            clsBlogSystemprp obj4 = new clsBlogSystemprp();
            obj4.p_Category = "Sports";
            obj4.p_Title = "ICC Cricket World Cup";
            ListToReturn.Add(obj4);

            return ListToReturn;
        
        }
        catch (Exception)
        {
            
            throw;
        }
      

    }
    [WebMethod]
    public static List<clsBlogSystemprp> GetOldPosts()
    {
        try
        {
            List<clsBlogSystemprp> ListToReturn = new List<clsBlogSystemprp>();

            clsBlogSystemprp obj1 = new clsBlogSystemprp();
            obj1.p_Category = "News";
            obj1.p_Title = "Election Results 2019 Analysis";
            ListToReturn.Add(obj1);

            clsBlogSystemprp obj2 = new clsBlogSystemprp();
            obj2.p_Category = "Business";
            obj2.p_Title = "Reliance acquires Toy store Hamleys";
            ListToReturn.Add(obj2);

            clsBlogSystemprp obj3 = new clsBlogSystemprp();
            obj3.p_Category = "Technology";
            obj3.p_Title = "AI/IOT advancements";
            ListToReturn.Add(obj3);

            clsBlogSystemprp obj4 = new clsBlogSystemprp();
            obj4.p_Category = "Sports";
            obj4.p_Title = "IPL Finals Clash";
            ListToReturn.Add(obj4);

            clsBlogSystemprp obj5 = new clsBlogSystemprp();
            obj5.p_Category = "Health";
            obj5.p_Title = "New Research for Cancer Vaccinations";
            ListToReturn.Add(obj3);

            clsBlogSystemprp obj6 = new clsBlogSystemprp();
            obj6.p_Category = "Travel";
            obj6.p_Title = "10 Best Travel Destinations in India";
            ListToReturn.Add(obj4);

            return ListToReturn;

        }
        catch (Exception)
        {

            throw;
        }
    }
}