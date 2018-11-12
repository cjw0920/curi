<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	
	
	body {
		margin-top : 50px;
		padding: 0;
		background-color: #f5f6f7;
	}
	
	#indexbody{
		padding-top: 200px;
	}
	
	div {
		 display: block;
	}
	
	a{ 
		text-decoration: none; 
	}
	
		
	input {
		outline-width: 0;
		height: 30px;
		width: 300px;
		border: none; 
		border-bottom: 1px solid black;
	}	
		
	table{
		display: block;
		height : 800px'
	}
	
	#qu {
		height: 50px;;
	}
	
	#main{
		background-color : #fff;
		width: 1000px;
		height: 600px;
		margin : auto;
		border-radius: 10px;
		
	}
	
	#memtle {
		display: block;
	}

	
	#welco {
		margin: 0 225px 25px 480px;
	}
	
	#divcon {
		float: left;
		font-size: 14px;
		
	}

	#left{
		float: left;
		width: 400px;
		height: 430px;
		margin-left: 40px;
	}
	
	#autodi{
		margin-left: 90px;
		margin-top: 30px;
	}
	.auto_acc{
		display:none;
	}
	
	
	#right{
		float: left;
		width: 500px;
		height: 500px;
		position: relative;
		margin-left: 20px;
		padding-top: 20px
	}
	
	td {
		width: 150px;
		height: 35px;
	}

.space{
	width : 130px;
}
	
#clr_both{
	clear:both;
}
	
#insert_id{
	 height : 30px;
     position: relative;
}
	
#input_id{
     display: block;
     position: relative;
     overflow: visible;
     box-sizing: border-box;
     
}
	
#insert_label1{
     font-size: 14px;
     position: absolute;
     z-index: 1;
     transition:all .4s cubic-bezier(.25,.8,.25,1);
     transition-duration:0.3s;
     color: #979797;
     
}

#input_pw{
     display: block;
     position: relative;
     overflow: visible;
     box-sizing: border-box;
}

#insert_pw{
	position: relative;
}

#insert_label2{
     font-size: 14px;
     position: absolute;
     z-index: 1;
     transition:all .4s cubic-bezier(.25,.8,.25,1);
     transition-duration:0.3s;
     color: #979797;
     
}

#input_rpw{
     display: block;
     position: relative;
     overflow: visible;
     box-sizing: border-box;
}

#insert_rpw{
	position: relative;
}

#insert_label3{
     font-size: 14px;
     position: absolute;
     z-index: 1;
     transition:all .4s cubic-bezier(.25,.8,.25,1);
     transition-duration:0.3s;
     color: #979797;
     
}



#input_phone{
     display: block;
     position: relative;
     overflow: visible;
     box-sizing: border-box;
}

#insert_phone{
	position: relative;
}

#insert_label4{
     font-size: 14px;
     position: absolute;
     z-index: 1;
     transition:all .4s cubic-bezier(.25,.8,.25,1);
     transition-duration:0.3s;
     color: #979797;
}

#insert_name{
     position: relative;
}
	
#pw_now{
     display: block;
     position: relative;
     overflow: visible;
     box-sizing: border-box;
     
}

#insert_label5{
     font-size: 14px;
     position: absolute;
     z-index: 1;
     transition:all .4s cubic-bezier(.25,.8,.25,1);
     transition-duration:0.3s;
     color: #979797;
     
}
   
#input_ad{
     display: block;
     position: relative;
     overflow: visible;
     box-sizing: border-box;
}

#insert_ad{
	position: relative;
}

#insert_label6{
     font-size: 14px;
     position: absolute;
     z-index: 1;
     transition:all .4s cubic-bezier(.25,.8,.25,1);
     transition-duration:0.3s;
     color: #979797;
     
}

#insert_label7{
     font-size: 14px;
     position: absolute;
     z-index: 1;
     transition:all .4s cubic-bezier(.25,.8,.25,1);
     transition-duration:0.3s;
     color: #979797;
     
}

#insert_label8{
     font-size: 14px;
     position: absolute;
     z-index: 1;
     transition:all .4s cubic-bezier(.25,.8,.25,1);
     transition-duration:0.3s;
     color: #979797;
     
}

#search{
width: 100px;
position: absolute;
top: 2.5px;
left: 200px;
}
 
   
#email_id{
	width: 85px;
	position: relative;
}

#email_url{
	width: 80px;
}


#wrap_email>* {
	float: left;
	margin-right: 5px; 
}

#wrap_email>span{
	font-size: 15px;
	margin-top : 5px;
	margin-right: 10px;
}
select{
margin-left : 5px;
width: 90px;
margin-top: 5px;
height: 25px;
} 



	#end{
		font-size: 20px;
		font-weight: 600;
		line-height: 61px;
		box-sizing: border-box;
		padding-top:1px;
		text-align: center;
		position: absolute;
		float: right;
		margin-top: 30px;
		margin-left: 140px;		
		width: 250px;
		height: 100px;
	}
	
	
	#fini{
		display : block;
		color: #fff;
		border:1px solid #87d0ff;
		background-color: #87d0ff;
		width: 225px;
		height: 70px;
	}
	
	
	.filso{
		color:red;
		display : none;
	}
	
	#same_nowpw{
		text-align: center;
		margin-top: 50px;
		display: none;
	}
	
	.checkpw{
		background-color:#EAEAEA; 
	}

