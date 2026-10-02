<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="StockifyWeb.Reports" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Business Reports - Stockify</title>
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
                    <div class="page-title-section d-flex justify-content-between align-items-center mb-5">
                        <div>
                            <h1 class="fw-bold mb-1" style="font-size: 32px;">Business Reports</h1>
                            <p class="text-muted mb-0" style="font-size: 15px;">View, filter, and export your shop's financial statements and performance.</p>
                        </div>
                    </div>

                    <!-- Reports Cards Grid -->
                    <div class="row g-5">
                        
                        <!-- Total Revenue -->
                        <div class="col-md-6 col-lg-4">
                            <div class="summary-card shadow-sm" style="border-width: 1.5px; padding: 25px;">
                                <div class="d-flex justify-content-between align-items-start">
                                    <div>
                                        <div class="summary-title text-muted mb-2">TOTAL REVENUE</div>
                                    </div>
                                    <div class="summary-icon" style="background-color: #1e293b; color: white; width: 35px; height: 35px; font-size: 16px;"><i class="bi bi-wallet2"></i></div>
                                </div>
                                <div class="summary-value" style="font-size: 34px;">₹4,25,000</div>
                                <div class="mt-3">
                                    <span class="trend-badge" style="background-color: #e0e7ff; color: #4338ca;"><i class="bi bi-arrow-up-right"></i> +12%</span>
                                    <span class="trend-text text-muted">from last month</span>
                                </div>
                            </div>
                        </div>

                        <!-- Total Profit -->
                        <div class="col-md-6 col-lg-4">
                            <div class="summary-card shadow-sm" style="border-width: 1.5px; padding: 25px;">
                                <div class="d-flex justify-content-between align-items-start">
                                    <div>
                                        <div class="summary-title text-muted mb-2">TOTAL PROFIT</div>
                                    </div>
                                    <div class="summary-icon" style="background-color: #4f46e5; color: white; width: 35px; height: 35px; font-size: 16px;"><i class="bi bi-piggy-bank"></i></div>
                                </div>
                                <div class="summary-value" style="font-size: 34px;">₹1,15,400</div>
                                <div class="mt-3">
                                    <span class="trend-badge" style="background-color: #e0e7ff; color: #4338ca;"><i class="bi bi-arrow-up-right"></i> +8.4%</span>
                                    <span class="trend-text text-muted">from last month</span>
                                </div>
                            </div>
                        </div>

                        <!-- Spacer for Grid Alignment (Matches Screenshot Layout) -->
                        <div class="col-lg-4 d-none d-lg-block"></div>

                        <!-- Total Expenses -->
                        <div class="col-md-6 col-lg-4">
                            <div class="summary-card shadow-sm" style="border-width: 1.5px; padding: 25px;">
                                <div class="d-flex justify-content-between align-items-start">
                                    <div>
                                        <div class="summary-title text-muted mb-2">TOTAL EXPENSES</div>
                                    </div>
                                    <div class="summary-icon" style="background-color: #fee2e2; color: #dc2626; width: 35px; height: 35px; font-size: 16px;"><i class="bi bi-cash"></i></div>
                                </div>
                                <div class="summary-value" style="font-size: 34px;">₹84,000</div>
                                <div class="mt-3">
                                    <span class="trend-text text-muted" style="margin-left: 0;">Includes rent, salaries, etc.</span>
                                </div>
                            </div>
                        </div>

                        <!-- Total Bills -->
                        <div class="col-md-6 col-lg-4">
                            <div class="summary-card shadow-sm" style="border-width: 1.5px; padding: 25px;">
                                <div class="d-flex justify-content-between align-items-start">
                                    <div>
                                        <div class="summary-title text-muted mb-2">TOTAL BILLS</div>
                                    </div>
                                    <div class="summary-icon" style="background-color: #334155; color: white; width: 35px; height: 35px; font-size: 16px;"><i class="bi bi-receipt"></i></div>
                                </div>
                                <div class="summary-value" style="font-size: 34px;">450</div>
                                <div class="mt-3">
                                    <span class="trend-text fw-bold text-dark" style="margin-left: 0;">Avg. ₹944/bill</span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </main>
        </div>
    </form>
</body>
</html>