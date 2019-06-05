using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class GetNewPost
{
    public Int64 Id { get; set; }
    public String Author { get; set; }
    public String Title { get; set; }
    public String ShortDescription { get; set; }
    public String Description { get; set; }
    public DateTime PostedOn { get; set; }
    public DateTime Modified { get; set; }
    public String Category { get; set; }
}