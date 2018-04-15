<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>超值换购物商城</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/product.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>

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
	<div class="container index" style="background-color: #f5fafe">
	    <div class="span24">
	<div style="margin-top: 22px">
		<h2 style="color: black;font-size: 30px">${article.title }</h2>
		<span style="margin-top: 22px">${article.strDate}</span>
	</div>
	<%-- <div style="margin-top: 22px;margin-left: 30px; font-size: 20px;"
		<span>${article.image}</span>
	</div> --%>
	<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="17%"><img width="100" height="100"
										src="${ pageContext.request.contextPath }/<c:out value="${article.image}"/>">
	</td>
	<div style="margin-top: 22px;margin-left: 30px">
	<p style="font-size: 30px;width: 400px;height: 140px">${article.content }</p>
	
	<p style="font-size: 20px;"> 评论</p>
	<c:forEach var="reply" items="${replyList }" >
	<div style="width: 400px; height: 70px">
	<span>回复人：${reply.userName }</span>
	<c:if test="${sessionScope.user.vipFlag eq true }">
	
		<a style="float:right" href="${pageContext.request.contextPath}/deleteReply/${reply.code}">删除</a>
		<c:if test="${reply.firstFlag=='n' }">
		<a style="float:right;margin-right: 10px" href="${pageContext.request.contextPath}/firstReply/${reply.code}">置顶</a>
		</c:if>
		<c:if test="${reply.firstFlag=='y' }">
		<span style="float:right; margin-right: 10px">已置顶</span>
		</c:if>
	
	</c:if>
	<br>
	${reply.content }
	</div>
		<hr>
	</c:forEach>
	</div>
	<form action="${ pageContext.request.contextPath }/addReply/${article.code}" method="post">
	<div style="margin-left: 22px">
	<textarea rows="7" cols="50" name="content"></textarea><br>
		<input type="submit">
	</div>
	</form>
	</div>
	</div>
</body>
</html>