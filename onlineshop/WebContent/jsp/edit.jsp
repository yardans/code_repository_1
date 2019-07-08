<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/index.css" />
<link rel="stylesheet" href="../css/font-awesome.min.css" />
<script src="../js/jquery-1.11.2.min.js"></script>
<script src="../js/main.js"></script>
<script type="text/javascript">
	//图片上传预览    IE是用了滤镜。
	function previewImage(file) {
		var MAXWIDTH = 260;
		var MAXHEIGHT = 180;
		var div = document.getElementById('preview');
		if (file.files && file.files[0]) {
			div.innerHTML = '<img id=imghead>';
			var img = document.getElementById('imghead');
			img.onload = function() {
				var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT,
						img.offsetWidth, img.offsetHeight);
				img.width = rect.width;
				img.height = rect.height;
				//                 img.style.marginLeft = rect.left+'px';
				img.style.marginTop = rect.top + 'px';
			}
			var reader = new FileReader();
			reader.onload = function(evt) {
				img.src = evt.target.result;
			}
			reader.readAsDataURL(file.files[0]);
		} else //兼容IE
		{
			var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
			file.select();
			var src = document.selection.createRange().text;
			div.innerHTML = '<img id=imghead>';
			var img = document.getElementById('imghead');
			img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
			var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth,
					img.offsetHeight);
			status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width
					+ ',' + rect.height);
			div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
		}
	}
	function clacImgZoomParam(maxWidth, maxHeight, width, height) {
		var param = {
			top : 0,
			left : 0,
			width : width,
			height : height
		};
		if (width > maxWidth || height > maxHeight) {
			rateWidth = width / maxWidth;
			rateHeight = height / maxHeight;

			if (rateWidth > rateHeight) {
				param.width = maxWidth;
				param.height = Math.round(height / rateWidth);
			} else {
				param.width = Math.round(width / rateHeight);
				param.height = maxHeight;
			}
		}

		param.left = Math.round((maxWidth - param.width) / 2);
		param.top = Math.round((maxHeight - param.height) / 2);
		return param;
	}
</script>
<title>易书网</title>
</head>
<style>
.help-main {
	padding: 0;
}

