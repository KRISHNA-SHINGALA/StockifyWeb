<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StockifyWeb.Default" %>

<asp:Content ID="HomeContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- HERO SECTION -->
    <section class="stockify-hero">
        <div class="container d-flex align-items-center hero-container">
            <div class="hero-left">
                <h1>Manage Your Entire Shop<br />From One Platform.</h1>
                <p>
                    Stockify simplifies your inventory, POS billing, purchases, and business reports. Precision engineered for grocery, medical, and retail stores scaling fast.
                </p>
                
                <div class="trust-badge d-flex align-items-center gap-3 mt-4">
                    <div class="avatar-group d-flex">
                        <div class="avatar bg-warning text-dark">JS</div>
                        <div class="avatar bg-info text-white">MK</div>
                        <div class="avatar bg-danger text-white">AT</div>
                        <div class="avatar bg-dark text-white">+2k</div>
                    </div>
                    <div class="trust-text">
                        <div class="stars text-primary">★★★★★</div>
                        <small class="text-muted fw-bold">Trusted by 2,000+ businesses</small>
                    </div>
                </div>
            </div>

            <!-- RIGHT MOCKUP DISPLAY -->
            <div class="hero-right">
                <div class="mockup-container">
                    <!-- Actual Software Image -->
                    <img src="Images/Home_NET.png" alt="Stockify Dashboard" class="hero-main-img img-fluid" />
                    
                    <!-- Floating Efficiency Card -->
                    <div class="efficiency-card shadow">
                        <span class="trend-icon">↗</span>
                        <div>
                            <strong>+45%</strong>
                            <small>EFFICIENCY GAIN</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FEATURES SECTION -->
    <section class="stockify-features" id="features">
        <div class="container">
            <div class="features-heading text-center mb-5">
                <span class="text-uppercase text-primary fw-bold small tracking-wide">Unified Command Center</span>
                <h2 class="mt-2 fw-bold text-dark">Everything You Need in One Place</h2>
                <p class="text-muted mx-auto" style="max-width: 600px;">
                    Replace fragmented tools with a single, high-performance platform. Stockify brings enterprise-grade intelligence to everyday retail operations.
                </p>
            </div>

            <div class="row g-4 features-grid">
                <!-- BILLING -->
                <div class="col-lg-3 col-md-6">
                    <div class="feature-box p-4 border rounded shadow-sm bg-white h-100 text-start">
                        <div class="icon-wrapper mb-3 border rounded d-inline-flex p-2 bg-light">🧾</div>
                        <h4 class="fw-bold fs-5">Smart POS Billing</h4>
                        <p class="text-muted small mb-0">
                            Accelerate checkout with barcode scanning, custom shortcuts, and instant GST-compliant invoice generation.
                        </p>
                    </div>
                </div>

                <!-- INVENTORY -->
                <div class="col-lg-3 col-md-6">
                    <div class="feature-box p-4 border rounded shadow-sm bg-white h-100 text-start">
                        <div class="icon-wrapper mb-3 border rounded d-inline-flex p-2 bg-light">📦</div>
                        <h4 class="fw-bold fs-5">Inventory Control</h4>
                        <p class="text-muted small mb-0">
                            Maintain perfect stock levels with real-time automated alerts, batch tracking, and intelligent expiry management.
                        </p>
                    </div>
                </div>

                <!-- SUPPLIER -->
                <div class="col-lg-3 col-md-6">
                    <div class="feature-box p-4 border rounded shadow-sm bg-white h-100 text-start">
                        <div class="icon-wrapper mb-3 border rounded d-inline-flex p-2 bg-light">🚚</div>
                        <h4 class="fw-bold fs-5">Supplier Management</h4>
                        <p class="text-muted small mb-0">
                            Streamline procurement workflows. Track pending purchase orders, manage vendor ledgers, and clear dues efficiently.
                        </p>
                    </div>
                </div>

                <!-- REPORTS -->
                <div class="col-lg-3 col-md-6">
                    <div class="feature-box p-4 border rounded shadow-sm bg-white h-100 text-start">
                        <div class="icon-wrapper mb-3 border rounded d-inline-flex p-2 bg-light">📊</div>
                        <h4 class="fw-bold fs-5">Rich Reports</h4>
                        <p class="text-muted small mb-0">
                            Transform data into strategy. Access granular daily profit analytics, top-moving items, and comprehensive sales trends.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>