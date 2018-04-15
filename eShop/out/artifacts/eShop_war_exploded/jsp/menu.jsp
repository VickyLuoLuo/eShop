<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="span10 last">
    <div class="topNav clearfix">
        <ul>
            <!-- 若用户未登录 -->
            <c:if test="${sessionScope.user == null}">
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <a
                            href="${ pageContext.request.contextPath }/userLogin">登录</a>|
                </li>
                <li id="headerRegister" class="headerRegister"
                    style="display: list-item;"><a
                        href="${ pageContext.request.contextPath }/userRegister">注册</a>|
                </li>
            </c:if>

            <!-- 若用户已登录 -->
            <c:if test="${sessionScope.user != null}">
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <c:out value="${user.username }"/>
                </li>
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <a
                            href="${ pageContext.request.contextPath }/findOrderByUid/1">我的订单</a>
                    |
                </li>
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <a
                            href="${ pageContext.request.contextPath }/messageList">我的消息</a>
                    |
                </li>
                <li id="headerRegister" class="headerRegister"
                    style="display: list-item;"><a
                        href="${ pageContext.request.contextPath }/quit">退出</a>|
                </li>
            </c:if>

            <%--<li><a>会员中心</a> |</li>
            <li><a>购物指南</a> |</li>
            <li><a>关于我们</a></li>--%>
        </ul>
    </div>

    <div class="cart" style="width: 40px">
        <a href="${pageContext.request.contextPath}/myCart">购物车</a>
    </div>
    <div style="margin-left: 10px;margin-top: 7px">
	    <a  href="${pageContext.request.contextPath}/getArticleList">论坛区</a>
	    </div>

</div>

<div class="span24">
    <ul class="mainNav">
        <li><a href="${ pageContext.request.contextPath }/index">首页</a>|</li>
        <c:forEach items="${sessionScope.cList}" var="c">
            <li><a
                    href="${ pageContext.request.contextPath }/findByCid/<c:out value="${c.cid}"/>/1">
                <c:out value="${c.cname}"></c:out>
            </a>
            </li>
        </c:forEach>
                    <!-- 若用户已登录 -->
            <c:if test="${sessionScope.user != null}">
        	<li>
            	<a href="${pageContext.request.contextPath}/listProduct/1">添加商品</a>
            </li>
            </c:if>
            <li>
            	<a href="${pageContext.request.contextPath}/jsp/search.jsp">搜索结果</a>
            </li>
    </ul>
</div>