<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
  <head>
  </head>
  <body>
  		<c:if test="${empty cinemas }">
  			 <div>暂无数据</div>
  		</c:if>
  		
  		<c:if test="${not empty cinemas}">
  			<table border="1">
			<c:forEach items="${cinemas}" var="cinema">
				<tr>
					<td colspan="4">${cinema.cname }</td>
					<td><c:forEach items="${cinema.halls}" var="hall">
							<span>${hall.hallName }</span>
							<br>
						</c:forEach></td>

					<td><c:forEach items="${cinema.halls}" var="hall">
							<c:forEach items="${hall.plays}" var="play">
								<span>${play.film.fname }</span><br>
							</c:forEach>
		 					</c:forEach>
 					</td>
 					<td>
					<c:forEach items="${cinema.halls}" var="hall">
						 <c:forEach items="${hall.plays}" var="play">
								<fmt:formatDate value="${play.playDate }" type="date"
									pattern="yyyy-MM-dd HH:mm:ss" />
								<br>
							</c:forEach> 
					</c:forEach>
					</td>
					<td>
						<c:forEach items="${cinema.halls}" var="hall">
						 <c:forEach items="${hall.plays}" var="play">
								<a href="/bookSeat?pid=${play.pid }">订票</a>
								<br>
							</c:forEach> 
					</c:forEach>
					</td>
				</tr>
			</c:forEach>
		</table>
  		</c:if>
  			
  </body>
  </html>