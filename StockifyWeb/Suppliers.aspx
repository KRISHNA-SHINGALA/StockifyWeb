<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="StockifyWeb.Suppliers" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Suppliers - Stockify</title>
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
                            <h1 class="fw-bold mb-1">Suppliers</h1>
                            <p class="text-muted mb-0">6 active vendors · ₹3,13,500 outstanding</p>
                        </div>
                        <button type="button" class="btn btn-outline-dark rounded-pill fw-bold px-4 bg-white" style="border-width: 1.5px; background-color: #e0e7ff !important; color: #1e1b4b; border-color: #1e1b4b;">
                            <i class="bi bi-plus-lg me-1"></i> Add Supplier
                        </button>
                    </div>

                    <div class="row g-4">
                        <!-- LEFT COLUMN: Supplier List -->
                        <div class="col-lg-8">
                            <div class="section-box h-100 p-0 overflow-hidden border-dark rounded-4" style="border-width: 1px;">
                                
                                <!-- List Header & Search -->
                                <div class="d-flex justify-content-between align-items-center p-4 border-bottom border-dark">
                                    <h3 class="fw-bold mb-0 fs-4">Supplier list</h3>
                                    <div class="search-bar bg-white border-dark rounded-pill" style="border-width: 1px; width: 300px; padding: 6px 15px;">
                                        <i class="bi bi-search text-dark"></i>
                                        <input type="text" placeholder="Search,Products,invoices" class="text-dark" />
                                    </div>
                                </div>

                                <!-- Supplier Table -->
                                <div class="table-responsive">
                                    <table class="table mb-0 align-middle supplier-table">
                                        <thead>
                                            <tr>
                                                <th class="ps-4">Supplier</th>
                                                <th>Contact</th>
                                                <th>Purchases</th>
                                                <th>Outstanding</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- Row 1 -->
                                            <tr>
                                                <td class="ps-4">
                                                    <div class="fw-bold text-dark fs-6">ITC Distributors</div>
                                                    <div class="text-muted small">SUP-101 · Pune</div>
                                                </td>
                                                <td>
                                                    <div class="fw-bold text-dark">Anil Gokhale</div>
                                                    <div class="text-muted small">98220 41122</div>
                                                </td>
                                                <td class="fw-bold text-dark fs-6">₹4,86,200</td>
                                                <td class="fw-bold text-danger fs-6">₹42,800</td>
                                                <td><span class="sup-badge sup-active">Active</span></td>
                                            </tr>
                                            <!-- Row 2 -->
                                            <tr>
                                                <td class="ps-4">
                                                    <div class="fw-bold text-dark fs-6">Bright Mobile World</div>
                                                    <div class="text-muted small">SUP-102 · Mumbai</div>
                                                </td>
                                                <td>
                                                    <div class="fw-bold text-dark">Faisal Khan</div>
                                                    <div class="text-muted small">98765 33210</div>
                                                </td>
                                                <td class="fw-bold text-dark fs-6">₹12,84,000</td>
                                                <td class="fw-bold text-danger fs-6">₹1,68,500</td>
                                                <td><span class="sup-badge sup-active">Active</span></td>
                                            </tr>
                                            <!-- Row 3 -->
                                            <tr>
                                                <td class="ps-4">
                                                    <div class="fw-bold text-dark fs-6">MediLine Pharma</div>
                                                    <div class="text-muted small">SUP-103 · Nashik</div>
                                                </td>
                                                <td>
                                                    <div class="fw-bold text-dark">Dr. Sneha Rao</div>
                                                    <div class="text-muted small">90045 77821</div>
                                                </td>
                                                <td class="fw-bold text-dark fs-6">₹3,12,400</td>
                                                <td class="fw-bold text-danger fs-6">₹0</td>
                                                <td><span class="sup-badge sup-active">Active</span></td>
                                            </tr>
                                            <!-- Row 4 -->
                                            <tr>
                                                <td class="ps-4">
                                                    <div class="fw-bold text-dark fs-6">Shree Hardware Depot</div>
                                                    <div class="text-muted small">SUP-104 · Pune</div>
                                                </td>
                                                <td>
                                                    <div class="fw-bold text-dark">Mahesh Patil</div>
                                                    <div class="text-muted small">99201 55440</div>
                                                </td>
                                                <td class="fw-bold text-dark fs-6">₹2,68,900</td>
                                                <td class="fw-bold text-danger fs-6">₹58,200</td>
                                                <td><span class="sup-badge sup-hold">On Hold</span></td>
                                            </tr>
                                            <!-- Row 5 -->
                                            <tr>
                                                <td class="ps-4">
                                                    <div class="fw-bold text-dark fs-6">Urban Threads Co.</div>
                                                    <div class="text-muted small">SUP-105 · Surat</div>
                                                </td>
                                                <td>
                                                    <div class="fw-bold text-dark">Priya Menon</div>
                                                    <div class="text-muted small">98111 20934</div>
                                                </td>
                                                <td class="fw-bold text-dark fs-6">₹4,21,750</td>
                                                <td class="fw-bold text-danger fs-6">₹31,600</td>
                                                <td><span class="sup-badge sup-active">Active</span></td>
                                            </tr>
                                            <!-- Row 6 -->
                                            <tr>
                                                <td class="ps-4">
                                                    <div class="fw-bold text-dark fs-6">Amul Dairy Agency</div>
                                                    <div class="text-muted small">SUP-106 · Pune</div>
                                                </td>
                                                <td>
                                                    <div class="fw-bold text-dark">Kiran Shelke</div>
                                                    <div class="text-muted small">97650 88123</div>
                                                </td>
                                                <td class="fw-bold text-dark fs-6">₹1,94,300</td>
                                                <td class="fw-bold text-danger fs-6">₹12,400</td>
                                                <td><span class="sup-badge sup-active">Active</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- RIGHT COLUMN: History & Outstanding -->
                        <div class="col-lg-4">
                            
                            <!-- Recent Purchase History -->
                            <div class="section-box mb-4 p-4 border-dark rounded-4" style="border-width: 1px;">
                                <h3 class="fw-bold mb-4 fs-4">Recent purchase history</h3>
                                
                                <div class="d-flex flex-column gap-3">
                                    <div class="d-flex justify-content-between border-bottom pb-2">
                                        <div>
                                            <div class="fw-bold text-dark small">ITC Distributors</div>
                                            <div class="text-muted" style="font-size: 10px;">PO-4471 · 12 Jul 2026 · 34 items</div>
                                        </div>
                                        <div class="text-end">
                                            <div class="fw-bold text-dark small">₹84,600</div>
                                            <span class="pur-badge badge-received" style="font-size: 10px; padding: 2px 8px;">Received</span>
                                        </div>
                                    </div>
                                    
                                    <div class="d-flex justify-content-between border-bottom pb-2">
                                        <div>
                                            <div class="fw-bold text-dark small">Bright Mobile World</div>
                                            <div class="text-muted" style="font-size: 10px;">PO-4470 · 09 Jul 2026 · 18 items</div>
                                        </div>
                                        <div class="text-end">
                                            <div class="fw-bold text-dark small">₹2,46,000</div>
                                            <span class="pur-badge badge-received" style="font-size: 10px; padding: 2px 8px;">Received</span>
                                        </div>
                                    </div>

                                    <div class="d-flex justify-content-between border-bottom pb-2">
                                        <div>
                                            <div class="fw-bold text-dark small">Shree Hardware Depot</div>
                                            <div class="text-muted" style="font-size: 10px;">PO-4469 · 05 Jul 2026 · 52 items</div>
                                        </div>
                                        <div class="text-end">
                                            <div class="fw-bold text-dark small">₹58,200</div>
                                            <span class="pur-badge badge-pending" style="font-size: 10px; padding: 2px 8px;">Pending</span>
                                        </div>
                                    </div>

                                    <div class="d-flex justify-content-between border-bottom pb-2">
                                        <div>
                                            <div class="fw-bold text-dark small">Urban Threads Co.</div>
                                            <div class="text-muted" style="font-size: 10px;">PO-4468 · 01 Jul 2026 · 46 items</div>
                                        </div>
                                        <div class="text-end">
                                            <div class="fw-bold text-dark small">₹92,400</div>
                                            <span class="pur-badge badge-received" style="font-size: 10px; padding: 2px 8px;">Received</span>
                                        </div>
                                    </div>

                                    <div class="d-flex justify-content-between pb-1">
                                        <div>
                                            <div class="fw-bold text-dark small">MediLine Pharma</div>
                                            <div class="text-muted" style="font-size: 10px;">PO-4467 · 28 Jun 2026 · 120 items</div>
                                        </div>
                                        <div class="text-end">
                                            <div class="fw-bold text-dark small">₹4,86,200</div>
                                            <span class="pur-badge badge-received" style="font-size: 10px; padding: 2px 8px;">Received</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Outstanding Payments -->
                            <div class="section-box p-4 border-dark rounded-4" style="border-width: 1px;">
                                <h3 class="fw-bold mb-4 fs-4">Outstanding payments</h3>
                                
                                <div class="d-flex flex-column gap-3 mb-4">
                                    <div class="d-flex justify-content-between border border-dark rounded p-2">
                                        <div class="fw-bold text-dark" style="font-size: 11px;">ITC Distributors</div>
                                        <div class="fw-bold text-danger" style="font-size: 11px;">₹42,800</div>
                                    </div>
                                    <div class="d-flex justify-content-between border border-dark rounded p-2">
                                        <div class="fw-bold text-dark" style="font-size: 11px;">Bright Mobile World</div>
                                        <div class="fw-bold text-danger" style="font-size: 11px;">₹1,68,500</div>
                                    </div>
                                    <div class="d-flex justify-content-between border border-dark rounded p-2">
                                        <div class="fw-bold text-dark" style="font-size: 11px;">Shree Hardware Depot</div>
                                        <div class="fw-bold text-danger" style="font-size: 11px;">₹58,200</div>
                                    </div>
                                    <div class="d-flex justify-content-between border border-dark rounded p-2">
                                        <div class="fw-bold text-dark" style="font-size: 11px;">Urban Threads Co.</div>
                                        <div class="fw-bold text-danger" style="font-size: 11px;">₹31,600</div>
                                    </div>
                                    <div class="d-flex justify-content-between border border-dark rounded p-2">
                                        <div class="fw-bold text-dark" style="font-size: 11px;">Amul Dairy Agency</div>
                                        <div class="fw-bold text-danger" style="font-size: 11px;">₹12,400</div>
                                    </div>
                                </div>

                                <button type="button" class="btn w-100 fw-bold border-dark rounded-pill py-2 bg-white" style="border-width: 1.5px; color: #0f172a;">
                                    Settle Payment
                                </button>
                            </div>

                        </div>
                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>