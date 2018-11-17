var a,b,c,d,e,f,g;
			$(function(){
				//姓名
				$("#username_msg").html("");
				$("#username").blur(function(){
					var username = $("#username").val();
					a=checkUsername(username);
				});
				//身份证号
				$("#user_number_msg").html("");
				$("#user_number").blur(function(){
					var user_number = $("#user_number").val();
					b=checkUserNumber(user_number);
				});
				//地址
				$("#address_msg").html("");
				$("#address").blur(function(){
					var address = $("#address").val();
					c=checkAddress(address);
				});
				//车牌号码
				$("#car_number_msg").html("");
				$("#car_number").blur(function(){
					var car_number = $("#car_number").val();
					d=checkCarNumber(car_number);
				});
				//电话号码
				$("#tel_msg").html("");
				$("#tel").blur(function(){
					var tel = $("#tel").val();
					e=checkTel(tel);
				});
				//运输路线
				$("#car_road_msg").html("");
				$("#car_road").blur(function(){
					var car_road = $("#car_road").val();
					f=checkCarRoad(car_road);
				});
				//车辆 描述
				$("#car_content_msg").html("");
				$("#car_content").blur(function(){
					var car_content = $("#car_content").val();
					g=checkCarContent(car_content);
				});
				
			});
			function checkUsername(username){
				if(username=="" || username==null){
					$("#username_msg").css("color","red")
					$("#username_msg").html("姓名不能为空!");
					return false;
				}else{
					$("#username_msg").css("color","green")
					$("#username_msg").html("√");
					return true;
				}
			}
			function checkUserNumber(user_number){
				var reg = /^\d{15}|\d{18}$/;
				if(!reg.test(user_number)){
					$("#user_number_msg").css("color","red")
					$("#user_number_msg").html("身份证号格式有误!");
					return false;
				}else{
					$("#user_number_msg").css("color","green")
					$("#user_number_msg").html("√");
					return true;
				}
			}
			function checkAddress(address){
				if(address=="" || address==null){
					$("#address_msg").css("color","red")
					$("#address_msg").html("地址不能为空!");
					return false;
				}else{
					$("#address_msg").css("color","green")
					$("#address_msg").html("√");
					return true;
				}
			}
			
			function checkCarNumber(car_number){
				var reg = /^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$/;
				if(!reg.test(car_number)){
					$("#car_number_msg").css("color","red")
					$("#car_number_msg").html("车牌号格式有误!");
					return false;
				}else{
					$("#car_number_msg").css("color","green")
					$("#car_number_msg").html("√");
					return true;
				}
			}
			function checkTel(tel){
				var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
				if(!reg.test(tel)){
					$("#tel_msg").css("color","red")
					$("#tel_msg").html("电话号格式有误!");
					return false;
				}else{
					$("#tel_msg").css("color","green")
					$("#tel_msg").html("√");
					return true;
				}
			}
			
			function checkCarRoad(car_road){
				if(car_road=="" || car_road==null){
					$("#car_road_msg").css("color","red")
					$("#car_road_msg").html("运输线路不能为空!");
					return false;
				}else{
					$("#car_road_msg").css("color","green")
					$("#car_road_msg").html("√");
					return true;
				}
			}
			function checkCarContent(car_content){
				if(car_content=="" || car_content==null){
					$("#car_content_msg").css("color","red")
					$("#car_content_msg").html("车辆描述不能为空!");
					return false;
				}else{
					$("#car_content_msg").css("color","green")
					$("#car_content_msg").html("√");
					return true;
				}
			}
			
			function checkSubmit(){
				if(!a || !b || !c || !d || !e || !f || !g){
					return false;
				}
				return true;
			}