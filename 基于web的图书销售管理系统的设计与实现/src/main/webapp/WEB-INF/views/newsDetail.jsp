<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>资讯-${goodsInfo['goods'].goodsname}</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
	<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">

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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/css/shopdetail.css"
	rel="stylesheet">
<!-- <script src="./detail/js/jquery.js"></script> -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>

<%--<script src="${pageContext.request.contextPath}/js/sort.js"></script>--%>

<!-- bootstrap js -->
<script
	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sort.js"></script>
<script src="${pageContext.request.contextPath}/js/detail.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("p").each(function() {
			var temp = $(this).text().replace(/\n|\r\n/g, '<br/>');
			$(this).html(temp);
		});
	});
</script>
<style>
.head {
	width: 45px !important;
	background: rgba(0, 0, 0, .0001) none repeat scroll 0 0 !important;
	border: 1px solid rgba(0, 0, 0, .075) !important;
}

.span-block {
	display: block !important;
	padding: 5px;
}
</style>

</head>

<body>
	<!--zoom elavator area one start-->
<jsp:include page="header.jsp" />



	<div class="container">
		<div class="page-header">
			<h1>${goodsInfo['goods'].goodsname}</h1>
		</div>
		<c:forEach items="${goodsInfo['image']}" var="path">

			<img src="${pageContext.request.contextPath}/shopimage/${path.path}"
				alt="..." class="img-thumbnail center-block" style="margin-top:20px;">
		</c:forEach>

		<p class="lead" style="margin-top:20px;">${goodsInfo['goods'].description}</p>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>

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


