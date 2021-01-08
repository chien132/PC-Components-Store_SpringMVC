<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <title>Admin - Update</title>
                <jsp:include page="navmenu.jsp"></jsp:include>
            </head>

            <body>
                <div>
                    <!-- 		<div style="padding: 20px;"></div> -->
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid">
                                <div class="card-body">
                                    <div class="table-responsive" style="text-align: left; margin-top: -80px">
                                        <div class="col-lg-12">
                                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                                <div class="card-header">
                                                    <h3 class="text-center font-weight-light my-4">Update Product
                                                    </h3>
                                                </div>
                                                <div class="card-body">
                                                    <form:form action="admin/update.htm" modelAttribute="p" method="post">
                                                        <div class="row">
                                                            <div class="col-lg-9">
                                                                <div class="form-row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="small mb-1"><h5>Name</h5></label>
                                                                            <form:input type="text" path="name" class="form-control" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="small mb-1"><h5>Image</h5></label>
                                                                            <form:input path="image" type="file" class="form-control" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="small mb-1"><h5>Category</h5></label>
                                                                            <form:select class="form-control" path="category.id" items="${categories}" itemValue="id" itemLabel="name"></form:select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="small mb-1"><h5>Brand</h5></label>
                                                                            <form:select class="form-control" path="brand.id" items="${brands}" itemValue="id" itemLabel="name"></form:select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="small mb-1"><h5>Price</h5></label>
                                                                            <form:input type="text" path="price" class="form-control" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="small mb-1"><h5>Discount</h5></label>
                                                                            <form:input type="text" path="discount" class="form-control" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="small mb-1"><h5>Quantity</h5></label>
                                                                            <form:input path="quantity" type="text" class="form-control" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label class="small mb-1"><h5>Description</h5></label>
                                                                            <form:textarea type="text" path="des" class="form-control" />

                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group mt-4 mb-0">
                                                                    <h5 style="color: red;">${message}</h5>
                                                                    <button class="btn btn-primary btn-block" type="submit">Submit</button>
                                                                    <button class="btn btn-primary btn-block" onclick="location.href='admin/index.htm'" type="button">Cancel</button>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <img style="max-width: -webkit-fill-available;" alt="" src="${p.image}">
                                                            </div>
                                                        </div>
                                                    </form:form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-9"></div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>
            </body>

            </html>