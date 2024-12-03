<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register1.aspx.cs" Inherits="demo.Register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>AdminLTE 4 | Register Page</title>
    <!--begin::Primary Meta Tags-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="title" content="AdminLTE 4 | Register Page" />
    <meta name="author" content="ColorlibHQ" />
    <meta name="description" content="AdminLTE is a Free Bootstrap 5 Admin Dashboard, 30 example pages using Vanilla JS." />
    <link href="css/adminlte.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
    <link href="css/jlr_fonts.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.3.0/styles/overlayscrollbars.min.css" integrity="" crossorigin="anonymous" />
    <!--end::Third Party Plugin(OverlayScrollbars)-->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.min.css" integrity="" crossorigin="anonymous" />
    <!--end::Third Party Plugin(Bootstrap Icons)-->

    <style>
        .register-box {
            margin-left: auto;
            margin-right: auto;
        }

        .text-dark {
            text-decoration: underline;
        }
    </style>
</head>

<body class="register-page bg-body-secondary">

    <form id="form1" runat="server">
        <div class="register-box">
            <div class="register-logo">
                <a href="../index2.html">
                    <img src="img/JLR_EMERIC-LOGO.png" alt="AdminLTE Logo" class="brand-image opacity-75 shadow" />
           
                </a>
            </div>

            <div class="card">
                <div class="card-body register-card-body">
                    <asp:Label ID="LblError" runat="server" CssClass="alert alert-danger alert-dismissible fade" role="alert" Style="display: none;">
                        <span id="errorMessage"></span>
                    </asp:Label>

                    <p class="register-box-msg">Register a new membership</p>

                    <div class="input-group mb-3">
                        <asp:TextBox runat="server" class="form-control" placeholder="Full Name" ID="TxtName" autocomplete="off" AutoCompleteType="Disabled"></asp:TextBox>
                        <div class="input-group-text"><span class="bi bi-person"></span></div>
                        <div><span id="nameError" class="text-danger"></span></div>
                    </div>

                    <div class="input-group mb-3">
                        <asp:TextBox runat="server" class="form-control" placeholder="Email" ID="TxtEmail" AutoCompleteType="Disabled"></asp:TextBox>
                        <div class="input-group-text"><span class="bi bi-envelope"></span></div>
                        <span id="emailError" class="text-danger"></span>
                    </div>

                    <div class="input-group mb-3">
                        <asp:TextBox runat="server" class="form-control" placeholder="Password" ID="TxtPassword" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                        <div class="input-group-text"><span class="bi bi-lock-fill"></span></div>
                        <div><span id="passwordError" class="text-danger"></span></div>
                    </div>

                    <div class="row">
                        <div class="col-8">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                    I agree to the <a href="#" class="text-dark">terms</a>
                                </label>
                            </div>
                            <div><span id="checkboxError" class="text-danger"></span></div>
                        </div>

                        <div class="col-4">
                            <div class="d-grid gap-2">
                                <asp:Button ID="BtnSubmit" runat="server" Text="Sign In" class="btn btn-dark" OnClick="BtnSubmit_Click" />
                            </div>
                        </div>
                    </div>

                    <div class="social-auth-links text-center mb-3 d-grid gap-2">
                        <p>- OR -</p>
                        <a href="#" class="btn btn-dark"><i class="bi bi-facebook me-2"></i>Sign in using Facebook</a>
                        <a href="#" class="btn btn-danger"><i class="bi bi-google me-2"></i>Sign in using Google+</a>
                    </div>

                    <p class="mb-0">
                        <a href="Login1.aspx" class="text-center text-dark">I already have a membership</a>
                    </p>
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.3.0/browser/overlayscrollbars.browser.es6.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
    <script src="../../dist/js/adminlte.js"></script>

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
  
        document.addEventListener("DOMContentLoaded", function () {
            const nameInput = document.getElementById("<%= TxtName.ClientID %>");
            const emailInput = document.getElementById("<%= TxtEmail.ClientID %>");
            const passwordInput = document.getElementById("<%= TxtPassword.ClientID %>");
            const checkbox = document.getElementById("flexCheckDefault");

            const nameError = document.getElementById("nameError");
            const emailError = document.getElementById("emailError");
            const passwordError = document.getElementById("passwordError");
            const checkboxError = document.getElementById("checkboxError");

            const nameRegex = /^[A-Za-z\s]+$/;
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;

            function validateCheckbox() {
                if (!checkbox.checked) {
                    checkboxError.textContent = "* You must agree to the terms.";
                    return false;
                } else {
                    checkboxError.textContent = ""; 
                    return true;
                }
            }

            checkbox.addEventListener("change", validateCheckbox);

            const form = document.getElementById("form1");
            form.addEventListener("submit", function (event) {
                let isValid = true;

                if (!nameInput.value.trim() || !nameRegex.test(nameInput.value.trim())) {
                    isValid = false;
                    nameError.textContent = "* Enter a valid name.";
                } else {
                    nameError.textContent = "";
                }

                if (!emailInput.value.trim() || !emailRegex.test(emailInput.value.trim())) {
                    isValid = false;
                    emailError.textContent = "* Enter a valid email.";
                } else {
                    emailError.textContent = "";
                }

                if (!passwordInput.value.trim() || !passwordRegex.test(passwordInput.value.trim())) {
                    isValid = false;
                    passwordError.textContent = "* Enter a strong password.";
                } else {
                    passwordError.textContent = "";
                }

                if (!validateCheckbox()) {
                    isValid = false;
                }

                if (!isValid) {
                    event.preventDefault();
                }
            });
        });
 

        window.onload = function () {
            document.getElementById("form1").onsubmit = function () {
                var isValid = true;

                if (document.getElementById("TxtName").value == "") {
                    document.getElementById("nameError").innerText = "Please enter your full name.";
                    isValid = false;
                }
                if (document.getElementById("TxtEmail").value == "") {
                    document.getElementById("emailError").innerText = "Please enter your email address.";
                    isValid = false;
                }
                if (document.getElementById("TxtPassword").value == "") {
                    document.getElementById("passwordError").innerText = "Please enter a password.";
                    isValid = false;
                }

                return isValid;
            }
        };
    </script>

</body>

</html>
