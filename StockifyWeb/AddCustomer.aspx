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
                                    <label class="form-label text-dark fw-medium small mb-1">Full Name *</label>
                                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control form-control-custom" placeholder="e.g. Krishna"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Username0" runat="server" ControlToValidate="txtFullName" ErrorMessage="Name is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Customer Type *</label>
                                    <asp:DropDownList ID="ddlCustomerType" runat="server" CssClass="form-select form-control-custom text-muted">
                                        <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                        <asp:ListItem Text="Retail" Value="Retail"></asp:ListItem>
                                        <asp:ListItem Text="Wholesale" Value="Wholesale"></asp:ListItem>
                                        <asp:ListItem Text="Institute" Value="Institute"></asp:ListItem>
                                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="Username1" runat="server" ControlToValidate="ddlCustomerType" ErrorMessage="Please select customer type." ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Phone Number *</label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control form-control-custom" placeholder="e.g. 1234567890"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Username2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter a valid 10-digit number." ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Email Address</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-custom" placeholder="e.g. krishna123@gmail.com"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid email address." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                                    <label class="form-label text-dark fw-medium small mb-1">City / Full Address *</label>
                                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control form-control-custom" placeholder="Enter complete billing address"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Username3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6">
                                    <div class="d-flex justify-content-between mb-1">
                                        <label class="form-label text-dark fw-medium small mb-0">GSTIN</label>
                                        <span class="small text-muted" style="font-size: 11px;">optional</span>
                                    </div>
                                    <asp:TextBox ID="txtGSTIN" runat="server" CssClass="form-control form-control-custom" placeholder="22AAAA0000A1Z5"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label text-dark fw-medium small mb-1">Opening Balance (₹) *</label>
                                    <asp:TextBox ID="txtOpeningBalance" runat="server" TextMode="Number" CssClass="form-control form-control-custom" Text="0"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Username4" runat="server" ControlToValidate="txtOpeningBalance" ErrorMessage="Name is reqired!Opening balance is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <!-- Form Actions -->
                    <div class="d-flex justify-content-end gap-3 mt-4">
                        <button type="button" onclick="window.location.href='Customers.aspx';" class="btn btn-outline-dark fw-bold px-4 rounded-pill bg-white" style="border-width: 1px;">
                            Cancel</button>
                        <asp:LinkButton ID="btnAddCustomer" runat="server" CssClass="btn fw-bold px-4 rounded-pill" style="background-color: #a7b5ff; color: #1e1b4b; border: 1px solid #1e1b4b;" OnClick="btnAddCustomer_Click">
                            <i class="bi bi-floppy me-1"></i> Add Customer
                        </asp:LinkButton>
                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>