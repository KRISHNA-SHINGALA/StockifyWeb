<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expenses.aspx.cs" Inherits="StockifyWeb.Expenses" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Expenses - Stockify</title>
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

                <div class="content-body">
                    
                    <!-- Page Header -->
                    <div class="page-title-section d-flex justify-content-between align-items-center mb-4">
                        <div>
                            <h1 class="fw-bold mb-1">Expenses</h1>
                            <p class="text-muted mb-0">July 2026 · ₹3,41,200 recorded across 6 categories</p>
                        </div>
                        <button type="button" class="btn btn-outline-dark rounded-pill fw-bold px-4 bg-white" style="border-width: 1.5px;">
                            <i class="bi bi-plus-lg me-1"></i> Add Expenses
                        </button>
                    </div>

                    <!-- Summary Cards Row -->
                    <div class="row g-4 mb-4">
                        <!-- Salaries -->
                        <div class="col-md-4">
                            <div class="section-box h-100 mb-0 p-4">
                                <div class="d-flex justify-content-between align-items-start mb-3">
                                    <div class="exp-icon-box"><i class="bi bi-wallet2 text-dark"></i></div>
                                    <div class="fw-bold text-muted small text-uppercase letter-spacing-1">Salaries</div>
                                </div>
                                <div class="fw-bold text-dark fs-3 mb-2">₹2,27,500</div>
                                <div class="text-muted small"><i class="bi bi-graph-up text-secondary"></i> +4.2% from last month</div>
                            </div>
                        </div>
                        
                        <!-- Rent -->
                        <div class="col-md-4">
                            <div class="section-box h-100 mb-0 p-4">
                                <div class="d-flex justify-content-between align-items-start mb-3">
                                    <div class="exp-icon-box"><i class="bi bi-building text-primary"></i></div>
                                    <div class="fw-bold text-muted small text-uppercase letter-spacing-1">Rent</div>
                                </div>
                                <div class="fw-bold text-dark fs-3 mb-2">₹65,000</div>
                                <div class="text-muted small"><i class="bi bi-dash text-secondary"></i> Unchanged</div>
                            </div>
                        </div>

                        <!-- Electricity -->
                        <div class="col-md-4">
                            <div class="section-box h-100 mb-0 p-4">
                                <div class="d-flex justify-content-between align-items-start mb-3">
                                    <div class="exp-icon-box"><i class="bi bi-lightning-charge text-danger"></i></div>
                                    <div class="fw-bold text-muted small text-uppercase letter-spacing-1">Electricity</div>
                                </div>
                                <div class="fw-bold text-dark fs-3 mb-2">₹18,400</div>
                                <div class="text-danger small"><i class="bi bi-graph-up text-danger"></i> +12.5% from last month</div>
                            </div>
                        </div>
                    </div>

                    <div class="row g-4">
                        <!-- LEFT COLUMN: Recent Expenses Table -->
                        <div class="col-lg-8">
                            <div class="section-box h-100 p-0 overflow-hidden">
                                
                                <!-- Table Header -->
                                <div class="d-flex justify-content-between align-items-center p-4 border-bottom">
                                    <h3 class="fw-bold mb-0 fs-5">Recent Expenses</h3>
                                    <a href="#" class="text-primary text-decoration-none small fw-medium">View All <i class="bi bi-arrow-right"></i></a>
                                </div>

                                <!-- Expense Table -->
                                <div class="table-responsive">
                                    <table class="table mb-0 align-middle exp-table">
                                        <thead>
                                            <tr class="text-muted small text-uppercase">
                                                <th>Ref</th>
                                                <th>Category</th>
                                                <th>Note</th>
                                                <th>Date</th>
                                                <th>Mode</th>
                                                <th class="text-end">Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- Row 1 -->
                                            <tr>
                                                <td><a href="#" class="text-primary text-decoration-none small">EXP-<br>908</a></td>
                                                <td><span class="exp-badge badge-rent">Rent</span></td>
                                                <td class="text-dark fw-medium small">Shop rent — July</td>
                                                <td class="text-muted small">01 Jul 2026</td>
                                                <td class="text-muted small">Bank<br>Transfer</td>
                                                <td class="text-end fw-bold text-dark">₹65,000</td>
                                            </tr>
                                            <!-- Row 2 -->
                                            <tr>
                                                <td><a href="#" class="text-primary text-decoration-none small">EXP-<br>907</a></td>
                                                <td><span class="exp-badge badge-salaries">Salaries</span></td>
                                                <td class="text-dark fw-medium small">June staff payroll</td>
                                                <td class="text-muted small">01 Jul 2026</td>
                                                <td class="text-muted small">Bank<br>Transfer</td>
                                                <td class="text-end fw-bold text-dark">₹2,27,500</td>
                                            </tr>
                                            <!-- Row 3 -->
                                            <tr>
                                                <td><a href="#" class="text-primary text-decoration-none small">EXP-<br>906</a></td>
                                                <td><span class="exp-badge badge-electricity">Electricity</span></td>
                                                <td class="text-dark fw-medium small">Utility bill - June</td>
                                                <td class="text-muted small">28 Jun 2026</td>
                                                <td class="text-muted small">UPI</td>
                                                <td class="text-end fw-bold text-dark">₹18,400</td>
                                            </tr>
                                            <!-- Row 4 -->
                                            <tr>
                                                <td><a href="#" class="text-primary text-decoration-none small">EXP-<br>905</a></td>
                                                <td><span class="exp-badge badge-supplies">Supplies</span></td>
                                                <td class="text-dark fw-medium small">Packaging materials</td>
                                                <td class="text-muted small">25 Jun 2026</td>
                                                <td class="text-muted small">Credit<br>Card</td>
                                                <td class="text-end fw-bold text-dark">₹12,850</td>
                                            </tr>
                                            <!-- Row 5 -->
                                            <tr>
                                                <td><a href="#" class="text-primary text-decoration-none small">EXP-<br>904</a></td>
                                                <td><span class="exp-badge badge-supplies">Marketing</span></td>
                                                <td class="text-dark fw-medium small">Social media ads</td>
                                                <td class="text-muted small">22 Jun 2026</td>
                                                <td class="text-muted small">Credit<br>Card</td>
                                                <td class="text-end fw-bold text-dark">₹15,000</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- RIGHT COLUMN: Add Expense Form -->
                        <div class="col-lg-4">
                            <div class="section-box p-4">
                                <h3 class="fw-bold mb-1 fs-5">Add Expense</h3>
                                <p class="text-muted small mb-4">Record a new outbound payment.</p>

                                <div class="mb-3">
                                    <label class="form-label text-dark fw-bold" style="font-size: 12px;">Category *</label>
                                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select exp-input border-0 bg-light">
                                        <asp:ListItem Text="Select category..." Value=""></asp:ListItem>
                                        <asp:ListItem Text="Rent" Value="Rent"></asp:ListItem>
                                        <asp:ListItem Text="Salaries" Value="Salaries"></asp:ListItem>
                                        <asp:ListItem Text="Electricity" Value="Electricity"></asp:ListItem>
                                        <asp:ListItem Text="Supplies" Value="Supplies"></asp:ListItem>
                                        <asp:ListItem Text="Marketing" Value="Marketing"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="Username0" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Category is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label text-dark fw-bold" style="font-size: 12px;">Note *</label>
                                    <asp:TextBox ID="txtNote" runat="server" CssClass="form-control exp-input border-0 bg-light" placeholder="e.g. Shop rent — July"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Username1" runat="server" ControlToValidate="txtNote" ErrorMessage="Note is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-6">
                                        <label class="form-label text-dark fw-bold" style="font-size: 12px;">Amount (₹) *</label>
                                        <asp:TextBox ID="txtAmount" runat="server" TextMode="Number" CssClass="form-control exp-input border-0 bg-light" placeholder="0.00"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="Username2" runat="server" ControlToValidate="txtAmount" ErrorMessage="Amount is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label text-dark fw-bold" style="font-size: 12px;">Date *</label>
                                        <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control exp-input border-0 bg-light"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="Username3" runat="server" ControlToValidate="txtDate" ErrorMessage="Date is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="mb-4">
                                    <label class="form-label text-dark fw-bold" style="font-size: 12px;">Payment mode *</label>
                                    <asp:DropDownList ID="ddlPaymentMode" runat="server" CssClass="form-select exp-input border-0 bg-light">
                                        <asp:ListItem Text="Bank Transfer" Value="Bank Transfer"></asp:ListItem>
                                        <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
                                        <asp:ListItem Text="Credit Card" Value="Credit Card"></asp:ListItem>
                                        <asp:ListItem Text="Cash" Value="Cash"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <asp:LinkButton ID="btnSaveExpense" runat="server" CssClass="btn w-100 fw-bold" style="background-color: #dbeafe; color: #1e40af; border-radius: 8px; padding: 10px;" OnClick="btnSaveExpense_Click">
                                    Save Expense
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>