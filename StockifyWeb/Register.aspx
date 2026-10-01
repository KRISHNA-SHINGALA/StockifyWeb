<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StockifyWeb.Register" %>

<!DOCTYPE html>


<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register - Stockify</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Stockify CSS -->
    <link href="Content/Stockify.css" rel="stylesheet" />
</head>
<body class="login-body">
    <form id="form1" runat="server">
        <div class="login-split-container">
            <!-- LEFT PANEL: REGISTER FORM -->
            <div class="login-left-panel">
                <div class="login-form-wrapper">
                    <div class="mb-4">
                        <!-- Logo & Text Wrapper -->
                        <a href="Default.aspx" class="d-flex align-items-center text-decoration-none" style="gap: 12px;">
                            <img src="Images/Stockify_white.png" alt="Stockify Logo" class="login-logo-img" />
                            <span class="stockify-brand-text-white">Stockify</span>
                        </a>
                    </div>

                    <h2 class="welcome-title">Create Your Account</h2>
                    <p class="welcome-subtitle">Join Stockify and simplify your shop</p>

                    <!-- Username -->
                    <div class="mb-3 mt-4">
                        <label class="form-label text-white-50 small fw-bold">Username</label>
                        <div class="input-group">
                            <span class="input-group-text bg-transparent border-secondary text-light">✉</span>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control bg-transparent text-light border-secondary custom-input" placeholder="Your email"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Full Name -->
                    <div class="mb-3">
                        <label class="form-label text-white-50 small fw-bold">Full name</label>
                        <div class="input-group">
                            <span class="input-group-text bg-transparent border-secondary text-light">👤</span>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control bg-transparent text-light border-secondary custom-input" placeholder="Enter your full name"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Password -->
                    <div class="mb-3">
                        <label class="form-label text-white-50 small fw-bold">Password</label>
                        <div class="input-group">
                            <span class="input-group-text bg-transparent border-secondary text-light">🔒</span>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control bg-transparent text-light border-secondary custom-input" placeholder="Enter your password"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Confirm Password -->
                    <div class="mb-3">
                        <label class="form-label text-white-50 small fw-bold">Confirm Password</label>
                        <div class="input-group">
                            <span class="input-group-text bg-transparent border-secondary text-light">🔒</span>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control bg-transparent text-light border-secondary custom-input" placeholder="•••••••••"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Terms Checkbox -->
                    <div class="mb-4 form-check terms-checkbox-wrapper">
                        <asp:CheckBox ID="chkTerms" runat="server" CssClass="form-check-input custom-checkbox" />
                        <label class="form-check-label text-white-50 small" for="chkTerms">
                            I agree to the <a href="#" class="text-info text-decoration-none">Privacy policy</a> and <a href="#" class="text-info text-decoration-none">Terms</a>
                        </label>
                    </div>

                    <!-- Submit Button -->
                    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary w-100 py-2 fw-bold login-submit-btn mb-4" OnClick="btnRegister_Click" />

                    <!-- Login Link -->
                    <div class="text-center">
                        <span class="text-white-50 fw-bold">Already Registered? </span>
                        <a href="Login.aspx" class="text-info text-decoration-none fw-bold">Login</a>
                    </div>
                </div>
            </div>

            <!-- RIGHT PANEL: DASHBOARD PREVIEW & FEATURES -->
            <div class="login-right-panel d-none d-lg-flex flex-column justify-content-between align-items-center p-5">
                <div class="w-100 text-center mb-4">
                    <img src="Images/Login_NET.png" alt="Stockify Dashboard Preview" class="login-preview-img img-fluid shadow-lg rounded" />
                </div>
                <div class="text-center w-100">
                    <h3 class="fw-bold text-dark mb-2">Run your entire shop from one dashboard</h3>
                    <p class="text-muted small mb-4">Inventory, POS billing, GST invoices, suppliers, staff and profit reports<br />— built for grocery, electronics, medical, clothing and hardware stores.</p>
                    
                    <div class="row g-3 justify-content-center">
                        <div class="col-4">
                            <div class="p-3 border rounded bg-white shadow-sm text-center feature-mini-box">
                                <div class="fs-4 mb-1">📦</div>
                                <small class="fw-bold text-dark d-block">Manage Inventory</small>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="p-3 border rounded bg-white shadow-sm text-center feature-mini-box">
                                <div class="fs-4 mb-1">📄</div>
                                <small class="fw-bold text-dark d-block">Billing & Invoices</small>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="p-3 border rounded bg-white shadow-sm text-center feature-mini-box">
                                <div class="fs-4 mb-1">👥</div>
                                <small class="fw-bold text-dark d-block">Staff Management</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>