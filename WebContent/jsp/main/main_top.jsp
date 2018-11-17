<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<base href="${pageContext.request.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<table width="100%" height="20" border="0" cellpadding="0" cellspacing="0" bgcolor="1281AF">
	<tr>
		<td width="57"><img src="images/logistics_01.jpg" width="57" height="20"></td>
		<td width="645">
			<table width="249" align="right">
				<tr>
					<td width="241" align="center" class="word_white">
						<a href="showUpdateAdmin.html" class="a1">修改密码</a> |
						<a href="mainPage.html" class="a1">返回首页</a> |
						<a href="logoutAdmin.html" class="a1">退出系统</a>
					</td>
				</tr>
			</table>
		</td>
		<td width="543">&nbsp;</td>
	</tr>
</table>
<table height="22" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="57"><img src="images/logistics_04.jpg" width="57" height="183"></td>
		<td width="637" height="183" valign="top" background="images/logistics_05.jpg">
			<table width="607" height="168" align="center">
				<tr>
					<td width="409" height="161" valign="bottom">
						<font color="#FFFFFF">
							<fmt:formatDate value="${date }" pattern="yyyy年MM月dd日 E"/>
						</font>
					</td>
					<td width="93" valign="bottom">
						<a href="queryCustomer.html" class="a1">固定客户管理</a>
					</td>
					<td width="89" valign="bottom">
						<a href="queryCar.html" class="a1">车源信息管理</a>
					</td>
				</tr>
			</table>
		</td>
		<td width="60"><img src="images/logistics_06.jpg" width="309" height="183"></td>
	</tr>
</table>