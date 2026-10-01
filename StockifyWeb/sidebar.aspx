<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sidebar.aspx.cs" Inherits="StockifyWeb.sidebar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sidebar Component</title>
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    
    <style>
        /* =========================================
           SIDEBAR COMPONENT CSS
           ========================================= */
        body {
            margin: 0;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background-color: #f8fafc; /* Page background */
        }

        .sidebar {
            width: 260px;
            background-color: #111c2d; /* Dark navy background */
            color: white;
            display: flex;
            flex-direction: column;
            height: 100vh;
            overflow-y: auto;
            box-sizing: border-box;
        }

        .sidebar-brand {
            padding: 25px 20px;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .sidebar-brand img {
            height: 40px;
            width: auto;
        }

        .sidebar-brand div {
            line-height: 1.2;
        }

        .brand-title {
            font-weight: 800;
            font-size: 22px;
            letter-spacing: 0.5px;
            color: white;
        }
        
        .brand-subtitle {
            font-size: 11px;
            color: #cbd5e1;
            font-weight: 400;
        }

        .sidebar-menu {
            padding: 0 15px 20px 15px;
            flex-grow: 1;
        }

        .menu-label {
            font-size: 14px;
            font-weight: 700;
            color: white;
            margin-bottom: 15px;
            padding-left: 5px;
        }

        /* Purple Button Styling for all links */
        .nav-link {
            background-color: #a7b5ff; /* Light purple/blue from design */
            color: #1e293b; /* Dark text */
            padding: 10px 15px;
            border-radius: 8px;
            margin-bottom: 12px;
            font-size: 14px;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 12px;
            text-decoration: none;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .nav-link i {
            font-size: 18px;
        }

        .nav-link:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(167, 181, 255, 0.4);
            color: #0f172a;
        }

        /* Active state glow effect */
        .nav-link.active {
            box-shadow: 0 0 15px rgba(167, 181, 255, 0.6);
            border: 1px solid #ffffff;
        }

        /* Specific styling for Logout */
        .logout-link {
            color: #dc2626 !important; /* Red text */
        }
        
        .logout-link i {
            color: #dc2626;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <!-- SIDEBAR HTML -->
        <aside class="sidebar">
            <!-- Brand / Logo -->
            <div class="sidebar-brand">
                <img src="Images/Stockify_white.png" alt="Logo" />
                <div>
                    <div class="brand-title">Stockify</div>
                    <div class="brand-subtitle">Shop Management<br />Suite</div>
                </div>
            </div>

            <!-- Navigation Menu -->
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
                
                <a href="Supplier.aspx" class='nav-link <%= Request.Url.AbsolutePath.ToLower().Contains("supplier") ? "active" : "" %>'>
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

    </form>
</body>
</html>