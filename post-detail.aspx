<%@ Page Title="" Language="C#" MasterPageFile="~/myblogDesign.master" AutoEventWireup="true" CodeFile="post-detail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <div class="blog-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <!-- AddThis Button BEGIN -->
                    <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
                        <a id="FacebookShare" class="addthis_button_preferred_1"></a>
                        <a id="TwitterShare" class="addthis_button_preferred_2"></a>                        
                    </div>
                    <div class="blog-posts-area">

                        <!-- Single Featured Post -->


                        <div class="single-blog-post featured-post single-post">
                            <div class="post-thumb">

                                <div id="PostDetais" class="row"></div>








                                <%--comment code start--%>
                                <div id="disqus_thread"></div>
                                <script>

                                    /**
                                *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
                                *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
                                    /*
                                    var disqus_config = function () {
                                    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
                                    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
                                    };
                                    */


                                    (function () { // DON'T EDIT BELOW THIS LINE
                                        var d = document, s = d.createElement('script');
                                        s.src = 'https://www-thenewsdigital-com.disqus.com/embed.js';
                                        s.setAttribute('data-timestamp', +new Date());
                                        (d.head || d.body).appendChild(s);
                                    })();
                                </script>



                                <%--comment code end--%>

                                <input type="hidden" id="Hidden_PostId" runat="server" />


                            </div>

                        </div>
                    </div>
                </div>






                <div class="col-12 col-lg-4">
                    <div class="blog-sidebar-area">
                        <div class="section-heading">
                            <h6>Related Posts</h6>
                        </div>
                        <!-- Latest Posts Widget -->
                        <div class="latest-posts-widget mb-50" id="RelatedPostsDiv">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#FacebookShare").attr("addthis:url", window.location.href);
            $("#TwitterShare").attr("addthis:url", window.location.href);
            
        });
        $.ajax({
            url: 'post-detail.aspx/GetPostDetails?Id=' + $("#ContentPlaceHolder1_Hidden_PostId").val(),
            type: "GET",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: function (response) {
                $.each(response.d, function () {
                    $("#PostDetais").append($("<div/>").addClass("col-12 col-lg-12").addClass("col-12 col-lg-12").append("<br/>").append($("<div/>")
                   .addClass("single-blog-post").addClass("style-3").append($("<div/>").addClass("post-thumb").append($("<a/>")
                   .html($($.parseHTML(this.p_ThumbnailImage)).find('img').removeAttr('style')[0]).attr('href', '#')))
                   .append($("<div/>").addClass("post-data").append($("<a/>").addClass("post-catagory").text(this.p_Category)).append($("<a/>")
                   .addClass("post-title").html("<h6>" + this.p_Description + "</h6>")).append($("<div/>").addClass("post-meta").append($("<p/>")
                   .addClass("post-author").text('By ').append($("<a/>").attr('href', '#').text(this.p_Author + ',' + this.p_PostedDays)))))));

                    //.append("<div class='addthis_inline_share_toolbox' data-url='http://www.thenewsdigital.com/default.aspx/' data-title='" + this.p_Title + "' data-description='" + this.p_Description + "'  ></div>")

                })             
            },
            failure: function (response) {
                alert(response.d);
            }
        });


        $.ajax({
            url: 'post-detail.aspx/GetRelatedPosts?Id=' + $("#ContentPlaceHolder1_Hidden_PostId").val(),
            type: "GET",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: function (response) {
                $.each(response.d, function () {
                    $("#RelatedPostsDiv").append($("<div/>").addClass("single-blog-post").addClass("small-featured-post").addClass("d-flex")
                        .append($("<div/>").addClass("post-thumb").append($("<a/>").html(this.p_ThumbnailImage).attr('href', "post-detail.aspx?id=" + this.p_Id + "")))
                        .append($("<div/>").addClass("post-data").append($("<a/>").addClass("post-catagory").text(this.p_Category))
                        .append($("<div/>").addClass("post-meta").append($("<a/>").addClass("post-title").html("<h6>" + this.p_Title + "</h6>")
                        .attr('href', "post-detail.aspx?id=" + this.p_Id + "").append($("<p/>").addClass("post-date").append($("<a/>").attr('href', '#').text(this.p_PostedDays)))))));
                });
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    </script>

</asp:Content>

