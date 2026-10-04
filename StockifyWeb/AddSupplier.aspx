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
                                <label class="form-label add-sup-label">Supplier Name *</label>
                                <asp:TextBox ID="txtSupplierName" runat="server" CssClass="form-control add-sup-input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Username0" runat="server" ControlToValidate="txtSupplierName" ErrorMessage="Supplier name is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                            <!-- Contact Person -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Contact Person *</label>
                                <asp:TextBox ID="txtContactPerson" runat="server" CssClass="form-control add-sup-input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Username1" runat="server" ControlToValidate="txtContactPerson" ErrorMessage="Contact person is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <!-- Phone Number -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Phone Number *</label>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control add-sup-input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Username2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter a valid 10-digit number." ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                            </div>
                            
                            <!-- Email Address -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control add-sup-input"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid Email address." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>

                            <!-- Address (Full Width) -->
                            <div class="col-12">
                                <label class="form-label add-sup-label">Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control add-sup-input"></asp:TextBox>
                            </div>

                            <!-- GSTIN / Tax ID -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">GSTIN / Tax ID</label>
                                <asp:TextBox ID="txtGSTIN" runat="server" CssClass="form-control add-sup-input"></asp:TextBox>
                            </div>
                            
                            <!-- Opening Balance -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Opening Balance (₹) *</label>
                                <asp:TextBox ID="txtOpeningBalance" runat="server" TextMode="Number" CssClass="form-control add-sup-input" Text="0"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Username3" runat="server" ControlToValidate="txtOpeningBalance" ErrorMessage="Opening balance is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <!-- Status -->
                            <div class="col-md-6">
                                <label class="form-label add-sup-label">Status</label>
                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select add-sup-input">
                                    <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                                    <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                                    <asp:ListItem Text="On Hold" Value="On Hold"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <!-- Form Actions -->
                        <div class="d-flex justify-content-end gap-3 mt-5">
                            <button type="button" onclick="window.location.href='Suppliers.aspx';" class="btn btn-clear px-4 py-2">
                                <i class="bi bi-arrow-left me-1"></i> Cancel
                            </button>
                            <asp:LinkButton ID="btnSaveSupplier" runat="server" CssClass="btn btn-save px-4 py-2" OnClick="btnSaveSupplier_Click">
                                <i class="bi bi-floppy me-1"></i> Save Supplier
                            </asp:LinkButton>
                        </div>

                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>