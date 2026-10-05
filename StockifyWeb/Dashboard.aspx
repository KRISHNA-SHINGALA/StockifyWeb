<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StockifyWeb.Dashboard" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard - Stockify</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="Content/Stockify.css" rel="stylesheet" />
</head>
<body class="dashboard-body">
    <form id="form1" runat="server">
        <div class="dashboard-container">
            
            <!-- IMPORTED SIDEBAR -->
            <uc:Sidebar runat="server" id="SidebarControl" />

            <main class="main-content">
                
                <!-- IMPORTED TOP NAV BAR -->
                <uc:Topbar runat="server" id="TopbarControl" />

                <!-- Body Content -->
                <div class="content-body">
                    <div class="page-title-section">
                        <div>
                            <h1>Dashboard</h1>
                            <p><%: DateTime.Now.ToString("dddd, dd MMMM yyyy") %> • Business performance overview</p>
                        </div>
                        <button type="button" onclick="window.location.href='Billing.aspx';" class="btn btn-new-bill"><i class="bi bi-plus-lg"></i> New Bill</button>                    </div>

                    <!-- Summary Cards Grid -->
                    <div class="row g-4 mb-4">
                        <div class="col-md-4">
                            <div class="summary-card">
                                <div class="d-flex justify-content-between align-items-start">
                                    <div><div class="summary-title">TOTAL PRODUCTS</div><div class="summary-value">1,234</div></div>
                                    <div class="summary-icon icon-blue"><i class="bi bi-box"></i></div>
                                </div>
                                <div class="mt-2"><span class="trend-badge trend-up"><i class="bi bi-arrow-up-right"></i> +3.4%</span><span class="trend-text">42 added this month</span></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="summary-card">
                                <div class="d-flex justify-content-between align-items-start">
                                    <div><div class="summary-title">TOTAL SALES</div><div class="summary-value">₹42,56,456</div></div>
                                    <div class="summary-icon icon-gray"><i class="bi bi-graph-up-arrow"></i></div>
                                </div>
                                <div class="mt-2"><span class="trend-badge trend-up"><i class="bi bi-arrow-up-right"></i> +12.1%</span><span class="trend-text">vs. last quarter</span></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="summary-card">
                                <div class="d-flex justify-content-between align-items-start">
                                    <div><div class="summary-title">TODAY'S REVENUE</div><div class="summary-value">₹1,23,346</div></div>
                                    <div class="summary-icon icon-blue"><i class="bi bi-currency-rupee"></i></div>
                                </div>
                                <div class="mt-2"><span class="trend-badge trend-up"><i class="bi bi-arrow-up-right"></i> +8.6%</span><span class="trend-text">86 bills generated</span></div>
                            </div>
                        </div>
                    </div>

                    <!-- Recent Bills Table -->
                    <div class="section-box">
                        <div class="section-header">
                            <h4>Recent Bills</h4>
                            <p class="text-muted" style="font-size: 13px;">Latest invoices generated at the counter</p>
                        </div>
                        <div class="table-responsive">
                            <table class="table mb-0 align-middle">
                                <thead>
                                    <tr>
                                        <th>Invoice</th>
                                        <th>Customer</th>
                                        <th>Method</th>
                                        <th>Items</th>
                                        <th>Amount</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="fw-bold">INV-20841</td>
                                        <td>Ananya Deshpande<br><small class="text-muted">10 min ago</small></td>
                                        <td>UPI</td>
                                        <td>7</td>
                                        <td class="fw-bold">₹41,250</td>
                                        <td><span class="status-paid fw-bold">Paid</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Low Stock Products -->
                    <div class="section-box">
                        <div class="section-header">
                            <h4>Low Stock Products</h4>
                            <p class="text-muted" style="font-size: 13px;">Items at or below reorder level</p>
                        </div>
                        <div class="low-stock-item">
                            <div>
                                <div class="fw-bold text-dark">boAt Airdopes 141</div>
                                <div class="text-muted" style="font-size: 12px;">Electronics • reorder at 15</div>
                            </div>
                            <span class="stock-badge-yellow">9 Left</span>
                        </div>
                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>