<%@ Page Title="" Language="C#" MasterPageFile="~/myblogDesign.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    

     <div class="popular-news-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="section-heading">
                        <h6>New Trending Posts</h6>
                    </div>

                    <div id="NewPostDiv" class="row" style="text-align:justify">   
                      
                   
                        

                    </div>
                    <div id="newdiv"></div>
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
                                    <a href="#" class="post-catagory">Health</a>
                                    <a href="#" class="post-title">
                                        <h6>Natural “Hair Regrowth Solution” Shocks Indian Doctors - Delhi Man Regrows His Hair in thirty Days...</h6>
                                    </a>
                                    <div class="post-meta">
                                        <p class="post-author">By <a href="#">Ruchit Mehta</a></p>
                                        <p class="post-excerp">  
                                            
                                            Natural “Hair Regrowth Solution” Shocks Indian Doctors - Delhi Man Regrows His Hair in thirty Days...

                                            
                                            
                                              What if you may grow your hair while not expensive surgery, harmful chemicals or dynamical something concerning your traditional day? however is that possible?

For the last 3 months, our readers are going crazy over a product that's serving to men and girls grow their hair quickly and simply, with none harmful chemicals or dangerous and painful surgeries.. This revolutionary trick has been featured on numberless well-liked TV shows, and verified to be safe and extremely effective.
Fine hair or thinning hair can be a problem for many, meanwhile some of us just want to give our hair a little more fullness.
                                        </p>
                                        <!-- Post Like & Post Comment -->
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="post-like">
                                                <img src="img/core-img/like.png" alt=""/>
                                                <span>392</span></a>
                                            <a href="#" class="post-comment">
                                                <img src="img/core-img/chat.png" alt=""/>
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
                                        <img src="img/bg-img/12.jpg" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="#" class="post-catagory">Technology</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-title">
                                            <h6>Upcoming phones: The future smartphones of 2019...</h6>
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



                            <div class="single-blog-post featured-post-2">
                                <div class="post-thumb">
                                    <a href="#">
                                        <img src="img/bg-img/17.jpg" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="#" class="post-catagory">Technology</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-title">
                                            <h6>Microsoft adds AI capabilities to PowerApps and Flow to change business tasks...</h6>
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
                                    <a href="#" class="post-catagory">Fashion</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-title">
                                            <h6>The Shoes everyone seems to be Talking concerning at urban center Fashion Week Men’s...</h6>
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
                            <p>April 14, 2019</p>
                        </div>

                        <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>2.</span> Holiday</h6>
                            </a>
                            <p>April 15, 2019</p>
                        </div>
                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>3.</span>Cloud</h6>
                            </a>
                            <p>April 16, 2019</p>
                        </div>
                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>4.</span>Social</h6>
                            </a>
                            <p>April 17, 2019</p>
                        </div>
                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>5.</span>Fashion</h6>
                            </a>
                            <p>April 25, 2019</p>
                        </div>
                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>6.</span>Technology</h6>
                            </a>
                            <p>April 28, 2019</p>
                        </div>
                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>7.</span>Entertainment</h6>
                            </a>
                            <p>June 4, 2019</p>
                        </div>
                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>8.</span>International</h6>
                            </a>
                            <p>June 8, 2019</p>
                        </div>

                        <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>9.</span>Sports</h6>
                            </a>
                            <p>June 10, 2019</p>
                        </div>

                        <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>10.</span> Artificial Intelligence</h6>
                            </a>
                            <p>June 12, 2019</p>
                        </div>


                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>11.</span>Fun</h6>
                            </a>
                            <p>June 15, 2019</p>
                        </div>


                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>12.</span>Mobiles</h6>
                            </a>
                            <p>June 16, 2019</p>
                        </div>


                         <!-- Single Popular Blog -->
                        <div class="single-popular-post">
                            <a href="#">
                                <h6><span>13.</span>Culture</h6>
                            </a>
                            <p>June 16, 2019</p>
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
            url: 'default.aspx/GetNewPosts',            
            type: "GET",
            dataType: "json",
            async:false,
            contentType: "application/json; charset=utf-8",            
            success: function (response) {
                $.each(response.d, function () {
                    var txt = "hello";
                   
                    $("#NewPostDiv").append($("<div/>").addClass("col-12").addClass("col-md-6").append($("<div/>")
                   .addClass("single-blog-post").addClass("style-3").append($("<div/>").addClass("post-thumb").append($("<a/>")
                   .html(this.p_ThumbnailImage).attr('target', '_blank').attr('href', "post-detail.aspx?id=" + this.p_Id + ""))).append($("<div/>").addClass("post-data").append($("<a/>").addClass("post-catagory").text(this.p_Category)).append($("<a/>").addClass("post-title").html("<h6>" + this.p_Title + "</h6>").attr('target', '_blank').attr('href', "post-detail.aspx?id=" + this.p_Id + "")).append($("<p/>").addClass("post-author").text('By ').append($("<a/>")
                   .attr('href', '#').text(this.p_Author + ',' + this.p_PostedDays))))));

                    //.append("<div class='addthis_inline_share_toolbox' data-url='http://www.thenewsdigital.com/default.aspx/' data-title='" + this.p_Title + "' data-description='" + this.p_Description + "'  ></div>") 
                    

                })
            },
            failure: function (response) {
                alert(response.d);
            }
        });
        $.ajax({
            url: 'default.aspx/GetOldPosts',
            type: "GET",
            async: false,
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: function (response) {
                $.each(response.d, function () {
                    $("#OldPostsDiv").append($("<div/>")
                   .addClass("single-blog-post").addClass("small-featured-post").addClass("d-flex").append($("<div/>").addClass("post-thumb").append($("<a/>")
                   .html(this.p_ThumbnailImage).attr('href', "post-detail.aspx?id=" + this.p_Id + ""))).append($("<div/>").addClass("post-data").append($("<a/>").addClass("post-catagory").text(this.p_Category)).append($("<div/>").addClass("post-meta").append($("<a/>").addClass("post-title").html("<h6>" + this.p_Title + "</h6>").attr('href', "post-detail.aspx?id=" + this.p_Id + "").append($("<p/>").addClass("post-date").append($("<a/>").attr('href', '#').text(this.p_PostedDays)))))));
                })
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    </script>
</asp:Content>

