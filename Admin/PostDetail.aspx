﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="welcomeAdmin.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Add/Edit Post</strong>
            </div>
            <div class="card-body card-block">
                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">

                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="text-input" class=" form-control-label">Post Title</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" id="text-input" name="text-input" placeholder="Text" class="form-control">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="textarea-input" class=" form-control-label">Post Content</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <textarea name="textarea-input" id="ContentArea" placeholder="Content..."></textarea>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="CategoryField" class=" form-control-label">Category</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <select name="Category" id="CategoryField" class="form-control">
                                <option value="0">Please select</option>
                                <option value="1">News</option>
                                <option value="2">Technology</option>
                                <option value="3">Sports</option>
                            </select>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="TagsField" class=" form-control-label">Tags</label>
                        </div>
                        <div class="col col-md-9">
                            <select name="Tags" id="TagsField" multiple="" class="form-control">
                                <option value="1">ASP.NET</option>
                                <option value="2">MVC</option>
                                <option value="3">Azure</option>
                                <option value="4">Angular</option>
                                <option value="5">C#</option>
                            </select>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label class=" form-control-label">Publish Post</label>
                        </div>
                        <div class="col col-md-9">
                            <div class="form-check-inline form-check">
                                <label for="inline-checkbox1" class="form-check-label ">
                                    <input type="checkbox" id="PublishField" name="Publish" value="option1" class="form-check-input">
                                </label>                                
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary btn-sm">
                    <i class="fa fa-dot-circle-o"></i>Submit
                </button>
                <button type="reset" class="btn btn-danger btn-sm">
                    <i class="fa fa-ban"></i>Reset
                </button>
            </div>
        </div>
    </div>

    <script>
        var editor = new FroalaEditor('#ContentArea', {
            // Set the image upload URL.
            imageUploadURL: '/Admin/Upload.aspx',

            imageUploadParams: {
                id: 'my_editor'
            },
            height: 350,           

            videoUploadURL: '/Admin/UploadVideo.aspx',

            videoUploadParams: {
                id: 'my_editor'
            },
            events: {
                'video.beforeUpload': function (videos) {
                    // Return false if you want to stop the video upload.
                },
                'video.uploaded': function (response) {
                    // Video was uploaded to the server.
                },
                'video.inserted': function ($img, response) {
                    // Video was inserted in the editor.
                },
                'video.replaced': function ($img, response) {
                    // Video was replaced in the editor.
                },
                'video.error': function (error, response) {
                    // Bad link.
                    if (error.code == 1) {
                        alert('error1');
                    }

                    // No link in upload response.
                    else if (error.code == 2) { alert('error2');}

                    // Error during video upload.
                    else if (error.code == 3) { alert('error3'); }

                    // Parsing response failed.
                    else if (error.code == 4) { alert('error4'); }

                    // Video too text-large.
                    else if (error.code == 5) { alert('error5'); }

                    // Invalid video type.
                    else if (error.code == 6) { alert('error6'); }

                    // Video can be uploaded only to same domain in IE 8 and IE 9.
                    else if (error.code == 7) { alert('error7'); }

                    // Response contains the original server response to the request if available.
                }
            }
        });

        $(document).ready(function () {
            $("#logo").hide();
            //editor.html.set('<p><img src="/files/8c7e821c.jpg" style="width: 300px;" class="fr-fic fr-dib">My custom paragraph.</p>');
        })


    </script>
</asp:Content>
