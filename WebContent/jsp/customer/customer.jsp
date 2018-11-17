<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物流配货网--固定客户管理</title>
		<link href="css/style.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="js/js-customer-check.js"></script>
	</head>

	<body>
		<jsp:include page="../main/main_top.jsp" />
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="57">&nbsp;</td>
				<td width="637" valign="top" align="center">
					<table width="615" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td height="25" valign="top">当前位置：固定客户管理</td>
						</tr>
					</table>
					<table border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
			          <tr align="center">
			            <td width="80" height="20">客户序号</td>
			            <td width="80">客户姓名</td>
			            <td width="120">客户电话</td>
			            <td width="100">客户地址</td>
			            <td width="100">操作</td>
			          </tr>    
			      <c:forEach items="${pageInfo.list }" var="cust" varStatus="vs">
			          <tr align="center" bgcolor="#FFFFFF">     
			            <td height="20">${vs.count }</td>
			            <td>${cust.customer_user }</td>
			            <td>${cust.customer_tel }</td>
			            <td>${cust.customer_address }</td>
			            <td><a href="deleteCustomer.html?id=${cust.customer_id }" onclick="return confirm('真的要删除吗?')">删除</a></td>
			          </tr>
			       </c:forEach>     
			         
			      </table>   
					<table width="511" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="501">
								<div align="right">
									<table width="370" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="24" align="right">当前页数：[${pageInfo.pageNum }/${pageInfo.pages }]&nbsp;&nbsp;
												<a href="queryCustomer.html?page=${pageInfo.firstPage }">第一页</a>&nbsp;&nbsp;
												<a href="queryCustomer.html?page=${pageInfo.prePage }">上一页</a>&nbsp;&nbsp;
												<a href="queryCustomer.html?page=${pageInfo.nextPage }">下一页</a>&nbsp;&nbsp;
												<a href="queryCustomer.html?page=${pageInfo.pages }">最后一页&nbsp;</a>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>

					<table width="511" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<hr>
							</td>
						</tr>
					</table>
					<form action="insertCustomer.html" method="post" onsubmit="return checkSubmit()">
					<table width="519" border="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr>
							<td width="74" height="20">客户姓名：</td>
							<td width="160" bgcolor="#FFFFFF">
								<input type="text" id="customer_user" name="customer_user" />
								<span id="customer_user_msg" style="color: red;font-size: 10px;" ></span>
							</td>
							<td width="80">客户电话：</td>
							<td width="160" bgcolor="#FFFFFF">
								<input type="text" id="customer_tel" name="customer_tel" />
								<span id="customer_tel_msg" style="color: red;font-size: 10px;" ></span>
							</td>
						</tr>
						<tr>
							<td height="20">客户地址：</td>
							<td bgcolor="#FFFFFF">
								<input type="text" id="customer_address" name="customer_address" />
								<span id="customer_address_msg" style="color: red;font-size: 10px;" ></span>
							</td>
							<td colspan="2" bgcolor="#FFFFFF" align="center">
								<input type="submit" value="添加" />&nbsp;&nbsp;<input type="reset" value="重置" />
							</td>
						</tr>
					</table>
					</form><br><br>
				</td>
				<td width="115" valign="top">

					<jsp:include page="../main/main_right.jsp" />

				</td>
			</tr>
		</table>

		<jsp:include page="../main/main_down.jsp" />
	</body>

</html>