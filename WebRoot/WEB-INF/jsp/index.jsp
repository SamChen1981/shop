<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>番茄商城</title>
<link href="${pageContext.request.contextPath}/css/slider.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />

</head>
<body>

	<div class="container header">
		<div class="span5">
			<div class="logo">
				<a href="./网上商城/index.htm"> <img
					src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif"
					alt="番茄商城" />
				</a>
			</div>
		</div>
		<div class="span9">
			<div class="headerAd">
				<img src="${pageContext.request.contextPath}/image/header.jpg"
					width="320" height="50" alt="正品保障" title="正品保障" />
			</div>
		</div>
		
		<%@ include file="menu.jsp" %>

	</div>

	<div class="container index">


		<div class="span24">
			<div id="hotProduct" class="hotProduct clearfix">
				<div class="title">
					<strong>热门商品</strong>
					<!-- <a  target="_blank"></a> -->
				</div>
				<ul class="tab">
					<li class="current"><a href="./蔬菜分类.htm?tagIds=1"
						target="_blank"></a></li>
					<li><a target="_blank"></a></li>
					<li><a target="_blank"></a></li>
				</ul>

				<ul class="tabContent" style="display: block;">
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/b.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/c.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/d.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/e.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/f.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/g.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/h.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/i.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/i.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/i.jpg"
							style="display: block;" /></a></li>
				</ul>


			</div>
		</div>
		<div class="span24">
			<div id="newProduct" class="newProduct clearfix">
				<div class="title">
					<strong>最新商品</strong> <a target="_blank"></a>
				</div>
				<ul class="tab">
					<li class="current"><a href="./蔬菜分类.htm?tagIds=2"
						target="_blank"></a></li>
					<li><a target="_blank"></a></li>
					<li><a target="_blank"></a></li>
				</ul>

				<ul class="tabContent" style="display: block;">
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/l.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/m.jpg"
							style="display: block;" /></a></li>

					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/n.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/o.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/p.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/m.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/15.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/l.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/l.jpg"
							style="display: block;" /></a></li>
					<li><a target="_blank"><img
							src="${pageContext.request.contextPath}/image/l.jpg"
							style="display: block;" /></a></li>
				</ul>


			</div>
		</div>
		<div class="span24">
			<div class="friendLink">
				<dl>
					<dt>新手指南</dt>
					<dd>
						<a target="_blank">支付方式</a> |
					</dd>
					<dd>
						<a target="_blank">配送方式</a> |
					</dd>
					<dd>
						<a target="_blank">售后服务</a> |
					</dd>
					<dd>
						<a target="_blank">购物帮助</a> |
					</dd>
					<dd>
						<a target="_blank">蔬菜卡</a> |
					</dd>
					<dd>
						<a target="_blank">礼品卡</a> |
					</dd>
					<dd>
						<a target="_blank">银联卡</a> |
					</dd>
					<dd>
						<a target="_blank">亿家卡</a> |
					</dd>

					<dd class="more">
						<a>更多</a>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<div class="container footer">
		<div class="span24">
			<div class="footerAd">
				<img src="${pageContext.request.contextPath}/image/footer.jpg"
					width="950" height="52" alt="我们的优势" title="我们的优势" />
			</div>
		</div>
		<div class="span24">
			<ul class="bottomNav">
				<li><a>关于我们</a> |</li>
				<li><a>联系我们</a> |</li>
				<li><a>招贤纳士</a> |</li>
				<li><a>法律声明</a> |</li>
				<li><a>友情链接</a> |</li>
				<li><a target="_blank">支付方式</a> |</li>
				<li><a target="_blank">配送方式</a> |</li>
				<li><a>服务声明</a> |</li>
				<li><a>广告声明</a></li>
			</ul>
		</div>
		<div class="span24">
			<div class="copyright">Copyright © 2005-2015 网上商城 版权所有</div>
		</div>
	</div>
</body>
</html>