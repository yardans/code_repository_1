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
						<c:if test="${!empty sessionScope.admin}">
							<li><a><i
									class="fa fa-user"></i> ${sessionScope.admin.adminname}</a></li>
							

							<li><a href="${pageContext.request.contextPath}/admin/logout"><i
									class="fa fa-user"></i> 退出</a></li>
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
					href="${pageContext.request.contextPath}/admin/user/show"> <span
						class="nav-caption">用户管理</span>
				</a></li>

				<li class="blue"><a
					href="${pageContext.request.contextPath}/admin/goods/show"> <span
						class="nav-caption">商品管理</span>
				</a></li>

				<li class="orange"><a
					href="${pageContext.request.contextPath}/admin/order/send"> <span
						class="nav-caption">订单管理</span>
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