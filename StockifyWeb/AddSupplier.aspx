<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSupplier.aspx.cs" Inherits="StockifyWeb.AddSupplier" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add New Supplier - Stockify</title>
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
                    <div class="mb-4">
                        <h1 class="fw-bold mb-1 fs-3">Add New Supplier</h1>
                        <p class="text-muted small mb-0">Create a new vendor profile for purchasing and inventory tracking.</p>
                    </div>

                    <!-- Form Container -->
                    <div class="add-sup-container bg-white p-4 p-md-5">
                        
                        <!-- Form Header -->
                        <div class="d-flex justify-content-between align-items-start mb-5">
                            <div>
                                <h3 class="fw-bold mb-1 fs-5">Supplier Details</h3>
                                <div class="text-muted small fw-bold text-uppercase" style="letter-spacing: 0.5px; font-size: 11px;">VENDOR PROFILE CONFIGURATION</div>
                            </div>
                            <div class="req-badge">
                                <i class="bi bi-info-circle me-1"></i> Required fields marked with *
                            </div>
                        </div>

                        <!-- Form Fields -->
                        <div class="row g-4 mb-4">
                            <!-- Supplier Name -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Supplier Name</label>
                                <input type="text" class="form-control add-sup-input" />
                            </div>
                            <!-- Contact Person -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Contact Person</label>
                                <input type="text" class="form-control add-sup-input" />
                            </div>

                            <!-- Phone Number -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Phone Number</label>
                                <input type="text" class="form-control add-sup-input" />
                            </div>
                            <!-- Email Address -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Email Address</label>
                                <input type="email" class="form-control add-sup-input" />
                            </div>

                            <!-- Address (Full Width) -->
                            <div class="col-12">
                                <label class="form-label add-sup-label">Address</label>
                                <textarea class="form-control add-sup-input" rows="3"></textarea>
                            </div>

                            <!-- GSTIN / Tax ID -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">GSTIN / Tax ID</label>
                                <input type="text" class="form-control add-sup-input" />
                            </div>
                            <!-- Opening Balance -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Opening Balance (₹)</label>
                                <input type="number" class="form-control add-sup-input" />
                            </div>

                            <!-- Status -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Status</label>
                                <select class="form-select add-sup-input">
                                    <option>Active</option>
                                    <option>Inactive</option>
                                    <option>On Hold</option>
                                </select>
                            </div>
                        </div>

                        <!-- Form Actions -->
                        <div class="d-flex justify-content-end gap-3 mt-5">
                            <button type="button" class="btn btn-clear px-4 py-2">
                                <i class="bi bi-list me-1"></i> Clear Form
                            </button>
                            <button type="button" class="btn btn-save px-4 py-2">
                                <i class="bi bi-floppy me-1"></i> Save Supplier
                            </button>
                        </div>

                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>