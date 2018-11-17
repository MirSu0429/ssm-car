var a,b,c;
			$(function(){
				$("#customer_tel_msg").html("");
				$("#customer_tel").blur(function(){
					var tel_value = $("#customer_tel").val();
					a = checkTel(tel_value);
				});
				$("#customer_user_msg").html("");
				$("#customer_user").blur(function(){
					var user_value = $("#customer_user").val();
					b = checkUser(user_value);
				});
				$("#customer_address_msg").html("");
				$("#customer_address").blur(function(){
					var address_value = $("#customer_address").val();
					c = checkAddress(address_value);
				});
				
			});
			function checkTel(tel_value){
				var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
				if(!reg.test(tel_value)){
					$("#customer_tel_msg").css("color","red")
					$("#customer_tel_msg").html("手机号格式有误!");
					return false;
				}else{
					$("#customer_tel_msg").css("color","green")
					$("#customer_tel_msg").html("√");
					return true;
				}
			}
			function checkUser(user_value){
				if(user_value=="" || user_value==null){
					$("#customer_user_msg").css("color","red")
					$("#customer_user_msg").html("姓名不能为空!");
					return false;
				}else{
					$("#customer_user_msg").css("color","green")
					$("#customer_user_msg").html("√");
					return true;
				}
			}
			function checkAddress(address_value){
				if(address_value=="" || address_value==null){
					$("#customer_address_msg").css("color","red")
					$("#customer_address_msg").html("地址不能为空!");
					return false;
				}else{
					$("#customer_address_msg").css("color","green")
					$("#customer_address_msg").html("√");
					return true;
				}
			}
			function checkSubmit(){
				if(!a || !b || !c){
					return false;
				}
				return true;
			}