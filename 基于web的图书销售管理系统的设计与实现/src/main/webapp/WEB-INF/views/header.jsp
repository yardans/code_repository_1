<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Header -->
<header class="row">

	<div class="col-lg-12 col-md-12 col-sm-12">

		<!-- Top Header -->
		<div id="top-header" class="style2">

			<div class="row">

				<nav id="top-navigation" class="col-lg-12 col-md-12 col-sm-12">
					<ul class="pull-right">
						<c:if test="${!empty sessionScope.user}">
							<li><a href="${pageContext.request.contextPath}/information"><i
									class="fa fa-user"></i> ${sessionScope.user.username}</a></li>
							<li><a
								href="${pageContext.request.contextPath}/info/favorite"><i
									class="fa fa-heart"></i> 收藏夹</a></li>

							<li><a href="${pageContext.request.contextPath}/logout"><i
									class="fa fa-user"></i> 退出</a></li>
						</c:if>
						<c:if test="${empty sessionScope.user}">
							<li><a href="${pageContext.request.contextPath}/login"><i
									class="fa fa-user"></i> 登录</a></li>
							<li><a href="${pageContext.request.contextPath}/register"><i
									class="fa fa-user"></i> 注册</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/login"><i
									class="fa fa-user"></i> 管理员登录</a></li>
						</c:if>

					</ul>
				</nav>

			</div>

		</div>
		<!-- /Top Header -->



		<!-- Main Header -->
		<div id="main-header" class="style2">

			<div class="row">

				<div id="logo" class="col-lg-4 col-md-4 col-sm-4">
					<a href="home_v1.html"><img
						src="${pageContext.request.contextPath}/image/logo.png" alt="Logo"></a>
				</div>

				<nav id="middle-navigation" class="col-lg-8 col-md-8 col-sm-8">
					<ul class="pull-right">

						<li class="red"><a href="${pageContext.request.contextPath}/info/favorite"><i
								class="icons icon-heart-empty"></i>收藏夹</a></li>
						<li class="orange"><a href="${pageContext.request.contextPath}/showcart"><i
								class="icons icon-basket-2"></i>购物车</a></li>

					</ul>
				</nav>

			</div>

		</div>
		<!-- /Main Header -->


		<!-- Main Navigation -->
		<nav id="main-navigation" class="style5">
			<ul>

				<li class="home-green"><a
					href="${pageContext.request.contextPath}/main"> <span
						class="nav-caption">主页</span>
				</a></li>

				<li class="red"><a
					href="${pageContext.request.contextPath}/category?cate="> <span
						class="nav-caption">商品</span>
				</a></li>

				<li class="blue"><a
					href="${pageContext.request.contextPath}/information"> <span
						class="nav-caption">我的信息</span>
				</a></li>

				<li class="orange"><a
					href="${pageContext.request.contextPath}/info/list"> <span
						class="nav-caption">我的订单</span>
				</a></li>

				<li class="purple"><a
					href="${pageContext.request.contextPath}/info/address"> <span
						class="nav-caption">我的地址</span>
				</a></li>

				<!-- <li class="green">
								<a href="contact.html">
									<span class="nav-caption">Contact</span>
								</a>
							</li> -->

				<li class="nav-search"><i class="icons icon-search-1"></i></li>

			</ul>

			<div id="search-bar">
				<form action="${pageContext.request.contextPath}/search">
					<div class="col-lg-12 col-md-12 col-sm-12">

						<table id="search-bar-table">
							<tr>
								<td class="search-column-1"><input type="text"
									placeholder="搜索" name="keyword"></td>
							</tr>
						</table>

					</div>
					<div id="search-button">
					
						<input type="submit" value="搜索"> 
					</div>
				</form>
			</div>

		</nav>
		<!-- /Main Navigation -->

	</div>

</header>
<!-- /Header -->