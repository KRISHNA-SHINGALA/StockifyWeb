<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="StockifyWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Section -->
    <section class="container py-5">

        <div class="row align-items-center">

            <div class="col-md-7">

                <h1 class="display-4 fw-bold">
                    Welcome to <span class="text-success">Stockify</span>
                </h1>

                <p class="lead mt-3">
                    Simple and efficient shop management system
                    for managing products, customers, suppliers,
                    purchases, sales and expenses.
                </p>

                <div class="mt-4">

                    <a href="Login.aspx" class="btn btn-primary btn-lg me-2">
                        Login
                    </a>

                    <a href="Register.aspx" class="btn btn-success btn-lg">
                        Register
                    </a>

                </div>

            </div>

            <div class="col-md-5 text-center">

                <div class="p-5 bg-light rounded shadow-sm">

                    <h2 class="fw-bold">STOCKIFY</h2>

                    <p class="text-muted">
                        Shop Management System
                    </p>

                    <div class="row mt-4">

                        <div class="col-6 mb-3">
                            <h3>Products</h3>
                            <p class="text-muted">Manage Stock</p>
                        </div>

                        <div class="col-6 mb-3">
                            <h3>Billing</h3>
                            <p class="text-muted">Manage Bills</p>
                        </div>

                        <div class="col-6">
                            <h3>Customers</h3>
                            <p class="text-muted">Customer Records</p>
                        </div>

                        <div class="col-6">
                            <h3>Reports</h3>
                            <p class="text-muted">View Reports</p>
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- Features Section -->
    <section class="bg-light py-5">

        <div class="container">

            <div class="text-center mb-5">

                <h2 class="fw-bold">
                    Why Use Stockify?
                </h2>

                <p class="text-muted">
                    Manage your shop activities from one place.
                </p>

            </div>


            <div class="row g-4">

                <div class="col-md-4">

                    <div class="card h-100 shadow-sm border-0">

                        <div class="card-body text-center p-4">

                            <h4>Product Management</h4>

                            <p class="text-muted">
                                Add, update and manage product
                                information and stock.
                            </p>

                            <a href="Products.aspx"
                               class="btn btn-outline-primary">
                                View Products
                            </a>

                        </div>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="card h-100 shadow-sm border-0">

                        <div class="card-body text-center p-4">

                            <h4>Billing Management</h4>

                            <p class="text-muted">
                                Create and manage customer bills
                                easily.
                            </p>

                            <a href="Billing.aspx"
                               class="btn btn-outline-primary">
                                Billing
                            </a>

                        </div>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="card h-100 shadow-sm border-0">

                        <div class="card-body text-center p-4">

                            <h4>Reports</h4>

                            <p class="text-muted">
                                View useful shop information
                                and business reports.
                            </p>

                            <a href="Reports.aspx"
                               class="btn btn-outline-primary">
                                View Reports
                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- Call To Action -->
    <section class="container py-5 text-center">

        <h2 class="fw-bold">
            Start Managing Your Shop
        </h2>

        <p class="text-muted">
            Use Stockify to organize your daily shop operations.
        </p>

        <a href="Register.aspx"
           class="btn btn-success btn-lg">
            Create Account
        </a>

    </section>

</asp:Content>