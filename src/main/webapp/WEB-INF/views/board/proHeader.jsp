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
	button{
		box-sizing:border-box;
	}
	div{
 		border:0.2px solid black;
		box-sizing:border-box;
	}
	#wrap{
		z-index:9;
		width:1460px;
		position:relative;
		left:0;
		top:0;
	}
	#top{
		height:50px;
		line-height:50px;
		/* background:#f5f5fa; */
		background:#a5b3c2;
	}
	#top-span{
		color:#faf9f5;
		font-weight:bold;
		margin-left:10px;
	}
	#menu{
		width:150px;
		height:650px;
		float:left;
		color:white;
		/* background:#191e23; */
 		background:#4e5a72;
	}
	.menu-btn{
		height:50px;
		width:150px;
		text-align:center;
		line-height:50px;	
		cursor:pointer;
		color:white;
		font-size:0.8em;
		background:#606e89;
		border-width:0px;
	}
	.menu-btn:hover{
		background:#525f78;
	}
	#manager-btn{
		margin-top:400px;
	}
	.con{
		background:#eee;
		width:1308px;
		height:650px;
		float:left;
	}
	.con-top{
		height:40px;
		background:white;
		line-height:40px;
	}
	.con-top-span{
		/* color:#0000ff; */
		color:#458d85;
		font-size:0.9em;
		display:inline-block;
		margin-left:10px;
	}
	#logout{
		float:right;
		text-decoration:none;
		font-size:0.9em;
		margin-right:10px;
		color:#faf9f5;
	}
</style>
</head>
<body>
	<div id="wrap">
		<div id="top"><span id="top-span">협력관리 프로그램</span><a id="logout" href="/logout.do">로그아웃</a></div>
		<div id="menu">
			<div class="menu-btn" id="mypage-btn">
				회원정보
			</div>
			<div class="menu-btn" id="board-btn">
				게시판
			</div>
			<c:if test="${sessionScope.m.grade == '제조사직원' || sessionScope.m.grade == '관리자'}">
			<div class="menu-btn" id="support-btn">
				기술지원
			</div>
			</c:if>
			<c:if test="${sessionScope.m.grade != '제조사직원' || sessionScope.m.grade != '관리자'}">
			<div class="menu-btn" id="support-btn" style="visibility:hidden">
				기술지원
			</div>
			</c:if>
			<div class="menu-btn" id="manager-btn"> 
				관리자
			</div>
		</div>
		<script>
			$("#mypage-btn").on("click",function(){
				location.href="/mypage.do"
			});
			$("#board-btn").on("click",function(){
				location.href="/board.do";
			});
			
			$("#manager-btn").on("click",function(){
				location.href="/program.do";
			});
			
			$("#support-btn").on("click",function(){
				location.href="/support.do";	
			});
			
			$(document).ready(function(){
				if(${sessionScope.m == null}){
					alert("로그인을 해주세요.");
					location.href="/";
				}
			});
		</script>
</body>
</html>