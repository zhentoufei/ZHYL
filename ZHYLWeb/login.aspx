<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- STYLESHEETS -->
    <!--[if lt IE 9]><script src="js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js">
        </script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
    <link href="css/login/cloud-admin.css" rel="stylesheet" />
    <link href="css/login/font-awesome.min.css" rel="stylesheet" />
    <!-- DATE RANGE PICKER -->
    <link href="css/login/daterangepicker-bs3.css" rel="stylesheet" />
    <!-- UNIFORM -->
    <link href="css/login/uniform.default.min.css" rel="stylesheet" />
    <!-- ANIMATE -->
    <link href="css/login/animate.min.css" rel="stylesheet" />
    <!-- FONTS -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section id="page">
                <!-- HEADER -->
                <header>
                    <!-- NAV-BAR -->
                    <div class="container">
                        <div class="row">
                        </div>
                    </div>
                    <!--/NAV-BAR -->
                </header>
                <!--/HEADER -->
                <!-- LOGIN -->
                <section id="login" class="visible">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 col-md-offset-4">
                                <div class="login-box-plain">
                                    <h2 class="bigintro">智慧医疗</h2>
                                    <div class="divide-40"></div>
                                    <form role="form">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">用户名：</label>
                                            <asp:TextBox ID="exampleInputEmail1" runat="server"  class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">密码：</label>
                                            <asp:TextBox ID="exampleInputPassword1" runat="server" type="password" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-actions" style="background-color:transparent;border-width:0">
                                            <%--<button type="submit" class="btn btn-danger">Submit</button>--%>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-danger" OnClick="btn_Login_Click">登陆</asp:LinkButton>
                                        </div>
                                    </form>
                                    
                                    <div class="login-helpers">
                                        <a href="#" onclick="swapScreen('forgot');return false;">忘记密码？</a>
                                        <br>
                                        我的天！你还没有注册啊？！ <a href="#" onclick="swapScreen('register');return false;">现在就注册！</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--/LOGIN -->
                <!-- REGISTER -->
                <section id="register">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 col-md-offset-4">
                                <div class="login-box-plain">
                                    <h2 class="bigintro">Register</h2>
                                    <div class="divide-40"></div>
                                    <form role="form">
                                        <div class="form-group">
                                            <label for="exampleInputName">Full Name</label>
                                            <i class="fa fa-font"></i>
                                            <input type="text" class="form-control" id="exampleInputName">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputUsername">Username</label>
                                            <i class="fa fa-user"></i>
                                            <input type="text" class="form-control" id="exampleInputUsername">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <i class="fa fa-envelope"></i>
                                            <input type="email" class="form-control" id="exampleInputEmail1">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <i class="fa fa-lock"></i>
                                            <input type="password" class="form-control" id="exampleInputPassword1">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword2">Repeat Password</label>
                                            <i class="fa fa-check-square-o"></i>
                                            <input type="password" class="form-control" id="exampleInputPassword2">
                                        </div>
                                        <div class="form-actions">
                                            <label class="checkbox">
                                                <input type="checkbox" class="uniform" value="">
                                                I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></label>
                                            <button type="submit" class="btn btn-success">Sign Up</button>
                                        </div>
                                    </form>
                                    <!-- SOCIAL REGISTER -->
                                    <div class="divide-20"></div>
                                    <div class="center">
                                        <strong>Or register using your social account</strong>
                                    </div>
                                    <div class="divide-20"></div>
                                    <div class="social-login center">
                                        <a class="btn btn-primary btn-lg">
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                        <a class="btn btn-info btn-lg">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                        <a class="btn btn-danger btn-lg">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </div>
                                    <!-- /SOCIAL REGISTER -->
                                    <div class="login-helpers">
                                        <a href="#" onclick="swapScreen('login');return false;">Back to Login</a>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--/REGISTER -->
                <!-- FORGOT PASSWORD -->
                <section id="forgot">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 col-md-offset-4">
                                <div class="login-box-plain">
                                    <h2 class="bigintro">Reset Password</h2>
                                    <div class="divide-40"></div>
                                    <form role="form">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Enter your Email address</label>
                                            <i class="fa fa-envelope"></i>
                                            <input type="email" class="form-control" id="exampleInputEmail1">
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-info">Send Me Reset Instructions</button>
                                        </div>
                                    </form>
                                    <div class="login-helpers">
                                        <a href="#" onclick="swapScreen('login');return false;">Back to Login</a>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- FORGOT PASSWORD -->
            </section>
            <script src="js/login/jquery-2.0.3.min.js"></script>
            <!-- JQUERY UI-->
            <script src="js/login/jquery-ui-1.10.3.custom.min.js"></script>
            <!-- BOOTSTRAP -->
            <script src="js/login/bootstrap.min.js"></script>


            <!-- UNIFORM -->
            <script src="js/login/jquery.uniform.min.js"></script>
            <!-- CUSTOM SCRIPT -->
            <script src="js/login/script.js"></script>
            <script>
                jQuery(document).ready(function () {
                    App.setPage("login");  //Set current page
                    App.init(); //Initialise plugins and elements
                });
            </script>
            <script type="text/javascript">
                function swapScreen(id) {
                    jQuery('.visible').removeClass('visible animated fadeInUp');
                    jQuery('#' + id).addClass('visible animated fadeInUp');
                }
            </script>
        </div>
    </form>
</body>
</html>
