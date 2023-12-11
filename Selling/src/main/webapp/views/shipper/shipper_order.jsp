<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglist.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
    type="text/css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
    type="text/css" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/templates/shipper/css/main.css">

<body>
    <main>
        <div class="container d-flex content">
            <div class="d-block left-box" style="background-color: rgb(255, 255, 255); width: 180px; float: left; ">
                <div class="info p-2 rounded ">
                    <img class="image-info" href="/assets/tải xuống (1).jpg xuống (1).jpg">
                    <div class="content-info">
                        <div class="account">danggiathuan</div>
                        <a class="change-account" href="">Sửa hồ sơ</a>
                    </div>
                </div>
                <div class="d-flex align-items-start" style="padding-left: 40px; padding-top: 20px;">
                    <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist"
                        aria-orientation="vertical">
                        <button class="nav-link active" id="v-pills-order-tab" data-bs-toggle="pill"
                            data-bs-target="#v-pills-order" type="button" role="tab" aria-controls="v-pills-order"
                            aria-selected="true">Đơn hàng</button>
                        <button class="nav-link" id="v-pills-information-tab" data-bs-toggle="pill"
                            data-bs-target="#v-pills-information" type="button" role="tab"
                            aria-controls="v-pills-information" aria-selected="false">Thông tin</button>
                    </div>
                </div>
            </div>
            <div class="ms-3 d-flex right-box">
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-order" role="tabpanel"
                        aria-labelledby="v-pills-order-tab" tabindex="0">
                        <div class="container-fluid" style="background-color: #ffffff;  margin-bottom: 20px;">
                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                <li class="nav-item col" role="presentation">
                                    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
                                        aria-selected="true">Tất cả đơn hàng</button>
                                </li>
                                <li class="nav-item col" role="presentation">
                                    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-profile" type="button" role="tab"
                                        aria-controls="pills-profile" aria-selected="false">Đã giao</button>
                                </li>
                                <li class="nav-item col" role="presentation">
                                    <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-contact" type="button" role="tab"
                                        aria-controls="pills-contact" aria-selected="false">Đang giao</button>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                    aria-labelledby="pills-home-tab" tabindex="0">
                                    <div class="product">
                                        <div class="product-detail rounded d-flex">
                                            <div class="content-info ml-2">
                                                <div class="product-id" href="">#123</div>
                                                <div class="product-category">Ngày đặt hàng: 21/11/2003</div>
                                            </div>
                                            <div class="product-money text-center">
                                                <p>Thành tiền</p>
                                                <p style="color: rgb(36, 214, 158);">90.000đ</p>
                                            </div>
                                        </div>
                                        <div class="product-address d-flex">
                                            <div class="content-info ml-2 mb-2 justify-content-between">
                                                <div class="address">Địa chỉ: 484A, Lê Văn Việt, Tăng Nhơn Phú A, Quận
                                                    9,
                                                    TPHCM
                                                </div>
                                                <div class="phone">Số điện thoại: 0355626541</div>
                                                <div class="name">Họ và tên: Đặng Gia Thuận</div>
                                            </div>
                                            <div class="product-status text-center">
                                                <p>Trạng thái</p>
                                                <p style=" color: rgb(19, 220, 39);">HOÀN THÀNH</p>
                                            </div>
                                        </div>
                                        <div class="product-button d-flex">
                                            <button type="button" class="btn btn-success d-flex" style="margin-left: 900px;
									margin-bottom: 20px;" disabled>Đã giao hàng</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-profile" role="tabpanel"
                                    aria-labelledby="pills-profile-tab" tabindex="0">
                                     <div class="product">
                                        <div class="product-detail rounded d-flex">
                                            <div class="content-info ml-2">
                                                <div class="product-id" href="">#123</div>
                                                <div class="product-category">Ngày đặt hàng: 21/11/2003</div>
                                            </div>
                                            <div class="product-money text-center">
                                                <p>Thành tiền</p>
                                                <p style="color: rgb(36, 214, 158);">90.000đ</p>
                                            </div>
                                        </div>
                                        <div class="product-address d-flex">
                                            <div class="content-info ml-2 mb-2 justify-content-between">
                                                <div class="address">Địa chỉ: 484A, Lê Văn Việt, Tăng Nhơn Phú A, Quận
                                                    9,
                                                    TPHCM
                                                </div>
                                                <div class="phone">Số điện thoại: 0355626541</div>
                                                <div class="name">Họ và tên: Đặng Gia Thuận</div>
                                            </div>
                                            <div class="product-status text-center">
                                                <p>Trạng thái</p>
                                                <p style=" color: rgb(19, 220, 39);">HOÀN THÀNH</p>
                                            </div>
                                        </div>
                                        <div class="product-button d-flex">
                                            <button type="button" class="btn btn-success d-flex" style="margin-left: 900px;
									margin-bottom: 20px;" disabled>Đã giao hàng</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-contact" role="tabpanel"
                                    aria-labelledby="pills-contact-tab" tabindex="0">
                                     <div class="product">
                                        <div class="product-detail rounded d-flex">
                                            <div class="content-info ml-2">
                                                <div class="product-id" href="">#123</div>
                                                <div class="product-category">Ngày đặt hàng: 21/11/2003</div>
                                            </div>
                                            <div class="product-money text-center">
                                                <p>Thành tiền</p>
                                                <p style="color: rgb(36, 214, 158);">90.000đ</p>
                                            </div>
                                        </div>
                                        <div class="product-address d-flex">
                                            <div class="content-info ml-2 mb-2 justify-content-between">
                                                <div class="address">Địa chỉ: 484A, Lê Văn Việt, Tăng Nhơn Phú A, Quận
                                                    9,
                                                    TPHCM
                                                </div>
                                                <div class="phone">Số điện thoại: 0355626541</div>
                                                <div class="name">Họ và tên: Đặng Gia Thuận</div>
                                            </div>
                                            <div class="product-status text-center">
                                                <p>Trạng thái</p>
                                                <p style=" color: rgb(19, 220, 39);">HOÀN THÀNH</p>
                                            </div>
                                        </div>
                                        <div class="product-button d-flex">
                                            <button type="button" class="btn btn-success d-flex" style="margin-left: 900px;
									margin-bottom: 20px;" disabled>Đã giao hàng</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-information" role="tabpanel"
                        aria-labelledby="v-pills-profile-information" tabindex="0">
                        <div class= "edit card-body d-flex align-items-center">
                            <div class="image-container col-lg-6 mb-4 mb-lg-0 ">
                                <img src="https://admin.vov.gov.vn/UploadFolder/KhoTin/Images/UploadFolder/VOVVN/Images/sites/default/files/styles/large/public/2023-07/362289979_838127327678045_2812585588687742762_n.jpg"
                                    alt="..." class="object-fit-sm-contain">
                            </div>
                            <div class="col-lg-6 px-xl-10">
                                <div class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded"
                                    style="margin-top: 20px; margin-left: 140px;">
                                    <h3 class="h2 text-white text-center mb-0">Đặng Gia Thuận</h3>
                                </div>
                                <ul class="list-unstyled mb-1-9">
                                    <li class="mb-2 mb-xl-3 d-flex align-items-center "> 
                                        <label for="username" class="display-26 text-secondary me-2 font-weight-600">Tên đăng nhập:</label>
                                        <input type="text" id="username" class="form-control" value="danggiathuanhl"></li>
                                    <li class="mb-2 mb-xl-3 d-flex align-items-center">
                                        <label for="username" class="display-26 text-secondary me-2 font-weight-600">Tên đăng nhập:</label>
                                        <input type="text" id="username" class="form-control" value="danggiathuanhl">
                                    </li>
                                    <li class="mb-2 mb-xl-3 d-flex align-items-center">
                                        <label for="username" class="display-26 text-secondary me-2 font-weight-600">Tên đăng nhập:</label>
                                        <input type="text" id="username" class="form-control" value="danggiathuanhl">
                                    </li>
                                    <li class="mb-2 mb-xl-3 d-flex align-items-center">
                                        <label for="username" class="display-26 text-secondary me-2 font-weight-600">Địa chỉ:</label>
                                        <input type="text" id="username" class="form-control" value="danggiathuanhl">
                                    </li>
                                    <li class="mb-2 mb-xl-3 d-flex align-items-center">
                                        <label for="username" class="display-26 text-secondary me-2 font-weight-600">Số điện thoại:</label>
                                        <input type="text" id="username" class="form-control" value="danggiathuanhl">
                                    </li>
                                    <li class="mb-2 mb-xl-3 d-flex align-items-center">
                                        <label for="username" class="display-26 text-secondary me-2 font-weight-600">Ngày sinh:</label>
                                        <input type="text" id="username" class="form-control" value="danggiathuanhl">
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>