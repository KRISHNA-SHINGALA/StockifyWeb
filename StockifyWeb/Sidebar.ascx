<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sidebar.ascx.cs" Inherits="StockifyWeb.Sidebar" %>

<aside class="sidebar">
    <div class="sidebar-brand">
        <img src="Images/Stockify_white.png" alt="Logo" />
        <div>
            <div class="brand-title">Stockify</div>
            <div class="brand-subtitle">Shop Management<br />Suite</div>
        </div>
    </div>

    <div class="sidebar-menu">
        <div class="menu-label">Main Menu</div>
        
        <a href="Dashboard.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("dashboard") ? "active" : "" %>'>
            <i class="bi bi-grid-1x2"></i> Dashboard
        </a>
        <a href="Inventory.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("inventory") ? "active" : "" %>'>
            <i class="bi bi-clipboard-check"></i> Inventory
        </a>
        <a href="Products.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("products") ? "active" : "" %>'>
            <i class="bi bi-box"></i> Products
        </a>
        <a href="Billing.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("billing") ? "active" : "" %>'>
            <i class="bi bi-receipt"></i> Billing
        </a>
        <a href="Purchases.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("purchases") ? "active" : "" %>'>
            <i class="bi bi-bag"></i> Purchases
        </a>
        <a href="Suppliers.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("supplier") ? "active" : "" %>'>
            <i class="bi bi-truck"></i> Supplier
        </a>
        <a href="Customers.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("customers") ? "active" : "" %>'>
            <i class="bi bi-people"></i> Customers
        </a>
        <a href="Employees.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("employees") ? "active" : "" %>'>
            <i class="bi bi-person"></i> Employees
        </a>
        <a href="Expenses.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("expenses") ? "active" : "" %>'>
            <i class="bi bi-wallet2"></i> Expenses
        </a>
        <a href="Reports.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("report") ? "active" : "" %>'>
            <i class="bi bi-graph-up"></i> Report
        </a>
        <a href="Settings.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("setting") ? "active" : "" %>'>
            <i class="bi bi-gear"></i> Setting
        </a>
        
        <div style="margin-top: 20px;"></div>
        
        <a href="Login.aspx" class="nav-link logout-link">
            <i class="bi bi-box-arrow-right"></i> Logout
        </a>
    </div>
</aside>