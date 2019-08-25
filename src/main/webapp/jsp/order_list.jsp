<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>订单信息</title>
    <link rel="stylesheet" href="../css/style.css" type="text/css"/>
	<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
	<script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
 </head>
 

<body>
 <div class="container">
			
			<c:if test="${empty orderList}">
			  <div>暂无数据</div>
			</c:if>
			
			<c:if test="${not empty orderList }">
					<div class="row">
				<div style="margin:0 auto; margin-top:10px;width:950px;">
					<strong>我的订单</strong>
					<table class="table table-bordered">
						<tbody>
							<tr class="warning">
								<th>图片</th>
								<th>电影名称</th>
								<th>价格</th>
								<th>时间</th>
								<th>座位</th>
							</tr>
						<c:forEach items="${orderList}" var="order">	
							<tr class="active">
								<td width="60" width="40%">
									<input type="hidden" name="id" value="22">
									<img src="${pageContext.request.contextPath}/images/${order.film.mainImage}" width="70" height="60">
								</td>
								<td width="30%">
									<a target="_blank">${order.film.fname}</a>
								</td>
								<td width="20%">
									￥${order.film.price}
								</td>
								<td width="10%">
									<fmt:formatDate value="${order.play.playDate }" pattern="yyyy-MM-dd HH:mm:ss" type="date"/>
								</td>
								<td width="15%">
									<span class="subtotal">${order.seatRow}行${order.seatCol}列</span>
								</td>
							</tr>
						  </c:forEach>
						</tbody>
					</table>
				</div>
			</div>
<%-- 			<jsp:include page="/jsp/pageFile.jsp"></jsp:include> --%>
			
			</c:if>
			
		</div>
</body>
</html>