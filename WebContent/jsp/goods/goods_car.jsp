<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物流配货网——车源信息查询</title>
		<link href="css/style.css" type="text/css" rel="stylesheet">
	</head>

	<body>
		<jsp:include page="../main/main_top.jsp" />

		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="57">&nbsp;</td>
				<td width="637" valign="top" align="center">
					<table width="615" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td height="25" valign="top">当前位置：首页 >> 车源信息查询</td>
						</tr>
					</table>
				
					<table border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr align="center">
							<td width="61" height="30">车牌号码</td>
							<td width="131">路线</td>
							<td width="148">车辆描述</td>
							<td width="127">使用日志</td>
							<td width="79">是否使用</td>
						</tr>
					<c:forEach items="${pageInfo.list }" var="car">
						<tr bgcolor="#FFFFFF" align="center">
							<td height="40">${car.car_number }</td>
							<td>${car.car_road }</td>
							<td>${car.car_content }</td>
							<td>
							<c:choose>
								<c:when test="${car.carlog ==null }">
									无
								</c:when>
								<c:otherwise>
								发货时间:<fmt:formatDate value="${car.carlog.startTime }" pattern="yyyy-MM-dd"/>
								收货时间:<fmt:formatDate value="${car.carlog.endTime }" pattern="yyyy-MM-dd"/>
								</c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
								<c:when test="${car.carlog ==null}">
									<a href="showInsertGoods.html?id=${car.id }">点我发货 </a>
								</c:when>
								<c:otherwise>已经使用</c:otherwise>
							</c:choose>
							</td>
						</tr>
					</c:forEach>
					</table>

					<table width="370" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="24" align="right">当前页数：[${pageInfo.pageNum }/${pageInfo.pages }]&nbsp;&nbsp;
									<a href="queryCarAndCarlog.html?page=${pageInfo.firstPage }">第一页</a>&nbsp;&nbsp;
									<a href="queryCarAndCarlog.html?page=${pageInfo.prePage }">上一页</a>&nbsp;&nbsp;
									<a href="queryCarAndCarlog.html?page=${pageInfo.nextPage }">下一页</a>&nbsp;&nbsp;
									<a href="queryCarAndCarlog.html?page=${pageInfo.pages }">最后一页&nbsp;</a>
							</td>
						</tr>
					</table>

				</td>
				<td width="115" valign="top">

					<jsp:include page="../main/main_right.jsp" />

				</td>
			</tr>
		</table>
		<jsp:include page="../main/main_down.jsp" />
	</body>

</html>