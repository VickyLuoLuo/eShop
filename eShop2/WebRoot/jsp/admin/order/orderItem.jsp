<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table width="100%">
<%--  	<c:forEach items="${orderItem}" var="i"> 
		<tr>
			<td><img width="40" height="45"
				src="${ pageContext.request.contextPath }/<c:out value="${ orderItem.product.image}"/>"></td>
			<td><c:out value="${orderItem.product.pname}" /></td>
			<td><c:out value="${orderItem.count}" /></td>
			<td><c:out value="${orderItem.subtotal}" /></td>
		</tr>
	</c:forEach> --%>


							<tr>
								<td>商品</td>
								<td>原价</td>
								<td>数量</td>
								<td>二手价</td>
							</tr>
<c:forEach var="orderItem" items="${order.orderItems}">
							<tr>
								<%-- <td width="60"><a
									href="${ pageContext.request.contextPath }/findByPid/<c:out value="${orderItem.product.pid}"/>">
										<img
										src="${ pageContext.request.contextPath }/<c:out value="${orderItem.product.image}"/>" />
								</a></td> --%>
								<td><c:out value="${ orderItem.product.pname}" /></td>
								<td><c:out value="${orderItem.product.cur_price}" /></td>
								<td class="quantity" width="60"><c:out
										value="${orderItem.count}" /></td>
								<td width="140"><span class="subtotal">￥<c:out
											value="${orderItem.subtotal}" />
								</span></td>
							</tr>
						</c:forEach>
</table>