<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="StockifyWeb.AddCustomer" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add New Customer - Stockify</title>
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

                <div class="content-body" style="max-width: 1000px;">
                    
                    <!-- Page Header -->
                    <div class="mb-4">
                        <h1 class="fw-bold mb-1 fs-3">Add New Customer</h1>
                        <p class="text-muted small mb-0">Create a new customer profile for billing and tracking purchases.</p>
                    </div>

                    <!-- Basic Information Section -->
                    <fieldset class="custom-fieldset">
                        <legend class="custom-legend">
                            <i class="bi bi-person me-1"></i> Basic Information
                        </legend>
                        <div class="fieldset-content">
                            <div class="row g-4">
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Full Name</label>
                                    <input type="text" class="form-control form-control-custom" placeholder="e.g. Krishna" />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Customer Type</label>
                                    <select class="form-select form-control-custom text-muted">
                                        <option>Select</option>
                                        <option>Retail</option>
                                        <option>Wholesale</option>
                                        <option>Institute</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Phone Number</label>
                                    <input type="text" class="form-control form-control-custom" placeholder="e.g. 1234567890" />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Email Address</label>
                                    <input type="email" class="form-control form-control-custom" placeholder="e.g. krishna123@gmail.com" />
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <!-- Billing & Address Section -->
                    <fieldset class="custom-fieldset">
                        <legend class="custom-legend">
                            <i class="bi bi-geo-alt me-1"></i> Billing & Address
                        </legend>
                        <div class="fieldset-content">
                            <div class="row g-4">
                                <div class="col-12">
                                    <label class="form-label text-dark fw-medium small mb-1">City / Full Address</label>
                                    <textarea class="form-control form-control-custom" rows="3" placeholder="Enter complete billing address"></textarea>
                                </div>
                                <div class="col-md-6">
                                    <div class="d-flex justify-content-between mb-1">
                                        <label class="form-label text-dark fw-medium small mb-0">GSTIN</label>
                                        <span class="small text-muted" style="font-size: 11px;">optional</span>
                                    </div>
                                    <input type="text" class="form-control form-control-custom" placeholder="22AAAA0000A1Z5" />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Opening Balance (₹)</label>
                                    <input type="number" class="form-control form-control-custom" value="0" />
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <!-- Form Actions -->
                    <div class="d-flex justify-content-end gap-3 mt-4">
                       <button type="button" onclick="window.location.href='Customers.aspx';" class="btn btn-outline-dark fw-bold px-4 rounded-pill bg-white" style="border-width: 1px;">
    Cancel
</button>
                        
                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>