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
	
#input_name{
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
	
	

</style>
<script type="text/javascript">


$(document).ready(function(){
	
	 
	
/* 	 
		//경고창 출력
	
		 $(".input_join").blur(function(){
		var inputVal = $(this).val();
		if(inputVal ==""){
			$(this).next(".br").css("display","block")
			$(this).css("margin-bottom","0px");
		}else{
			$(this).next(".br").css("display","none")
			$(this).css("margin-bottom","0px");
		}
		
		
	}); 
	
	//선행조건 : 둘다 값이 있을때만 동작, 비밀번호와 비밀번호 확인 값이 다를때 동작
	//비밀번호와 확인이 다르면 메시지 코드 출력, 비밀번호 확인에 focus, 값을 초기화
	 $(".checkpw").blur(function(){
		var pw1 = $("#input_pw").val();
		var pw2 = $("#input_rpw").val();
		if(pw1 !=""&&pw2!=""){
			if(pw1==pw2){
				$(".checkpw").next().css("display","none");
			}else{
				$(this).focus();
				$(this).next.css("display","block");
				$(this).val("");
			}
		}
	});  
		 */ 
	
		
	
	
	var nameVal = $("#input_name").val();
		if(nameVal == ""){
		         $("#input_name").css("font-size", "5px");
		         $("#insert_label1").css("bottom","10px").css("font-size","14px");
		}else{
			 $("#insert_label1").css("bottom","25px").css("font-size","10px");
	
	};
	
	
	
	
	 
    var idVal = $("#input_id").val();
	if(idVal == ""){
	         $("#input_id").css("font-size", "5px");
	         $("#insert_label2").css("bottom","10px").css("font-size","14px");
	}else{
		 $("#insert_label2").css("bottom","25px").css("font-size","10px");
	};
    
	
	var pwVal = $("#input_pw").val();
	if(pwVal == ""){
	         $("#input_pw").css("font-size", "5px");
	         $("#insert_label3").css("bottom","10px").css("font-size","14px");
	}else{
		 $("#insert_label3").css("bottom","25px").css("font-size","10px");
	};
	
	
	var pVal = $("#input_phone").val();
	if(pVal == ""){
	         $("#input_phone").css("font-size", "5px");
	         $("#insert_label5").css("bottom","10px").css("font-size","14px");
	}else{
		 $("#insert_label5").css("bottom","25px").css("font-size","10px");
	};
	

	$("#input_pw").focus(function(){
	    $(this).css("font-size","17px");
	     $("#insert_label3").css("bottom","25px").css("font-size","10px");
	});
	
	$("#input_pw").blur(function() {
		var pwVal = $(this).val();
		if(pwVal == ""){
		         $(this).css("font-size", "5px");
		         $("#insert_label3").css("bottom","10px").css("font-size","14px");
		         $("#fil_pw").css("display","block");
			 	 $(this).parent().css("margin_bottom","30px");
		}else{
			$("#fil_pw").css("display","none");
	 	    $(this).parent().css("margin_bottom","16px");
		}
	});
    
	$("#input_rpw").focus(function(){
	    $(this).css("font-size","17px");
	     $("#insert_label4").css("bottom","25px").css("font-size","10px");
	});
	
	$("#input_rpw").blur(function() {
		var pwVal = $(this).val();
		if(pwVal == ""){
		         $(this).css("font-size", "5px");
		         $("#insert_label4").css("bottom","10px").css("font-size","14px");
		         $("#fil_rpw").css("display","block");
			 	 $(this).parent().css("margin_bottom","30px");
		}else{
			$("#fil_rpw").css("display","none");
	 	    $(this).parent().css("margin_bottom","16px");
		}
	});
	
	$("#input_rpw").blur(function(){
		var pw1 = $("#input_pw").val();
		var pw2 = $("#input_rpw").val();
		if(pw1 != "" && pw2 != ""){
			if(pw1 == pw2){
				$("#fil_rpw").next().css("display","none");
			}else{
				$("#fil_rpw").text("다시 입력하세요").css("display","block");
				$("#input_rpw").focus();
				$(this).val("");
			}
		}

	}); 
	
	
	
	
	
	
	
	
	
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
	
	$("#selmail").change(function() {
		var selmail = $("#selmail").val(); /* #selmail의 value 값을 selmail 변수에 담기 */
		if (selmail == "directVal") {
			$("#email_url").val("");
			$("#email_url").focus();
			
		} else {
			$("#email_url").val(selmail); /* #email_url의 value 속성에 selmail변수 값을 넣어라 */
			
		}
	});
	
	
	
	 

	 
	$(".addrbtn").click(function(){
		$("#search").click();
	});
	
	var email_info = "${sessionScope.loginUser.email}";
	var index = email_info.indexOf('@');
	var emailid = email_info.substring(0,index);
	var emailurl = email_info.substring(index+1);
	$("#email_id").val(emailid);
	$("#email_url").val(emailurl);
	
	
	
	
	
	
	
	
});

	$(document).on("click","#fini",function(){
	 	var form = $("#frm_mem"),
		mid = $("#input_id"),
		mpw = $("#input_pw"),
		mpw2 = $("#input_rpw"),
		mname = $("#input_name"),
		mphone = $("#input_phone"),
		memail1 = $("#email_id"),
		memail2 = $("#email_url"),
		mzipcode = $("#sample6_postcode"),
		maddr1 = $("#sample6_address"),
		maddr2 = $("#sample6_address2");
		
	 	
	 	
	 	
	 	//$.trim() <-  공백제거
		
	 	var name = $.trim(mname.val());
 		var regName =/^[가-힣]*$/; 
	
 		if(name==""){
 			mname.focus();
 			$("#fil_name").css("display","block");
 			return false;
 		}else if(!regName.test(name)){
 			mname.select();
 			$("#fil_name").text("한글만 입력").css("display","block");
 			return false;
 		}
 		
		var id = $.trim(mid.val());
		var regid = /^[a-zA-Z0-9]{4,12}$/;
		
		if(id==""){
			mid.focus();
			$("#fil_id").css("display","block");
			return false;
		}else if(!regid.test(id)){
			mid.focus();
			$("#fil_id").text("4~12").css("display","block");
			return false;
		}
		
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
		}
		
		var phone =$.trim(mphone.val());
		var regphone = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
		
		if(phone==""){
			mphone.focus();
			$("#fil_phone").css("display","block");
			return false;
		}else if(!regphone.test(phone)){
			mphone.select();
			$("#fil_phone").text("- 빼고 입력").css("display","block");
			return false;
		}


	

		
		var zipcode = $.trim(mzipcode.val());
		var addr1 = $.trim(maddr1.val());
		var addr2 = $.trim(maddr2.val());
		
		
		if(zipcode==""){
			
			maddr2.focus();
			$("#fil_adr").text("우편번호").css("display","block");
			return false;
		}else if(addr1==""){
			maddr2.focus();
			$("#fil_adr").text("주소작성").css("display","block");
			return false;
		}else if(addr2==""){
			maddr2.focus();
			$("#fil_adr").text("상세주소작성").css("display","block");
			return false;
		}
		
		
		
		
		
		
		
		
		var mailid = $.trim(memail1.val());
		var mailurl = $.trim(memail2.val());
	 	var mail = mailid+"@"+mailurl;
	 	
		var regMail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		
		if(mailid==""){
			memail1.focus();
			$("#fil_mail").css("display","block");
			return false;
		}else if(mailurl==""){
			memail2.focus();
			$("#fil_mail").text("url 입력하세요").css("display","block");
			return false;
		}else if(!regMail.test(mail)){
			memail1.select();
			$("#selmail").next().text("e-mail형식이 올바르지 않습니다.").css("display","block");
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
					<form action="memberUpdatePlay.bizpoll" method="POST" name="frm_mem" id="frm_mem">
						<table>
							<tr>
							
							<td class="space">이름 <br><span id ="fil_name" class="filso"> *</span></td>

							<td>
								<div id="insert_name">
									<label for="input_name" id="insert_label1"> 이름 </label> 
									<input type="text" id="input_name" class="input_join" id="nameval" name="input_name" value="${sessionScope.loginUser.name}">
								</div>
							</td>
							</tr>
							<tr>
							<td class="space">아이디</td>

							<td>
								<div id="insert_id">
									<label for="input_id" id="insert_label2"> 아이디 </label> 
									<input type="text" id="input_id" class="input_join" id="idval" name="input_id" readonly="readonly" value="${sessionScope.loginUser.id}">
									
									
								</div>
							</td>
							</tr>
							<tr>
								<td class="space">비밀번호 <br><span id ="fil_pw"  class="filso"> *</span></td>

								<td>
									<div id="insert_pw">
										<label for="input_pw" id="insert_label3"> 비밀번호 </label> 
										<input type="password" id="input_pw" class="input_join checkpw" id="pwval" name="input_pw" readonly="readonly" value="${sessionScope.loginUser.pw}">
										
									</div>
									
								</td>
							</tr>

							<tr>
								<td class="space">
								<span>비밀번호 확인</span><br> <span id ="fil_rpw"  class="filso"> *</span></td>

								<td>
									<div id="insert_rpw">
										<label for="input_rpw" id="insert_label4"> 비밀번호 재확인 </label> 
										<input type="password" id="input_rpw" class="input_join checkpw" id="rpwval" >
										
									</div>
									</form>
								</td>
							</tr>

							<tr>
								<td class="space">phone<br><span id ="fil_phone"  class="filso">*</span></td>

								<td>
									<div id="insert_phone">
										<label for="input_phone" id="insert_label5"> 핸드폰번호 </label> 
										<input type="text" id="input_phone" class="input_join" id="phoneval" name="input_phone" value="${sessionScope.loginUser.phone}">
										
									</div>
								</td>
							</tr>

							<tr>
								<td class="space">주소<span id ="fil_adr"  class="filso"> *</span></td>

								<td>
									<div id="insert_ad">
										<input type="text" id="sample6_postcode" placeholder="우편번호" class="input_join addrbtn" readonly="readonly" name="adr1val" value="${sessionScope.loginUser.zipcode}"> 
										
										<input type="button" onclick="sample6_execDaumPostcode()"  value="우편번호 찾기" id="search"><br>
										
										<input type="text" id="sample6_address" placeholder="주소" class="input_join addrbtn" readonly="readonly" name="adr2val" value="${sessionScope.loginUser.addr1}"> 
										
										<input type="text" id="sample6_address2" placeholder="상세주소" class="input_join" name="adr3val" value="${sessionScope.loginUser.addr2}">
										
										<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
										<script>
										    function sample6_execDaumPostcode() {
										        new daum.Postcode({
										            oncomplete: function(data) {
										                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
										
										                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
										                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
										                var fullAddr = ''; // 최종 주소 변수
										                var extraAddr = ''; // 조합형 주소 변수
										
										                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
										                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
										                    fullAddr = data.roadAddress;
										
										                } else { // 사용자가 지번 주소를 선택했을 경우(J)
										                    fullAddr = data.jibunAddress;
										                }
										
										                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
										                if(data.userSelectedType === 'R'){
										                    //법정동명이 있을 경우 추가한다.
										                    if(data.bname !== ''){
										                        extraAddr += data.bname;
										                    }
										                    // 건물명이 있을 경우 추가한다.
										                    if(data.buildingName !== ''){
										                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
										                    }
										                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
										                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
										                }
										
										                // 우편번호와 주소 정보를 해당 필드에 넣는다.
										                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
										                document.getElementById('sample6_address').value = fullAddr;
										
										                // 커서를 상세주소 필드로 이동한다.
										                document.getElementById('sample6_address2').focus();
										            }
										        }).open();
										    }
										</script>
									</div>
								</td>
							</tr>

							<tr>
								<td class="space">이메일<span id ="fil_mail"  class="filso"> *</span></td>

								<td>
									<div id="wrap_email">
										<input type="text" id="email_id" placeholder="ID" id="eidval" name="email_id">
										<span>@</span> 
										<input type="text" id="email_url" placeholder="URL" id="urlval" name="email_url"> 
										<select id="selmail">
											<option value="" selected="selected" id="selec">Email
												선택</option>
											<option value="directVal">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="nate.com">nate.com</option>
										</select>
									</div>
									
								</td>
							</tr>

						</table>
					</form>

					<div id="end"> 
							<span><a href="#" id="fini">수정완료</a></span>
					</div>

				</div>
				
			</div>
			

		</div>
					
			
	</div>
</body>
</html>