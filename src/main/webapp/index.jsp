<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset ="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Group 19 - Assignment Website</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="assets/styles/styles.css" rel="stylesheet" />
    </head>
    <body>
<!-- Responsive navbar-->
<jsp:include page="views/common/nav.jsp" />
<!-- Header-->
<header class="py-5">
    <div class="container px-lg-5">
        <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
            <div class="m-4 m-lg-5 row">
                <h1 class="text-info">Introduction</h1>
                    <div class="row col-12 mb-5">
                        <figure class="figure col-6 col-sm-12 col-md-6">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Son.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Nguyễn Minh Sơn - 20110713</figcaption>
                        </figure>
                        <figure class="figure col-6 col-sm-12 col-md-6">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Dung.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Đỗ Minh Dũng - 20110620</figcaption>
                        </figure>
                    </div>

                    <div class="row col-12 mt-5">
                        <figure class="figure col-4 col-sm-12 col-md-4">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Thanh.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Nguyễn Đức Thành - 20110307</figcaption>
                        </figure>
                        <figure class="figure col-4 col-sm-12 col-md-4">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Nhan.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Lê Anh Nhân - 20110689</figcaption>
                        </figure>

                        <figure class="figure col-4 col-sm-12 col-md-4">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Lan.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Đỗ Thị Mỹ Lan - 20110666</figcaption>
                        </figure>
                    </div>

            </div>
        </div>
    </div>
</header>
<!-- Page Content-->
<section id="assignment" class="pt-4">
    <div class="container px-lg-5">
        <!-- Page Features-->
        <div class="row gx-lg-5">
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-collection"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 1</h2>
                        <p class="mb-4 mt-4">Bài tập 1 - Tuần 4: Email List Murach's Book</p>
                        <a href="./views/assignment_0/index.jsp" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-cloud-download"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 2</h2>
                        <p class="mb-4 mt-4">Bài tập 2 - Tuần 5: Crash Course HTML5 và CSS3 </p>
                        <a href="./views/assignment_1/index.jsp" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-card-heading"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 3</h2>
                        <p class="mb-4 mt-4">Bài tập 3 - Tuần 6: Servlet API</p>
                        <a href="./views/assignment_2/index.jsp" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card border border-2 border-danger h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-bootstrap"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 4</h2>
                        <p class="mb-4 mt-4">Description</p>
                        <a href="#" class="btn btn-outline-danger">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card border border-2 border-danger h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-code"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 5</h2>
                        <p class="mb-4 mt-4">Description</p>
                        <a href="#" class="btn btn-outline-danger">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card border border-2 border-danger h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 6</h2>
                        <p class="mb-4 mt-4">Description</p>
                        <a href="#" class="btn btn-outline-danger">View Assignment</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xxl-8 mb-5 mt-5">
                <div class="card h-100 border border-2 border-warning">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-send-fill"></i></div>
                        <h2 class="fs-4 fw-bold">Đồ án cuối kì</h2>
                        <p class="mb-4 mt-4">Furniture Store</p>
                        <a href="https://furniture-web-app.herokuapp.com/" class="btn btn-outline-success">View</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<jsp:include page="views/common/footer.jsp" />
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
</body>
</html>