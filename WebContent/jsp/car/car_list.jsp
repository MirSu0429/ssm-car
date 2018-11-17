<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物流配货网——车源信息管理</title>
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
							<td height="25" valign="top">当前位置：车源信息管理</td>
						</tr>
					</table>
			<c:forEach items="${pageInfo.list }" var="car" varStatus="vs">
					<table width="603" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr align="center">
							<td width="82" height="20">序号</td>
							<td width="82">姓名</td>
							<td width="105">车牌号码</td>
							<td width="139">地址</td>
							<td width="78">电话</td>
							<td width="119">身份证号</td>
						</tr>
						<tr align="center" bgcolor="#FFFFFF">

							<td height="20">${vs.count+1000 }</td>
							<td>${car.username }</td>
							<td>${car.car_number }</td>
							<td>${car.address }</td>
							<td>${car.tel }</td>
							<td>${car.user_number }</td>
						</tr>
						<tr align="center">
							<td height="20" colspan="2">运输路线</td>
							<td colspan="2">车辆描述</td>
							<td colspan="2">操作</td>
						</tr>
						<tr align="center" bgcolor="#FFFFFF">
							<td height="20" colspan="2">${car.car_road }</td>
							<td colspan="2">${car.car_content }</td>
							<td colspan="2">
								<a href="showUpdateCar.html?id=${car.id }">修改</a>&nbsp;&nbsp;&nbsp;
								<a href="deleteCar.html?id=${car.id }" onclick="return confirm('确定删除吗?')">删除</a>
							</td>
						</tr>
					</table>
					<table width="603" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<hr>
							</td>
						</tr>
					</table>
			</c:forEach>		
					

					<table width="630" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="442" height="21" valign="top">&nbsp;&nbsp;&nbsp;<img src="images/sign.gif" width="16" height="14">&nbsp;
								<a href="showInsertCar.html" class="a2">添加车源信息</a>
							</td>
							<td width="188" valign="top">
								<table width="370" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="24" align="right">当前页数：[${pageInfo.pageNum }/${pageInfo.pages }]&nbsp;&nbsp;
												<a href="queryCar.html?page=${pageInfo.firstPage }">第一页</a>&nbsp;&nbsp;
												<a href="queryCar.html?page=${pageInfo.prePage }">上一页</a>&nbsp;&nbsp;
												<a href="queryCar.html?page=${pageInfo.nextPage }">下一页</a>&nbsp;&nbsp;
												<a href="queryCar.html?page=${pageInfo.pages }">最后一页&nbsp;</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
				<td width="115" valign="top">
				<jsp:include page="../main/main_right.jsp" />
				</td>
			</tr>
		</table>
		<jsp:include page="../main/main_down.jsp" flush="true" />
	</body>

</html>