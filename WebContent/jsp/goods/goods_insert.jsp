<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物流配货网——发货单</title>
		<link href="css/style.css" type="text/css" rel="stylesheet">
		<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="js/js-goods_insert-check.js"></script>
	</head>

	<body>
		<jsp:include page="../main/main_top.jsp" />
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="57">&nbsp;</td>
				<td width="637" valign="top" align="center">
					<table width="615" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td height="25" valign="top">当前位置：发货单</td>
						</tr>
					</table>
					<form action="insertOperationgoodsAndCarlog.html" name="goods" method="post" onsubmit="return checkSubmit()">
						<table width="568" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
							<tr>
								<td width="98" height="40">
									车牌号码：
								</td>
								<td width="166" bgcolor="#FFFFFF">
									<select id="car_id" name="car.id">
										<option value="-1">请选择车辆</option>
										<c:forEach items="${carList }" var="car">
											<option value="${car.id }" <c:if test="${car.id ==cid}">selected</c:if>>${car.car_number }</option>
										</c:forEach>
									</select>
									<span id="car_id_msg" style="color: red;font-size: 10px;" ></span>
								</td>
								<td width="92">发货客户：</td>
								<td width="189" bgcolor="#FFFFFF">
									<select id="customer_id" name="cust.customer_id">
										<option value="-1">请发货客户</option>
										<c:forEach items="${custList }" var="cust">
											<option value="${cust.customer_id }" >${cust.customer_user }</option>
										</c:forEach>
									</select>
									<span id="customer_id_msg" style="color: red;font-size: 10px;" ></span>
								</td>
							</tr>
							<tr>
								<td height="40">发货单号：</td>
								<td bgcolor="#FFFFFF">
									<input type="text" name="goods_id" title="请输入发货单号" value="${goods_id }" readonly  />
								</td>
								<td>收货人姓名：</td>
								<td bgcolor="#FFFFFF">
									<input type="text" id="goods_name" name="goods_name" title="请输入收货人姓名" />
									<span id="goods_name_msg" style="color: red;font-size: 10px;" ></span>
								</td>
							</tr>
							<tr>
								<td height="40">收货人电话：</td>
								<td bgcolor="#FFFFFF">
									<input type="text" id="goods_tel" name="goods_tel" title="请输入收货人电话" />
									<span id="goods_tel_msg" style="color: red;font-size: 10px;" ></span>
								</td>
								<td>收货人地址：</td>
								<td bgcolor="#FFFFFF">
									<input type="text" id="goods_address" name="goods_address" title="请输入收货人地址" />
									<span id="goods_address_msg" style="color: red;font-size: 10px;" ></span>
								</td>
							</tr>
							<tr>
								<td height="40">发货时间：</td>
								<td bgcolor="#FFFFFF">
									<input class="Wdate" type="text" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd '})" id="startTime" name="startTime"/>
									<span id="startTime_msg" style="color: red;font-size: 10px;" ></span>
								</td>
								<td>收货时间：</td>
								<td bgcolor="#FFFFFF">
									<input class="Wdate" type="text" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd '})" id="endTime" name="endTime"/>
									<span id="endTime_msg" style="color: red;font-size: 10px;" ></span>
								</td>
							</tr>
							<tr>
								<td height="102">发货描述信息：</td>
								<td colspan="3" bgcolor="#FFFFFF">
									<textarea name="describer" rows="8" cols="63" title="请输入发货描述信息"></textarea>
								</td>
							</tr>

							<tr bgcolor="#FFFFFF">
								<td height="55" colspan="4" align="center">
									<input type="submit" value="发货" />&nbsp;&nbsp;&nbsp;<input type="reset" value="重置" />
								</td>
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