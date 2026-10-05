<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="StockifyWeb.Inventory" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inventory - Stockify</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="Content/Stockify.css" rel="stylesheet" />
</head>
<body class="dashboard-body">
    <form id="form1" runat="server">
        <div class="dashboard-container">
            
            <uc:Sidebar runat="server" id="SidebarControl" />

            <main class="main-content">
                <uc:Topbar runat="server" id="TopbarControl" />

                <div class="content-body">
                    <!-- Title Section -->
                    <div class="page-title-section">
                        <div>
                            <h1>Inventory</h1>
                            <p>16 products tracked across 7 categories</p>
                        </div>
                        <button type="button" onclick="window.location.href='Products.aspx';" class="btn btn-new-bill"><i class="bi bi-plus-lg"></i> Add Product</button>
                    </div>

                    <!-- Filter Section -->
                    <div class="d-flex gap-3 mb-4 align-items-center">
                        <div class="search-bar flex-grow-1" style="max-width: 500px; background-color: #e2e8f0; border-color: #cbd5e1;">
                            <i class="bi bi-search text-dark"></i>
                            <input type="text" placeholder="Search Products, invoices" class="text-dark fw-medium" />
                        </div>
                        
                        <select class="form-select custom-filter-select w-auto fw-bold rounded-pill border-dark">
                            <option>All Category</option>
                        </select>
                        
                        <select class="form-select custom-filter-select w-auto fw-bold rounded-pill border-dark">
                            <option>All Stock Status</option>
                        </select>
                    </div>

                    <!-- Inventory Table -->
                    <div class="section-box p-0 overflow-hidden">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0 align-middle inventory-table">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Category</th>
                                        <th>Barcode</th>
                                        <th>Purchase</th>
                                        <th>Selling</th>
                                        <th>Qty</th>
                                        <th>Status</th>
                                        <th class="text-center">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Row 1 -->
                                    <tr id="row1" runat="server">
                                        <td>
                                            <div class="fw-bold text-dark">Aashirvaad Atta 10 kg</div>
                                            <div class="text-muted small">GRC-ATT-10 • Aashirvaad</div>
                                        </td>
                                        <td class="fw-bold">Grocery</td>
                                        <td>8901030812345</td>
                                        <td>₹402</td>
                                        <td>₹402</td>
                                        <td>148</td>
                                        <td><span class="inv-badge inv-in-stock">In Stock</span></td>
                                        <td class="text-center action-icons">
                                            <a href="Products.aspx" class="text-dark"><i class="bi bi-pencil-square"></i></a>
                                            <asp:LinkButton ID="btnDelete1" runat="server" CssClass="text-danger ms-2" OnClientClick="return confirm('Are you sure you want to delete this product?');" OnClick="btnDelete1_Click"><i class="bi bi-trash"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <!-- Row 2 -->
                                    <tr id="row2" runat="server">
                                        <td>
                                            <div class="fw-bold text-dark">Tata Salt 1 kg</div>
                                            <div class="text-muted small">GRC-SLT-01 • Tata</div>
                                        </td>
                                        <td class="fw-bold">Grocery</td>
                                        <td>8901030812345</td>
                                        <td>₹34</td>
                                        <td>₹67</td>
                                        <td>50</td>
                                        <td><span class="inv-badge inv-low-stock">Low Stock</span></td>
                                        <td class="text-center action-icons">
                                            <a href="Products.aspx" class="text-dark"><i class="bi bi-pencil-square"></i></a>
                                            <asp:LinkButton ID="btnDelete2" runat="server" CssClass="text-danger ms-2" OnClientClick="return confirm('Are you sure you want to delete this product?');" OnClick="btnDelete2_Click"><i class="bi bi-trash"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <!-- Row 3 -->
                                    <tr id="row3" runat="server">
                                        <td>
                                            <div class="fw-bold text-dark">Samsung Galaxy M15 5G</div>
                                            <div class="text-muted small">MOB-SGM-15 • Samsung</div>
                                        </td>
                                        <td class="fw-bold">Mobile</td>
                                        <td>8901030812345</td>
                                        <td>₹100</td>
                                        <td>₹300</td>
                                        <td>60</td>
                                        <td><span class="inv-badge inv-out-stock">Out of Stock</span></td>
                                        <td class="text-center action-icons">
                                            <a href="Products.aspx" class="text-dark"><i class="bi bi-pencil-square"></i></a>
                                            <asp:LinkButton ID="btnDelete3" runat="server" CssClass="text-danger ms-2" OnClientClick="return confirm('Are you sure you want to delete this product?');" OnClick="btnDelete3_Click"><i class="bi bi-trash"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <!-- Row 4 -->
                                    <tr id="row4" runat="server">
                                        <td>
                                            <div class="fw-bold text-dark">boAt Airdopes 141</div>
                                            <div class="text-muted small">ELC-BAD-141 • boAt</div>
                                        </td>
                                        <td class="fw-bold">Electronics</td>
                                        <td>8901030812345</td>
                                        <td>₹10</td>
                                        <td>₹70</td>
                                        <td>70</td>
                                        <td><span class="inv-badge inv-in-stock">In Stock</span></td>
                                        <td class="text-center action-icons">
                                            <a href="Products.aspx" class="text-dark"><i class="bi bi-pencil-square"></i></a>
                                            <asp:LinkButton ID="btnDelete4" runat="server" CssClass="text-danger ms-2" OnClientClick="return confirm('Are you sure you want to delete this product?');" OnClick="btnDelete4_Click"><i class="bi bi-trash"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <!-- Row 5 -->
                                    <tr id="row5" runat="server">
                                        <td>
                                            <div class="fw-bold text-dark">Dettol Antiseptic 550 ml</div>
                                            <div class="text-muted small">MED-DTL-550 • Dettol</div>
                                        </td>
                                        <td class="fw-bold">Medical</td>
                                        <td>8901030812345</td>
                                        <td>₹155</td>
                                        <td>₹300</td>
                                        <td>40</td>
                                        <td><span class="inv-badge inv-low-stock">Low Stock</span></td>
                                        <td class="text-center action-icons">
                                            <a href="Products.aspx" class="text-dark"><i class="bi bi-pencil-square"></i></a>
                                            <asp:LinkButton ID="btnDelete5" runat="server" CssClass="text-danger ms-2" OnClientClick="return confirm('Are you sure you want to delete this product?');" OnClick="btnDelete5_Click"><i class="bi bi-trash"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <!-- Row 6 -->
                                    <tr id="row6" runat="server">
                                        <td>
                                            <div class="fw-bold text-dark">Philips LED Bulb 9W</div>
                                            <div class="text-muted small">HDW-PLB-09 • Philips</div>
                                        </td>
                                        <td class="fw-bold">Hardware</td>
                                        <td>8901030812345</td>
                                        <td>₹200</td>
                                        <td>₹400</td>
                                        <td>10</td>
                                        <td><span class="inv-badge inv-out-stock">Out of Stock</span></td>
                                        <td class="text-center action-icons">
                                            <a href="Products.aspx" class="text-dark"><i class="bi bi-pencil-square"></i></a>
                                            <asp:LinkButton ID="btnDelete6" runat="server" CssClass="text-danger ms-2" OnClientClick="return confirm('Are you sure you want to delete this product?');" OnClick="btnDelete6_Click"><i class="bi bi-trash"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <!-- Row 7 -->
                                    <tr id="row7" runat="server">
                                        <td>
                                            <div class="fw-bold text-dark">Classmate Notebook 200 pg</div>
                                            <div class="text-muted small">STN-CNB-200 • Classmate</div>
                                        </td>
                                        <td class="fw-bold">Stationery</td>
                                        <td>8901030812345</td>
                                        <td>₹500</td>
                                        <td>₹1000</td>
                                        <td>90</td>
                                        <td><span class="inv-badge inv-in-stock">In Stock</span></td>
                                        <td class="text-center action-icons">
                                            <a href="Products.aspx" class="text-dark"><i class="bi bi-pencil-square"></i></a>
                                            <asp:LinkButton ID="btnDelete7" runat="server" CssClass="text-danger ms-2" OnClientClick="return confirm('Are you sure you want to delete this product?');" OnClick="btnDelete7_Click"><i class="bi bi-trash"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </main>
        </div>
    </form>
</body>
</html>