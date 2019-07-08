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

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shopcart.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/sweetalert.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/order.css">
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets//js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.sticky.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.min.js"></script>
	<jsp:include page="style.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/js/sort.js"></script>
<script src="${pageContext.request.contextPath}/js/holder.js"></script>

<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/js/order.js"></script>
</head>

<body>




<div class="shopping_cart">
    <div class="container">
        <jsp:include page="header.jsp"/>

        <%--确认收货地址--%>
        <h4 class="header-border h4-mar">确认收货地址<a href="${pageContext.request.contextPath}/info/address" class="pull-right manage-a">管理收货地址</a></h4>

        <%--<form action="" method="post">--%>
        <div class="address">
            <c:forEach items="${address}" var="addItem">
                <div class="radio">
                    <label>
                        <input type="radio" name="addressid" class="address-check" value="${addItem.addressid}"
                               checked>
                            ${addItem.province} ${addItem.city} ${addItem.county}  ${addItem.detailaddr}（${addItem.conname}收）${addItem.contel}
                    </label>
                </div>
            </c:forEach>
        </div>

        <%--商品信息--%>
        <h4 class="header-border h4-mar-2">确认收货信息</h4>
        <div class="row">
            <div class="all_wis_frm">
                <div class="col-md-12">
                    <div class="wishlist-content wishlist-content-2">

                        <div class="wishlist-table wishlist-table-2 table-responsive">
                            <table id="cart-table">
                                <thead>
                                <tr>
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
                                <%--<c:set var="oldTotalPrice" value="0"/>--%>
                                <c:forEach items="${goodsAndImage}" var="goods">
                                    <tr>
                                        <td class="product-thumbnail product-thumbnail-2"><a
                                                href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}">
                                                <%-- <img
                                                src="/shopimage/${goods.imagePaths[0].path}"
                                                alt=""/> --%>
                                                </a></td>
                                        <td class="product-name product-name_2"><a
                                                href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}">${goods.goodsname}</a>
                                        </td>
                                        <td class="product-price"><span
                                                class="amount-list amount-list-2">￥${goods.price}</span></td>
                                        <td class="product-stock-status">
                                            <div class="latest_es_from_2">
                                                <span>${goods.num}</span>
                                            </div>
                                        </td>
                                        <td class="product-price"><span
                                                class="amount-list amount-list-2">￥${goods.newPrice}</span></td>
                                        <%--<c:set value="${oldTotalPrice+goods.price*goods.num*goods.activity.discount}" var="oldTotalPrice"/>--%>
                                    </tr>
                                </c:forEach>

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
                        <div class="row">
                            <div class="col-md-5 col-xs-12 form-group form-group-lg">
                                <label class="col-sm-2 control-label" for="pay-select">选择支付方式</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="pay-select">
                                        <option value="1">在线支付</option>
                                        <option value="0">货到付款</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6 col-md-offset-1 col-xs-12">
                                <div class="cart_totals">
                                    <h2>总价</h2>
                                    <table class="shop_table shop_table_responsive">
                                        <tbody>
                                        <tr class="cart-subtotal">
                                            <th>总额</th>
                                            <td data-title="Subtotal"><span
                                                    class="woocommerce-Price-amount amount">￥<span
                                                    class="woocommerce-Price-currencySymbol"
                                                    id="total-old">${oldTotalPrice}</span>
													</span></td>
                                        </tr>
                                        <tr class="order-total">
                                            <th>实付款</th>
                                            <td data-title="Total"><strong> <span
                                                    class="woocommerce-Price-amount amount">￥<span
                                                    class="woocommerce-Price-currencySymbol"
                                                    id="total-new">${totalPrice}</span>
														</span>
                                            </strong></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="wc-proceed-to-checkout">
                                        <%--<input type="submit" class="button_act button_act-tc confirm-orders" value="结算"/>--%>
                                        <button id="confirm-orders"
                                                class="button_act button_act-tc confirm-orders pull-right">结算
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--</form>--%>
<jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
<div id="path" hidden>${pageContext.request.contextPath}</div>

</body>
</html>

