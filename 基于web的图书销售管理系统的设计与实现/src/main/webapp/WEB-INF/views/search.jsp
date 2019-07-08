<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Shop Page- Ustora Demo</title>

<!-- Google Fonts -->
<!-- <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'> -->

<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/responsive.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<jsp:include page="style.jsp"></jsp:include>
</head>
<body>














	<div class="container">

		<jsp:include page="header.jsp"></jsp:include>




		<!-- Content -->
		<div class="row content">

			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="breadcrumbs">
					<p>
						<a href="#">主页</a> <i class="icons icon-right-dir"></i> ${keyword }
					</p>
				</div>
			</div>

			<!-- Main Content -->
			<section
				class="main-content col-lg-12 col-md-12 col-sm-12 ">





				<div class="row">
					<!-- Product Item -->
					<c:forEach items="${pageInfo.list}" var="goods">
						<div class="col-lg-4 col-md-4 col-sm-4 product">

							<div class="product-image">
								<img
									src="${pageContext.request.contextPath}/shopimage/${goods.imagePaths[0].path}"
									alt="Product1"> <a
									href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}"
									class="product-hover"> <i class="icons icon-eye-1"></i>
									查看详情
								</a>
							</div>

							<div class="product-info">
								<h5>
									<a
										href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}">${goods.goodsname}</a>
								</h5>
								<span class="price">￥${goods.price}</span>
								<div class="rating readonly-rating" data-score="4"></div>
							</div>

							<div class="product-actions">
								<span class="add-to-cart"
									onclick=" window.location.href='${pageContext.request.contextPath}/addCart?goodsid=${goods.goodsid}&goodsnum=1';">
									<span class="action-wrapper"> <i
										class="icons icon-basket-2"></i> <span class="action-name">加入购物车</span>
								</span>

								</span> <span class="add-to-favorites"
									onclick=" window.location.href='${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}';">
									<span class="action-wrapper"> <i
										class="icons icon-eye-1"></i> <span class="action-name">查看详情</span>
								</span>
								</span>

							</div>

						</div>
					</c:forEach>
					<!-- Product Item -->

	<div class="row">
			<div class="col-md-12">
				<div class="product-pagination text-center">
					<nav>
						<ul class="pagination">
							<c:if test="${pageInfo.hasPreviousPage}">
								<li><a
									href="${pageContext.request.contextPath}/search?keyword=${keyword}&page=${pageInfo.prePage}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</c:if>

							<c:if test="${!pageInfo.hasPreviousPage}">
								<li class="disabled"><a
									href="${pageContext.request.contextPath}/search?keyword=${keyword}&page=${pageInfo.prePage}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</c:if>

							<c:forEach items="${pageInfo.navigatepageNums}" var="pageNums">
								<c:if test="${pageNums == pageInfo.pageNum}">
									<li class="active"><a
										href="${pageContext.request.contextPath}/search?keyword=${keyword}&page=${pageNums}">${pageNums}</a></li>
								</c:if>
								<c:if test="${pageNums != pageInfo.pageNum}">
									<li><a
										href="${pageContext.request.contextPath}/search?keyword=${keyword}&page=${pageNums}">${pageNums}</a></li>
								</c:if>
							</c:forEach>

							<c:if test="${pageInfo.hasNextPage}">
								<li><a
									href="${pageContext.request.contextPath}/search?keyword=${keyword}&page=${pageInfo.nextPage}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</c:if>

							<c:if test="${!pageInfo.hasNextPage}">
								<li class="disabled"><a
									href="${pageContext.request.contextPath}/search?keyword=${keyword}&page=${pageInfo.nextPage}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
		</div>

					

				</div>



			</section>
			<!-- /Main Content -->




			

		</div>
		<!-- /Content -->



	
		<jsp:include page="footer.jsp"></jsp:include>
	</div>




	<!-- Latest jQuery form server -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="${pageContext.request.contextPath}/assets//js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script
		src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>

