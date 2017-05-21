<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>健康医疗系统</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <meta charset="utf-8" />

    <!-- Include the FontAwesome CSS if you want to use feedback icons provided by FontAwesome -->
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />-->
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            margin: 10px;
            background-color: #D9EDF7;
        }

        h2 {
            text-align: center;
            color: black;
        }

        #wraper {
            width: 20%;
            margin: 150px auto 0;
        }
    </style>
</head>
<body>
    
    <div id="wraper">
        <form id="attributeForm" runat="server" method="post" class="form-horizontal" data-bv-message="This value is not valid"
            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
            <h2><strong>健康医疗系统</strong></h2><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <div class="form-group">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <input type="text" class="form-control" name="username"
                        placeholder="Please input username !"
                        data-bv-message="The username is not valid" data-bv-notempty="true"
                        data-bv-notempty-message="The username is required and cannot be empty"
                        data-bv-regexp="true"
                        data-bv-regexp-regexp="[a-zA-Z0-9_\.]+"
                        data-bv-regexp-message="The username can only consist of alphabetical, number, dot and underscore"
                        data-bv-stringlength="true"
                        data-bv-stringlength-min="6"
                        data-bv-stringlength-max="30"
                        data-bv-stringlength-message="The username must be more than 6 and less than 30 characters long"
                        data-bv-different="true"
                        data-bv-different-field="password"
                        data-bv-different-message="The username and password cannot be the same as each other" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-12  col-md-12 col-sm-12 col-xs-12">
                    <input type="password" class="form-control" name="password"
                        placeholder="Please input password !"
                        data-bv-notempty="true"
                        data-bv-notempty-message="The password is required and cannot be empty"
                        data-bv-different="true"
                        data-bv-different-field="username"
                        data-bv-different-message="The password cannot be the same as username" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-12  col-md-12 col-sm-12 col-xs-12">
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click" />
                    <asp:Button ID="btn_Login" runat="server" Text="Login" class="btn btn-primary col-lg-5  col-md-5 col-sm-12 col-xs-12" OnClick="btn_Login_Click"/>
                    <asp:Button ID="btn_Register" runat="server" Text="Register" class="btn btn-primary col-lg-5  col-md-5 pull-right col-sm-12 col-xs-12" OnClick="btn_Register_Click"/>
                </div>
            </div>
        </form>
    </div>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script>
        $(document).ready(function () {
            $('#attributeForm').bootstrapValidator();
        });
    </script>
</body>
</html>
