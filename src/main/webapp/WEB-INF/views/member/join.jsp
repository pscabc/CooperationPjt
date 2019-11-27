<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		box-sizing:border-box;
		/* border:1px solid black; */
	}
	body{
		background-image : url("/resources/img/회색배경.jpeg");
		background-size : cover;
	}
	#wrap{
		background:white;
		width:550px;
		height:600px;
		margin:60px auto;
	}
	#wrap-con{
		height:450px;
	}
	#wrap-top{
		background-image : url("/resources/img/파란배경.jpg");
		background-size : cover;
	}
	#login-form{
		margin:70px auto;
		width:450px;
	}
	#id-form{
		height:50px;
	}
	#pw-form{
		margin-top:30px;
		height:50px;
	}
	.input{
		width: 350px;
		margin-top:20px;
		margin-left:10px;
		height: 35px;
		border: none;
		border:1px solid gray;
		font-size: 10pt;
		color: #63717f;
		padding-left: 25px;
	 	border-radius: 5px;
		display:inline-block;
		-webkit-appearance: none;
	}
	.input-id{
		width: 280px;
		margin-top:20px;
		margin-left:10px;
		height: 35px;
		border: none;
		border:1px solid gray;
		font-size: 10pt;
		color: #63717f;
		padding-left: 25px;
	 	border-radius: 5px;
		display:inline-block;
		-webkit-appearance: none;
	}
	#submit-btn{
		background:#3366ff;
		text-align:center;
		line-height:50px;
		width:150px;
		height:50px;
		color:white;
		margin-left:150px;
		margin-top:80px;
		cursor:pointer;
	}
	#wrap-top{
		height:50px;
		text-align:center;
		line-height:50px;
		font-weight:bold;
		color:white;
	}

	.text{
		color:gray;
		font-size:0.8em;
		width:200px;
	}
	select{
		margin-top:30px;
		display:inline-block;
		width:200px;
		height:30px;
		border-radius:5px;
		margin-left:10px;
	}
	#join-btn{
		width:450px;
		height:30px;
		background:royalBlue;
		color:white;
		font-weight:bold;
		text-align:center;
		cursor:pointer;	
		outline:0;
		border:0;
		margin-top:30px;
		margin-bottom:10px;
	}
	#login-btn{
		width:450px;
		height:30px;
		background:#eee;
		color:royalBlue;
		font-weight:bold;
		text-align:center;
		cursor:pointer;	
		outline:0;
		border:0;
		margin-top:20px;
	}
	.red{
		color:red;
	}
	#check-id{
		margin-left:10px;
		font-size:0.8em;
		color:royalBlue;
	}
	#id-img{
		opacity:0.8;
		margin-top:22px;
		margin-left:10px;
	}
	#pw-img{
		opacity:0.8;
		margin-top:22px;
		margin-left:10px;
	}
	#pw-re-img{
		opacity:0.8;
		margin-top:22px;
		margin-left:10px;
	}
	#name-img{
		opacity:0.8;
		margin-top:22px;
		margin-left:10px;
	}
	#phone-img{
		opacity:0.8;
		margin-top:22px;
		margin-left:10px;
	}
	.rd-label{
		font-size:0.9em;
		color:gray;
	}
