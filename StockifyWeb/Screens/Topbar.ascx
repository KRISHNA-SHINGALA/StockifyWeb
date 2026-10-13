<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Topbar.ascx.cs" Inherits="StockifyWeb.Topbar" %>

<header class="top-header">
    <div class="search-bar">
        <i class="bi bi-search text-muted"></i>
        <input type="text" placeholder="Search Products, Invoices..." />
    </div>
    <div class="header-actions">
        <i class="bi bi-bell fs-5 text-dark"></i>
        <div class="user-profile">
            <div class="user-avatar">RS</div>
            <div>
                <div class="fw-bold fs-6 text-dark lh-1">Rohan sharma</div>
                <div class="text-muted" style="font-size:10px;">Store Administrator</div>
            </div>
            <i class="bi bi-chevron-down ms-2 text-muted"></i>
        </div>
    </div>
</header>