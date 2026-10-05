<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="StockifyWeb.Settings" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Settings - Stockify</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <!-- Stockify CSS -->
    <link href="Content/Stockify.css" rel="stylesheet" />
</head>
<body class="dashboard-body">
    <form id="form1" runat="server">
        <div class="dashboard-container">
            
            <!-- IMPORTED SIDEBAR -->
            <uc:Sidebar runat="server" id="SidebarControl" />

            <main class="main-content">
                <!-- IMPORTED TOP BAR -->
                <uc:Topbar runat="server" id="TopbarControl" />

                <div class="content-body" style="max-width: 1200px;">
                    
                    <!-- Page Header -->
                    <div class="d-flex justify-content-between align-items-start mb-4">
                        <div>
                            <h1 class="fw-bold mb-1 fs-3">Settings</h1>
                            <p class="text-muted small mb-0">Manage your shop profile, appearance, backups and account security.</p>
                        </div>
                        <asp:LinkButton ID="btnSaveChanges" runat="server" CssClass="btn btn-outline-dark rounded-pill fw-bold px-4 py-2" style="background-color: #e0e7ff; color: #1e1b4b; border-color: #1e1b4b; border-width: 1.5px;" ValidationGroup="ShopInfoGroup" OnClick="btnSaveChanges_Click">
                            <i class="bi bi-floppy me-2"></i> SAVE CHANGES
                        </asp:LinkButton>
                    </div>

                    <!-- Navigation Tabs -->
                    <ul class="nav nav-pills settings-tabs mb-4" id="settingsTabs" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="shop-tab" data-bs-toggle="tab" data-bs-target="#shop-pane" type="button" role="tab">Shop Information</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="theme-tab" data-bs-toggle="tab" data-bs-target="#theme-pane" type="button" role="tab">Theme</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="backup-tab" data-bs-toggle="tab" data-bs-target="#backup-pane" type="button" role="tab">Backup</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="security-tab" data-bs-toggle="tab" data-bs-target="#security-pane" type="button" role="tab">Security</button>
                        </li>
                    </ul>

                    <!-- Tab Content -->
                    <div class="tab-content" id="settingsTabContent">
                        
                        <!-- ================= TAB 1: SHOP INFORMATION ================= -->
                        <div class="tab-pane fade show active" id="shop-pane" role="tabpanel">
                            
                            <!-- Shop Details Card -->
                            <div class="settings-card mb-4">
                                <div class="settings-card-header">
                                    <h4 class="fw-bold mb-1 fs-5">Shop information</h4>
                                    <p class="text-muted small mb-0">Displayed on invoices and receipts</p>
                                </div>
                                <div class="p-4 p-md-5">
                                    <div class="row g-4">
                                        <div class="col-md-6">
                                            <label class="form-label settings-label">Shop name *</label>
                                            <asp:TextBox ID="txtShopName" runat="server" CssClass="form-control settings-input"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Username3" runat="server" ControlToValidate="txtShopName" ErrorMessage="Shop name is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label settings-label">Branch</label>
                                            <asp:TextBox ID="txtBranch" runat="server" CssClass="form-control settings-input"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label settings-label">Phone Number</label>
                                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control settings-input"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter a valid 10-digit number." ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label settings-label">Business Email</label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control settings-input"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid email address." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label settings-label">Address</label>
                                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control settings-input"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Business Details Card -->
                            <div class="settings-card">
                                <div class="settings-card-header">
                                    <h4 class="fw-bold mb-1 fs-5">Business details</h4>
                                    <p class="text-muted small mb-0">Displayed on invoices and receipts</p>
                                </div>
                                <div class="p-4 p-md-5">
                                    <div class="row g-4">
                                        <div class="col-md-6">
                                            <label class="form-label settings-label">GSTIN / Tax ID</label>
                                            <asp:TextBox ID="txtGSTIN" runat="server" CssClass="form-control settings-input"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label settings-label">Invoice prefix</label>
                                            <asp:TextBox ID="txtInvoicePrefix" runat="server" CssClass="form-control settings-input"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label settings-label">Base Currency</label>
                                            <asp:TextBox ID="txtBaseCurrency" runat="server" CssClass="form-control settings-input"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label settings-label">Financial year</label>
                                            <asp:TextBox ID="txtFinancialYear" runat="server" CssClass="form-control settings-input"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- ================= TAB 2: THEME ================= -->
                        <div class="tab-pane fade" id="theme-pane" role="tabpanel">
                            <!-- Theme content remains exactly the same as before -->
                            <div class="row g-4">
                                <div class="col-md-7">
                                    <div class="settings-card h-100 p-4 p-md-5">
                                        <div class="mb-5">
                                            <h4 class="fw-bold mb-1 fs-5 text-dark">Interface Theme</h4>
                                            <p class="text-muted small mb-4">Customize the visual appearance of your dashboard.</p>
                                            <div class="d-flex gap-4 flex-wrap">
                                                <div class="text-center cursor-pointer">
                                                    <div class="theme-preview theme-light active position-relative mb-2">
                                                        <div class="theme-check"><i class="bi bi-check"></i></div>
                                                    </div>
                                                    <span class="fw-bold text-dark small">Light Mode</span>
                                                </div>
                                                <div class="text-center cursor-pointer">
                                                    <div class="theme-preview theme-dark mb-2"></div>
                                                    <span class="text-muted small">Dark Mode</span>
                                                </div>
                                                <div class="text-center cursor-pointer">
                                                    <div class="theme-preview theme-system mb-2"></div>
                                                    <span class="text-muted small">System Default</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <h4 class="fw-bold mb-1 fs-5 text-dark">Accent Color</h4>
                                            <p class="text-muted small mb-3">Choose the primary color for buttons and highlights.</p>
                                            <div class="d-flex gap-3">
                                                <div class="color-circle active" style="background-color: #0f172a;"><i class="bi bi-check"></i></div>
                                                <div class="color-circle" style="background-color: #0d9488;"></div>
                                                <div class="color-circle" style="background-color: #6366f1;"></div>
                                                <div class="color-circle" style="background-color: #b45309;"></div>
                                                <div class="color-circle" style="background-color: #15803d;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="h-100 rounded-4 p-5 d-flex flex-column justify-content-end" style="background-color: #1e293b; color: white;">
                                        <i class="bi bi-moon-stars fs-3 mb-4" style="color: #94a3b8;"></i>
                                        <h4 class="fw-bold mb-3 fs-5">Preview changes instantly</h4>
                                        <p class="small text-muted lh-lg mb-0">Modifying your interface theme and accent color updates the UI across all shop management modules immediately, reducing eye strain during extended inventory sessions.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- ================= TAB 3: BACKUP ================= -->
                        <div class="tab-pane fade" id="backup-pane" role="tabpanel">
                            <!-- Backup content remains exactly the same as before -->
                            <div class="row g-4">
                                <div class="col-md-8">
                                    <div class="settings-card h-100 p-4 p-md-5">
                                        <div class="d-flex align-items-center gap-3 mb-5">
                                            <div class="backup-icon"><i class="bi bi-cloud-arrow-up"></i></div>
                                            <div>
                                                <h4 class="fw-bold mb-1 fs-5">Backup & restore</h4>
                                                <p class="text-muted small mb-0">Last automatic backup: 14 July 2026, 03:00 AM</p>
                                            </div>
                                        </div>
                                        <div class="backup-banner mb-4 d-flex justify-content-between align-items-center">
                                            <div class="d-flex align-items-start gap-3">
                                                <i class="bi bi-circle-fill text-white fs-6 mt-1"></i>
                                                <div>
                                                    <div class="fw-bold mb-1" style="color: #94a3b8;">Daily automated backup</div>
                                                    <div class="small" style="color: #475569;">Encrypted snapshot of<br />inventory, bills and ledgers.</div>
                                                </div>
                                            </div>
                                            <div class="bg-white px-3 py-1 rounded-pill small fw-bold text-dark">
                                                <i class="bi bi-check-circle text-dark me-1"></i> Enabled
                                            </div>
                                        </div>
                                        <div class="d-flex gap-3">
                                            <button type="button" class="btn fw-bold px-4 rounded-pill" style="background-color: #a7b5ff; color: #1e1b4b;">
                                                <i class="bi bi-cloud-arrow-up me-2"></i> Backup now
                                            </button>
                                            <button type="button" class="btn btn-outline-dark fw-bold px-4 rounded-pill bg-light border-0 text-muted">
                                                <i class="bi bi-arrow-counterclockwise me-2"></i> Restore from file
                                            </button>
                                            <button type="button" class="btn btn-outline-dark fw-bold px-4 rounded-pill bg-light border-0 text-muted">
                                                <i class="bi bi-download me-2"></i> Download data export
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="settings-card h-100 p-4">
                                        <h4 class="fw-bold mb-4 fs-6 text-dark d-flex align-items-center gap-2">
                                            <i class="bi bi-pie-chart text-primary"></i> Storage Usage
                                        </h4>
                                        <div class="d-flex justify-content-center mb-5">
                                            <div class="storage-chart">
                                                <div class="fw-bold fs-3 text-dark mb-0 lh-1">70%</div>
                                                <div class="text-muted small">Used</div>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column gap-3">
                                            <div class="d-flex justify-content-between align-items-center bg-light p-3 rounded-3">
                                                <div class="d-flex align-items-center gap-2 small text-dark"><i class="bi bi-circle-fill text-primary" style="font-size: 10px;"></i> Inventory</div>
                                                <div class="fw-bold small text-dark">1.2 GB</div>
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center bg-light p-3 rounded-3">
                                                <div class="d-flex align-items-center gap-2 small text-dark"><i class="bi bi-circle-fill text-dark" style="font-size: 10px;"></i> Ledgers</div>
                                                <div class="fw-bold small text-dark">450 MB</div>
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center bg-light p-3 rounded-3">
                                                <div class="d-flex align-items-center gap-2 small text-muted"><i class="bi bi-circle-fill text-secondary" style="font-size: 10px;"></i> Free Space</div>
                                                <div class="fw-bold small text-dark">850 MB</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- ================= TAB 4: SECURITY ================= -->
                        <div class="tab-pane fade" id="security-pane" role="tabpanel">
                            
                            <div class="d-flex align-items-center gap-3 mb-4">
                                <div class="security-icon"><i class="bi bi-shield-lock"></i></div>
                                <div>
                                    <h4 class="fw-bold mb-1 fs-5 text-dark">Change Password</h4>
                                    <p class="text-muted small mb-0">Update your administrator password regularly.</p>
                                </div>
                            </div>

                            <div class="row g-4 mb-4" style="max-width: 900px;">
                                <div class="col-md-4">
                                    <label class="form-label settings-label">Current password *</label>
                                    <div class="input-group">
                                        <span class="input-group-text add-sup-input bg-light border-0 border-end-0 ps-3 pe-2 text-muted"><i class="bi bi-unlock"></i></span>
                                        <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="form-control add-sup-input bg-light border-start-0"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="reqCurrentPassword" runat="server" ControlToValidate="txtCurrentPassword" ValidationGroup="SecurityGroup" ErrorMessage="Required!" ForeColor="#ff6b6b" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label settings-label">New password *</label>
                                    <div class="input-group">
                                        <span class="input-group-text add-sup-input bg-light border-0 border-end-0 ps-3 pe-2 text-muted"><i class="bi bi-key"></i></span>
                                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control add-sup-input bg-light border-start-0"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="reqNewPassword" runat="server" ControlToValidate="txtNewPassword" ValidationGroup="SecurityGroup" ErrorMessage="Required!" ForeColor="#ff6b6b" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label settings-label">Confirm password *</label>
                                    <div class="input-group">
                                        <span class="input-group-text add-sup-input bg-light border-0 border-end-0 ps-3 pe-2 text-muted"><i class="bi bi-key"></i></span>
                                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control add-sup-input bg-light border-start-0"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ValidationGroup="SecurityGroup" ErrorMessage="Required!" ForeColor="#ff6b6b" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cmpPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword" ValidationGroup="SecurityGroup" ErrorMessage="Passwords do not match!" ForeColor="#ff6b6b" Display="Dynamic" Font-Size="Small"></asp:CompareValidator>
                                </div>
                            </div>

                            <div class="d-flex gap-4 mb-4 small">
                                <span class="text-muted"><i class="bi bi-x-circle me-1"></i> Special character</span>
                                <span class="text-muted"><i class="bi bi-x-circle me-1"></i> Uppercase letter</span>
                                <span class="text-primary"><i class="bi bi-check-circle-fill me-1"></i> 8+ characters</span>
                            </div>

                            <asp:LinkButton ID="btnUpdatePassword" runat="server" CssClass="btn px-4 py-2 rounded-pill fw-bold" style="background-color: #dbeafe; color: #1e40af;" ValidationGroup="SecurityGroup" OnClick="btnUpdatePassword_Click">
                                <i class="bi bi-key me-2"></i> Update password
                            </asp:LinkButton>

                        </div>

                    </div>
                </div>
            </main>
        </div>
    </form>

    <!-- Bootstrap JS for Tabs to work -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>