<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <title>Admin - Table</title>
            <jsp:include page="navmenu.jsp"></jsp:include>
        </head>

        <body>
            <div id="layoutSidenav">
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid">
                            <h1 class="mt-4">Tables</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="index.htm">Dashboard</a></li>
                                <li class="breadcrumb-item active">Tables</li>
                            </ol>
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table mr-1"></i> DataTable Example
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Image</th>
                                                    <th>Category</th>
                                                    <th>Brand</th>
                                                    <th>Name</th>
                                                    <th>Description</th>
                                                    <th>Price</th>
                                                    <th>Discount</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Image</th>
                                                    <th>Category</th>
                                                    <th>Brand</th>
                                                    <th>Name</th>
                                                    <th>Description</th>
                                                    <th>Price</th>
                                                    <th>Discount</th>
                                                    <th>Action</th>
                                                </tr>
                                            </tfoot>
                                            <tbody>
                                                <c:forEach var="p" items="${products}">
                                                    <tr>
                                                        <td>${p.id}</td>
                                                        <th><img src="${p.image}" style="max-height: 100px"></th>
                                                        <td>${p.category.name}</td>
                                                        <td>${p.brand.name}</td>
                                                        <td>${p.name}</td>
                                                        <td>${p.des}</td>
                                                        <td>${p.price}</td>
                                                        <td>${p.discount}</td>
                                                        <td><button class="btn btn-primary" onclick="location.href='admin/update/${p.id}.htm'" style="width: 45%; min-width: 55px;">Sửa</button>
                                                            <div style="padding: 3px;"></div>
                                                            <button class="btn btn-primary" onclick="location.href='admin/delete/${p.id}.htm'" style="width: 45%; min-width: 55px;">Xóa</button></td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
        </body>

        </html>