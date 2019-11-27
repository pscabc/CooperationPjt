<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#wrap-top{
		height:150px;
	}
	#wrap-con{
		height:450px;
	}
	#wrap-top{
		background-image : url("/resources/img/파란배경.jpg");
		background-size : cover;
	}
	#login-form{
		margin:90px auto;
		width:450px;
	}
	#id-form{
		height:70px;
	}
	#pw-form{
		margin-top:30px;
		height:50px;
	}
	.input{
		width: 350px;
		margin-left:15px;
		  height: 40px;
		  border: none;
		  border-bottom:1px solid dimgrey;
		  font-size: 10pt;
		  color: #63717f;
		  padding-left: 25px;
		  border-radius: 5px;
		  display:inline-block;
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
		text-align:center;
		line-height:150px;
		font-size:2em;
		color:#B4BBC3;
	}
	#join-btn{
		margin-top:15px;
	
		text-align:center;
	}
</style>
</head>
<body>
	<div id="wrap">
		<div id="wrap-top">
			KH 협력관리 프로그램
		</div>
		<div id="wrap-con">
			<form name="login" action="/login.do" method="post">
				<div id="login-form">
					<div id="id-form">
						<img src="/resources/img/편지.png" width="30px" height="30px" style="opacity:0.6;">
						<input class="input" type="text" placeholder="Email" name="memberId">
					</div>
					<div id="pw-form">
						<img src="/resources/img/자물쇠.png" width="30px" height="30px" style="opacity:0.6;">
						<input class="input" type="password" placeholder="password" name="memberPw">
					</div>
					<div id="submit-btn">
						CONNEXION
					</div>
					<div id="join-btn">
						<a href="/join.do">SIGN UP</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<script>
		$("#submit-btn").on("click",function(){
			login.submit();
		});
	</script>
	
</body>
</html>