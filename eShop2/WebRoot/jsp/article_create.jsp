<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>超值换购物商城</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/product.css"
	rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/artical.css"
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
		<form action="${ pageContext.request.contextPath }/addArticle" method="post">

		<div style="margin-top:22px ">
		<span style="font-size: 22px">标题</span><br>
		<input type="text" name="title" style="width: 350px"><br><br>
		</div>
		<span style="font-size: 22px">内容</span><br>
		<textarea rows="6" cols="50" name="content"></textarea><br><br>
		<tr>
			<span style="font-size: 22px">上传图片</span><br>
			<td class="ta_01" bgColor="#ffffff" colspan="3">
				<input type="file" name="image"/></td>
		</tr><br><br>
		<span style="font-size: 22px">类别</span><br>
		<select name="type">
		  <option value="1">女装男装</option>
		  <option value="2">鞋靴箱包</option>
		  <option value="3">日常生活用品</option>
		  <option value="4">珠宝配饰</option>
		  <option value="5">手机数码</option>
		  <option value="6">家用电器</option>
		  <option value="7">食品</option>
		</select><br><br>
		<input type="submit">
		</form>
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