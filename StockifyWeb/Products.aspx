<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="StockifyWeb.Products" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Products - Stockify</title>
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
                            <h1 class="fw-bold mb-1">Product Management</h1>
                            <p class="text-muted mb-0">Create a new product or update an existing catalogue entry</p>
                        </div>
                        <button type="button" class="btn btn-outline-dark rounded-pill fw-bold px-4 bg-white" style="border-width: 1.5px; background-color: #e0e7ff !important; color: #1e1b4b; border-color: #1e1b4b;">
                            <i class="bi bi-box-seam me-1"></i> New Product
                        </button>
                    </div>

                    <div class="row g-4">
                        <!-- LEFT COLUMN: Product Details Form -->
                        <div class="col-lg-8">
                            
                            <!-- Form Header -->
                            <div class="section-box mb-4 p-4 border-dark rounded-4" style="border-width: 1px;">
                                <h3 class="fw-bold mb-1 fs-4">Product details</h3>
                                <p class="text-muted small mb-0">All fields marked with * are required</p>
                            </div>

                            <!-- Product Form -->
                            <div class="p-1">
                                <div class="row g-4 mb-4">
                                    <div class="col-md-6">
                                        <label class="form-label text-dark fw-bold small">Product Name *</label>
                                        <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control rounded-pill border-dark py-2 px-3" placeholder="e.g. Ashirwad aata 10 kg"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Username0" runat="server" ControlToValidate="txtProductName" ErrorMessage="Product name is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label text-dark fw-bold small">Brand Name *</label>
                                        <asp:TextBox ID="txtBrandName" runat="server" CssClass="form-control rounded-pill border-dark py-2 px-3" placeholder="e.g. Ashirwad"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Username1" runat="server" ControlToValidate="txtBrandName" ErrorMessage="Brand name is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label text-dark fw-bold small">Category</label>
                                        <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select rounded-pill border-dark py-2 px-3 text-muted">
                                            <asp:ListItem Text="Grocery" Value="Grocery"></asp:ListItem>
                                            <asp:ListItem Text="Electronics" Value="Electronics"></asp:ListItem>
                                            <asp:ListItem Text="Hardware" Value="Hardware"></asp:ListItem>
                                            <asp:ListItem Text="Medical" Value="Medical"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label text-dark fw-bold small">Barcode / SKU</label>
                                        <div class="input-group">
                                            <span class="input-group-text rounded-start-pill border-dark bg-transparent border-end-0 ps-3 pe-2 text-muted"><i class="bi bi-upc-scan"></i></span>
                                            <asp:TextBox ID="txtBarcode" runat="server" CssClass="form-control rounded-end-pill border-dark border-start-0 py-2 text-muted" Text="890103045790"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label text-dark fw-bold small">Purchase Price (₹) *</label>
                                        <asp:TextBox ID="txtPurchasePrice" runat="server" TextMode="Number" CssClass="form-control rounded-pill border-dark py-2 px-3 text-muted" Text="450"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PurchasePrice_validation" runat="server" ControlToValidate="txtPurchasePrice" ErrorMessage="Purchase Price is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label text-dark fw-bold small">Selling Price (₹) *</label>
                                        <asp:TextBox ID="txtSellingPrice" runat="server" TextMode="Number" CssClass="form-control rounded-pill border-dark py-2 px-3 text-muted" Text="600"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SellingPrice_Validation" runat="server" ControlToValidate="txtSellingPrice" ErrorMessage="Selling Price is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label text-dark fw-bold small">Opening Quantity *</label>
                                        <asp:TextBox ID="txtOpeningQuantity" runat="server" TextMode="Number" CssClass="form-control rounded-pill border-dark py-2 px-3 text-muted" Text="150"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="OpenningQuentity_validation" runat="server" ControlToValidate="txtOpeningQuantity" ErrorMessage="Opening Quentity is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label text-dark fw-bold small">GST Slab</label>
                                        <asp:DropDownList ID="ddlGstSlab" runat="server" CssClass="form-select rounded-pill border-dark py-2 px-3 text-muted">
                                            <asp:ListItem Text="5% GST" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="12% GST" Value="12"></asp:ListItem>
                                            <asp:ListItem Text="18% GST" Value="18"></asp:ListItem>
                                            <asp:ListItem Text="28% GST" Value="28"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="mb-4">
                                    <label class="form-label text-dark fw-bold small">Description</label>
                                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control border-dark rounded-3 p-3 text-muted" placeholder="Short product Description for shown on invoices..."></asp:TextBox>
                                </div>

                                <div class="mb-4">
                                    <label class="form-label text-dark fw-bold small">Product Image</label>
                                    <div class="upload-box d-flex flex-column align-items-center justify-content-center border-dark rounded-3 p-5">
                                        <div class="upload-icon-wrapper mb-2">
                                            <i class="bi bi-image"></i>
                                            <span class="upload-plus"><i class="bi bi-plus"></i></span>
                                        </div>
                                        <div class="fw-bold text-dark fs-6 mt-2">Click to upload product image</div>
                                        <div class="text-muted small">PNG or JPG up to 5 MB</div>
                                    </div>
                                </div>

                                <div class="d-flex gap-3">
                                    <!-- Changed to LinkButton so validation fires but the icon is preserved -->
                                    <asp:LinkButton ID="btnSaveProduct" runat="server" CssClass="btn btn-outline-dark rounded-pill fw-bold px-4 py-2" style="background-color: #e0e7ff; color: #1e1b4b; border-color: #1e1b4b; border-width: 1.5px;" OnClick="btnSaveProduct_Click">
                                        <i class="bi bi-save me-1"></i> Save Product
                                    </asp:LinkButton>
                                    <button type="reset" class="btn btn-outline-dark rounded-pill fw-bold px-4 py-2 bg-white" style="border-width: 1px; color: #0f172a;">
                                        Reset Details
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- RIGHT COLUMN: Recently Added -->
                        <div class="col-lg-4">
                            <!-- Header -->
                            <div class="section-box mb-4 p-4 border-dark rounded-4" style="border-width: 1px;">
                                <h3 class="fw-bold mb-1 fs-4">Recently added</h3>
                                <p class="text-muted small mb-0">Last 6 catalogue entries</p>
                            </div>

                            <div class="d-flex flex-column gap-3">
                                <!-- Product 1 -->
                                <div class="recent-product-card d-flex justify-content-between align-items-center">
                                    <div>
                                        <div class="fw-bold text-dark fs-6">Aashirvaad Atta 10 kg</div>
                                        <div class="text-muted small">Aashirvaad · 5% GST</div>
                                    </div>
                                    <div class="price-badge">₹465</div>
                                </div>

                                <!-- Product 2 -->
                                <div class="recent-product-card d-flex justify-content-between align-items-center">
                                    <div>
                                        <div class="fw-bold text-dark fs-6">Tata Salt 1 kg</div>
                                        <div class="text-muted small">Tata · 5% GST</div>
                                    </div>
                                    <div class="price-badge">₹28</div>
                                </div>

                                <!-- Product 3 -->
                                <div class="recent-product-card d-flex justify-content-between align-items-center">
                                    <div>
                                        <div class="fw-bold text-dark fs-6">Samsung Galaxy M15 5G</div>
                                        <div class="text-muted small">Samsung · 18% GST</div>
                                    </div>
                                    <div class="price-badge">₹13,499</div>
                                </div>

                                <!-- Product 4 -->
                                <div class="recent-product-card d-flex justify-content-between align-items-center">
                                    <div>
                                        <div class="fw-bold text-dark fs-6">boAt Airdopes 141</div>
                                        <div class="text-muted small">boAt · 18% GST</div>
                                    </div>
                                    <div class="price-badge">₹1,299</div>
                                </div>

                                <!-- Product 5 -->
                                <div class="recent-product-card d-flex justify-content-between align-items-center">
                                    <div>
                                        <div class="fw-bold text-dark fs-6">Dettol Antiseptic 550 ml</div>
                                        <div class="text-muted small">Dettol · 12% GST</div>
                                    </div>
                                    <div class="price-badge">₹265</div>
                                </div>

                                <!-- Product 6 -->
                                <div class="recent-product-card d-flex justify-content-between align-items-center">
                                    <div>
                                        <div class="fw-bold text-dark fs-6">Philips LED Bulb 9W</div>
                                        <div class="text-muted small">Philips · 12% GST</div>
                                    </div>
                                    <div class="price-badge">₹119</div>
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