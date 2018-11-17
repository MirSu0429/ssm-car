<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物流配货网——发货单查询</title>
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
							<td height="25" valign="top">当前位置：首页 >> 发货单查询</td>
						</tr>
					</table>
		<c:forEach	items="#{pageInfo.list }" var="oper">
			
				
					<table border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr>
							<td width="120" height="20">
								<div align="center">车主姓名</div>
							</td>
							<td width="120">
								<div align="center">车牌号码</div>
							</td>
							<td width="120">
								<div align="center">车主地址</div>
							</td>
							<td width="120">
								<div align="center">车主电话</div>
							</td>
							<td width="120">
								<div align="center">运输路线</div>
							</td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td height="20">
								<div align="center">${oper.car.username }</div>
							</td>
							<td>
								<div align="center">${oper.car.car_number }</div>
							</td>
							<td>
								<div align="center">${oper.car.address }</div>
							</td>
							<td>
								<div align="center">${oper.car.tel }</div>
							</td>
							<td>
								<div align="center">${oper.car.car_road }</div>
							</td>
						</tr>
					</table>
					<table border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr>
							<td width="200" height="20">
								<div align="center">发货人姓名</div>
							</td>
							<td width="200">
								<div align="center">发货人电话</div>
							</td>
							<td width="200">
								<div align="center">发货人地址</div>
							</td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td height="20">
								<div align="center">${oper.cust.customer_user }</div>
							</td>
							<td>
								<div align="center">${oper.cust.customer_tel }</div>
							</td>
							<td>
								<div align="center">${oper.cust.customer_address }</div>
							</td>
						</tr>
					</table>
					<table border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr>
							<td width="150">
								<div align="center">订单编号</div>
							</td>
							<td width="150" height="20">
								<div align="center">收货人姓名</div>
							</td>
							<td width="150">
								<div align="center">收货人电话</div>
							</td>
							<td width="150">
								<div align="center">收货人地址</div>
							</td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td>
								<div align="center">${oper.goods_id }</div>
							</td>
							<td height="20">
								<div align="center">${oper.goods_name }</div>
							</td>
							<td>
								<div align="center">${oper.goods_tel }</div>
							</td>
							<td>
								<div align="center">${oper.goods_address }</div>
							</td>
						</tr>
					</table>
				<c:choose>
					<c:when test="${oper.goods_sure==1}">
						<table width="255" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr bgcolor="#FFFFFF">
							<td height="20">
								<div align="center">已经确认完毕</div>
							</td>
							<td>
								<div align="center">
									<a href="deleteOper.html?id=${oper.id }" onclick="return confirm('确定要删除吗?')">删除订货单</a>
								</div>
							</td>
						</tr>
					</table>
					</c:when>
					<c:otherwise>
						<table border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr>
							<td width="200" height="20">
								<div align="center">发货时间</div>
							</td>
							<td width="200">
								<div align="center">收货时间</div>
							</td>
							<td width="200">
								<div align="center">货物描述</div>
							</td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td height="20">
								<div align="center"><fmt:formatDate value="${oper.car.carlog.startTime }" pattern="yyyy-MM-dd"/></div>
							</td>
							<td>
								<div align="center"><fmt:formatDate value="${oper.car.carlog.endTime }" pattern="yyyy-MM-dd"/></div>
							</td>
							<td>
								<div align="center">${oper.car.carlog.describer }</div>
							</td>
						</tr>
					</table>
					</c:otherwise>
				</c:choose>
					
					<hr>
		</c:forEach>	

					<table width="370" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="24" align="right">当前页数：[${pageInfo.pageNum }/${pageInfo.pages }]&nbsp;&nbsp;
								<a href="queryGoodsList.html?page=${pageInfo.firstPage }">第一页</a>&nbsp;&nbsp;
								<a href="queryGoodsList.html?page=${pageInfo.prePage }">上一页</a>&nbsp;&nbsp;
								<a href="queryGoodsList.html?page=${pageInfo.nextPage }">下一页</a>&nbsp;&nbsp;
								<a href="queryGoodsList.html?page=${pageInfo.pages }">最后一页&nbsp;</a>
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