select {
	padding: 3px 10px;
}
</style>
<body>

	<div class="top" id="item4">
		<div class="container clearfix">
			<ul class="clearfix fr">
				<c:if test="${currentUser==null}">
					<li><a href="join.jsp">登录</a></li>
					<li><a href="join.jsp#toregister">注册</a></li>
				</c:if>
				<c:if test="${currentUser!=null }">
					<li>欢迎您：${currentUser.username}</li>
					<li><a href="../logout.do">注销</a></li>
					<li><a href="member.jsp" style="border: none">个人中心</a></li>
				</c:if>
			</ul>
		</div>
	</div>

	<div class="header">
		<div class="container clearfix">
			<div class="logo fl">
				<a href="index.jsp"><img src="../images/logo4.png" alt="" /></a>
			</div>
			<div class="seacher fl">
				<form action="" method="post">
					<input type="text" placeholder="小伙伴，你想找什么?" /><input type="submit"
						value="搜 索" />
				</form>
				<p>
					热门搜索：<a href="#">自行车</a> <a href="#">笔记本</a> <a href="#">散热器</a> <a
						href="#">考研资料</a> <a href="#">摩托车</a> <a href="#">手机</a> <a
						href="#">轮滑鞋</a> <a href="#">显示器</a> <a href="#">显示器</a> <a
						href="#">显示器</a> <a href="#">显示器</a>
				</p>
			</div>
			<div class="mm fr clearfix">
				<a href="list.jsp">我要买</a> <a href="edit.jsp">我要卖</a>
			</div>
		</div>
	</div>

	<div class="help-wrap">
		<div class="container clearfix">
			<div class="bread">
				当前位置： <a href="index.jsp">首页</a> > <a href="member.jsp">个人中心</a> > <a
					href="../edit.jsp">编辑发布</a>
			</div>
			<div class="help-l fl">
				<div class="help-item">
					<div class="help-item-title">
						个人中心 <a href="javascript:void(0)" class="abs"></a>
					</div>
					<div class="help-item-list">
						<ul>
							<li><a href="member.html">个人信息</a></li>
							<li><a href="password.html">修改密码</a></li>
						</ul>
					</div>
				</div>
				<div class="help-item">
					<div class="help-item-title">
						书籍管理 <a href="javascript:void(0)" class="abs"></a>
					</div>
					<div class="help-item-list">
						<ul>
							<li><a href="published.html">已发布</a></li>
							<li><a href="bought.html">已买书籍</a></li>
							<li><a href="publish.html">发布书籍</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="help-r fr">
				<div class="help-item-title">发布书籍</div>
				<div class="help-main">
					<form action="../iwannaself.do" method="post"
						enctype="multipart/form-data">
						<div class="product-edit-item clearfix">
							<div class="product-edit-item-l fl">
								<div class="fr">
									<i class="middle">*</i>图书分类：
								</div>
							</div>
							<div class="product-edit-item-r fl">
								<select name="sortname">
									<c:forEach var="eachsort" items="${sorts}">
										<option value="${eachsort.sortname}">${eachsort.sortname}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="product-edit-item clearfix">
							<div class="product-edit-item-l fl">
								<div class="fr">
									<i class="middle">*</i>图书所属出版社：
								</div>
							</div>
							<div class="product-edit-item-r fl">
								<select name="publishment">
									<c:forEach var="eachpublishment" items="${publishments}">
										<option value="${eachpublishment.pname}">${eachpublishment.pname}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="product-edit-item clearfix">
							<div class="product-edit-item-l fl clearfixc">
								<div class="fr">
									<i class="middle">*</i>图书名称：
								</div>
							</div>
							<div class="product-edit-item-r fl">
								<input type="text" value="" style="width: 410px"
									name="bookname">
								<p>图书标题名称长度至少3个字符，最长50个汉字</p>
							</div>
						</div>
						<div class="product-edit-item clearfix">
							<div class="product-edit-item-l fl clearfixc">
								<div class="fr">
									<i class="middle">*</i>图书价格：
								</div>
							</div>
							<div class="product-edit-item-r fl">
								<input type="text" value="" style="width: 60px" name="price"><em
									class="add-on"><i class="icon-renminbi"></i></em>
								<p>
									价格必须是0.01~9999999之间的数字，且不能高于市场价。<br>此价格为图书实际销售价格，如果图书存在规格，该价格显示最低价格。
								</p>
							</div>
						</div>
						<div class="product-edit-item clearfix">
							<div class="product-edit-item-l fl clearfixc">
								<div class="fr">
									<i class="middle">*</i>图书描述：
								</div>
							</div>
							<div class="product-edit-item-r fl">
								<textarea name="desc" cols="30" rows="10"></textarea>
								<p>请如实描述你所发布书籍的详细情况，以方便其他会员购买！</p>
							</div>
						</div>
						<div class="product-edit-item clearfix">
							<div class="product-edit-item-l fl clearfixc">
								<div class="fr">
									<i class="middle">*</i>上传封面：
								</div>

							</div>
							<div class="product-edit-item-r fl">
								<div id="preview">
									<img id="imghead" border=0 src="images/book.jpg" />
								</div>
								<input type="file" name="file" onchange="previewImage(this)" />
								<p>请上传图书封面，尽量保持图片清晰</p>
							</div>
						</div>
						<div class="product-edit-item clearfix">
							<div class="product-edit-item-l fl clearfixc"
								style="border: none; border-top: 1px solid #E6E6E6"></div>
							<div class="product-edit-item-r fl"
								style="border: none; border-top: 1px solid #E6E6E6"></div>
						</div>
						<div class="upload">
							<label><input type="submit" value="点击保存"></label>
						</div>
					</form>





				</div>
			</div>
		</div>
	</div>




	<div class="foot">
		<div class="container">
			<hr>
<div class="foot" style="text-align:center;font-size:16px; margin:20px 0;color:#333	">
	本网站最终解释权归柠檬茶小组所有！
</div>
			<div class="line"></div>

			<div class="bottom"></div>
		</div>
	</div>

</body>
</html>