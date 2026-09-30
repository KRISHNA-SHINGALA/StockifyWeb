<%@ Page Title="Features" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Features.aspx.cs" Inherits="StockifyWeb.Features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Additional page-specific styles can go here if needed -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- FEATURES HERO HEADER -->
    <section class="features-page-header text-center">
        <div class="container">
            <h1 class="fw-bold text-white">Powerful Features to Run Your Shop</h1>
            <p class="mb-0">Everything you need from billing to inventory, all in one place.</p>
        </div>
    </section>

    <!-- FEATURES GRID -->
    <section class="features-page-content">
        <div class="container">
            <div class="row g-4">
                
                <!-- Card 1: POS Billing -->
                <div class="col-md-6">
                    <div class="feature-card border rounded">
                        <div class="feature-card-img-placeholder d-flex align-items-center justify-content-center">
                            <span class="feature-card-icon">📠</span>
                        </div>
                        <div class="feature-card-body">
                            <span class="text-muted small fw-bold text-uppercase tracking-wide">Smart POS Billing</span>
                            <h3 class="fw-bold mt-1">Lightning Fast Checkout</h3>
                            <p class="text-muted mb-0">Accelerate your counter operations with rapid barcode scanning and instant digital receipt generation.</p>
                        </div>
                    </div>
                </div>

                <!-- Card 2: Inventory -->
                <div class="col-md-6">
                    <div class="feature-card border rounded">
                        <div class="feature-card-img-placeholder d-flex align-items-center justify-content-center">
                            <span class="feature-card-icon">📦</span>
                        </div>
                        <div class="feature-card-body">
                            <span class="text-muted small fw-bold text-uppercase tracking-wide">Inventory Management</span>
                            <h3 class="fw-bold mt-1">Real-time Stock Alerts</h3>
                            <p class="text-muted mb-0">Stay ahead of demand with automatic low-stock notifications and intelligent shelf-life tracking.</p>
                        </div>
                    </div>
                </div>

                <!-- Card 3: Suppliers -->
                <div class="col-md-6">
                    <div class="feature-card border rounded">
                        <div class="feature-card-img-placeholder d-flex align-items-center justify-content-center">
                            <span class="feature-card-icon">🚚</span>
                        </div>
                        <div class="feature-card-body">
                            <span class="text-muted small fw-bold text-uppercase tracking-wide">Supplier & Purchases</span>
                            <h3 class="fw-bold mt-1">Manage Vendors Easily</h3>
                            <p class="text-muted mb-0">Streamline your procurement. Track vendor ledgers, purchase orders, and payment dues in one click.</p>
                        </div>
                    </div>
                </div>

                <!-- Card 4: Reports -->
                <div class="col-md-6">
                    <div class="feature-card border rounded">
                        <div class="feature-card-img-placeholder d-flex align-items-center justify-content-center">
                            <span class="feature-card-icon">📈</span>
                        </div>
                        <div class="feature-card-body">
                            <span class="text-muted small fw-bold text-uppercase tracking-wide">Analytics & Reports</span>
                            <!-- Note: Corrected the typo from the design mockup here for a cleaner look -->
                            <h3 class="fw-bold mt-1">Advanced Data Analytics</h3>
                            <p class="text-muted mb-0">Make data-driven decisions with granular reports on sales trends, top-moving items, and net margins.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>