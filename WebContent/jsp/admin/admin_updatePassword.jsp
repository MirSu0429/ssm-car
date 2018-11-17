<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物流配货网——修改管理员密码</title>
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="js/js-password-check.js"></script >
	</head>
	<link href="css/style.css" type="text/css" rel="stylesheet">

	<body>
		<jsp:include page="../main/main_top.jsp" />

		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="57">&nbsp;</td>
				<td width="637" valign="top" align="center">
					<table width="615" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td height="25" valign="top">当前位置：&nbsp;修改管理员密码</td>
						</tr>
					</table>

					<form action="updateAdmin.html" method="post" onsubmit="return checkSubmit()">
						<table width="364" height="138" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
									
							<tr>
								<td width="107">原密码：</td>
								<td width="251" bgcolor="#FFFFFF">
									<input type="hidden" id="admin_id" name="id" value="${loginAdmin.id }"/>
									<input type="password" id="admin_password" name="admin_password" />
									<span id="admin_password_msg" style="color: red;font-size: 10px;" ></span>
								</td>
							</tr>
							<tr>
								<td>新密码：</td>
								<td bgcolor="#FFFFFF">
									<input type="password" id="admin_repassword1" name="admin_repassword1" />
									<span id="admin_repassword1_msg" style="color: red;font-size: 10px;" ></span>
								</td>
							</tr>
							<tr>
								<td>密码确认：</td>
								<td bgcolor="#FFFFFF">
									<input type="password" id="admin_repassword2" name="admin_repassword2" />
									<span id="admin_repassword2_msg" style="color: red;font-size: 10px;" ></span>
								</td>
							</tr>
							<tr align="center" bgcolor="#FFFFFF">
								<td colspan="2"><input type="submit" value="修改" />&nbsp;&nbsp;<input type="reset" value="重置" /></td>
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