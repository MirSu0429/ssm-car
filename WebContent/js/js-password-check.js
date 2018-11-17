var a,b,c;
			$(function(){
				$("#admin_password").blur(function(){
					$("#admin_password_msg").html("");
					var admin_password = $("#admin_password").val();
					var admin_id = $("#admin_id").val();
					$.ajax({
						url : "checkPassword.do",
						type : "post",
						data : {
							admin_password : admin_password,
							id : admin_id
						},
						success : function(data){
							a = checkPassword(data);
						}
					});
				});
				$(function(){
					$("#admin_repassword1_msg").html("");
					$("#admin_repassword1").blur(function(){
						var admin_repassword1 =$("#admin_repassword1").val();
						b = checkRepassword1(admin_repassword1);
					});
				});
				$(function(){
					$("#admin_repassword2_msg").html("");
					$("#admin_repassword2").blur(function(){
						var admin_repassword2 =$("#admin_repassword2").val();
						var admin_repassword1 =$("#admin_repassword1").val();
						c = checkRepassword2(admin_repassword2,admin_repassword1);
					});
				});
			});
			function checkPassword(data){
				if(data != null && data!=""){
					$("#admin_password_msg").css("color","green")
					$("#admin_password_msg").html("√");
					return true;
				}else{
					$("#admin_password_msg").css("color","red")
					$("#admin_password_msg").html("原密码错误!");
					return false;
				}
			}
			function checkRepassword1(admin_repassword1){
				if(admin_repassword1=="" || admin_repassword1==null){
					$("#admin_repassword1_msg").css("color","red")
					$("#admin_repassword1_msg").html("密码不能为空!");
					return false;
				}else{
					$("#admin_repassword1_msg").css("color","green")
					$("#admin_repassword1_msg").html("√");
					return true;
				}
			}
			function checkRepassword2(admin_repassword2,admin_repassword1){
				if(admin_repassword2=="" || admin_repassword2==null){
					$("#admin_repassword2_msg").css("color","red");
					$("#admin_repassword2_msg").html("密码不能为空!");
					return false;
				}else{
					if(admin_repassword1!==admin_repassword2){
						$("#admin_repassword2_msg").css("color","red");
						$("#admin_repassword2_msg").html("两次密码不一致");
						return false;
					}else{
						$("#admin_repassword2_msg").css("color","green");
						$("#admin_repassword2_msg").html("√");
						return true;
					}
				}
				
			}
			function checkSubmit(){
				if(!a || !b || !c){
					return false;
				}
				return true;
			}