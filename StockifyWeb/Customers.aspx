<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="StockifyWeb.Customers" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Customers - Stockify</title>
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
                            <h1 class="fw-bold mb-1">Customers</h1>
                            <p class="text-muted mb-0">6 active vendors · ₹3,13,500 outstanding</p>
                        </div>
                       <button type="button" onclick="window.location.href='AddCustomer.aspx';" class="btn btn-outline-dark rounded-pill fw-bold px-4 bg-white" style="border-width: 1.5px;">
    <i class="bi bi-plus-lg me-1"></i> Add Customer
</button>
                    </div>

                    <div class="row g-4">
                        <!-- LEFT COLUMN: Customer List -->
                        <div class="col-lg-8">
                            <div class="section-box h-100 p-0 overflow-hidden">
                                
                                <!-- List Header & Search -->
                                <div class="d-flex justify-content-between align-items-center p-4 border-bottom">
                                    <h3 class="fw-bold mb-0 fs-4">Customer list</h3>
                                    <div class="search-bar bg-white border-dark rounded-pill" style="border-width: 1px; width: 250px; padding: 6px 15px;">
                                        <i class="bi bi-search text-dark"></i>
                                        <input type="text" placeholder="Search Customers..." class="text-dark" />
                                    </div>
                                </div>

                                <!-- Customer Table -->
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0 align-middle customer-table">
                                        <thead>
                                            <tr>
                                                <th>Customer</th>
                                                <th class="text-center">Type</th>
                                                <th class="text-center">Orders</th>
                                                <th class="text-end">Total Spent</th>
                                                <th class="text-end">Balance</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- Row 1 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Ananya Deshpande</div>
                                                    <div class="text-muted small">+91 98908 12345 · Pune</div>
                                                </td>
                                                <td class="text-center"><span class="cust-badge cust-retail">Retail</span></td>
                                                <td class="text-center fw-bold text-dark">42</td>
                                                <td class="text-end fw-bold text-dark">₹1,28,400</td>
                                                <td class="text-end fw-bold text-danger">₹0</td>
                                            </tr>
                                            <!-- Row 2 (Selected/Active) -->
                                            <tr class="table-active">
                                                <td>
                                                    <div class="fw-bold text-dark">Shree Kirana Store</div>
                                                    <div class="text-muted small">+91 99870 44112 · Pimpri</div>
                                                </td>
                                                <td class="text-center"><span class="cust-badge cust-wholesale">Wholesale</span></td>
                                                <td class="text-center fw-bold text-dark">118</td>
                                                <td class="text-end fw-bold text-dark">₹18,46,200</td>
                                                <td class="text-end fw-bold text-danger">₹38,450</td>
                                            </tr>
                                            <!-- Row 3 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Vikram Nair</div>
                                                    <div class="text-muted small">+91 90112 77653 · Pune</div>
                                                </td>
                                                <td class="text-center"><span class="cust-badge cust-retail">Retail</span></td>
                                                <td class="text-center fw-bold text-dark">9</td>
                                                <td class="text-end fw-bold text-dark">₹64,890</td>
                                                <td class="text-end fw-bold text-danger">₹0</td>
                                            </tr>
                                            <!-- Row 4 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Sunrise Clinic</div>
                                                    <div class="text-muted small">+91 98220 91104 · Kothrud</div>
                                                </td>
                                                <td class="text-center"><span class="cust-badge cust-institute">Institute</span></td>
                                                <td class="text-center fw-bold text-dark">27</td>
                                                <td class="text-end fw-bold text-dark">₹7,42,300</td>
                                                <td class="text-end fw-bold text-danger">₹21,360</td>
                                            </tr>
                                            <!-- Row 5 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Rahul Kulkarni</div>
                                                    <div class="text-muted small">+91 97300 55129 · Baner</div>
                                                </td>
                                                <td class="text-center"><span class="cust-badge cust-retail">Retail</span></td>
                                                <td class="text-center fw-bold text-dark">15</td>
                                                <td class="text-end fw-bold text-dark">₹96,450</td>
                                                <td class="text-end fw-bold text-danger">₹4,620</td>
                                            </tr>
                                            <!-- Row 6 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Meera Joshi</div>
                                                    <div class="text-muted small">+91 96540 22118 · Wakad</div>
                                                </td>
                                                <td class="text-center"><span class="cust-badge cust-retail">Retail</span></td>
                                                <td class="text-center fw-bold text-dark">30</td>
                                                <td class="text-end fw-bold text-dark">₹38,210</td>
                                                <td class="text-end fw-bold text-danger">₹0</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- RIGHT COLUMN: Profile & History -->
                        <div class="col-lg-4">
                            
                            <!-- Customer Profile -->
                            <div class="mb-4">
                                <h3 class="fw-bold mb-0 fs-4">Customer profile</h3>
                                <p class="text-muted small mb-3">Selected account</p>
                                
                                <div class="section-box p-4">
                                    <div class="d-flex align-items-center gap-3 mb-4">
                                        <div class="profile-avatar">SH</div>
                                        <div>
                                            <div class="fw-bold text-dark fs-5">Shree Kirana Store</div>
                                            <div class="text-muted small">Wholesale account · CUS-3302</div>
                                        </div>
                                    </div>

                                    <div class="row g-3 mb-4">
                                        <div class="col-6">
                                            <div class="stat-box">
                                                <div class="text-muted small">Total orders</div>
                                                <div class="fw-bold text-dark fs-5">118</div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="stat-box">
                                                <div class="text-muted small">Lifetime value</div>
                                                <div class="fw-bold text-dark fs-5">₹18,46,200</div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="stat-box">
                                                <div class="text-muted small">Pending balance</div>
                                                <div class="fw-bold text-dark fs-5">₹38,450</div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="stat-box">
                                                <div class="text-muted small">City</div>
                                                <div class="fw-bold text-dark fs-5">Pimpri</div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="d-flex gap-2">
                                        <button type="button" class="btn btn-outline-dark rounded-pill flex-grow-1 fw-bold bg-white" style="border-width: 1.5px;">
                                            <i class="bi bi-telephone me-1"></i> Call
                                        </button>
                                        <button type="button" class="btn btn-outline-dark rounded-pill flex-grow-1 fw-bold bg-white" style="border-width: 1.5px;">
                                            <i class="bi bi-envelope me-1"></i> Send Statement
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <!-- Purchase History -->
                            <div>
                                <h3 class="fw-bold mb-3 fs-4">Purchase history</h3>
                                
                                <div class="d-flex flex-column gap-2">
                                    <div class="history-card">
                                        <div>
                                            <div class="fw-bold text-dark fs-6">INV-20841</div>
                                            <div class="text-muted small">7 items · UPI · 10 min ago</div>
                                        </div>
                                        <div class="fw-bold text-dark">₹4,820</div>
                                    </div>
                                    <div class="history-card">
                                        <div>
                                            <div class="fw-bold text-dark fs-6">INV-20840</div>
                                            <div class="text-muted small">2 items · Card · 34 min ago</div>
                                        </div>
                                        <div class="fw-bold text-dark">₹15,999</div>
                                    </div>
                                    <div class="history-card">
                                        <div>
                                            <div class="fw-bold text-dark fs-6">INV-20839</div>
                                            <div class="text-muted small">24 items · Credit · 1 hr ago</div>
                                        </div>
                                        <div class="fw-bold text-dark">₹38,450</div>
                                    </div>
                                    <div class="history-card">
                                        <div>
                                            <div class="fw-bold text-dark fs-6">INV-20838</div>
                                            <div class="text-muted small">4 items · Cash · 2 hrs ago</div>
                                        </div>
                                        <div class="fw-bold text-dark">₹2,140</div>
                                    </div>
                                    <div class="history-card">
                                        <div>
                                            <div class="fw-bold text-dark fs-6">INV-20837</div>
                                            <div class="text-muted small">11 items · UPI · 3 hrs ago</div>
                                        </div>
                                        <div class="fw-bold text-dark">₹9,275</div>
                                    </div>
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