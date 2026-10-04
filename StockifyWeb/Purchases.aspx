<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchases.aspx.cs" Inherits="StockifyWeb.Purchases" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Purchases - Stockify</title>
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
                            <h1 class="fw-bold mb-1">Purchases</h1>
                            <p class="text-muted mb-0">Record incoming stock and keep supplier invoices in sync</p>
                        </div>
                        <button type="button" class="btn btn-outline-dark rounded-pill fw-bold px-4 bg-white" style="border-width: 1.5px; background-color: #e0e7ff !important; color: #1e1b4b; border-color: #1e1b4b;">
                            <i class="bi bi-file-earmark-plus me-1"></i> Add Purchase Order
                        </button>
                    </div>

                    <!-- ================= PURCHASE ENTRY SECTION ================= -->
                    
                    <!-- Section Title Box -->
                    <div class="section-box mb-4 p-4 border-dark rounded-4" style="border-width: 1px;">
                        <h3 class="fw-bold mb-1 fs-4">Purchase entry</h3>
                        <p class="text-muted small mb-0">Purchase order #PO-4472</p>
                    </div>

                    <!-- Form Grid -->
                    <div class="p-1 mb-5">
                        <div class="row g-4 mb-4">
                            <div class="col-md-3">
                                <label class="form-label text-dark fw-bold small">Supplier *</label>
                                <select class="form-select rounded-pill border-dark py-2 px-3 text-muted">
                                    <option>ITC Distributors</option>
                                    <option>Bright Mobile World</option>
                                    <option>Shree Hardware Depot</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label text-dark fw-bold small">Product *</label>
                                <select class="form-select rounded-pill border-dark py-2 px-3 text-muted">
                                    <option>Aashirwad aata 10 kg</option>
                                    <option>Tata Salt 1 kg</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label text-dark fw-bold small">Quantity *</label>
                                <input type="number" class="form-control rounded-pill border-dark py-2 px-3 text-muted" value="50" />
                            </div>
                            <div class="col-md-3">
                                <label class="form-label text-dark fw-bold small">Cost price (₹) *</label>
                                <input type="number" class="form-control rounded-pill border-dark py-2 px-3 text-muted" value="402" />
                            </div>

                            <div class="col-md-3">
                                <label class="form-label text-dark fw-bold small">Invoice number</label>
                                <input type="text" class="form-control rounded-pill border-dark py-2 px-3 text-muted" value="SUP/2026/1186" />
                            </div>
                            <div class="col-md-3">
                                <label class="form-label text-dark fw-bold small">Purchase date</label>
                                <div class="input-group">
                                    <input type="text" class="form-control rounded-start-pill border-dark border-end-0 py-2 text-muted" value="17/05/2026" />
                                    <span class="input-group-text rounded-end-pill border-dark bg-transparent border-start-0 pe-3 text-muted"><i class="bi bi-calendar3"></i></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label text-dark fw-bold small">GST slab</label>
                                <input type="text" class="form-control rounded-pill border-dark py-2 px-3 text-muted" value="5% GST" />
                            </div>
                            <div class="col-md-3">
                                <label class="form-label text-dark fw-bold small">Status</label>
                                <input type="text" class="form-control rounded-pill border-dark py-2 px-3 text-muted" value="Received" />
                            </div>
                        </div>

                        <!-- Form Buttons -->
                        <div class="d-flex gap-3">
                            <button type="button" class="btn btn-outline-dark rounded-pill fw-bold px-4 py-2" style="background-color: #e0e7ff; color: #1e1b4b; border-color: #1e1b4b; border-width: 1.5px;">
                                <i class="bi bi-file-earmark-plus me-1"></i> Add Purchase Order
                            </button>
                            <button type="button" class="btn btn-outline-dark rounded-pill fw-bold px-4 py-2 bg-white" style="border-width: 1.5px; color: #0f172a;">
                                Add New Line
                            </button>
                        </div>
                    </div>

                    <!-- ================= PURCHASE ORDERS SECTION ================= -->
                    
                    <!-- Section Title Box -->
                    <div class="section-box mb-4 p-3 border-dark rounded-4" style="border-width: 1px;">
                        <h3 class="fw-bold mb-0 fs-4 px-2">Purchase orders</h3>
                    </div>

                    <!-- Orders Table -->
                    <div class="table-responsive bg-white rounded-3 border">
                        <table class="table mb-0 align-middle text-center purchase-table">
                            <thead>
                                <tr>
                                    <th class="text-start ps-4">PO number</th>
                                    <th class="text-start">Supplier</th>
                                    <th>Date</th>
                                    <th>Items</th>
                                    <th>Amount</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Row 1 -->
                                <tr>
                                    <td class="text-start ps-4 fw-bold text-dark">PO-4471</td>
                                    <td class="text-start fw-bold text-dark">ITC Distributors</td>
                                    <td class="fw-bold text-dark">12 Jul 2026</td>
                                    <td class="fw-bold text-dark">34</td>
                                    <td class="fw-bold text-dark">₹84,600</td>
                                    <td><span class="pur-badge badge-received">Received</span></td>
                                </tr>
                                <!-- Row 2 -->
                                <tr>
                                    <td class="text-start ps-4 fw-bold text-dark">PO-4470</td>
                                    <td class="text-start fw-bold text-dark">Bright Mobile World</td>
                                    <td class="fw-bold text-dark">09 Jul 2026</td>
                                    <td class="fw-bold text-dark">18</td>
                                    <td class="fw-bold text-dark">₹2,46,000</td>
                                    <td><span class="pur-badge badge-received">Received</span></td>
                                </tr>
                                <!-- Row 3 -->
                                <tr>
                                    <td class="text-start ps-4 fw-bold text-dark">PO-4469</td>
                                    <td class="text-start fw-bold text-dark">Shree Hardware Depot</td>
                                    <td class="fw-bold text-dark">05 Jul 2026</td>
                                    <td class="fw-bold text-dark">52</td>
                                    <td class="fw-bold text-dark">₹58,200</td>
                                    <td><span class="pur-badge badge-pending">Pending</span></td>
                                </tr>
                                <!-- Row 4 -->
                                <tr>
                                    <td class="text-start ps-4 fw-bold text-dark">PO-4468</td>
                                    <td class="text-start fw-bold text-dark">Urban Threads Co.</td>
                                    <td class="fw-bold text-dark">01 Jul 2026</td>
                                    <td class="fw-bold text-dark">46</td>
                                    <td class="fw-bold text-dark">₹92,400</td>
                                    <td><span class="pur-badge badge-received">Received</span></td>
                                </tr>
                                <!-- Row 5 -->
                                <tr>
                                    <td class="text-start ps-4 fw-bold text-dark">PO-4467</td>
                                    <td class="text-start fw-bold text-dark">MediLine Pharma</td>
                                    <td class="fw-bold text-dark">28 Jun 2026</td>
                                    <td class="fw-bold text-dark">120</td>
                                    <td class="fw-bold text-dark">₹41,250</td>
                                    <td><span class="pur-badge badge-received">Received</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>