<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="../css/index.css"/>
	<link rel="stylesheet" href="../css/swiper3.07.min.css"/>
	<script src="../js/jquery-1.11.2.min.js"></script>
	<script src="../js/main.js"></script>
	<script src="../js/koala.min.1.5.js"></script>
	<style>
		.swiper-container {
			width: 1100px;
			height: 300px;
			margin: 0 auto;
		}
	</style>
	<title>柠檬二手书网</title>
</head>
<body>
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
			<li><a href="../yesorno.do" style="border: none">个人中心</a></li>
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
			<a href="../iwannabuy.do">我要买</a>
			<a href="../edit.do">我要卖</a>
		</div>
	</div>
</div>

<div class="banner container">

	<div class="clearfix">
		<div class="about fl">
			<h1>柠檬二手书网</h1>
			<img src="../images/logo9.png" alt=""/>
			<p><span>柠檬二手书网</span>是一个网上书商城。力求打造网上最大的中文图书借换系统二手书交换系统力求打造是是网上最大的中文图书借换系统二手书交换系统。柠檬二手书网来了,让爱书的你花极小的支出(1到2元)就可以读到你喜欢的书且没有后顾之忧哦！</p>
		</div>
		<div id="fsD1" class="focus fl">
			<div id="D1pic1" class="fPic">
				<div class="fcon">
					<a href="index.jsp"><img src="../images/focus1.jpg" /></a>
					<span class="shadow"><a href="index.jsp">柠檬二手书网，便宜的购书网</a></span>
				</div>
				<div class="fcon">
					<a href="detail.html"><img src="../images/focus2.jpg" /></a>
					<span class="shadow"><a href="detail.html">海外购物节，数万图书大甩卖</a></span>
				</div>
				<div class="fcon">
					<a href="detail.html"><img src="../images/focus3.jpg" /></a>
					<span class="shadow"><a href="detail.html">阅无线，悦无限</a></span>
				</div>
				<div class="fcon">
					<a href="detail.html"><img src="../images/focus4.jpg" /></a>
					<span class="shadow"><a href="detail.html">《镇墓兽》：一场镇墓兽与盗贼的终极对决</a></span>
				</div>
				<div class="fcon">
					<a href="detail.html"><img src="../images/focus5.jpg" /></a>
					<span class="shadow"><a href="detail.html">《沙丘2：沙丘救世主》：一生不可不读的小说经典</a></span>
				</div>
			</div>

			<div class="fbg">
				<div class="D1fBt" id="D1fBt">
					<a href="javascript:void(0)" class="current"><i>1</i></a>
					<a href="javascript:void(0)"><i>2</i></a>
					<a href="javascript:void(0)"><i>3</i></a>
					<a href="javascript:void(0)"><i>4</i></a>
					<a href="javascript:void(0)"><i>5</i></a>
				</div>
			</div>
		</div>
		<div class="help fr">
			<h2>最新公告</h2>
			<ul>
				<li><a href="./大学综合英语.html">新书上架-大学综合英语</a></li>
				<li><a href="./市场营销.html">新书上架-市场营销</a></li>
				<li><a href="./大学物理学.html">新书上架-大学物理</a></li>
				<li><a href="./大学俄语.html">新书上架-大学俄语</a></li>
				<li><a href="./法律逻辑学.html">新书上架-法律逻辑学</a></li>
			</ul>
			<h2>分享推荐</h2>
			<ul>
				<li><a href="https://baike.baidu.com/item/%E8%8C%B6%E8%8A%B1%E5%A5%B3/1398?fr=aladdin">茶花女</a></li>
				<li><a href="https://baike.baidu.com/item/%E7%AE%80%C2%B7%E7%88%B1/5526?fr=aladdin&fromid=379080&fromtitle=%E7%AE%80%E7%88%B1">简爱</a></li>
			</ul>
		</div>
	</div>
	<div class="item clearfix" id="item1">
		<h1>教材区<span></span>
			<!--<a href="list.html">+更多</a>-->
		</h1>
		<div class="list fl">
			<ul class="one">
				<li><a href="https://baike.baidu.com/item/%E6%B3%95%E5%AD%A6/23558?fr=aladdin">法学</a>
					<ul class="two">
					    <li><a href="http://www.pup.cn/main/">北京大学出版社</a></li>
						<li><a href="http://www.cmpedu.com/">机械工业出版社</a></li>
						<li><a href="http://www.ccap.com.cn/">中国农业出版社</a></li>
						<li><a href="http://press.xjtu.edu.cn/">西安交通大学出版社</a></li>
						<li><a href="http://www.hep.com.cn/">北京高教电子音像出版社</a></li>
						<li><a href="http://www.bitpress.com.cn">北京理工大学出版社</a></li>

					</ul>
				</li>
				<li><a href="#">教育学</a>
					<ul class="two">
						<li><a href="http://www.pup.cn/main/">北京大学出版社</a></li>
						<li><a href="http://www.cmpedu.com/">机械工业出版社</a></li>
						<li><a href="http://www.ccap.com.cn/">中国农业出版社</a></li>
						<li><a href="http://press.xjtu.edu.cn/">西安交通大学出版社</a></li>
						<li><a href="http://www.hep.com.cn/">北京高教电子音像出版社</a></li>
						<li><a href="http://www.bitpress.com.cn">北京理工大学出版社</a></li>
					</ul>
				</li>
				<li><a href="#">文学</a>
					<ul class="two">
						<li><a href="http://www.pup.cn/main/">北京大学出版社</a></li>
						<li><a href="http://www.cmpedu.com/">机械工业出版社</a></li>
						<li><a href="http://www.ccap.com.cn/">中国农业出版社</a></li>
						<li><a href="http://press.xjtu.edu.cn/">西安交通大学出版社</a></li>
						<li><a href="http://www.hep.com.cn/">北京高教电子音像出版社</a></li>
						<li><a href="http://www.bitpress.com.cn">北京理工大学出版社</a></li>
					</ul>
				</li>
				<li><a href="#">理学</a>
					<ul class="two">
						<<li><a href="http://www.pup.cn/main/">北京大学出版社</a></li>
						<li><a href="http://www.cmpedu.com/">机械工业出版社</a></li>
						<li><a href="http://www.ccap.com.cn/">中国农业出版社</a></li>
						<li><a href="http://press.xjtu.edu.cn/">西安交通大学出版社</a></li>
						<li><a href="http://www.hep.com.cn/">北京高教电子音像出版社</a></li>
						<li><a href="http://www.bitpress.com.cn">北京理工大学出版社</a></li>
					</ul>
				</li>
				<li><a href="#">工学</a>
					<ul class="two">
						<li><a href="http://www.pup.cn/main/">北京大学出版社</a></li>
						<li><a href="http://www.cmpedu.com/">机械工业出版社</a></li>
						<li><a href="http://www.ccap.com.cn/">中国农业出版社</a></li>
						<li><a href="http://press.xjtu.edu.cn/">西安交通大学出版社</a></li>
						<li><a href="http://www.hep.com.cn/">北京高教电子音像出版社</a></li>
						<li><a href="http://www.bitpress.com.cn">北京理工大学出版社</a></li>
					</ul>
				</li>
				<li><a href="#">农学</a>
					<ul class="two">
						<li><a href="http://www.pup.cn/main/">北京大学出版社</a></li>
						<li><a href="http://www.cmpedu.com/">机械工业出版社</a></li>
						<li><a href="http://www.ccap.com.cn/">中国农业出版社</a></li>
						<li><a href="http://press.xjtu.edu.cn/">西安交通大学出版社</a></li>
						<li><a href="http://www.hep.com.cn/">北京高教电子音像出版社</a></li>
						<li><a href="http://www.bitpress.com.cn">北京理工大学出版社</a></li>
					</ul>
				</li>
				<li><a href="#">医学</a>
					<ul class="two">
						<li><a href="http://www.pup.cn/main/">北京大学出版社</a></li>
						<li><a href="http://www.cmpedu.com/">机械工业出版社</a></li>
						<li><a href="http://www.ccap.com.cn/">中国农业出版社</a></li>
						<li><a href="http://press.xjtu.edu.cn/">西安交通大学出版社</a></li>
						<li><a href="http://www.hep.com.cn/">北京高教电子音像出版社</a></li>
						<li><a href="http://www.bitpress.com.cn">北京理工大学出版社</a></li>
					</ul>
				</li>
				<li><a href="#">管理学</a>
					<ul class="two">
						<li><a href="http://www.pup.cn/main/">北京大学出版社</a></li>
						<li><a href="http://www.cmpedu.com/">机械工业出版社</a></li>
						<li><a href="http://www.ccap.com.cn/">中国农业出版社</a></li>
						<li><a href="http://press.xjtu.edu.cn/">西安交通大学出版社</a></li>
						<li><a href="http://www.hep.com.cn/">北京高教电子音像出版社</a></li>
						<li><a href="http://www.bitpress.com.cn">北京理工大学出版社</a></li>
					</ul>
				</li>
			</ul>
		</div>

		<div class="book-wrap fr">
			<div class="book clearfix">
				<dl>
					<dt><a href="../大学生就业指导.html"><img src="../images/jiaocai1.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="大学生就业指导.html">大学生就业指导与发展活动教程</a></p>
						<p>数量：99</p>
						<p><s>价格：￥23.00</s> ￥7.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../大学综合英语.html"><img src="../images/jiaocai2.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="大学综合英语.html">大学综合英语</a></p>
						<p>数量：99</p>
						<p><s>价格：￥26.00</s> ￥12.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../市场营销.html"><img src="../images/jiaocai3.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="市场营销.html">市场营销</a></p>
						<p>数量：99</p>
						<p><s>价格：￥27.50</s> ￥15.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../大学物理教程上.html"><img src="../images/jiaocai4.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="大学物理教程上.html">大学物理教程（上）</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25.00</s> ￥16.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../大学物理学.html"><img src="../images/jiaocai5.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="大学物理学.html">大学物理学</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25.00</s> ￥17.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../ACCESS数据库技术与应用.html"><img src="../images/jiaocai6.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="ACCESS数据库技术与应用.html">ACCESS数据库技术与应用</a></p>
						<p>数量：99</p>
						<p><s>价格：￥31.00</s> ￥13.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../大学信息技术.html"><img src="../images/jiaocai7.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="大学信息技术.html">大学信息技术</a></p>
						<p>数量：99</p>
						<p><s>价格：￥26.00</s> ￥14.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../大学计算机-计算，构造与设计.html"><img src="../images/jiaocai8.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="大学计算机-计算，构造与设计.html">大学计算机-计算，构造与设计</a></p>
						<p>数量：99</p>
						<p><s>价格：￥27.50</s> ￥17.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../大学俄语.html"><img src="../images/jiaocai9.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="大学俄语.html">大学俄语</a></p>
						<p>数量：99</p>
						<p><s>价格：￥17.99</s> ￥9.99</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../法律逻辑学.html"><img src="../images/jiaocai10.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="法律逻辑学.html">法律逻辑学</a></p>
						<p>数量：99</p>
						<p><s>价格：￥26.99</s> ￥9.99</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../信息经济学.html"><img src="../images/jiaocai11.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="信息经济学.html">信息经济学</a></p>
						<p>数量：99</p>
						<p><s>价格：￥27.00</s> ￥8.76</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="../法经济学热点问题集论.html"><img src="../images/jiaocai12.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="法经济学热点问题集论.html">法经济学热点问题集论</a></p>
						<p>数量：99</p>
						<p><s>价格：￥31.00</s> ￥16.96</p>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<div class="item clearfix" id="item2">
		<h1>工具书区<span></span></h1>
		<ul class="tab clearfix">
			<li><a class="on" href="javascript:void(0)">英语四六级资料</a></li>
			<li><a href="javascript:void(0)">公务员资料</a></li>
			<li><a href="javascript:void(0)">考研资料</a></li>
			<li><a href="javascript:void(0)">雅思托福</a></li>
			<li><a href="javascript:void(0)">其他</a></li>
		</ul>
		<div class="tab0 tabs clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="../images/yingyu1.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">英语四六级词汇速记手册</a></p>
						<p>数量：99</p>
						<p><s>价格：15.10￥</s> ￥7.78</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yingyu2.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">英语四六级词汇 词根+词缀</a></p>
						<p>数量：99</p>
						<p><s>价格：￥15.67</s> ￥5.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yingyu3.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">四级真题逐句精解</a></p>
						<p>数量：99</p>
						<p><s>价格：￥27.00</s> ￥10.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yingyu4.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">大学英语语法</a></p>
						<p>数量：99</p>
						<p><s>价格：￥27.00</s> ￥9.99</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yingyu5.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">张道真大学英语语法</a></p>
						<p>数量：99</p>
						<p><s>价格：￥26.00</s> ￥10.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yingyu6.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">大学英语6级大纲词汇卡片</a></p>
						<p>数量：99</p>
						<p><s>价格：￥15.00</s> ￥5.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yingyu7.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">六级英语词汇快速记忆图谱</a></p>
						<p>数量：99</p>
						<p><s>价格：￥21.00</s> ￥8.00</p>
					</dd>
				</dl>
			</div>
		</div>
		<div class="tab1 tabs hide clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="../images/gongwuyuan1.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">乡镇公务员录用考试专用教材申论</a></p>
						<p>数量：99</p>
						<p><s>价格：￥27.00</s> ￥9.99</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/gongwuyuan2.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">行政职业能力测验标准预测试卷</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25.00</s> ￥10.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/gongwuyuan3.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">国家公务员录用考试专业教材申论</a></p>
						<p>数量：99</p>
						<p><s>价格：￥26.00</s> ￥12.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/gongwuyuan4.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">行政职业能力测验</a></p>
						<p>数量：99</p>
						<p><s>价格：￥31.00</s> ￥15.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/gongwuyuan5.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">全真模拟试卷·申论</a></p>
						<p>数量：99</p>
						<p><s>价格：￥23.00</s> ￥10.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/gongwuyuan6.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">公务员录用考试教材申论</a></p>
						<p>数量：99</p>
						<p><s>价格：￥26.50</s> ￥12.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/gongwuyuan7.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">行测速解技巧集萃</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25.00</s> ￥13.00</p>
					</dd>
				</dl>
			</div>

		</div>
		<div class="tab2 tabs hide clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="../images/kaoyan1.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">833新闻实务考研题库</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25.50</s> ￥7.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/kaoyan2.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">440新闻与传播专业基础【专业硕士】考研全套资料</a></p>
						<p>数量：99</p>
						<p><s>价格：￥23.50</s> ￥12.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/kaoyan3.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">334新闻与传播专业综合能力【专业硕士】考研全套资料</a></p>
						<p>数量：99</p>
						<p><s>价格：￥23.00</s> ￥11.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/kaoyan4.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">335出版综合素质与能力【专业硕士】考研全套资料</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25.00</s> ￥12.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/kaoyan5.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">817文艺评论考研全套资料</a></p>
						<p>数量：99</p>
						<p><s>价格：￥31.00</s> ￥10.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/kaoyan6.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">郑保卫《新闻理论新编》笔记和课后习题（含考研真题）详解</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25.00</s> ￥7.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/kaoyan7.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">新闻理论（含新闻学概论）考研题库</a></p>
						<p>数量：99</p>
						<p><s>价格：￥28.00</s> ￥7.00</p>
					</dd>
				</dl>
			</div>

		</div>
		<div class="tab3 tabs hide clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="../images/yasi1.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">VOCABULARY BASIC新东方进阶词汇</a></p>
						<p>数量：99</p>
						<p><s>价格：￥20.00</s> ￥6.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yasi2.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">VOCABULARY12000新东方进阶词汇</a></p>
						<p>数量：99</p>
						<p><s>价格：￥22.00</s> ￥6.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yasi3.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">TOEFL词汇 词根+联想记忆法</a></p>
						<p>数量：99</p>
						<p><s>价格：￥15.00</s> ￥7.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yasi4.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">专四词汇 词根+联想记忆法</a></p>
						<p>数量：99</p>
						<p><s>价格：￥19.99</s> ￥9.99</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yasi5.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">TOEFL托福阅读1000词</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25.99</s> ￥7.99</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yasi6.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">雅思词汇 词根+词汇+读音记忆法</a></p>
						<p>数量：99</p>
						<p><s>价格：￥21.00</s> ￥7.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/yasi7.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">托福与雅思阅读长难句精读30天</a></p>
						<p>数量：99</p>
						<p><s>价格：￥29.99</s> ￥9.99</p>
					</dd>
				</dl>
			</div>

		</div>
		<div class="tab4 tabs hide clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="../images/qita1.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">素描基础教程</a></p>
						<p>数量：99</p>
						<p><s>价格：￥17.00</s> ￥7.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/qita2.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">六体书法常用字字典</a></p>
						<p>数量：99</p>
						<p><s>价格：￥12.00</s> ￥6.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/qita3.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">牛津高阶英汉双解词典</a></p>
						<p>数量：99</p>
						<p><s>价格：￥15.00</s> ￥7.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/qita4.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">智慧环保体系建设与实践</a></p>
						<p>数量：99</p>
						<p><s>价格：￥15.00</s> ￥7.00</p>
					</dd>
				</dl>
				<dl>
					<dt><a href="detail.html"><img src="../images/qita5.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">古汉语常用字字典</a></p>
						<p>数量：99</p>
						<p><s>价格：￥12.00</s> ￥5.00</p>
					</dd>
				</dl>

				
			</div>

		</div>
	</div>
	<div class="item clearfix" id="item3">
		<h1>分享区<span></span></h1>
		<div class="tabs book clearfix">
			<dl>
				<dt><a href="share1.html"><img src="../images/fenxiang1.png" alt=""/></a></dt>
				<dd>
					<p><a href="share1.html">茶花女</a></p>
					<p>数量：99</p>
					<p><s>价格：￥20.00</s> ￥12.00</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="简爱.html"><img src="../images/fenxiang2.png" alt=""/></a></dt>
				<dd>
					<p><a href="简爱.html">简爱</a></p>
					<p>数量：99</p>
					<p><s>价格：￥27.00</s> ￥22.80</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang3.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">雾都孤儿</a></p>
					<p>数量：99</p>
					<p><s>价格：￥25.00</s> ￥18.60</p>
				</dd>
			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang4.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">红与黑</a></p>
					<p>数量：99</p>
					<p><s>价格：￥27.00</s> ￥21.20</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang5.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">呼啸山庄</a></p>
					<p>数量：99</p>
					<p><s>价格：￥20.00</s> ￥15.00</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang6.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">钢铁是怎样炼成的</a></p>
					<p>数量：99</p>
					<p><s>价格：￥25.00</s> ￥21.60</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang7.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">傲慢与偏见</a></p>
					<p>数量：99</p>
					<p><s>价格：￥20.00</s> ￥15.00</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang8.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">老人与海</a></p>
					<p>数量：99</p>
					<p><s>价格：￥17.00</s> ￥10.10</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang9.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">格林童话全集</a></p>
					<p>数量：99</p>
					<p><s>价格：￥38.00</s> ￥31.00</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang10.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">茶花女</a></p>
					<p>数量：99</p>
					<p><s>价格：￥20.00</s> ￥14.40</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang11.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">朱自清精美散文</a></p>
					<p>数量：99</p>
					<p><s>价格：￥28.00</s> ￥19.82</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang12.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">边城</a></p>
					<p>数量：99</p>
					<p><s>价格：￥32.00</s> ￥23.00</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang13.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">莫泊桑</a></p>
					<p>数量：99</p>
					<p><s>价格：￥28.00</s> ￥22.10</p>
				</dd>

			</dl>
			<dl>
				<dt><a href="detail.html"><img src="../images/fenxiang14.png" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">骆驼祥子</a></p>
					<p>数量：99</p>
					<p><s>价格：￥27.00</s> ￥16.50</p>
				</dd>

			</dl>
		</div>
	</div>

</div>
<hr>
<div class="foot" style="text-align:center;font-size:16px; margin:20px 0;color:#333	">
	本网站最终解释权归柠檬茶小组所有！
</div>
<div class="fixnav">
	<ul>
		<li><a href="#" title="1">教材区</a></li>
		<li><a href="#" title="2">工具书区</a></li>
		<li><a href="#" title="3">分享区</a></li>
		<li><a href="#" title="4">返回顶部</a></li>
	</ul>
</div>
<script type="text/javascript">
	Qfast.add('widgets', { path: "../js/terminator2.2.min.js", type: "js", requires: ['fx'] });
	Qfast(false, 'widgets', function () {
		K.tabs({
			id: 'fsD1',   //焦点图包裹id
			conId: "D1pic1",  //** 大图域包裹id
			tabId:"D1fBt",
			tabTn:"a",
			conCn: '.fcon', //** 大图域配置class
			auto: 1,   //自动播放 1或0
			effect: 'fade',   //效果配置
			eType: 'click', //** 鼠标事件
			pageBt:true,//是否有按钮切换页码
			bns: ['.prev', '.next'],//** 前后按钮配置class
			interval: 3000  //** 停顿时间
		})
	})
</script>
</body>
</html>