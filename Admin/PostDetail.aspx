<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="welcomeAdmin.aspx.cs" Inherits="Admin_Default" %>

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
                            <textarea name="textarea-input" id="ContentArea"  placeholder="Content..." ></textarea>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="select" class=" form-control-label">Category</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <select name="select" id="select" class="form-control">
                                <option value="0">Please select</option>
                                <option value="1">News</option>
                                <option value="2">Technology</option>
                                <option value="3">Sports</option>
                            </select>
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
        new FroalaEditor('#ContentArea', {
            // Set the image upload URL.
            
            height:350          
        })
    </script>
</asp:Content>
