<%@ Page Title="" Language="C#" MasterPageFile="~/myblogDesign.master" AutoEventWireup="true" CodeFile="post-detail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="blog-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">

                        <!-- Single Featured Post -->
                        <div class="single-blog-post featured-post single-post">
                            <div class="post-thumb">

                                <div id="PostDetais" class="row"></div>

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

        });
        $.ajax({
            url: 'post-detail.aspx/GetPostDetails?Id=' + $("#ContentPlaceHolder1_Hidden_PostId").val(),
            type: "GET",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: function (response) {
                $.each(response.d, function () {
                    $("#PostDetais").append($("<div/>").addClass("col-12 col-lg-12").addClass("col-12 col-lg-12").append($("<div/>")
                   .addClass("single-blog-post").addClass("style-3").append($("<div/>").addClass("post-thumb").append($("<a/>")
                   .html($($.parseHTML(this.p_ThumbnailImage)).find('img').removeAttr('style')[0]).attr('href', '#'))).append($("<div/>").addClass("post-data").append($("<a/>").addClass("post-catagory").text(this.p_Category)).append($("<a/>").addClass("post-title").html("<h6>" + this.p_Description + "</h6>")).append($("<div/>").addClass("post-meta").append($("<p/>").addClass("post-author").text('By ').append($("<a/>").attr('href', '#').text(this.p_Author + ',' + this.p_PostedDays)))))));
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