</style>
</head>
<body>
	<div id="wrap">
		<div id="wrap-top">
			Sign Up
		</div>
		<form name ="form" action="/insert.do" method="post">
			<table style="margin-left:15px; margin-top:15px;">
				<tr>
					<td style="text-align:right; padding-top:12px;"><span class="text"><span class="red">*</span>아이디</span></td>
					<td>
						<div class="input-div">
						<input id="id" class="input-id" type="text" name="memberId" placeholder="이메일 형식">
						<span id="check-id"></span>
						</div>
					</td>
					<td>
					<img id="id-img">
					</td>
				</tr>
				<tr>
					<td style="text-align:right; padding-top:12px;"><span class="text"><span class="red">*</span>비밀번호</span></td>
					<td>
						<input class="input" type="password" name="memberPw" id="pw">
					</td>
					<td>
					<img id="pw-img">
					</td>
				</tr>
				<tr>
					<td style="text-align:right; padding-top:12px;"><span class="text"><span class="red">*</span>비밀번호확인</span></td>
					<td>
						<input class="input" type="password" name="memberPwRe" id="pw-re">
					</td>
					<td>
						<img id="pw-re-img">
					</td>
				</tr>
				<tr>
					<td style="text-align:right; padding-top:12px;"><span class="text"><span class="red">*</span>이름</span></td>
					<td>
						<input class="input" type="text" name="memberName" id="name">
					</td>
					<td>
						<img id="name-img">
					</td>
				</tr>
				<tr>
					<td style="text-align:right; padding-top:12px;"><span class="text">전화번호</span></td>
					<td>
						<div class="input-div">
							<span class="text"></span>
							<input id="phone" class="input" type="text" placeholder="010-0000-0000" name="phone">
						</div>
					</td>
					<td>
						<img id="phone-img">
					</td>
				</tr>
				<tr>
					<td style="text-align:right; padding-top:25px;"><span class="text"><span class="red">*</span>자사선택</span></td>
					<td>
						<div style="margin-top:0px; text-align:center">
							<input type="radio" id="rd" name="grade" value="제조사직원" checked>
								<label class="rd-label" for="rd">제조사</label>
							<input type="radio" id="rd2" name="grade" value="협력사직원">
								<label class="rd-label" for="rd2">협력사</label>
							<select id="sel" class="select" name="company" style="visibility:hidden">
								<option value="">협력사 선택</option>
								<c:forEach items="${cooper}" var="c">
									<option value='${c}'>${c}</option>
								</c:forEach>
							</select>
						</div>
					</td>
				</tr>
			</table>
			<div style="text-align:center;">
				<input id="chk" type="hidden" name="chk" value="">
				<button type="submit" id="join-btn" onclick="return check()">
					회원가입			
				</button>
				<div style="border:1px solid darkgray; width:210px; display:inline-block;">
				</div>
				<span style="color:darkgray">or</span>
				<div style="border:1px solid darkgray; width:210px; display:inline-block;">
				</div>
				<button type="button" id="login-btn" onclick="location.href='/'">
					로그인
				</button>
			</div>	
		</div>
		</form>
	</div>
	<script>
		var chkArr = [0,0,0,0,0];
		var chk = 0;
		
		function check(){
			chkArr.forEach(function(element){
				if(element == 1){
					chk = chk + 1;
				}
			});
			console.log(chk);
			$("#chk").val(chk);
			console.log("chk : " + $("#chk").val());
			//form.submit();
		}
	
		$("#id").on("change",function(){
			//blur가 발동 했을 때, ajax로 db에 해당 입력ID를 사용중인 회원이 있는지 확인.
			//확인 후 check-id 태그 css 변경
			var memberId = $("#id").val();
			var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
				
			if(re.test(memberId)){
				$("#id-img").attr("src","/resources/img/일치.png");
				$("#id-img").css("width","25");
				$("#id-img").css("height","25");
				
				$.ajax({
					url : "/checkId.do",
					data:{memberId:memberId},
					type : "get",
					dataType:"json",
					success : function(data){
						console.log("1 = 중복o , 0 = 중복x : "+data);
						console.log(data.result);
						if(data.result == 1){
							$("#check-id").css("color","red");
							$("#check-id").text("사용 중");
							chkArr[0] = 0;
						}else{
							$("#check-id").css("color","blue");
							$("#check-id").text("사용가능");
							chkArr[0] = 1;
						}
					}, error : function(){
						console.log("실패");
						chkArr[0] = 0;
					}
				});
				
			}else{
				alert("이메일 형식으로 입력해주세요.");
				$("#id-img").attr("src","/resources/img/불일치.png");
				$("#id-img").css("width","25");
				$("#id-img").css("height","25");
				$("#pw-re").focus();
				chkArr[0] = 0;
			}
		});

		$("#pw-re").on("change",function(){
			var pw = $("#pw").val();
			var pwRe = $("#pw-re").val();
			
			if(pw == pwRe){
				console.log(pw);
				console.log(pwRe);
				$("#pw-re-img").attr("src","/resources/img/일치.png");
				$("#pw-re-img").css("width","25");
				$("#pw-re-img").css("height","25");
				chkArr[1] = 1;
				
			}else{
				alert("패스워드가 같지 않습니다.");
				$("#pw-re-img").attr("src","/resources/img/불일치.png");
				$("#pw-re-img").css("width","25");
				$("#pw-re-img").css("height","25");
				chkArr[1] = 0;
			}
		});
		
		
		$("#pw").on("change",function(){
			var pw = $(this).val();
			var re = /^[a-zA-Z0-9]{4,12}$/
			if(re.test(pw) && pw != null){
				$("#pw-img").attr("src","/resources/img/일치.png");
				$("#pw-img").css("width","25");
				$("#pw-img").css("height","25");
				chkArr[2] = 1;
			}
			if(!re.test(pw)){
				alert("4 ~ 12의 숫자&문자를 입력해주세요.");
				$("#pw-img").attr("src","/resources/img/불일치.png");
				$("#pw-img").css("width","25");
				$("#pw-img").css("height","25");
				chkArr[2] = 0;
			}
		});
		$("#name").on("change",function(){
			if($(this).val() == ""){
				alert("이름을 입력해주세요.");
				$("#name-img").attr("src","/resources/img/불일치.png");
				$("#name-img").css("width","25");
				$("#name-img").css("height","25");
				chkArr[3] = 0;
			}else{
				$("#name-img").attr("src","/resources/img/일치.png");
				$("#name-img").css("width","25");
				$("#name-img").css("height","25");
				chkArr[3] = 1;
			}
		});
		
		$("#phone").on("change",function(){
			var re = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;
			var phone = $(this).val();
			if(re.test(phone)){
				$("#phone-img").attr("src","/resources/img/일치.png");
				$("#phone-img").css("width","25");
				$("#phone-img").css("height","25");
				chkArr[4] = 1;
			}else{
				alert("010-0000-0000");
				$("#phone-img").attr("src","/resources/img/불일치.png");
				$("#phone-img").css("width","25");
				$("#phone-img").css("height","25");
				chkArr[4] = 0;
			}
		});
		
		$("input[name='grade']").change(function(){
			var value = $("input[name='grade']:checked").val();
			if(value == '제조사'){
				$("#sel").css("visibility","hidden");
			}else{
				$("#sel").css("visibility","visible");				
			}
		});

	</script>
</body>
</html>