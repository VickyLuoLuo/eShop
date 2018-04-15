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



	<div class="container index">
	    <div class="span24">
	    <div style="margin-top:22px ">
			<h3 style="color: black">帖子列表</h3>
		
		</div>

		<button style="float :right" id="createArticle">创建帖子</button><br>
		<table cellSpacing="1" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			<thead>
				<tr>
					<th>标题</th>
					<th>发布人</th>	
					<th>时间</th>	
				</tr>
			</thead>
			<tbody>
				<c:forEach var="article" items="${articleList }" >
					<tr  align="center">
						<td  width="60" height="50"><span style="font-size: 22"><a href="${pageContext.request.contextPath}/getArticleInfo/${article.code}">${article.title }</a></span></td>
						<td>${article.userName }</td>
						<td>${article.date }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	
	
		    </div>
	</div>
<script type="text/javascript">
	$(function(){
        $('#createArticle').click(function(){
        	location.href = "/eShop/jsp/article_create.jsp";
        });
		
		
	})

</script>
</body>
</html>