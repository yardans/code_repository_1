<%@page import="java.security.interfaces.RSAKey"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ustora Demo</title>

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

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<script src="${pageContext.request.contextPath}/js/jquery.js"></script>

<script
	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sort.js"></script>
<script src="${pageContext.request.contextPath}/js/holder.js"></script>
    <jsp:include page="style.jsp"></jsp:include>
<script
	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>


    <script src="${pageContext.request.contextPath}/js/validate.js"></script>

</head>

<body>
  
<div id="main" class="container" >
<%@ include file="header.jsp"%>
    <div id="header">
      
    </div>
    <div class="login" style="margin-bottom: 10px;">
        <div class="row">
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/image/login.jpg" alt="" style="">
            </div>
            <div class="col-md-5 form-register">
                <div>
                    <!-- <h2 class="login-h2">登录</h2> -->
                    <form class="form-horizontal" id="form" action="${pageContext.request.contextPath}/registerresult"
                          method="post">
                        <div class="form-group">
                            <!-- <label for="inputName" class="col-sm-2 control-label">昵称</label> -->
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="username"
                                       name="username" placeholder="昵称">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- <label for="inputPassword" class="col-sm-2 control-label">密码</label> -->
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="password"
                                       name="password" placeholder="密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- <label for="confirmPassword" class="col-sm-2 control-label">确认密码</label> -->
                            <div class="col-sm-10">
                                <input type="password" class="form-control"
                                       id="confirmPassword" name="confirmPassword" placeholder="确认密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- <label for="inputTel" class="col-sm-2 control-label">联系方式</label> -->
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="email"
                                       name="email" placeholder="邮箱">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- <label for="inputTel" class="col-sm-2 control-label">联系方式</label> -->
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="telephone"
                                       name="telephone" placeholder="联系方式">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-10">
                                <input type="hidden" name="flag" id="flag" value="1"> <input
                                    type="submit" class="btn btn-primary form-control" value="注册">
                                <div class="error">
                                    ${errorMsg}
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>