<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="StockifyWeb.Billing" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Billing (POS) - Stockify</title>
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
                            <h1 class="fw-bold mb-1">Billing Counter (POS)</h1>
                            <p class="text-muted mb-0">Invoice #INV-20842 · Cashier: Sneha Patil</p>
                        </div>
                        <button type="button" onclick="window.location.href='AddCustomer.aspx';" class="btn btn-outline-dark rounded-pill fw-bold px-4 bg-white" style="border-width: 1.5px;">
                            <i class="bi bi-person-plus me-1"></i> Add Customer
                        </button>
                    </div>

                    <div class="row g-4">
                        <!-- LEFT COLUMN: Products & Cart -->
                        <div class="col-lg-8">
                            
                            <!-- Find Products Section -->
                            <div class="pos-panel mb-4">
                                <div class="pos-panel-header">
                                    <h3 class="fw-bold mb-0">Find products</h3>
                                    <p class="text-muted small mb-0">Search by name or scan a barcode</p>
                                </div>
                                
                                <!-- Search Inputs -->
                                <div class="d-flex gap-3 mb-4">
                                    <div class="search-bar flex-grow-1 bg-white border-dark rounded-pill" style="border-width: 1px;">
                                        <i class="bi bi-search text-dark"></i>
                                        <asp:TextBox ID="txtSearchProduct" runat="server" CssClass="text-dark bg-transparent border-0" placeholder="Search,Products,invoices" Width="80%"></asp:TextBox>
                                    </div>
                                    <div class="search-bar flex-grow-1 bg-white border-dark rounded-pill" style="border-width: 1px;">
                                        <i class="bi bi-upc-scan text-dark"></i>
                                        <asp:TextBox ID="txtScanBarcode" runat="server" CssClass="text-dark bg-transparent border-0" placeholder="Scan barcode..." Width="80%"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Product Grid -->
                                <div class="pos-product-grid">
                                    <!-- Product 1 -->
                                    <div class="pos-product-card">
                                        <div>
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Aashirvaad Atta 10 kg</div>
                                            <div class="text-muted" style="font-size: 11px;">Grocery · 148 in stock</div>
                                        </div>
                                        <div class="fw-bold text-dark fs-5">₹465</div>
                                    </div>
                                    <!-- Product 2 -->
                                    <div class="pos-product-card">
                                        <div>
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Tata Salt 1 kg</div>
                                            <div class="text-muted" style="font-size: 11px;">Grocery · 620 in stock</div>
                                        </div>
                                        <div class="fw-bold text-dark fs-5">₹28</div>
                                    </div>
                                    <!-- Product 3 -->
                                    <div class="pos-product-card">
                                        <div>
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Samsung Galaxy M15 5G</div>
                                            <div class="text-muted" style="font-size: 11px;">Mobile · 12 in stock</div>
                                        </div>
                                        <div class="fw-bold text-dark fs-5">₹13,499</div>
                                    </div>
                                    <!-- Product 4 -->
                                    <div class="pos-product-card">
                                        <div>
                                            <div class="fw-bold text-dark" style="font-size: 14px;">boAt Airdopes 141</div>
                                            <div class="text-muted" style="font-size: 11px;">Electronics · 6 in stock</div>
                                        </div>
                                        <div class="fw-bold text-dark fs-5">₹1,299</div>
                                    </div>
                                    <!-- Product 5 -->
                                    <div class="pos-product-card">
                                        <div>
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Dettol Antiseptic 550 ml</div>
                                            <div class="text-muted" style="font-size: 11px;">Medical · 84 in stock</div>
                                        </div>
                                        <div class="fw-bold text-dark fs-5">₹265</div>
                                    </div>
                                    <!-- Product 6 -->
                                    <div class="pos-product-card">
                                        <div>
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Philips LED Bulb 9W</div>
                                            <div class="text-muted" style="font-size: 11px;">Hardware · 0 in stock</div>
                                        </div>
                                        <div class="fw-bold text-dark fs-5">₹119</div>
                                    </div>
                                    <!-- Product 7 -->
                                    <div class="pos-product-card">
                                        <div>
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Classmate Notebook 200 pg</div>
                                            <div class="text-muted" style="font-size: 11px;">Stationery · 340 in stock</div>
                                        </div>
                                        <div class="fw-bold text-dark fs-5">₹65</div>
                                    </div>
                                    <!-- Product 8 -->
                                    <div class="pos-product-card">
                                        <div>
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Levi's Slim Fit Jeans</div>
                                            <div class="text-muted" style="font-size: 11px;">Clothing · 27 in stock</div>
                                        </div>
                                        <div class="fw-bold text-dark fs-5">₹2,499</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Shopping Cart Section -->
                            <div class="pos-panel">
                                <div class="pos-panel-header mb-3">
                                    <h3 class="fw-bold mb-0">Shopping cart</h3>
                                    <p class="text-muted small mb-0">7 line items</p>
                                </div>
                                
                                <div class="d-flex flex-column gap-3">
                                    <!-- Cart Item 1 -->
                                    <div class="cart-item-card d-flex justify-content-between align-items-center">
                                        <div style="flex: 1;">
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Amul Butter 500 g</div>
                                            <div class="text-muted" style="font-size: 11px;">₹285 × 1 · 12% GST</div>
                                        </div>
                                        
                                        <div class="d-flex align-items-center gap-4">
                                            <div class="qty-selector">
                                                <button type="button"><i class="bi bi-dash"></i></button>
                                                <input type="text" value="3" readonly />
                                                <button type="button"><i class="bi bi-plus"></i></button>
                                            </div>
                                            <div class="fw-bold text-dark fs-6" style="width: 60px; text-align: right;">₹855</div>
                                            <a href="#" class="text-danger fs-5"><i class="bi bi-trash3"></i></a>
                                        </div>
                                    </div>

                                    <!-- Cart Item 2 -->
                                    <div class="cart-item-card d-flex justify-content-between align-items-center">
                                        <div style="flex: 1;">
                                            <div class="fw-bold text-dark" style="font-size: 14px;">Crocin Advance Strip</div>
                                            <div class="text-muted" style="font-size: 11px;">₹31 × 3 · 5% GST</div>
                                        </div>
                                        
                                        <div class="d-flex align-items-center gap-4">
                                            <div class="qty-selector">
                                                <button type="button"><i class="bi bi-dash"></i></button>
                                                <input type="text" value="1" readonly />
                                                <button type="button"><i class="bi bi-plus"></i></button>
                                            </div>
                                            <div class="fw-bold text-dark fs-6" style="width: 60px; text-align: right;">₹31</div>
                                            <a href="#" class="text-danger fs-5"><i class="bi bi-trash3"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- RIGHT COLUMN: Bill Summary -->
                        <div class="col-lg-4">
                            <div class="pos-panel summary-panel">
                                <h3 class="fw-bold mb-4 border-bottom pb-3">Bill summary</h3>
                                
                                <div class="mb-3">
                                    <label class="form-label fw-bold text-dark small">Discount (%)</label>
                                    <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control border-dark" Text="5"></asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDiscount" ErrorMessage="Invalid discount percentage." ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="iscount_validation" runat="server" ControlToValidate="txtDiscount" ErrorMessage="Discount is reqired!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-4">
                                    <label class="form-label fw-bold text-dark small">Payment method</label>
                                    <asp:DropDownList ID="ddlPaymentMethod" runat="server" CssClass="form-select border-dark fw-medium">
                                        <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
                                        <asp:ListItem Text="Cash" Value="Cash"></asp:ListItem>
                                        <asp:ListItem Text="Card" Value="Card"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="d-flex flex-column gap-2 mb-4 pt-3 border-top">
                                    <div class="d-flex justify-content-between text-dark fw-bold" style="font-size: 14px;">
                                        <span>Subtotal</span>
                                        <span>₹886</span>
                                    </div>
                                    <div class="d-flex justify-content-between text-dark fw-bold" style="font-size: 14px;">
                                        <span>GST payable</span>
                                        <span>₹104</span>
                                    </div>
                                    <div class="d-flex justify-content-between text-danger fw-bold" style="font-size: 14px;">
                                        <span>Discount (5%)</span>
                                        <span>- ₹44</span>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-between align-items-center mb-4 pt-2">
                                    <span class="fw-bold text-dark fs-5">Total payable</span>
                                    <span class="fw-bold text-dark fs-4">₹946</span>
                                </div>

                                <div class="text-center">
                                    <asp:LinkButton ID="btnGenerateInvoice" runat="server" CssClass="btn btn-outline-dark rounded-pill fw-bold bg-white" style="border-width: 1.5px; padding: 12px 30px; font-size: 18px;" OnClick="btnGenerateInvoice_Click">
                                        <i class="bi bi-receipt me-2"></i>Generate Invoice
                                    </asp:LinkButton>
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