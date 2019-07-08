<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>

<jsp:include page="style.jsp"></jsp:include>

</head>


<body>

	<!-- Container -->
	<div class="container">

		<jsp:include page="header.jsp"></jsp:include>


		<!-- Content -->
		<div class="row content">

			<!-- Main Content -->
			<section class="main-content col-lg-12 col-md-12 col-sm-12">

				<!-- Slider -->
				<div class="iosSlider">
					<div class="slider">

						<div class="item" id="item1">

							<div class="image">
								<div class="bg"></div>
							</div>

							<div class="text">

								<div class="bg"></div>

								<div class="title">
									<h2>
										 <strong>Surface Book 2<br> 焕新登场</strong>
									</h2>
								</div>

								<div class="desc">
									<h3>性能巨匠</h3>
									<span>现售 <span class="price">￥4990.00</span></span>
								</div>

								

							</div>

						</div>

						<div class="item" id="item2">

							<div class="image">
								<div class="bg"></div>
							</div>

							<div class="text">

								<div class="bg"></div>

								<div class="title">
									<h2>
										<strong>音乐<br>Beats
										</strong>
									</h2>
								</div>

								<div class="desc">
									<h3>贴合你的生活节奏</h3>
									<span>现售 <span class="price">￥3200.00</span></span>
								</div>

								

							</div>

						</div>

						<div class="item" id="item3">

							<div class="image">
								<div class="bg"></div>
							</div>

							<div class="text">

								<div class="bg"></div>

								<div class="title">
									<h2>
										<strong>Book</strong>
									</h2>
								</div>

								<div class="desc">
									<h3>感动常在</h3>
									<span>现售 <span class="price">￥599.00</span></span>
								</div>

								
							</div>

						</div>

					</div>

					<div class='prevButton'></div>

					<div class='nextButton'></div>

				</div>
				<!-- /Slider -->



				<!-- Banner -->
				<section class="banner">

					<div class="left-side-banner banner-item icon-on-right gray">
						<h4>800-888-8888</h4>
						<p>周一至周五 8:00 - 18:00</p>
						<i class="icons icon-phone-outline"></i>
					</div>

				
						<div class="middle-banner banner-item icon-on-right light-blue">
							<h4>免费配送</h4>
							<p>所有商品满199免费配送，一如既往为您提供高品质服务</p>
							 <i
								class="icons icon-truck-1"></i>
						</div>
					
						<div class="right-side-banner banner-item orange">
							<h4>抢购中</h4>
							<p>全部白菜价，抢购即日开始</p>
							
						</div>
					

				</section>
				<!-- /Banner -->



				<!-- Featured Products -->
				<div class="products-row row">

					<!-- Carousel Heading -->
					<div class="col-lg-12 col-md-12 col-sm-12">

						<div class="carousel-heading">
							<h4>热卖排行</h4>
							<div class="carousel-arrows">
								<i class="icons icon-left-dir"></i> <i
									class="icons icon-right-dir"></i>
							</div>
						</div>

					</div>
					<!-- /Carousel Heading -->

					<!-- Carousel -->
					<div
						class="carousel owl-carousel-wrap col-lg-12 col-md-12 col-sm-12">

						<div class="owl-carousel" data-max-items="4">



							<!-- Slide -->
							<c:forEach items="${goodsList2}" var="goods">
								<div>

									<!-- Carousel Item -->

									<div class="product">

										<div class="product-image">
											<span class="product-tag">热卖</span> <img
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

											</span> <span class="add-to-favorites" onclick=" window.location.href='${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}';"> <span
												class="action-wrapper"> <i
													class="icons icon-eye-1"></i> <span
													class="action-name">查看详情</span>
											</span>
											</span>

										</div>

									</div>

									<!-- /Carousel Item -->
								</div>
							</c:forEach>
							<!-- /Slide -->




						</div>
					</div>
					<!-- /Carousel -->

				</div>
				<!-- /Featured Products -->




				<!-- New Collection -->
				<div class="products-row row">

					<!-- Carousel Heading -->
					<div class="col-lg-12 col-md-12 col-sm-12">

						<div class="carousel-heading">
							<h4>最新上市</h4>
							<div class="carousel-arrows">
								<i class="icons icon-left-dir"></i> <i
									class="icons icon-right-dir"></i>
							</div>
						</div>

					</div>
					<!-- /Carousel Heading -->
					<!-- Carousel -->
					<div
						class="carousel owl-carousel-wrap col-lg-12 col-md-12 col-sm-12">

						<div class="owl-carousel" data-max-items="4">



							<!-- Slide -->
							<c:forEach items="${goodsList}" var="goods">
								<div>

									<!-- Carousel Item -->

									<div class="product">

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

											</span> <span class="add-to-favorites" onclick=" window.location.href='${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}';"> <span
												class="action-wrapper"> <i
													class="icons icon-eye-1"></i> <span
													class="action-name">查看详情</span>
											</span>
											</span>

										</div>

									</div>

									<!-- /Carousel Item -->
								</div>
							</c:forEach>
							<!-- /Slide -->

						</div>
					</div>
					<!-- /Carousel -->

				</div>
				<!-- /New Collection -->
				
				<!-- New Collection -->
				<div class="products-row row">

					<!-- Carousel Heading -->
					<div class="col-lg-12 col-md-12 col-sm-12">

						<div class="carousel-heading">
							<h4>推荐商品</h4>
							<div class="carousel-arrows">
								<i class="icons icon-left-dir"></i> <i
									class="icons icon-right-dir"></i>
							</div>
						</div>

					</div>
					<!-- /Carousel Heading -->
					<!-- Carousel -->
					<div
						class="carousel owl-carousel-wrap col-lg-12 col-md-12 col-sm-12">

						<div class="owl-carousel" data-max-items="4">



							<!-- Slide -->
							<c:forEach items="${goodsList3}" var="goods">
								<div>

									<!-- Carousel Item -->

									<div class="product">

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

											</span> <span class="add-to-favorites" onclick=" window.location.href='${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}';"> <span
												class="action-wrapper"> <i
													class="icons icon-eye-1"></i> <span
													class="action-name">查看详情</span>
											</span>
											</span>

										</div>

									</div>

									<!-- /Carousel Item -->
								</div>
							</c:forEach>
							<!-- /Slide -->

						</div>
					</div>
					<!-- /Carousel -->

				</div>
				<!-- /New Collection -->
				


			</section>
			<!-- /Main Content -->


		</div>
		<!-- /Content -->


		<jsp:include page="footer.jsp"></jsp:include>


		<div id="back-to-top">
			<i class="icon-up-dir"></i>
		</div>

	</div>
	<!-- Container -->






</body>

</html>
