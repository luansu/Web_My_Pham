<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Trang chi tiết sản phẩm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <style>
        .cart-item {
            padding-bottom: 20px;
            border-radius: 10px;
            overflow: hidden;
            width: 310px;
        }

        .quantity {
            display: flex;
            align-items: center;
            gap: 0px;
            background-color: #f2f2f2;
            border-radius: 23px;
        }

        .decrease-quantity,
        .increase-quantity {
            margin: 10px;
            border-radius: 3px;
            border: 1px;
        }

        .item-quantity {
            border-radius: 3px;
            width: 50px;
            border: 1px;
        }

        .add-to-cart {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 23px;
            padding: 10px 20px;
            cursor: pointer;
        }

        /* Accordion */
        .accordion-item,
        .accordion-body {
            border: 0px;
        }

        .accordion-button {
            position: relative;
            display: flex;
            align-items: center;
            width: 100%;
            font-size: 1rem;
            color: #212529;
            background-color: transparent;
            border: 0px;
            border-radius: 0;
            overflow-anchor: none;
            padding-left: 0px;
        }

        .accordion-button:focus {
            outline: 0;
            box-shadow: none;
            background-color: transparent;
            border: 0px;
        }

        .accordion-button:not(.collapsed) {
            color: #012970;
            background-color: transparent;
            border: 0px;
        }

        .accordion-flush .accordion-button {
            padding: 15px 0;
            background: none;
            border: 0px;
        }

        .accordion-flush .accordion-button:not(.collapsed) {
            box-shadow: none;
            color: #4154f1;
            border: 0px;
        }

        .accordion-flush .accordion-body {
            padding: 0 0 15px 0;
            color: transparent;
            font-size: 15px;
        }
    </style>
    <!-- HEADER BEGIN-->
    <nav class="navbar navbar-expand-xxl bg-body-tertiary">
        <div class="container-fluid d-flex justify-content-between">
            <div class="collapse" id="navbarToggleExternalContent" data-bs-theme="light">
                <div class="bg-light p-4">
                    <h5 class="text-body-emphasis h4">Collapsed content</h5>
                    <span class="text-body-secondary">Toggleable via the navbar
                        brand.</span>
                </div>
            </div>
            <nav class="navbar navbar-light bg-light">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </nav>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 139 31" height="40" width="80" data-id="common"
                class="appshell-fp-16d8r2m">
                <path
                    d="M57.98 28.94l-1.595-4.904h-.98L53.81 28.94l-1.593-4.91h-1.23l2.206 6.62h.98l1.716-4.66 1.59 4.66h.98l2.2-6.62h-1.22zM1.334 26.857h33.35v.98H1.334v-.98zm41.318-24.89h2.207v14.59h-2.21V1.967zm10.544 14.59h2.207v-6.13h7.602V8.343h-7.61V3.93h8.46V1.966h-10.66zM8.324 16.8c4.66 0 8.46-3.8 8.46-8.46 0-4.534-3.8-6.62-6.62-6.62-5.518 0-5.886 5.396-5.886 5.396h.13s.98-3.923 4.78-3.923c3.07 0 5.4 2.084 5.4 5.027 0 3.43-2.82 6.25-6.25 6.25-3.31 0-6.372-2.45-6.372-6.87 0-3.44 1.84-6.26 5.027-7.48V0C2.947.61.003 4.17.003 8.33c-.122 4.66 3.68 8.46 8.338 8.46zm36.78 10.056c-1.225-.245-1.593-.49-1.593-.98s.37-.737 1.11-.737c.62 0 1.23.24 1.72.61l.617-.85c-.613-.49-1.47-.86-2.33-.86-1.35 0-2.207.74-2.207 1.96s.73 1.6 2.2 1.96c1.22.25 1.47.49 1.47.98s-.49.86-1.1.86c-.86 0-1.47-.37-2.09-.86l-.74.86c.735.74 1.716 1.11 2.696 1.11 1.35 0 2.33-.73 2.33-1.96 0-1.35-.738-1.84-2.086-2.08zm-9.317-10.3l-4.414-5.884c2.207-.61 3.678-2.2 3.678-4.29 0-2.69-2.2-4.53-5.39-4.53h-6.38v14.59h2.2v-5.4h3.55l4.05 5.4 2.7.126zm-10.3-7.48V3.93h4.047c2.084 0 3.31.86 3.31 2.453s-1.35 2.575-3.31 2.575h-4.047zm40.706 18.76h3.31v-1.102h-3.31V25.14h3.678v-1.103h-4.78v6.498h4.78v-.98H66.2zM91.817 1.844l-6.62 14.713h2.33l1.715-3.8h7.11l1.595 3.8h2.452L93.78 1.844h-1.964zm-1.838 8.95l2.69-6.252 2.69 6.26h-5.4zm18.14-5.026l4.66 6.866.24.368.24-.36 4.536-6.86v10.79h2.207v-14.6h-2.084l-4.904 7.356-4.906-7.356h-2.08v14.59h2.085zm0 21.088h30.89v.98h-30.89v-.98zm22.19-12.383v-4.29h7.6V8.098h-7.6v-4.17h8.58v-1.96h-10.78v14.59h10.79V14.47zM98.93 28.57l-3.557-4.534H94.27v6.498h1.226v-4.536l3.55 4.536h.98v-6.498h-1.1zM72.936 1.968h-2.084v14.59h10.054v-2.084h-7.97zm13.12 25.87h3.31v-1.103h-3.31V25.14h3.677v-1.103H84.95v6.498h4.905v-.98h-3.81zm-9.197-3.8H74.4v6.497h2.453c2.083 0 3.432-1.47 3.432-3.31.122-1.717-1.35-3.188-3.434-3.188zm0 5.516h-1.35V25.14h1.35c1.35 0 2.2.98 2.2 2.206.12 1.226-.86 2.207-2.21 2.207z">
                </path>
            </svg>
            <form class="d-flex" role="search">
                <div style="display: flex-column; align-items: center;">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
                        style="width: 500px;">
                </div>
            </form>

            <span class="navbar-text"> Đăng nhập</span> <span class="navbar-text">
                Đăng ký</span> <i class="fa-solid fa-cart-shopping"></i>
        </div>
    </nav>
    <!-- HEADER END -->
    <!-- PRODUCT DETAIL -->
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="listProduct">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Purfume</li>
                </ol>
            </nav>
            <div class="col-lg-6">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="${p.imageURL}"
                                class="d-block w-100" alt="Hình ảnh 1">
                        </div>
                        <div class="carousel-item">
                            <img src="${p.imageURL}"
                                class="d-block w-100" alt="Hình ảnh 2">
                        </div>
                        <div class="carousel-item">
                            <img src="${p.imageURL}"
                                class="d-block w-100" alt="Hình ảnh 3">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Trước</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Tiếp</span>
                    </button>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="accordion" id="productDetailsAccordion">
                    <h2>${p.productName}</h2>
                    <div>
                        <p class="review-count" style="margin-bottom: 0px;">12</p>
                        <div class="product_detail_ratings d-flex justify-content-start align-items-start">
                            <div>
                                <i class="fa fa-star rating-color"></i>
                                <i class="fa fa-star rating-color"></i>
                                <i class="fa fa-star rating-color"></i>
                                <i class="fa fa-star rating-color"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p style="margin-left: 4px;">Xem tất cả bình luận</p>
                        </div>
                        <h3 style="padding: 20px 0 20px 0;">${p.price}</h3>
                        <div class="cart-item align-items-between">
                            <div class="quantity">
                                <button class="decrease-quantity">-</button>
                                <input type="number" class="item-quantity" value="1">
                                <button class="increase-quantity">+</button>
                                <button class="add-to-cart">Thêm vào giỏ hàng</button>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"
                                onclick="toggleCollapse(1)">
                                Thành phần
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne"
                            data-bs-parent="#productDetailsAccordion" style="border: 0px;">
                            <div class="accordion-body">
                                AQUA, ALCOHOL DENAT., ALUMINUM CHLOROHYDRATE, C12-13 PARETH-9, PROPYLENE GLYCOL,
                                HYDROXYETHYLCELLULOSE, BUTYLENE GLYCOL, DISODIUM PHOSPHATE, POLYSORBATE 60, SODIUM
                                PHOSPHATE, PARFUM, HEXYL CINNAMAL, LIMONENE, LINALOOL, CITRAL
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"
                                onclick="toggleCollapse(2)">
                                Về nordic waters
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                            data-bs-parent="#productDetailsAccordion" style="border: 0px;">
                            <div class="accordion-body">
                                Thả mình vào làn nước tươi mát để các giác quan được bừng tỉnh trong cảm giác sảng khoái
                                đầy mê hoặc với các hương nước hoa hương biển Nordic Waters Eau de Parfum từ Oriflame.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree"
                                onclick="toggleCollapse(3)">
                                Phương thức giao hàng
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                            data-bs-parent="#productDetailsAccordion" style="border: 0px;">
                            <div class="accordion-body">
                                <p>Thông tin Giao Nhận Hàng Hóa đối với Khách Hàng VIP</p>

                                <p>GIAO TẠI NHÀ POSTAL: thanh toán đơn và chờ nhận hàng tại nhà trong vòng 3-5 ngày làm
                                việc (phí giao hàng tại nhà có thể khác nhau tùy theo lựa chọn kho giao hàng)
                                GIAO TẠI NHÀ COD (áp dụng cho tất cả các tỉnh thành trên toàn quốc): nhận hàng trong
                                vòng 1-5 ngày làm việc và thanh toán trực tiếp cho nhân viên giao hàng
                                Đơn giao tại nhà Postal hoặc COD có giá trị từ 499.000 trở lên sẽ được miễn phí giao
                                hàng. Riêng các đơn COD có địa chỉ nhận hàng tại các tỉnh thành ngoài TP. HCM, Hà Nội,
                                Đà Nẵng, Cần Thơ sẽ có thêm phụ phí thu hộ COD 10.000.
                                GIAO NHANH TRONG NGÀY TẠI NHÀ: Áp dụng cho các đơn thanh toán trước 10:00 AM sáng (trừ
                                ngày Chủ Nhật, Lễ, Tết), sẽ được giao trong ngày với phụ phí 10K đối với địa chị nhận
                                hàng tại các quận nội thành TP.Hà Nội, Tp.HCM theo danh sách.</p>

                                <p>Tỉnh thành</p>
                                <p>Địa bàn phát trong ngày
                                    Hà Nội Bắc từ liêm , Nam từ liêm , Cầu Giấy , Thanh Xuân , Hoàng Mai , Ba Đình , Tây Hồ,
                                    Đống đa , Long Biên , Hoàn Kiếm, Hà Đông, Hai Bà Trưng
                                    Tp.HCM Quận 1,3,5,6,10,11, Tân Bình, Bình Thạnh, Tân Phú, Phú Nhuận, Gò Vấp</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FOOTER BEGIN -->
    <footer>
        <div class="container mt-5 justify-content-center">
            <div class="row">
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <h3>CHÍNH SÁCH & QUY ĐỊNH</h3>
                    <p>Chính Sách & Quy Định Chung</p>
                    <p>Chính sách bảo vệ dữ liệu cá nhân</p>
                    <p>Quy Trình Đặt Sản Phẩm, Thanh Toán Và Giao Nhận Sản Phẩm</p>
                    <p>Quy Trình Trả Lại, Mua Lại Sản Phẩm</p>
                    <p>Chính sách vận chuyển - giao nhận</p>
                    <p>Quy Định Về Phương Thức Thanh Toán</p>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <h3>GIỚI THIỆU VỀ ORIFLAME</h3>
                    <p>Chúng tôi là ai</p>
                    <p>Tin tức hoạt động</p>
                    <p>Chăm Sóc Khách Hàng</p>
                    <p>Cơ hội nghề nghiệp</p>
                    <p>Dành cho nhà đầu tư</p>
                    <p>Oriflame toàn cầu</p>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <h3>THÔNG TIN HOẠT ĐỘNG KINH DOANH</h3>
                    <p>Các tài liệu về hoạt động bán hàng</p>
                    <p>đa cấp của doanh nghiệp</p>
                    <p>Thông tin về hoạt động kinh doanh</p>
                    <p>bán hàng đa cấp của doanh nghiệp</p>
                    <p>Các quy trình, thủ tục</p>
                    <p>Chăm Sóc Khách Hàng</p>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <h3>Xem thêm & Tải về</h3>
                    <p>Các tài liệu về hoạt động bán hàng</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- FOOTER END -->

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <!-- Template Main JS File -->
    <script src="/main.js"></script>

</body>

</html>