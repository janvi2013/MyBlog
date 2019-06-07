<%@ Page Title="" Language="C#" MasterPageFile="~/myblogDesign.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="popular-news-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="section-heading">
                        <h6>New Trending Posts</h6>
                    </div>

                    <div id="NewPostDiv" class="row">                      
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="section-heading">
                        <h6>Old Posts</h6>
                    </div>
                    <div id="OldPostsDiv">                    
                    </div>
                    <!-- Ads -->
                </div>
            </div>
        </div>
    </div>


    <div class="featured-post-area section-padding-80-50">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-8">
                    <div class="section-heading">
                        <h6>Latest Posts</h6>
                    </div>

                    <div class="row">

                        <!-- Single Featured Post -->
                        <div class="col-12 col-lg-7">

                            <div class="single-blog-post featured-post">
                                <div class="post-thumb">
                                    <a href="#">
                                        <img src="img/bg-img/16.jpg" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="#" class="post-catagory">Finance</a>
                                    <a href="#" class="post-title">
                                        <h6>Financial news: A new company is born today at the stock market</h6>
                                    </a>
                                    <div class="post-meta">
                                        <p class="post-author">By <a href="#">Christinne Williams</a></p>
                                        <p class="post-excerp">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac. Nam id congue lectus, a venenatis massa. Maecenas justo libero, vulputate vel nunc id, blandit feugiat sem. </p>
                                        <!-- Post Like & Post Comment -->
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="post-like">
                                                <img src="img/core-img/like.png" alt="">
                                                <span>392</span></a>
                                            <a href="#" class="post-comment">
                                                <img src="img/core-img/chat.png" alt="">
                                                <span>10</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-lg-5">
                            <!-- Single Featured Post -->
                            <div class="single-blog-post featured-post-2">
                                <div class="post-thumb">
                                    <a href="#">
                                        <img src="img/bg-img/17.jpg" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="#" class="post-catagory">Finance</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-title">
                                            <h6>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac...</h6>
                                        </a>
                                        <!-- Post Like & Post Comment -->
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="post-like">
                                                <img src="img/core-img/like.png" alt="">
                                                <span>392</span></a>
                                            <a href="#" class="post-comment">
                                                <img src="img/core-img/chat.png" alt="">
                                                <span>10</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Featured Post -->
                            <div class="single-blog-post featured-post-2">
                                <div class="post-thumb">
                                    <a href="#">
                                        <img src="img/bg-img/18.jpg" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="#" class="post-catagory">Finance</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-title">
                                            <h6>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac...</h6>
                                        </a>
                                        <!-- Post Like & Post Comment -->
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="post-like">
                                                <img src="img/core-img/like.png" alt="">
                                                <span>392</span></a>
                                            <a href="#" class="post-comment">
                                                <img src="img/core-img/chat.png" alt="">
                                                <span>10</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="section-heading">
                        <h6>Tags</h6>
                    </div>
                    <!-- Popular News Widget -->
                    <div class="popular-news-widget mb-30">
                        <h3>Most Trending Tags</h3>

                        <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>1.</span> Microsoft Azure</h6>
                            </a>
                            <p>April 14, 2018</p>
                        </div>

                        <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>2.</span> Holiday</h6>
                            </a>
                            <p>April 14, 2018</p>
                        </div>

                        <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>3.</span>Cloud</h6>
                            </a>
                            <p>April 14, 2018</p>
                        </div>

                        <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>4.</span> Artificial Intelligence</h6>
                            </a>
                            <p>April 14, 2018</p>
                        </div>
                    </div>

                    <!-- Newsletter Widget -->
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {



        });
        $.ajax({           
            url: 'home.aspx/GetNewPosts',            
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: function (response) {
                $.each(response.d, function () {
                    $("#NewPostDiv").append($("<div/>").addClass("col-12").addClass("col-md-6").append($("<div/>")
                   .addClass("single-blog-post").addClass("style-3").append($("<div/>").addClass("post-thumb").append($("<a/>")
                   .html(this.p_ThumbnailImage).attr('href', "post-detail.aspx?id="+this.p_Id+""))).append($("<div/>").addClass("post-data").append($("<a/>").addClass("post-catagory").text(this.p_Category)).append($("<a/>").addClass("post-title").html("<h6>" + this.p_Title + "</h6>")))));

                    
                })
            },
            failure: function (response) {
                alert(response.d);
            }
        });
        $.ajax({
            url: 'home.aspx/GetOldPosts',
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: function (response) {
                $.each(response.d, function () {
                    $("#OldPostsDiv").append($("<div/>")
                   .addClass("single-blog-post").addClass("small-featured-post").addClass("d-flex").append($("<div/>").addClass("post-thumb").append($("<a/>")
                   .html('<img src="Files/90e0596d.jpg" alt="">').attr('href', '#'))).append($("<div/>").addClass("post-data").append($("<a/>").addClass("post-catagory").text(this.p_Category)).append($("<div/>").addClass("post-meta").append($("<a/>").addClass("post-title").html("<h6>" + this.p_Title + "</h6>")))));
                })
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    </script>
</asp:Content>

