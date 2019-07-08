<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>柠檬二手书网</title>
<script src="../js/jquery-1.11.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/index.css" />
<link rel="stylesheet" type="text/css" href="../css/animate-custom.css" />
</head>
<body style="background: #fff url(images/bg.jpg) repeat top left;">

<div id="container_demo" >
	<a class="hiddenanchor" id="toregister"></a>
	<a class="hiddenanchor" id="tologin"></a>
	<div id="wrapper">
		<div id="login" class="animate form">
			<form  action="../login.do" autocomplete="on" method="post">
				<h1>登录</h1>
				<p>
					<label for="username" class="uname" data-icon="u" >您的用户名</label>
					<input id="username" name="username" required="required" type="text" placeholder="请输入用户名"/>
				</p>
				<p>
					<label for="password" class="youpasswd" data-icon="p">你的密码</label>
					<input id="password" name="password" required="required" type="password" placeholder="请输入密码" />
				</p>
				<p>
				<div  class="yzmkk" >
				    <img alt="验证码" src="../makecode.do" >
					<div class="yzmkbq" ><a >看不清?</a></div>
				</div>
                    
					<input id="yzmsrk" name="verification" required="required"  placeholder="请输入验证码"/>
				</p>
				<p class="keeplogin">
					<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />
					<label for="loginkeeping">保持登录状态</label>
				</p>
				<p class="login button">
					<input type="submit" value="登录" />
				</p>
				<p class="change_link">
					不是成员?<a  class="to_register" id="toregister1">加入我们</a>
				</p>
			</form>
		</div>

		<div id="register" class="animate form">
			<form  action="../register.do" autocomplete="on">
				<h1>注册</h1>
				<p>
					<label for="usernamesignup" class="uname" data-icon="u">用户名</label>
					<input id="usernamesignup" name="username" required="required" type="text" placeholder="用户名" />
				</p>
				<p>
					<label for="passwordsignup" class="youpasswd" data-icon="p">密码</label>
					<input id="passwordsignup" name="password" required="required" type="password" placeholder="密码"/>
				</p>
				<p>
					<label for="passwordsignup_confirm" class="youpasswd" data-icon="p">确认密码</label>
					<input id="passwordsignup_confirm" name="password_confirm" required="required" type="password" placeholder="确认密码"/>
				</p>
				<p>
				<div  class="yzmkk" ><img alt="验证码" src="../makecode.do" >
				<div class="yzmkbq" ><a>看不清?</a></div>
				</div>
                    
					<input id="yzmsrk" name="verification" required="required"  placeholder="请输入验证码"/>
				</p>
				<p class="signin button">
					<input type="submit" value="注册"/>
				</p>
				<p class="change_link">
					已经是成员?<a href="#tologin" class="to_register"> 去登录 </a>
				</p>
			</form>
		</div>

	</div>

</div>

<script>
console.dir($('#toregister1'));


  $("#toregister1").click(function(){
	  console.log(123)
	  window.location.href='/onlineshop/jsp/join.jsp#toregister'
	  
  });
 
 $('.yzmkk').click(function(e){
	 $(this).find('img')[0].src='../makecode.do?'+ new Date()
	
 })
    
</script>

</body>
</html>