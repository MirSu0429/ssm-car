var a,b,c,d,e,f,g;
			$(function(){
				$("#car_id_msg").html("请选择车辆");
				$("#car_id").change(function(){
					var car_id = $("#car_id option:selected").val();
					a = checkCarId(car_id);
				});
				$("#customer_id_msg").html("请选择发货客户");
				$("#customer_id").change(function(){
					var customer_id = $("#customer_id option:selected").val();
					b = checkCustomerId(customer_id);
				});
				
				$("#goods_name_msg").html("");
				$("#goods_name").blur(function(){
					var goods_name = $("#goods_name").val();
					c = checkGoodsName(goods_name);
				});
				
				$("#goods_address_msg").html("");
				$("#goods_address").blur(function(){
					var goods_address = $("#goods_address").val();
					d = checkGoodsAddress(goods_address);
				});
				
				$("#goods_tel_msg").html("");
				$("#goods_tel").blur(function(){
					var goods_tel = $("#goods_tel").val();
					e = checkTel(goods_tel);
				});
				$("#startTime_msg").html("");
				$("#startTime").blur(function(){
					var startTime = $("#startTime").val();
					f = checkStartTime(startTime);
				});
				$("#endTime_msg").html("");
				$("#endTime").blur(function(){
					var endTime = $("#endTime").val();
					g = checkEndTime(endTime);
				});
				
				
			});
			
			function checkCarId(car_id){
				if(car_id<1){
					$("#car_id_msg").css("color","red")
					$("#car_id_msg").html("请选择车辆!");
					return false;
				}else{
					$("#car_id_msg").css("color","green")
					$("#car_id_msg").html("√");
					return true;
				}
			}
			function checkCustomerId(customer_id){
				if(customer_id<1){
					$("#customer_id_msg").css("color","red")
					$("#customer_id_msg").html("请选择发货客户!");
					return false;
				}else{
					$("#customer_id_msg").css("color","green")
					$("#customer_id_msg").html("√");
					return true;
				}
			}
			function checkGoodsName(goods_name){
				if(goods_name=="" || goods_name==null){
					$("#goods_name_msg").css("color","red")
					$("#goods_name_msg").html("收货人不能为空!");
					return false;
				}else{
					$("#goods_name_msg").css("color","green")
					$("#goods_name_msg").html("√");
					return true;
				}
			}
			function checkGoodsAddress(goods_address){
				if(goods_address=="" || goods_address==null){
					$("#goods_address_msg").css("color","red")
					$("#goods_address_msg").html("收货地址不能为空!");
					return false;
				}else{
					$("#goods_address_msg").css("color","green")
					$("#goods_address_msg").html("√");
					return true;
				}
			}
			function checkTel(goods_tel){
				var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
				if(!reg.test(goods_tel)){
					$("#goods_tel_msg").css("color","red")
					$("#goods_tel_msg").html("手机格式有误!");
					return false;
				}else{
					$("#goods_tel_msg").css("color","green")
					$("#goods_tel_msg").html("√");
					return true;
				}
			}
			function checkStartTime(startTime){
				if(startTime=="" || startTime==null){
					$("#startTime_msg").css("color","red")
					$("#startTime_msg").html("发货 时间不能为空!");
					return false;
				}else{
					$("#startTime_msg").css("color","green")
					$("#startTime_msg").html("√");
					return true;
				}
			}
			function checkEndTime(endTime){
				if(endTime=="" || endTime==null){
					$("#endTime_msg").css("color","red")
					$("#endTime_msg").html("收货时间不能为空!");
					return false;
				}else{
					$("#endTime_msg").css("color","green")
					$("#endTime_msg").html("√");
					return true;
				}
			}
			function checkSubmit(){
				if(!a || !b ||!c || !d || !e || !f || !g){
  					return false;
				}
				return true;
			}
			