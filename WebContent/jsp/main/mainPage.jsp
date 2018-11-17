<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link href="css/style.css" type="text/css" rel="stylesheet">
		<title>物流配货网——首页</title>
	</head>

	<body>
		<jsp:include page="main_top.jsp" />
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="57">&nbsp;</td>
				<td width="637" valign="top" align="center">
					<table width="615" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td height="25" valign="top">当前位置：首页 >> 物流配货流程</td>
						</tr>
					</table>
					<img src="images/logistics_flow.jpg">
				</td>
				<td width="115" valign="top">
					<jsp:include page="main_right.jsp" /> 
				</td>
			</tr>
		</table>
		<jsp:include page="main_down.jsp" />
	</body>

</html>