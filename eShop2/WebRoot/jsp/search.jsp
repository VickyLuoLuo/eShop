<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>超值换购物商城</title>
    <link href="${pageContext.request.contextPath}/css/slider.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/common.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/index.css"
          rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container header">
    <div class="span5">
        <div class="logo">

        </div>
    </div>
    <div class="span9">
        <div class="headerAd">

        </div>
    </div>

    <!-- 包含进去首页头部的文件 -->
    <%@ include file="menu.jsp" %>

</div>

<div class="container index">

    <div class="span24">
    	<div id="hotProduct" class="hotProduct clearfix">
            <div class="title">
            <strong>搜索</strong>
            </div>
                        <ul class="tab">
                <li class="current"><a href="#" target="_blank"></a></li>
                <li><a target="_blank"></a></li>
                <li><a target="_blank"></a></li>
            </ul>
            <form action="${ pageContext.request.contextPath }/findByKey/cc" method="post">
            	<span>商品名称</span><input type="text" name="key"/>
            	<input type="submit" />
            </form>
            <form action="${ pageContext.request.contextPath }/findByPrice/min/max" method="post">
            	<span>商品价格</span><input type="text" name="min"/>
            	-
            	<input type="text" name="max"/>
            	<input type="submit" />
            </form>
            </div>

    </div>

    <div class="span24">
        <div id="newProduct" class="newProduct clearfix">
            <div class="title">
                <strong>搜索结果</strong> <a target="_blank"></a>
            </div>
            <ul class="tab">
                <li class="current"><a href="#" target="_blank"></a></li>
                <li><a target="_blank"></a></li>
                <li><a target="_blank"></a></li>
            </ul>

            <ul class="tabContent" style="display: block;">
                <c:forEach items="${products}" var="p">
                    <li><a
                            href="${pageContext.request.contextPath }/findByPid/<c:out value="${p.pid}"/>"
                            target="_blank"><img
                            src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>"
                            style="display: block;"/></a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="span24"><%--
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
		--%></div>
</div>
<div class="container footer">
</div>
</body>
</html>