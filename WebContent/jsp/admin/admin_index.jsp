<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="${pageContext.request.contextPath }/">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物流配货网</title>
		<link href="css/style.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript">
			var a,b;
			$(function(){
				$("#admin_user").blur(function(){
					$("#admin_user_msg").html("");
					var admin_user = $("#admin_user").val();
					a = checkUsername(admin_user);
				});
				$("#admin_password").blur(function (){
					$("#admin_password_msg").html("");
					var admin_user = $("#admin_user").val();
					var admin_password = $("#admin_password").val();
					$.ajax({
						url : "loginAdmin.do",
						type : "post",
						data : {
							admin_user : admin_user,
							admin_password : admin_password
						},
						success : function(data){
							b = checkPassword(data);
						}
					});
				});
			});
			function checkUsername(admin_user){
				if(admin_user=="" || admin_user==null){
					$("#admin_user_msg").css("color","red")
					$("#admin_user_msg").html("用户名不能为空!");
					return false;
				}else{
					$("#admin_user_msg").css("color","green")
					$("#admin_user_msg").html("√");
					return true;
				}
			}
			
			function checkPassword(data){
				if(data){
					$("#admin_password_msg").css("color","green")
					$("#admin_password_msg").html("√");
					return true;
				}else{
					$("#admin_password_msg").css("color","red")
					$("#admin_password_msg").html("密码错误!");
					return false;
				}
			}
			function checkSubmit(){
				if(!a || !b){
					return false;
				}
				return true;
			}
		</script>
	</head>

	<body>
		<table width="100%" height="20" border="0" cellpadding="0" cellspacing="0" bgcolor="1281AF">
			<tr>
				<td width="1%"><img src="images/logistics_01.jpg" width="57" height="20"></td>
				<td width="637">&nbsp;</td>
				<td width="50%">&nbsp;</td>
			</tr>
		</table>

		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="57"><img src="images/logistics_04.jpg" width="57" height="183"></td>
				<td width="29"><img src="images/logistics_13.jpg" width="637" height="183"></td>
				<td width="14"><img src="images/logistics_06.jpg" width="309" height="183"></td>
			</tr>
		</table>

		<table width="1003" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="58" height="467">&nbsp;</td>
				<td width="367">
						<c:if test="${ not empty msg}">${msg }</c:if>
					<form action="loginAdmin.html" method="post"  onsubmit="return checkSubmit()">
						<table width="208" align="right">
							<tr>
								<td height="35" colspan="2">
								用户名：<input type="text" id="admin_user" name="admin_user" />
								<span id="admin_user_msg" style="color: red;font-size: 10px;" ></span>
								</td>
								
							</tr>
							<tr>
								<td height="35" colspan="2">
								密&emsp;码：<input type="password" id="admin_password" name="admin_password" />
								<span id="admin_password_msg" style="color: red;font-size: 10px;" ></span>
								</td>
							</tr>
							<tr>
								<td height="35" colspan="2" align="center">
									<input type="submit" value="" style="background-image:url(images/land.gif);border:0;width:44px;height:35px" /> &nbsp;&nbsp;&nbsp;
									<input type="reset" value="" style="background-image:url(images/reset.gif);border:0;width:44px;height:35px" />
								</td>
							</tr>
							<tr>
								<td width="43" height="35">&nbsp;</td>
								<td width="153">
								</td>
							</tr>

						</table>

					</form>
				</td>
				<td width="578"><img src="images/logistics_14.jpg" width="578" height="467"></td>
			</tr>
		</table>
		<jsp:include page="../main/main_down.jsp" />
	</body>

</html>