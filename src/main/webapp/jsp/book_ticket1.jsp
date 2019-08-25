<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
  						<td>
  							${cinema.cname}
  						</td>
  						
  						<td>
							<table border="1">
								<c:forEach items="${cinema.halls}" var="hall">
									<tr>
										<td colspan="2">${hall.hallName}</td>
										<td>
										<table border="1">
											<c:forEach items="${hall.plays }" var="play">
												<tr>
													${play.playDate}
												</tr>
											</c:forEach>
										</table>
									</td>
										
									</tr>
								</c:forEach>
							</table>
							
  						</td>
  					</tr>
  					
  				</c:forEach>
  			</table>
  		</c:if>
  			
  </body>
  </html>