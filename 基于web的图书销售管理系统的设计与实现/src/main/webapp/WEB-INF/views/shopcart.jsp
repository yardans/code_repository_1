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
<jsp:include page="style.jsp"></jsp:include>
   <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shopcart.css">
    <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/sort.js"></script>
    <script src="${pageContext.request.contextPath}/js/holder.js"></script>
    <script src="${pageContext.request.contextPath}/js/shopcart.js"></script>
    <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">
</head>

<body>
<div class="container">
	<jsp:include page="header.jsp" />
	
	
	
	
	<div class="shopping_cart" style="margin-top: 20px;">
		
			
			<div class="row">
				<div class="all_wis_frm">
					<div class="col-md-12">
						<div class="wishlist-content wishlist-content-2">
							<form action="#">
								<div class="wishlist-table wishlist-table-2 table-responsive">
									<table id="cart-table">
										<thead>
											<tr>
												<th class="product-remove"><span class="nobr"></span></th>
												<th class="product-thumbnail product-thumbnail-2"></th>
												<th class="product-name product-name_2"><span
													class="nobr">商品</span></th>
												<th class="product-price"><span class="nobr"> 价格
												</span></th>
												<th class="product-stock-stauts"><span class="nobr">
														数量 </span></th>
												<th class="product-add-to-cart"><span class="nobr">总价</span></th>
											</tr>

										</thead>
										<tbody>




										</tbody>
										<%--<tfoot>
                                    <tr>
                                        <td colspan="6">
                                            <div class="coupon">
                                                <!-- <label for="coupon_code"></label>
                                                    <input id="coupon_code" class="input-text" type="text" placeholder="Coupon code" value="" name="coupon_code"> -->
                                                <a
                                                        class="button_act button_act_3 button_act_333 button_act_tp "
                                                        href="./shopcart.jsp">更新购物车</a>
                                                <!-- <a class="button_act btn-tip " href="#">Update cart</a> -->
                                            </div>
                                        </td>
                                    </tr>
                                    </tfoot>--%>
									</table>
								</div>
							</form>
							<div class="cart_totals pull-right" id="cart-form" style="">
								<h2>合计</h2>

								<table cellspacing="0">
									<tbody>
										<tr class="cart-subtotal">
											<th>小计</th>
											<td><span class="amount" id="total-num"></span></td>
										</tr>

										<tr class="shipping">
											<th>运费</th>
											<td>免费配送</td>
										</tr>

										<tr class="order-total">
											<th>总额</th>
											<td><strong><span class="amount"
													id="total-price"></span></strong></td>
										</tr>
										<tr>
											<td class="actions" colspan="6">
												<form action="${pageContext.request.contextPath}/order">

													<input type="submit" value="确认订单" name="proceed"
														class="pull-right checkout-button button alt wc-forward">
												</form>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			
		</div>
	</div>
	<div id="path" hidden>${pageContext.request.contextPath}</div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
