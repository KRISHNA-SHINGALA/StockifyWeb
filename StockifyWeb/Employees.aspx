<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="StockifyWeb.Employees" %>
<%@ Register Src="~/Sidebar.ascx" TagPrefix="uc" TagName="Sidebar" %>
<%@ Register Src="~/Topbar.ascx" TagPrefix="uc" TagName="Topbar" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employees - Stockify</title>
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
                            <h1 class="fw-bold mb-1">Employee list</h1>
                            <!-- Minor correction on your subtitle based on the screenshot, but keeping it logical to employees -->
                            <p class="text-muted mb-0">6 active employees · ₹3,13,500 monthly payroll</p>
                        </div>
                        <button type="button" class="btn btn-outline-dark rounded-pill fw-bold px-4 bg-white" style="border-width: 1.5px;">
                            <i class="bi bi-plus-lg me-1"></i> Add Employee
                        </button>
                    </div>

                    <div class="row g-4">
                        <!-- LEFT COLUMN: Employee List -->
                        <div class="col-lg-8">
                            <div class="section-box h-100 p-0 overflow-hidden">
                                
                                <!-- List Header & Search -->
                                <div class="d-flex justify-content-between align-items-center p-4 border-bottom">
                                    <h3 class="fw-bold mb-0 fs-4">Employee list</h3>
                                    <div class="search-bar bg-white border-dark rounded-pill" style="border-width: 1px; width: 250px; padding: 6px 15px;">
                                        <i class="bi bi-search text-dark"></i>
                                        <input type="text" placeholder="Search, Staff.." class="text-dark" />
                                    </div>
                                </div>

                                <!-- Employee Table -->
                                <div class="table-responsive">
                                    <table class="table mb-0 align-middle employee-table">
                                        <thead>
                                            <tr>
                                                <th>Employee</th>
                                                <th>Role</th>
                                                <th>Joined</th>
                                                <th>Salary</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- Row 1 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Rohan Sharma</div>
                                                    <div class="text-muted small">EMP-201 · +91 98220 10101</div>
                                                </td>
                                                <td>Store<br>Administrator</td>
                                                <td>15 Jun 2024</td>
                                                <td class="fw-bold">₹68,000</td>
                                                <td><span class="emp-badge emp-active">Active</span></td>
                                            </tr>
                                            <!-- Row 2 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Sneha Patil</div>
                                                    <div class="text-muted small">EMP-202 · +91 98220 20202</div>
                                                </td>
                                                <td>Billing Executive</td>
                                                <td>23 Feb 2024</td>
                                                <td class="fw-bold">₹32,000</td>
                                                <td><span class="emp-badge emp-active">Active</span></td>
                                            </tr>
                                            <!-- Row 3 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Imran Shaikh</div>
                                                    <div class="text-muted small">EMP-203 · +91 98220 30303</div>
                                                </td>
                                                <td>Inventory Manager</td>
                                                <td>07 Nov 2023</td>
                                                <td class="fw-bold">₹41,000</td>
                                                <td><span class="emp-badge emp-inactive">InActive</span></td>
                                            </tr>
                                            <!-- Row 4 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Kavya Iyer</div>
                                                    <div class="text-muted small">EMP-204 · +91 98220 40404</div>
                                                </td>
                                                <td>Cashier</td>
                                                <td>19 Jan 2023</td>
                                                <td class="fw-bold">₹26,500</td>
                                                <td><span class="emp-badge emp-leave">On Leave</span></td>
                                            </tr>
                                            <!-- Row 5 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Dinesh Rathod</div>
                                                    <div class="text-muted small">EMP-205 · +91 98220 50505</div>
                                                </td>
                                                <td>Warehouse Staff</td>
                                                <td>04 Aug 2022</td>
                                                <td class="fw-bold">₹22,000</td>
                                                <td><span class="emp-badge emp-active">Active</span></td>
                                            </tr>
                                            <!-- Row 6 -->
                                            <tr>
                                                <td>
                                                    <div class="fw-bold text-dark">Pooja Verma</div>
                                                    <div class="text-muted small">EMP-206 · +91 98220 60606</div>
                                                </td>
                                                <td>Accounts Executive</td>
                                                <td>12 Mar 2021</td>
                                                <td class="fw-bold">₹38,000</td>
                                                <td><span class="emp-badge emp-inactive">InActive</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- RIGHT COLUMN: Add Employee Form -->
                        <div class="col-lg-4">
                            
                            <!-- Form Header -->
                            <div class="section-box mb-4 p-4">
                                <h3 class="fw-bold mb-1 fs-4">Add employee</h3>
                                <p class="text-muted small mb-0">Create a staff account with role access</p>
                            </div>

                            <!-- Add Form -->
                            <div class="section-box p-4">
                                
                                <div class="mb-3">
                                    <label class="form-label text-dark small">Full name</label>
                                    <input type="text" class="form-control rounded-pill border-dark" placeholder="e.g Aditi kale" style="border-width: 1px;" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label text-dark small">Role</label>
                                    <select class="form-select rounded-pill border-dark" style="border-width: 1px;">
                                        <option>Store Administrator</option>
                                        <option>Billing Executive</option>
                                        <option>Inventory Manager</option>
                                        <option>Cashier</option>
                                    </select>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-6">
                                        <label class="form-label text-dark small">Phone</label>
                                        <input type="text" class="form-control rounded-pill border-dark" placeholder="+91 ..." style="border-width: 1px;" />
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label text-dark small">Monthly salary (₹)</label>
                                        <input type="number" class="form-control rounded-pill border-dark" value="3200" style="border-width: 1px;" />
                                    </div>
                                </div>

                                <div class="mb-4">
                                    <label class="form-label text-dark small">Status</label>
                                    <select class="form-select rounded-pill border-dark" style="border-width: 1px;">
                                        <option>Active</option>
                                        <option>InActive</option>
                                        <option>On Leave</option>
                                    </select>
                                </div>

                                <div class="text-center mt-2">
                                    <button type="button" class="btn fw-bold rounded-pill" style="background-color: #dbeafe; color: #1e40af; border: 1px solid #bfdbfe; padding: 10px 40px;">
                                        <i class="bi bi-plus-lg me-2"></i>Save Employee
                                    </button>
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