</style>
<script type="text/javascript">


$(document).ready(function(){
	
	
	
	
	
	
	var myIndex = 0;
	carousel();

	function carousel() {
	    var i;
	    var x = document.getElementsByClassName("auto_acc");
	    for (i = 0; i < x.length; i++) {
	       x[i].style.display = "none";  
	    }
	    myIndex++;
	    if (myIndex > x.length) {myIndex = 1}    
	    x[myIndex-1].style.display = "block";  
	    setTimeout(carousel, 2000); // Change image every 2 seconds
	};
	

	
});


	$(document).on("blur","#pw_now",function(){
		
		var nowPw = $("#pw_now").val();
		if(nowPw !=""){
		$.ajax({
			url:"pwCheck.bizpoll",
			type : "POST",
			dataType:"json",
			data : "id=${sessionScope.loginUser.id}&pw="+nowPw,
			success:function(data){
				if(data.message=="-1"){
					$("#fil_npw").text("일치").css("display","block").css("color","blue");
					$('#input_pw').prop('readonly', false);
					$('#input_rpw').prop('readonly', false);
					$(".checkpw").css("background-color","white");
					
					return false;
				}else{
					$("#fil_npw").text("불일치").css("display","block").css("color","red");
					$("#pw_now").focus();
					return false;
				}
			},
			error:function(){
				alert("System Error!!");
			}
		
		});
		}else{}
	});

	$(document).on("click","#fini",function(){
	 	var form = $("#frm_mem"),
			mpw = $("#input_pw"),
			mpw2 = $("#input_rpw"),
			mpw_now = $("#pw_now");
	 	
	 	//$.trim() <-  공백제거
	 	var now_pw = $.trim(mpw_now.val());
		var nowPw = $("#pw_now").val();
	
 		
		var pw = $.trim(mpw.val());
		
		var pw2 = $.trim(mpw2.val());
		var regPass=/^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
			
		
		if(pw==""){
			mpw.focus();
			$("#fil_pw").css("display","block");
			return false;
		}else if(!regPass.test(pw)){
			mpw.select();
			$("#fil_pw").text("8~20 한글x").css("display","block");
			return false;
		}else if(pw2==""){
			mpw2.focus();
			$("#fil_rpw").css("display","block");
			return false;
		}else if(pw != pw2){
			mpw2.select();
			$("#fil_rpw").text("다릅니다").css("display","block");
			return false;
		}else if(now_pw == pw){
			mpw.focus();
			mpw.val("");
			mpw2.val("");
			$("#same_nowpw").css("display","block").css("color","red");
			return false;
		}
		form.submit();
	}); 



</script>
</head>

<body id="indexbody">
	<div id="main">
	
		<div id="memtle">
			<div>
				<img alt="welcome to here" src="img/welcome.png" id="welco">
			</div>


			<div id="divcon">



				<div id="left">
				
				
				
				
				<div id="autodi">
					<img class="auto_acc" src="img/acc/ear1.gif" style="width:200px" style="height : 250px">
					<img class="auto_acc" src="img/acc/ear.jpg" style="width:200px" style="height : 250px">
					<img class="auto_acc" src="img/acc/neck.gif" style="width:200px" style="height : 250px">
				</div>
				
				
				</div>

				<div id="right">
					<form action="memberpwplay.bizpoll" method="POST" name="frm_mem" id="frm_mem">
						<table>
							<tr>
							
							<td class="space"> 현재 비밀번호 <br><span id ="fil_npw" class="filso"> *</span></td>

							<td>
								<div id="insert_name">
									<label for="pw_now" id="insert_label1">  </label> 
									<input type="text" id="pw_now" class="input_join" id="pw_now" name="pw_now">
								</div>
							</td>
							</tr>
							<tr>
							<td class="space"></td>
							
							<br>
							
							<td>
								<div id="insert_id">
									
								</div>
							</td>
							</tr>
							<tr>
								<td class="space">새 비밀번호 <br><span id ="fil_pw" class="filso"> *</span></td>

								<td>
									<div id="insert_pw">
										<label for="input_pw" id="insert_label3"> </label> 
										<input type="password" id="input_pw" class="input_join checkpw" id="pwval" name="input_pw" readonly="readonly">
										
									</div>
									
								</td>
							</tr>

							<tr>
								<td class="space">
								<span>새 비밀번호 확인</span><br> <span id ="fil_rpw"  class="filso"> *</span></td>

								<td>
									<div id="insert_rpw">
										<label for="input_rpw" id="insert_label4"> </label> 
										<input type="password" id="input_rpw" class="input_join checkpw" id="rpwval" readonly="readonly">
										
									</div>
									</form>
								</td>
							</tr>

							<tr>
							<td>
								<input type="hidden" name="idval" value="${sessionScope.loginUser.id}">
							</td>
							</tr>

						</table>
					</form>

					<div id ="same_nowpw">
						<span>현재 비밀번호와 일치합니다.</span>
					</div>


					<div id="end"> 
							<span><a href="#" id="fini">수정완료</a></span>
					</div>

				</div>
				
			</div>
			

		</div>
					
			
	</div>
</body>
</html>