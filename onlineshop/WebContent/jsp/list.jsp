<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="../css/index.css"/>
	<script src="../js/jquery-1.7.2.min.js"></script>
	<script src="../js/main.js"></script>
	<title>Document</title>
</head>
<body >

<div class="top" id="item4">
	<div class="container clearfix">
		<ul class="clearfix fr">
		<c:if test="${currentUser==null}">
			<li><a href="join.jsp" >登录</a></li>
			<li><a href="join.jsp#toregister" >注册</a></li>
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
			<a href="index.jsp"><img src="../images/logo4.png" alt=""/></a>
		</div>
		<div class="seacher fl">
			<form action="" method="post">
				<input type="text" placeholder="小伙伴，你想找什么?"/><input type="submit" value="搜 索"/>
			</form>
			<p>热门搜索：<a href="#">人类简史</a> <a href="#">小王子</a> <a href="#">白夜行</a> <a href="#">冰与火之歌</a> <a href="#">平凡的世界</a> <a href="#">鲁滨逊漂流记</a> <a href="#">芳华</a> <a href="#">考研大纲</a> <a href="#">镇墓兽</a> <a href="#">沙丘</a> <a href="#">西游记</a></p>
		</div>
		<div class="mm fr clearfix">
			<a href="list.jsp">我要买</a>
			<a href="edit.jsp">我要卖</a>
		</div>
	</div>
</div>

<div class="list-main">
	<div class="container">
		<div class="bread" style="margin-bottom: 0;">当前位置：
			<a href="index.jsp">首页</a> >
			<a href="list.jsp">列表</a>
		</div>
		<ul class="select">
			<li class="select-list">
				<dl id="select1">
					<dt>分类：</dt>
					<dd class="select-all selected"><a href="#">全部</a></dd>
					<c:forEach var="eachsort" items="${sorts}">
					<dd><a href="#"><c:out value="${eachsort.sortname}" /></a></dd>
					</c:forEach>
				</dl>
			</li>
			<li class="select-list">
				<dl id="select2">
					<dt>出版社：</dt>
					<dd class="select-all selected"><a href="#">全部</a></dd>
					<c:forEach var="eachsort" items="${publishments}">
					<dd><a href="#"><c:out value="${eachsort.pname}" /></a></dd>
					</c:forEach>
				</dl>
			</li>

			<li class="select-result">
				<dl>
					<dt>已选条件：</dt>
					<dd class="select-no">暂时没有选择过滤条件</dd>
				</dl>
			</li>
		</ul>
		<div class="tabs book clearfix" >
		<div id="bookList">
	
			</div>	
			<div class="clearfix"></div>
			<div class="page clearfix">
				<a href="#">首页</a>
				<a href="#">上一页</a>
				<a class="bg-blue" href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">下一页</a>
				<a href="#">尾页</a>
			</div>
		</div>

	</div>
</div>



<div class="foot">
	<hr>
<div class="foot" style="text-align:center;font-size:16px; margin:20px 0;color:#333	">
	本网站最终解释权归柠檬茶小组所有！
</div>
</div>
<script>
 var tem =`<dl>
	<dt><a href="{{href}}"><img src="../books/{{pic}}" alt="{{bookname}}"/></a></dt>
	<dd>
		<p><a href="#">{{bookname}}</a></p>
		<p><a href="#">数量：{{number}}</a></p>
		<p><a href="#">价格：{{price}}</a></p>

	</dd>
</dl>` 
	
var sort='全部'
var publishment ='全部'
var RES = null
	
	var option = {
			init:function(){
				this.getALLBook();
				this.navClick()
			},
			getALLBook:function(){
				$.ajax({
					  url: '../getBooks.do',
					  success: function(res){
						  console.log(res)
						  RES=res
						  var allBook='';
						  for(var i of res){
							  var t = tem.replace('{{bookname}}',i.bookname)
							   t = t.replace('{{bookname}}',i.bookname) 
							   t = t.replace('{{number}}',i.number) 
							   t = t.replace('{{price}}',i.price) 
							   t = t.replace('{{pic}}',i.pic) 
							   allBook += t;			
						  }
						  $("#bookList").append($(allBook))	   
					  },
					  dataType: 'json'
					});
				
			},
		    navClick:function(){
		    	var that = this;
		    	$('#select1 dd').click(function(e){
		    		sort = $(this).text()	
		    		that.select()
		    		
		    	})
		    	
		    	$('#select2 dd').click(function(e){
		    		publishment = $(this).text()
		    		that.select()
		    		
		    	})
		    	
		    	
		    },
			
			select:function(){
				console.log(sort,publishment,RES);
				var data = null
				if(sort == "全部" && publishment == '全部'){
					 data = RES}
				else if(sort != "全部" && publishment == '全部'){
					data = RES.filter(function(i){return i.sort == sort})
				}else if(sort == "全部" && publishment !='全部'){
					data = RES.filter(function(i){return i.publishment == publishment})
				}else if(sort != "全部" && publishment !='全部'){
					data = RES.filter(function(i){ return i.publishment == publishment && i.sort == sort})
				}
		 
				console.log(data,111)
				
				var allBook='';
				  for(var i of data){
					  var t = tem.replace('{{bookname}}',i.bookname)
					   t = t.replace('{{bookname}}',i.bookname) 
					   t = t.replace('{{number}}',i.number)
					   t = t.replace('{{price}}',i.price)
					   t = t.replace('{{pic}}',i.pic) 
					   allBook += t;			
				  }
				  $("#bookList").html('')	 
				  $("#bookList").append($(allBook))	 
				
			}
			
	}
	
	option.init()
	
 
	
	
</script>
</body>
</html>