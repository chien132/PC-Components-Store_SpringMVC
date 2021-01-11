<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <title>Admin - Index</title>
            <jsp:include page="navmenu.jsp"></jsp:include>
        </head>

        <body>
            <!-- 	<div style="padding: 20px;"></div> -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-4">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Primary Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View
									Details</a>
                                        <div class="small text-white">
                                            <i class="fas fa-angle-right"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Warning Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View
									Details</a>
                                        <div class="small text-white">
                                            <i class="fas fa-angle-right"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Success Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View
									Details</a>
                                        <div class="small text-white">
                                            <i class="fas fa-angle-right"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                      
                    </div>
                </main>
            </div>
        </body>

        </html>