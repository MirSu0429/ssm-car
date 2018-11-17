<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<title>物流配货网--车源信息管理</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link href="css/style.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="js/js-car-check.js"></script>
	</head>

	<body>
		<jsp:include page="../main/main_top.jsp" />
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="57">&nbsp;</td>
				<td width="637" valign="top" align="center">
					<table width="615" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td height="25" valign="top">当前位置：车源信息管理&nbsp;&nbsp;>>&nbsp;&nbsp;修改车源信息</td>
						</tr>
					</table>
					<form action="updateCar.html" method="post" onsubmit="return checkSubmit()" >
					<input type="hidden" name="id" value="${car.id }" />
					<table width="449" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr>
							<td width="75" height="30">姓&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
							<td bgcolor="#FFFFFF">
								<input type="text" id="username" name="username" size="36" value="${car.username }"/>
								<span id="username_msg" style="color: red;font-size: 10px;" ></span>
							</td>
						</tr>
						<tr>
							<td height="30">身份证号：</td>
							<td bgcolor="#FFFFFF">
								<input type="text" id="user_number" name="user_number" size="36" value="${car.user_number }" />
								<span id="user_number_msg" style="color: red;font-size: 10px;" ></span>
							</td>
						</tr>
						<tr>
							<td height="30">地&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
							<td bgcolor="#FFFFFF">
								<input type="text" id="address" name="address" size="36" value="${car.address }" />
								<span id="address_msg" style="color: red;font-size: 10px;" ></span>
							</td>
						</tr>
						<tr>
							<td height="30">车&nbsp;牌&nbsp;号：</td>
							<td bgcolor="#FFFFFF">
								<input type="text" id="car_number" name="car_number" size="36" value="${car.car_number }" />
								<span id="car_number_msg" style="color: red;font-size: 10px;" ></span>
							</td>
						</tr>
						<tr>
							<td height="30">电&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
							<td bgcolor="#FFFFFF">
								<input type="text" id="tel" name="tel" size="36" value="${car.tel }" />
								<span id="tel_msg" style="color: red;font-size: 10px;" ></span>
							</td>
						</tr>
						<tr>
							<td height="120">运输路线：</td>
							<td bgcolor="#FFFFFF">
								<textarea name="car_road" id="car_road" rows="7" cols="30">${car.car_road }</textarea>
								<span id="car_road_msg" style="color: red;font-size: 10px;" ></span>
							</td>
						</tr>
						<tr>
							<td height="120">车辆描述：</td>
							<td bgcolor="#FFFFFF">
								<textarea name="car_content" id="car_content" rows="7" cols="30">${car.car_content }</textarea>
								<span id="car_content_msg" style="color: red;font-size: 10px;" ></span>
							</td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td height="30" colspan="2" align="center">
								<input type="submit" value="修改" />&nbsp;&nbsp;<input type="reset" value="重置" /></td>
						</tr>
					</table>
					</form>
				</td>
				<td width="115" valign="top">
					<jsp:include page="../main/main_right.jsp" />
				</td>
			</tr>
		</table>
		<jsp:include page="../main/main_down.jsp" />
	</body>
</html>