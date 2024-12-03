<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="demo.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>AdminLTE 4 | Login Page</title>
    <!--begin::Primary Meta Tags-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="title" content="AdminLTE 4 | Login Page" />
    <meta name="author" content="ColorlibHQ" />
    <meta name="description" content="AdminLTE is a Free Bootstrap 5 Admin Dashboard, 30 example pages using Vanilla JS." />
    <meta name="keywords" content="bootstrap 5, bootstrap, bootstrap 5 admin dashboard, bootstrap 5 dashboard, bootstrap 5 charts, bootstrap 5 calendar, bootstrap 5 datepicker, bootstrap 5 tables, bootstrap 5 datatable, vanilla js datatable, colorlibhq, colorlibhq dashboard, colorlibhq admin dashboard" />
    <!--end::Primary Meta Tags-->
    <!--begin::Fonts-->

    <link href="../css/jlr_fonts.css" rel="stylesheet" />
    <!--end::Fonts-->
    <!--begin::Third Party Plugin(OverlayScrollbars)-->

    <link href="../css/custom.css" rel="stylesheet" />
    <!--end::Fonts-->
    <!--begin::Third Party Plugin(OverlayScrollbars)-->

    <link href="../css/adminlte.css" rel="stylesheet" />
    <!--end::Required Plugin(AdminLTE)-->
    <!-- apexcharts -->


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.3.0/styles/overlayscrollbars.min.css" integrity="" crossorigin="anonymous" />
    <!--end::Third Party Plugin(OverlayScrollbars)-->
    <!--begin::Third Party Plugin(Bootstrap Icons)-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.min.css" integrity="" crossorigin="anonymous" />
    <!--end::Third Party Plugin(Bootstrap Icons)-->
    <!--begin::Required Plugin(AdminLTE)-->
    <style>
        .login-box {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body class="login-page bg-body-secondary">
    <form id="form1" runat="server">
        <asp:Label runat="server" ID="lbl1"></asp:Label>
        <div class="login-box">
            <div class="login-logo">
                <a href="../index2.html">
                    <!--begin::Brand Image-->
                    <img src="../img/JLR_EMERIC-LOGO.png" alt="AdminLTE Logo" class="brand-image opacity-75 shadow" />
                    <!--end::Brand Image-->

                </a>
            </div>
            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body">
                    <asp:Label ID="LblError" runat="server" CssClass="alert alert-danger alert-dismissible fade" role="alert">
<span id="errorMessage"></span>
                    </asp:Label>

                    <p class="login-box-msg">Sign in to start your session</p>
                    <%--  <form action="./index.html" method="post">--%>
                    <div class="input-group mb-3">
                        <%--<input type="email" class="form-control" placeholder="Email">--%>
                        <asp:TextBox ID="TxtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                        <div class="input-group-text"><span class="bi bi-envelope"></span></div>
                    </div>
                    <div class="input-group mb-3">
                        <%--<input type="password" class="form-control" placeholder="Password">--%>
                        <asp:TextBox ID="TxtPassword" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                        <div class="input-group-text"><span class="bi bi-lock-fill"></span></div>
                    </div>
                    <!--begin::Row-->
                    <div class="row">
                        <div class="col-8">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                    Remember Me
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <div class="d-grid gap-2">
                                <%--   <button type="submit" class="btn btn-primary">Sign In</button>--%>
                                <asp:Button ID="BtnSignIn" runat="server" Text="Sign In" OnClick="BtnSignIn_Click" CssClass="btn btn-primary" />
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!--end::Row-->

                    <div class="social-auth-links text-center mb-3 d-grid gap-2">
                        <p>- OR -</p>
                        <a href="#" class="btn btn-primary"><i class="bi bi-facebook me-2"></i>Sign in using Facebook
                        </a><a href="#" class="btn btn-danger"><i class="bi bi-google me-2"></i>Sign in using Google+
                        </a>
                    </div>
                    <!-- /.social-auth-links -->
                    <p class="mb-1"><a href="forgot-password.html">I forgot my password</a> </p>
                    <p class="mb-0">
                        <a href="Register1.aspx" class="text-center">Register a new membership
                        </a>
                    </p>
                </div>
            </div>
        </div>


        <!-- /.login-box -->
        <!--begin::Third Party Plugin(OverlayScrollbars)-->
        <script src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.3.0/browser/overlayscrollbars.browser.es6.min.js" integrity="" crossorigin="anonymous"></script>
        <!--end::Third Party Plugin(OverlayScrollbars)-->
        <!--begin::Required Plugin(popperjs for Bootstrap 5)-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="" crossorigin="anonymous"></script>
        <!--end::Required Plugin(popperjs for Bootstrap 5)-->
        <!--begin::Required Plugin(Bootstrap 5)-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="" crossorigin="anonymous"></script>
        <!--end::Required Plugin(Bootstrap 5)-->
        <!--begin::Required Plugin(AdminLTE)-->
        <script src="../../dist/js/adminlte.js"></script>
        <!--end::Required Plugin(AdminLTE)-->
        <!--begin::OverlayScrollbars Configure-->
        <script>
            const SELECTOR_SIDEBAR_WRAPPER = ".sidebar-wrapper";
            const Default = {
                scrollbarTheme: "os-theme-light",
                scrollbarAutoHide: "leave",
                scrollbarClickScroll: true,
            };
            document.addEventListener("DOMContentLoaded", function () {
                const sidebarWrapper = document.querySelector(SELECTOR_SIDEBAR_WRAPPER);
                if (
                    sidebarWrapper &&
                    typeof OverlayScrollbarsGlobal?.OverlayScrollbars !== "undefined"
                ) {
                    OverlayScrollbarsGlobal.OverlayScrollbars(sidebarWrapper, {
                        scrollbars: {
                            theme: Default.scrollbarTheme,
                            autoHide: Default.scrollbarAutoHide,
                            clickScroll: Default.scrollbarClickScroll,
                        },
                    });
                }
            });
        </script>
        <!--end::OverlayScrollbars Configure-->
        <!--end::Script-->
    </form>
</body>
</html>

