<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglist.jsp"%>

<!DOCTYPE html>
<html>

<head>
    <title>Danh sách sản phẩm</title>
</head>

<body>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/templates/user/css/product/style.css" rel="stylesheet" type="text/css">
    <nav aria-label="breadcrumb" style="padding: 25px; padding-left: 100px; align-items: center;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Oriflame</a></li>
            <li class="breadcrumb-item"><a href="#">ListProduct</a></li>
        </ol>
    </nav>
    <!-- FILTER PRODUCTS -->
    <div class="dropdown-center" style="display: flex; justify-content: end; margin-right: 20px;">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fas fa-filter filter-icon"></i>
            Lọc
        </button>
        <ul class="dropdown-menu">
            <h5 style="margin: 20px;">Sắp xếp theo</h5>
            <li>
                <a class="dropdown-item d-flex align-items-center" href="topProduct">
                     <span>Mới nhất</span>
                </a>
            </li>
            <li>
                <a class="dropdown-item d-flex align-items-center" href="filterDesc">
                     <span>Giá cao tới thấp</span>
                </a>
            </li>
            <li>
                <a class="dropdown-item d-flex align-items-center" href="filterAsc">
                     <span>Giá thấp tới cao</span>
                </a>
            </li>

        </ul>
    </div>
    <!-- END FILTER PRODUCTS -->
    <div>
        <h1 style="text-align: center;">DANH SÁCH SẢN PHẨM</h1>
    </div>
    <!-- NAVIGATION BAR BEGIN -->
    <ul class="nav justify-content-center">
        <c:forEach var="i" items="${listC}">
			<li class="nav-item"><a class="nav-link" href="productByCategory?cid=${i.categoryId}"><c:out
						value="${i.categoryName}" /></a></li>
		</c:forEach>
        </div>
        <div style="margin: 20px;">
            <div class="row justify-content-center">
                <c:forEach  var="i" items="${list}">
      	<div class="card col-md-2" style="margin-left: 4.75rem;">
      		<a href="detailproduct?pid=${i.productId}">
	        <img
	          src="${i.imageURL}"
	          class="card-img-top" alt="..."></a>
	        <div class="card-body">
	          <div class="d-flex justify-content-between align-items-center">
	            <div class="ratings">
	              <i class="fa fa-star rating-color"></i>
	              <i class="fa fa-star rating-color"></i>
	              <i class="fa fa-star rating-color"></i>
	              <i class="fa fa-star rating-color"></i>
	              <i class="fa fa-star"></i>
	            </div>
	            <h5 class="review-count">12 Reviews</h5>
	          </div>
	          <h5 class="card-title">${i.productName}</h5>
	          <p class="card-text">${i.description}</p>
	          <p class="price">${i.price}</p>
        	</div>
      </div>
      </c:forEach>
            </div>
        </div>
    </ul>
    <div class="button-container" style="display: flex;    justify-content: center; margin-top: 20px;">
        <button type="button" class="btn btn-primary">Xem thêm</button>
    </div>
    <!-- NAVIGATION BAR END -->
   

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
        integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
        crossorigin="anonymous"></script>
</body>

</html>