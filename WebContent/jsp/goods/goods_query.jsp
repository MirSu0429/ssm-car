<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物流配货网——回执发货单确认</title>
		<link href="css/style.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#goods_id_msg").html("请输入订单编号!");
				$("#submit_button").bind("click",function(){
					var goods_id = $("#goods_id").val();
					$("td [bgcolor='#FFFFFF']").empty();
					$.ajax({
						url : "showSureGoods.do",
						type : "post",
						data : {
							goods_id : goods_id
						},
						success : function(data){
							if(data==null || data==""){
								$("#goods_id_msg").html("发货单编号有误!");
							}else{
								$("#goods_id_msg").html("结果如下:");
								$("#car_username").html(data.car.username);
								$("#car_number").html(data.car.car_number);
								$("#address").html(data.car.address);
								$("#tel").html(data.car.tel);
								$("#car_road").html(data.car.car_road);
								$("#customer_user").html(data.cust.customer_user);
								$("#customer_tel").html(data.cust.customer_tel);
								$("#customer_address").html(data.cust.customer_address);
								$("#goods_name").html(data.goods_name);
								$("#goods_tel").html(data.goods_tel);
								$("#goods_address").html(data.goods_address);
								if(data.goods_sure==0){
									$("#sureOrNot").html("<a href='sureGoods.html?id="+ data.car.carlog.id + "&operId=" + data.id + "'><input type='button' value='回执发货单确认 '></a>");
								}else{
									$("#sureOrNot").html("已经确认完毕")
								}
							}
						}
					});
					
				});
			});
		</script>
	</head>

	<body>
		<jsp:include page="../main/main_top.jsp" />
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="57">&nbsp;</td>
				<td width="637" valign="top" align="center">
					<table width="615" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td height="25" valign="top">当前位置：首页 >> 回执发货单确认</td>
						</tr>
					</table>
					<table width="350" height="23">
						<tr>
							<td width="160" height="18">发货单号：</td>
							<td width="90"><input type="text" id="goods_id" name="goods_id" title="请输入订单编号" /></td>
							<td width="118" align="center"><input type="button" id="submit_button" value="订单确认" /></td>
						</tr>
						<tr>
							<td width="160" height="18"></td>
							<td width="90"><span id="goods_id_msg" style="color: red;font-size: 10px;" ></span></td>
							<td width="118" align="center"></td>
						</tr>
						
					</table>
					<table width="529" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="E4ECEF">
						<tr>
							<td width="80" height="30">车主姓名：</td>
							<td width="173" bgcolor="#FFFFFF" id="car_username"></td>
							<td width="80">车牌号码：</td>
							<td width="176" bgcolor="#FFFFFF" id="car_number" ></td>
						</tr>
						<tr>
							<td height="30">车主地址：</td>
							<td bgcolor="#FFFFFF" id="address" ></td>
							<td>车主电话：</td>
							<td bgcolor="#FFFFFF" id="tel" ></td>
						</tr>
						<tr>
							<td height="30">运输路线：</td>
							<td colspan="3" bgcolor="#FFFFFF" id="car_road" ></td>
						</tr>
						<tr>
							<td height="30">发货人姓名：</td>
							<td bgcolor="#FFFFFF" id="customer_user" ></td>
							<td>发货人电话：</td>
							<td bgcolor="#FFFFFF" id="customer_tel" ></td>
						</tr>
						<tr>
							<td height="30">发货人地址：</td>
							<td colspan="3" bgcolor="#FFFFFF" id="customer_address" ></td>
						</tr>
						<tr>
							<td height="30">收货人姓名：</td>
							<td bgcolor="#FFFFFF" id="goods_name" ></td>
							<td>收货人电话：</td>
							<td bgcolor="#FFFFFF" id="goods_tel" ></td>
						</tr>
						<tr>
							<td height="30">收货人地址：</td>
							<td bgcolor="#FFFFFF" colspan="3" id="goods_address" ></td>
						</tr>
						
						<tr bgcolor="#FFFFFF">
							<td height="50" colspan="4" align="center" id="sureOrNot">
							</td>
						</tr>

					</table>
					<br>
				</td>
				<td width="115" valign="top">
					<jsp:include page="../main/main_right.jsp" />
				</td>
			</tr>
		</table>
		<jsp:include page="../main/main_down.jsp" />
	</body>

</html>