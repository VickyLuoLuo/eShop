<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/Style1.css"
	rel="stylesheet" type="text/css" />
<script language="javascript"
	src="${pageContext.request.contextPath}/js/public.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(function(){
		$("#message").click(function() {
			alert("已将换购信息发送给卖家，若卖家同意换购，将自动为您加入订单")
		})
	})
</script>
    <link href="${pageContext.request.contextPath}/css/slider.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/common.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/index.css"
          rel="stylesheet" type="text/css"/>
</HEAD>
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
    <%@ include file="/jsp/menu.jsp" %>

</div>
<div style="position: absolute;right: 100px;left: 100px;">
	<br>
	<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/user/list.jsp"
		method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			<TBODY>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>我的消息</strong>
					</TD>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr
								style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

								<td align="center" width="18%">序号</td>
								<td align="center" width="10%">买家名称</td>
								<td align="center" width="17%">我的商品图片</td>
								<td align="center" width="17%">我的商品价格</td>
								<td align="center" width="17%">换购商品图片</td>
								<td align="center" width="17%">换购商品价格</td>
								<td width="7%" align="center">确认换购</td>
							</tr>
							<c:forEach var="m" items="${message}" varStatus="vs">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="18%"><c:out value="${vs.index+1}"></c:out></td>

									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="17%" id="productName"><c:out value="${m.buyerName}" /></td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="17%"><img width="40" height="45"
														 src="${ pageContext.request.contextPath }/<c:out value="${m.sellerImage}"/>">
									</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="17%"><c:out value="${m.sellerProductPrice}" /></td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="17%"><img width="40" height="45"
														 src="${ pageContext.request.contextPath }/<c:out value="${m.buyerImage}"/>">
									</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="17%"><c:out value="${m.buyerProductPrice}" /></td>
									<td align="center" style="HEIGHT: 22px"><a id="message"
										href="${ pageContext.request.contextPath }/message/<c:out value="${p.pid}/${p.userId}"/>">
											<img
											src="${pageContext.request.contextPath}/images/i_edit.gif"
											border="0" style="CURSOR: hand">
									</a></td>
								</tr>
							</c:forEach>
						</table>
					</td>
				</tr>
			</TBODY>
		</table>
	</form>
	</div>
</body>
</HTML>