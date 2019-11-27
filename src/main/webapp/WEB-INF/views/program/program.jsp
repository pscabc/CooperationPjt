<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/board/proHeader.jsp"%>
<style>
	::-webkit-scrollbar {
		display:none;
	}
	table{
		box-sizing:border-box;
	}
	div{
		box-sizing:border-box;
	}
	#top{
		height:50px;
		line-height:50px;
	}
	#top-span{
		font-weight:bold;
	}
	#wrap{
		z-index:9;
		width:1460px;
		position:relative;
		left:0;
		top:0;
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
	}
	.menu-btn:hover{
		background:#525f78;
	}
	.con{
		background:#eee;
		width:1308px;
		height:650px;
		float:left;
	}
	#mypage-con{
	}
	#mypage-con-main{
		width:1230px;
		height:520px;
		background:white;
		margin:40px;
	}
	.con-top{
		height:40px;
		background:white;
		line-height:40px;
	}
	.con-top-span{
		color:#458d85;
		font-size:0.9em;
		display:inline-block;
		margin-left:10px;
	}
	#board-con{
		display:none;
	}
	#board-con-main{
		width:1230px;
		height:520px;
		background:white;
		margin:40px;
	}
	#support-con{
		display:none;
	}
	#support-con-main{
		width:1230px;
		height:520px;
		background:white;
		margin:40px;
	}
	#manager-con-main{
		width:1230px;
		height:520px;
		background:white;
		margin:40px;
	}
	#support-tab{
		height:100%;
		width:20%;
		float:left;
	}
	#suppot-tab1{
		height:50%;
		text-align:center;
	}
	#suppot-tab2{
		height:50%;
		text-align:center;
	}
	.tab-img{
		margin-top:50px;
		cursor:pointer;
	}
	.tab-text{
		color:gray;
		display:inline-block;
		margin-top:15px;
	}
	#support-main{
		float:left;
		width:80%;
		height:100%;
	}
	.support-main1{
		height:100%;
	}
	#support-member{
		height:100%;
	}
	#member-tab-form{
		height:8%;
	}
	#cooper-tab-form{
		height:8%;
	}
	.member-tab{
		float:left;
		width:200px;
		height:100%;
		text-align:center;
		line-height:40px;
		cursor:pointer;
	}
	.cooper-tab{
		float:left;
		width:200px;
		height:100%;
		text-align:center;
		line-height:40px;
		cursor:pointer;
	}
	.member-main{
		height:92%;
	}
	.cooper-main{
		height:92%;
		background:#eee;
	}
	#cooper-input{
		margin-left:30px;
		width:400px;
		height:100%;
		float:left;
		border-width:0px;
	}
	#cooper-input-top{
		background:white;
		height:70%;
		border-width:0px;
	}
	#computer-img{
		margin-left:75px;
		margin-top:15px;
	}
	#cooper-input-con{
		background:white;
		height:30%;
		border:1px solid #eee;
	}
	#cooper-input-css{
		margin-top:40px;
		margin-left:35px;
		width:250px;
		height:30px;
		padding-left:10px;
		font-size:1.2em;
		color:gray;
	}
	#input-btn{
		margin-left:20px;
		cursor:pointer;
		width:50px;
		height:35px;
		background:#8c8ea3;
		color:white;
		outline:0;
		border:0;
		
	}
	#member-main1{
		height:92%;
		background:#eee;
	}

	#member-main2{
		height:92%;
		background:#eee;
	}
	#member-form{
		height:100%;
		padding:30px;
	}
	#cooper-form{
		height:100%;
		padding:30px;
		border:1px solid #eee;
	}
	.member-table{
		background:white;
		width:100%;
		height:100%;
		border-collapse:collapse;
		box-shadow:10px 10px #dedede;
	}
	.cooper-table{
		background:white;
		width:450px;
		height:100%;
		border-collapse:collapse;
		float:left;
		box-sizing:border-box;
	}
	#charge-form{
		height:100%;
		width:50%;
		float:left;
		border:1px solid #eee;
	}
	#charge-form2{
		height:100%;
		width:50%;
		float:left;
		background:#f5f5fa;
		color:gray;
		font-size:0.9em;
		border-width:0px;
	}
	#charge-view1{
		height:10%;
		border:1px solid #eee;
	}
	#charge-no{
		background:#8c8ea3;
		color:white;
		float:left;
		width:20%;
		height:100%;
		text-align:center;
		line-height:38.5px;
		border:1px solid #eee;
	}
	#charge-title{
		background:#8c8ea3;
		color:white;
		float:left;
		width:80%;
		height:100%;
		text-align:center;
		line-height:38.5px;
		border:1px solid #eee;
	}
	#charge-view2{
		height:10%;
		border:1px solid #eee;
	}
	#charge-writer{
		float:left;
		height:100%;
		width:50%;
		text-align:center;
		line-height:38.5px;
		border:1px solid #eee;
	}
	#charge-company{
		float:left;
		height:100%;
		width:50%;
		text-align:center;
		line-height:38.5px;
		border:1px solid #eee;
	}
	#charge-view3{
		padding:10px;
		height:60%;
		border:1px solid #eee;
	}
	#charge-view4{
		height:20%;
		border:1px solid #eee;
	}
	#charge-charge{
		height:100%;
		width:30%;
		float:left;
		text-align:center;
		line-height:79px;
		border:1px solid #eee;
	}
	#charge-charge2{
		height:100%;
		width:70%;
		float:left;
		text-align:center;
		line-height:75px;
		border:1px solid #eee;
	}
	#charge-btn{
		background:#6382c9;
		width:250px;
		height:50px;
		outline:none;
		border:none;
		color:white;
		cursor:pointer;
	}
	#change-charge{
		background:#6382c9;
		width:250px;
		height:50px;
		outline:none;
		border:none;
		color:white;
		cursor:pointer;
	}
	
	.charge-table{
		background:white;
		width:100%;
		height:100%;
		border-collapse:collapse;
		text-align:center;
		background:#8c8ea3;
		color:white;
		border:1px solid #eee;
	}
	.charge-table td:nth-child(1){
		width:10%;
	}
	.charge-table td:nth-child(2){
		width:70%;
	}
	.charge-table td:nth-child(3){
		width:20%;
	}
	.charge-table2{
		background:white;
		width:100%;
		height:100%;
		border-collapse:collapse;
		text-align:center;
		color:gray;
		font-size:0.9em;
	}
	.charge-table2 tr{
		height:50px;
		cursor:pointer;
	}
	.charge-table2 tr:hover{
		background:#f5f5fa;
	}
	.charge-table2 td{
	}
	.charge-table2 td:nth-child(1){
		width:10%;
	}
	.charge-table2 td:nth-child(2){
		width:70%;
	}
	.charge-table2 td:nth-child(3){
		width:20%;
	}
	#charge-div{
		height:10%;
		width:100%;
		border-width:0px;
	}
	#charge-div2{
		overflow-y:scroll;
		height:90%;
		width:100%;
		border:1px solid #eee;
	}
	.member-table td{
		border:1px solid #eee;
		box-sizing:border-box;
		padding:0;
		height:30px;
		width:150px;
		word-break:break-all;
		text-align:center;
	}
	.cooper-table td{
		border:1px solid #eee;
		box-sizing:border-box;
		padding:0;
		height:30px;
		width:150px;
		word-break:break-all;
		text-align:center;
	}
	.member-table tr{
		font-size:0.8em;
	}
	.cooper-table tr{
		font-size:0.8em;
	}
	.member-table tr:first-child{
		/* background:#bfc5f2; */
		background:#8c8ea3;
		font-size:1em;
		color:white;
	}
	.cooper-table tr:first-child{
		background:#8c8ea3;
		font-size:1em;
		color:white;
	}
	.member-table tr:nth-child(2n){
		/* background:#dfe0f7; */
		background:#f5f5fa;
	}
	.cooper-table tr:nth-child(2n){
		background:#f5f5fa;
	}
	#member-table-id2 tr:nth-child(n+1) td:nth-child(4){
		color:#6382c9;
		font-weight:bold;
	}
	#cooper-table-id2 tr:nth-child(n+1) td:nth-child(4){
		color:#6382c9;
		font-weight:bold;
	}
	.recog-btn{
		width:60px;
		height:25px;
		color:white;
		background:#6382c9;
		outline:0;
		border:0;
		cursor:pointer;
	}
	.recog-btn2{
		width:60px;
		height:25px;
		color:#6382c9;
		background:white;
		outline:0;
		border:1px solid #6382c9;
		cursor:pointer;	
	}
	.con-btn{
		width:60px;
		height:25px;
		color:white;
		background:#6382c9;
		outline:0;
		border:0;
		cursor:pointer;
	}
	.cooper-con-btn{
		width:60px;
		height:25px;
		color:white;
		background:#6382c9;
		outline:0;
		border:0;
		cursor:pointer;
	}
	.cooper-con-btn2{
		width:60px;
		height:25px;
		color:#6382c9;
		background:white;
		outline:0;
		border:1px solid #6382c9;
		cursor:pointer;
	}
	.cooper-del-btn{
		width:60px;
		height:25px;
		color:white;
		background:#6382c9;
		outline:0;
		border:0;
		cursor:pointer;
	}
	.con-btn2{
		width:60px;
		height:25px;
		color:#6382c9;
		background:white;
		outline:0;
		border:1px solid #6382c9;
		cursor:pointer;	
	}
	#memeber-img{
		width:300px;
		height:300px;
		margin-top:40px;
		margin-left:300px;
		opacity:0.5;
		text-align:center;
		
	}
	#grade-btn{
		display:inline-block;
		margin-left:10px;
		padding-top:5px;
		cursor:pointer;
	}
	#modal{
		width:100%;	
		height:750px;
		position:absolute;
		background:black;
		opacity:0.2;
		left:0;
		top:0;
		z-index:10;
		display:none;
	}
	#modal-grade{
		background:white;
		width:330px;
		height:300px;
		position:absolute;
		left:600px;
		top:250px;
		z-index:11;
		display:none;
	}
	#modal-charge{
		background:#f5f5fa;
		width:400px;
		height:170px;
		position:absolute;
		left:600px;
		top:250px;
		z-index:11;
		display:none;
		box-shadow:2px 2px 2px #8c8ea3;
	}
	#modal-change-charge{
		background:#f5f5fa;
		width:400px;
		height:170px;
		position:absolute;
		left:600px;
		top:250px;
		z-index:11;
		display:none;
		box-shadow:2px 2px 2px #8c8ea3;
	}
	#modal-charge1{
		height:60%;
		text-align:center;
		line-height:100.8px;
	}
	#modal-change-charge1{
		height:60%;
		text-align:center;
		line-height:100.8px;
	}
	#modal-select{
		width:312px;
		height:40px;
	}
	#modal-change-select{
		width:312px;
		height:40px;
	}
	#modal-option{
		height:40px;
	}
	#modal-change-option{
		height:40px;
	}
	#modal-charge2{
		height:40%;
		text-align:center;
	}
	#modal-change-charge2{
		height:40%;
		text-align:center;
	}
	#modal-btn-form{
		height:40px;
		margin-top:10px;
		display:inline-block;
	}
	#modal-btn-form2{
		height:40px;
		margin-top:10px;
		display:inline-block;
	}
	#modal-charge-charge{
		font-size:0.8em;
		text-align:center;
		line-height:40px;
		background:#6382c9;
		width:150px;
		height:100%;
		color:white;
		cursor:pointer;
		outline:none;
		border:none;
		float:left;
	}
	#modal-change-charge-btn{
		font-size:0.8em;
		text-align:center;
		line-height:40px;
		background:#6382c9;
		width:100px;
		height:100%;
		color:white;
		cursor:pointer;
		outline:none;
		border:none;
		float:left;
	}
	#modal-charge-cancel{
		font-size:0.8em;
		margin-left:10px;
		text-align:center;
		line-height:40px;
		background:#d1d3ff;
		width:150px;
		height:100%;
		color:white;
		cursor:pointer;
		outline:none;
		border:none;
		float:left;
	}
	#modal-del-charge-btn{
		font-size:0.8em;
		margin-left:10px;
		text-align:center;
		line-height:40px;
		background:#8c8ea3;
		width:100px;
		height:100%;
		color:white;
		cursor:pointer;
		outline:none;
		border:none;
		float:left;
	}
	#modal-cancel-charge-btn{
		font-size:0.8em;
		margin-left:10px;
		text-align:center;
		line-height:40px;
		background:#d1d3ff;
		width:100px;
		height:100%;
		color:white;
		cursor:pointer;
		outline:none;
		border:none;
		float:left;
	}
 	#modal-grade-top{
		background:#8c8ea3;
		color:white;
		height:50px;
		line-height:50px;
		text-align:center;
	}
	#modal-grade-con{
		height:250px;
		background:#eee;
	}
	.modal-grade-btn{
		color:#6382c9;
		background:white;
		margin-top:24px;
		height:50px;
		width:150px;
		margin-left:90px;
		cursor:pointer;
		text-align:center;
		line-height:50px;
		border:1px solid #6382c9;
		border-radius:5px;
	}
	.modal-grade-btn:hover{
		color:white;
		background:#6382c9;
	}
</style>
</head>
<body>
	<div id="wrap">
		<div class="con" id="manager-con">
			<div class="con-top">
				<span class="con-top-span">관리자페이지</span>
			</div>
			<div id="support-con-main">
				<div id="support-tab">
					<div id="suppot-tab1">
						<img class="tab-img"src="/resources/img/회원.png" width="150" height="150"><br>
						<span class="tab-text">회원관리</span>
					</div>
					<div id="suppot-tab2">
						<img class="tab-img" src="/resources/img/협력사.png" width="150" height="150"><br>
						<span class="tab-text">협력사관리</span>
					</div>
				</div>
				<div id="support-main">
					<div id="support-member" class="support-main1">
						
						<div id="member-tab-form">
							<div class="member-tab" id="member-tab1">승인요청</div>
							<div class="member-tab" id="member-tab2">회원관리</div>
						</div>
						
						<div class="member-main" id="member-main1">
							<div id="member-form">
								<table class="member-table" id="member-table-id1">
									<tr><td>회원아이디</td><td>회원이름</td><td>기업명</td><td>등급</td><td>승인대기</td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
								</table>
								<div id="member-img-div" style="display:none; border:0px; text-align:center;">
									<img id="memeber-img" src="/resources/img/물음표.png" width="25" height="25" style="display:block">
									<span style="color:gray; display:inline-block; margin-top:15px;">승인 요청된 기록이 없습니다.</span>
								</div>
							</div>
						</div>
						
						<div class="member-main" id="member-main2" style="display:none;">
							<div id="member-form">
								<table class="member-table" id="member-table-id2">
									<tr><td>회원아이디</td><td>회원이름</td><td>기업명</td><td>등급</td><td>회원활성</td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td><td></td><td></td></tr>
								</table>
							</div>
						</div>
					</div>
					
					<div id="support-cooper" class="support-main1" style="display:none;">
						<div class="support-main1">
						<div id="cooper-tab-form">
							<div class="cooper-tab" id="cooper-tab1">협력사 등록</div>
							<div class="cooper-tab" id="cooper-tab2">게시글 관리</div>
						</div>
						
						<div class="cooper-main" id="cooper-main1">
							<div id="cooper-form">
								<div id="cooper-input">
									<div id="cooper-input-top">
										<img id="computer-img" src="/resources/img/컴퓨터.png" width="250" height="250">
									</div>
									<div id="cooper-input-con">
										<form onsubmit="return inputSave();">
											<input id="cooper-input-css" name="company" type="text"><button type="submit" id="input-btn">등록</button>
										</form>
									</div>
								
								</div>
								<table class="cooper-table" id="cooper-table1">
									<tr><td>협력사</td><td>활성화</td><td>삭제</td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
									<tr><td></td><td></td><td></td></tr>
								</table>
							</div>
						</div>
						
						<div class="cooper-main" style="display:none;" id="cooper-main2">
							<div id="cooper-form">
								<div id="charge-form">
									<div id="charge-div">
										<table class="charge-table">
											<tr><td>번호</td><td>글제목</td><td>담당자</td></tr>
										</table>
									</div>
									<div id="charge-div2">
										<table class="charge-table2">
										</table>
									</div>
								</div>
								<div id="charge-form2">
								</div>
							</div>
						</div>
					</div>
				
				</div>
			</div>
		</div>
	</div>
	</div>
	<div id="modal">

	</div>
	<div id="modal-grade">
		<div id="modal-grade-top">
			회원 등급 변경
		</div>
		<div id="modal-grade-con">
			<div class="modal-grade-btn">관리자
			</div>
			<div class="modal-grade-btn">제조사직원
			</div>
			<div class="modal-grade-btn">협력사직원
			</div>
		</div>
	</div>
	
	<div id="modal-charge">
		<div id="modal-charge1">
			<select id="modal-select">
				<option id="modal-option" disabled selected hidden>담당자 선택</option>
			</select>
		</div>
		<div id="modal-charge2">
			<div id="modal-btn-form">
				<div id="modal-charge-charge">담당자 배치</div>
				<div id="modal-charge-cancel">취소</div>
			</div>
		</div>
	</div>
	<div id="modal-change-charge">
		<div id="modal-change-charge1">
			<select id="modal-change-select">
				<option id="modal-change-option" disabled selected hidden>담당자 선택</option>
			</select>
		</div>
		<div id="modal-change-charge2">
			<div id="modal-btn-form2">
				<div id="modal-change-charge-btn">변경</div>
				<div id="modal-del-charge-btn">미배치</div>
				<div id="modal-cancel-charge-btn">취소</div>
			</div>
		</div>
	</div>
	
	<script>
		var gradeId;
		var gradeSpan;
	
		$("#mypage-btn").on("click",function(){
			$(".con").css("display","none");
			$("#mypage-con").css("display","block");
		});
		$("#board-btn").on("click",function(){
/* 			$(".con").css("display","none");	
			$("#board-con").css("display","block"); */
			location.href="/board.do";
		});
		$("#support-btn").on("click",function(){
			$(".con").css("display","none");
			$("#support-con").css("display","block");
		});
		$("#manager-btn").on("click",function(){
			$(".con").css("display","none");
			$("#manager-con").css("display","block");
			$("#suppot-tab1").click();
			$("#member-tab1").click();
		});
		$("#suppot-tab1").on("click",function(){
			$("#suppot-tab2").find("span").css("color","gray");
			$("#suppot-tab2").find("span").css("font-size","1em");
			$(this).find("span").css("color","#6382c9");
			$(this).find(".tab-text").css("font-size","1.3em");
			$("#support-member").css("display","block");
			$("#support-cooper").css("display","none");
		});	
		$("#suppot-tab2").on("click",function(){
			$("#suppot-tab1").find("span").css("font-size","1em");
			$("#suppot-tab1").find(".tab-text").css("color","gray");
			$(this).find(".tab-text").css("color","#6382c9");
			$(this).find(".tab-text").css("font-size","1.3em");
			$("#support-member").css("display","none");
			$("#support-cooper").css("display","block");
			$("#cooper-tab1").click();
		});
		$("#member-tab1").on("click",function(){
			$("#member-main1").css("display","block");
			$("#member-main2").css("display","none");
			$(this).css("background","#8c8ea3");
			$(this).css("color","white");
			$("#member-tab2").css("background","white");
			$("#member-tab2").css("color","gray");
		});
		$("#cooper-tab1").on("click",function(){
			$("#cooper-main1").css("display","block");
			$("#cooper-main2").css("display","none");
			$(this).css("background","#8c8ea3");
			$(this).css("color","white");
			$("#cooper-tab2").css("background","white");
			$("#cooper-tab2").css("color","gray");
			
			$.ajax({
				url:"/selectCooperList.do",
				type:"get",
				dataType:"json",
				success:function(data){
					console.log("data.list : "+data.list);
					for(var i = 0; i<10; i++){
						var tr = $("#cooper-table1").children().children().eq(i+1);
						tr.children().eq(0).empty();
						tr.children().eq(1).empty();
						tr.children().eq(2).empty();
					}
					
					data.list.forEach(function(element,index){
						var tr = $("#cooper-table1").children().children().eq(index+1);
						if(element.activity == 1){
							var activityBtn = $("<button class='cooper-con-event cooper-con-btn' value="+element.cooperNo+">활성</button>");
						}else{
							var activityBtn = $("<button class='cooper-con-event cooper-con-btn2' value="+element.cooperNo+">비활성</button>");
						}
						var deleteBtn = $("<button class='cooper-del-btn' value="+element.cooperNo+">삭제</button>");

						tr.children().eq(0).append("<span>"+element.cooperName+"</span>");
						tr.children().eq(1).append(activityBtn);
						tr.children().eq(2).append(deleteBtn);
					});
				},
				error:function(){
					console.log("ajax 실패 ");
				}
				
				
			});
			
		});
		$("#member-tab2").on("click",function(){
			$("#member-main1").css("display","none");
			$("#member-main2").css("display","block");
			$(this).css("background","#8c8ea3");
			$(this).css("color","white");
			$("#member-tab1").css("background","white");
			$("#member-tab1").css("color","gray");
		});
		$("#cooper-tab2").on("click",function(){
			$("#cooper-main1").css("display","none");
			$("#cooper-main2").css("display","block");
			$(this).css("background","#8c8ea3");
			$(this).css("color","white");
			$("#cooper-tab1").css("background","white");
			$("#cooper-tab1").css("color","gray");
			$(".charge-table2").empty();
			$.ajax({
				url:'/chargeBoardList.do',
				dataType:'json',
				type:'get',
				success:function(data){
					console.log("chargeBoardList ajax 통신 성공");
					var chargeTbody = $("<tbody id='charge-tbody'></tbody>");
					data.list.forEach(function(element){
						var Name = element.chargeName != ''?"<td id='chare-bool' style='color:#6382c9;'>"+element.chargeName+"<td>":"<td id='chare-bool' style='color:#f5627d;'>미정</td>"; 
						var chargeTr = $("<tr class='charge-tr'>"+
											"<td>"+element.boardNo+"</td>"+
											"<td>"+element.boardTitle+"</td>"+
											Name+
										"</tr>");
						chargeTr.attr('boardNo',element.boardNo);
						chargeTbody.append(chargeTr);
					});
					var chargeTable = $(".charge-table2");
					chargeTable.append(chargeTbody);
				},
				error:function(){
					console.log("chargeBoardList ajax 통신 실패");
				}
				
			});
		});
		$(document).on("click",".charge-tr",function(){
			var boardNo = $(this).attr('boardNo');
			var index = $(this).index();
			console.log("index : "+index);
			
			$.ajax({
				url:'/boardOne.do',
				type:'get',
				dataType:'json',
				data:{"boardNo":boardNo},
				success:function(data){
					console.log("boardOne ajax 통신 성공");
					$("#charge-form2").empty();
					var chargeBtn =  data.board.chargeName == ''?"<button name="+index+" value="+data.board.boardNo+" id='charge-btn'>담당자 배치</button>":"<button name="+index+" value="+data.board.boardNo+" id='change-charge'>"+data.board.chargeName+"</button>"; 
					var chargeView = $("<div id='charge-view1'>"+
										   "<div id='charge-no'>"+
										   		"No. "+data.board.boardNo+
										   "</div>"+
										   "<div id='charge-title'>"+
										   		"Title. "+data.board.boardTitle+
										   "</div>"+
										"</div>"+
									   "<div id='charge-view2'>"+
										   "<div id='charge-writer'>"+
										   		"작성자 | "+data.board.writerName+
										   "</div>"+
										   "<div id='charge-company'>"+
										   		"회사명 | "+data.board.boardCompany+
										   	"</div>"+
										"</div>"+
										"<div id='charge-view3'>"+data.board.boardContent+"</div>"+
										"<div id='charge-view4'>"+
											"<div id='charge-charge'>담당자</div>"+
											"<div id='charge-charge2'>"+
												chargeBtn+
											"</div>"+
										"<div>");
					$("#charge-form2").append(chargeView);
					
				},
				error:function(){
					console.log("boardOne ajax 통신 실패");
				}
				
			});
		});
		$(document).on("click","#charge-btn",function(){
			$("#modal-charge").css("display","block");
			$("#modal").css("display","block");
		
		});
		$(document).on("click","#change-charge",function(){
			$("#modal-change-charge").css("display","block");
			$("#modal").css("display","block");
		});
		$("#member-tab1").on("click",function(){
			//승인요청 눌렀을 때, member에서 validaty가 0 인 애들 가져옴.
			var table = $("#member-table-id1");
			for(var i = 0; i < 10; i++){
				var tr = table.children().children().eq(i+1);
				tr.children().eq(0).text("");
				tr.children().eq(1).text("");
				tr.children().eq(2).text("");
				tr.children().eq(3).text("");
				tr.children().eq(4).text("");
				tr.children().eq(4).children().remove();
			}
				
			$.ajax({
				url:'/recogMemberList.do',
				type:'get',
				dataType:"json",
				contentType:"charset=utf-8",
				success : function(data){
					if(data.list.length != 0){
						data.list.forEach(function(element,index){
							var tr = table.children().children().eq(index+1);
							
							tr.children().eq(0).text(element.memberId);
							tr.children().eq(1).text(element.memberName);
							tr.children().eq(2).text(element.company);
							tr.children().eq(3).text(element.grade);
							var button = $("<button class='recog-btn' id='rcog-btn-id' value="+element.memberId+">승인</button>");
							tr.children().eq(4).append(button);
							//버튼을 만들어서 넣어야함.
							/* $("<tr><td>"+element.memberId+"</td><td>"+element.memberName+"</td><td>"+element.company+"</td><td>"+element.grade+"</td></tr>");
							$(".member-table").append(tr); */
						});
					}else{
						$("#member-table-id1").css("display","none");
						$("#member-img-div").css("display","block");
					}
				},error : function(){	
				}
			});
		});
		
		$("#member-tab2").on("click",function(){
			//승인요청 눌렀을 때, member에서 validaty가 0 인 애들 가져옴.
			var table = $("#member-table-id2");
			for(var i = 0; i < 10; i++){
				var tr = table.children().children().eq(i+1);
				tr.children().eq(0).text("");
				tr.children().eq(1).text("");
				tr.children().eq(2).text("");
				tr.children().eq(3).text("");
				tr.children().eq(4).text("");
				tr.children().eq(4).children().remove();
			}
				
			$.ajax({
				url:'/conMemberList.do',
				type:'get',
				dataType:"json",
				contentType:"charset=utf-8",
				success : function(data){
					if(data.list.length != 0){
						data.list.forEach(function(element,index){
							var tr = table.children().children().eq(index+1);
							tr.children().eq(0).text(element.memberId);
							tr.children().eq(1).text(element.memberName);
							tr.children().eq(2).text(element.company);
							tr.children().eq(3).append("<span id='grade-span'>"+element.grade+"</span>");
							tr.children().eq(3).append("<img id='grade-btn' src='/resources/img/변경4.png' width='20' height='20'>");
							if(element.activity == '1'){
								var button = $("<button class='con-btn con-btn-jq' value="+element.memberId+">활성</button>");
							}else{
								var button = $("<button class='con-btn2 con-btn-jq' value="+element.memberId+">비활성</button>");
							}
							tr.children().eq(4).append(button);
							//버튼을 만들어서 넣어야함.
							/* $("<tr><td>"+element.memberId+"</td><td>"+element.memberName+"</td><td>"+element.company+"</td><td>"+element.grade+"</td></tr>");
							$(".member-table").append(tr); */
						});
					}else{
					}
				},error : function(){	
				}
			});
		});
		
		$(document).on("click",".recog-btn",function(){
			console.log("!");
			//승인 버튼 누르면 해당 id로 검색해서 recognition 1로 업데이트
			var memberId = $(this).val();
			var btn = $(this);
			
			$.ajax({
				url:"/recogMember.do",
				type:"get",
				data:{"memberId" : memberId},
				success:function(data){
					console.log("data : "+data);
					if(data == '1'){
						var td = btn.parent();
						btn.remove();
						td.text("승인완료");
						alert("승인성공");
					}else{
						alert("승인실패");
					}
				}
			});
		});
		
		$(document).on("click",".con-btn-jq",function(){
			console.log("!");
			//승인 버튼 누르면 해당 id로 검색해서 recognition 1로 업데이트
			var memberId = $(this).val();
			var btn = $(this);
			var text = $(this).text();
			var activity = '0';
			if(text == '활성'){
				activity = '1';
			}else{
				activity = '0';
			}
			
			$.ajax({
				url:"/conMember.do",
				type:"get",
				data:{"memberId" : memberId,"activity":activity},
				success:function(data){
					console.log("data : "+data);
					if(activity == '0'){
						btn.removeClass();
						btn.addClass("con-btn");
						btn.addClass("con-btn-jq");
						alert("비활성 -> 활성");
					}else{
						btn.removeClass();
						btn.addClass("con-btn2");
						btn.addClass("con-btn-jq");
						alert("활성 -> 비활성");
					}
				}
			});
		});
		$(document).on("click","#grade-btn",function(){
			//눌렀을 때 모달 나오도록
			//모달안에 제조사직원,협력사직원,관리자
			$("#modal").css("display","block");
			$("#modal-grade").css("display","block");
			
			var memberId = $(this).parent().prev().prev().prev().text();
			gradeSpan = $(this).parent().find("#grade-span");
			console.log(gradeSpan.text());
			console.log(gradeSpan);
			console.log(" "+gradeSpan);
			gradeId = memberId;
		});
		
		$(document).on("click",".modal-grade-btn",function(){
			//ajax로 grade 매니저로 변경.
			$("#modal").css("display","none");
			$("#modal-grade").css("display","none");
			var grade = $(this).text();
			console.log("grade : "+grade);
			
			$.ajax({
				url:'/gradeUpdateMember.do',
				type:'get',
				data:{"memberId":gradeId,"grade":grade},
				success:function(data){
					console.log("data : "+data);
					if(data > 0){
						gradeSpan.text(grade);
						alert("등급 변경 성공");
					}else{
						alert("등급 변경 실패");
					}
				}
			});
		});
		
		function inputSave(){
			var cooperInput = $("#cooper-input-css");
 			var cooperName = $("#cooper-input-css").val();
			console.log("company : "+cooperName);
			
			$.ajax({
				url:"/insertCooper.do",
				data:{"cooperName":cooperName},
				type:'get',
				success:function(data){
					if(data > 0){
						alert("등록 성공");
						$("#cooper-tab1").click();
						cooperInput.val('');
					}else{
						alert("등록 실패");
					}
					console.log("협력사 등록 ajax 성공");
				},
				error:function(){
					console.log("협력사 등록 ajax 실패");	
				}
			});
			return false;
			
		}
		
		$(document).on("click",".cooper-del-btn",function(){
			//번호 가지구 들어가서 삭제
			var cooperNo = $(this).val();
			
			$.ajax({
				url:'/deleteCooper.do',
				data:{"cooperNo":cooperNo},
				success:function(data){
					if(data > 0){
						alert("삭제 성공");
						$("#cooper-tab1").click();
					}else{
						alert("삭제 실패");
					}
				},
				error:function(){
					console.log("협력사 삭제 ajax 실패");
				}
			});
		});
		
		$(document).on("click",".cooper-con-event",function(){
			//번호 가지구 들어가서 활성화 변수 활성화
			var cooperConBtn = $(this);
			var cooperNo = $(this).val();
			var cooperState = $(this).text();
			var cooperName = $(this).parent().prev().find('span').text();
			var state = '1';
			console.log(cooperNo);
			if(cooperState == '활성'){
				state = '1';
			}else{
				state = '0';
			}
			
			$.ajax({
				url:"/activityCooper.do",
				data:{"cooperNo" : cooperNo,"state" : state},
				success:function(data){
					if(data > 0){
						if(cooperState == '활성'){
							alert("["+cooperName+"]"+"(이)가 비활성화 되었습니다.");
							cooperConBtn.removeClass('cooper-con-btn');
							cooperConBtn.addClass('cooper-con-btn2');
							cooperConBtn.text("비활성");
						}else{
							alert("["+cooperName+"]"+"(이)가 활성화 되었습니다.");
							cooperConBtn.removeClass('cooper-con-btn2');
							cooperConBtn.addClass('cooper-con-btn');
							cooperConBtn.text("활성");
						}
					}
				},error:function(){
					console.log("협력사 활성버튼 ajax 실패");
				}
			});
		});
		$("#modal").on("click",function(){
			$(this).css("display","none");
			$("#modal-charge").css("display","none");
			$("#modal-grade").css("display","none");
			$("#modal-change-charge").css("display","none");
		});
		
		$(document).on("click","#charge-btn",function(){
			var boardNo = $(this).val();
			var index = $(this).attr('name');
			$("#modal-charge-charge").attr("boardNo",boardNo);
			$.ajax({
				url:'/menufacturerList.do',
				dataType:'json',
				type:'get',
				success:function(data){
					console.log("menufacturerList ajax 통신 성공");
					var select = $("#modal-select");
					select.empty();
					data.list.forEach(function(element){
						var option = $("<option>"+element.memberName+"</option>");
						option.attr("memberId",element.memberId);
						select.append(option);
						$("#modal-charge-charge").attr("index",index);
					});
				},	
				error:function(){
					console.log("menufacturerList ajax 통신 실패");	
				}
			});
		});
		$(document).on("click","#change-charge",function(){
			var boardNo = $(this).val();
			var index = $(this).attr('name');
			$("#modal-change-charge-btn").attr("boardNo",boardNo);
			$("#modal-del-charge-btn").attr("boardNo",boardNo);
			$.ajax({
				url:'/menufacturerList.do',
				dataType:'json',
				type:'get',
				success:function(data){
					console.log("menufacturerList ajax 통신 성공");
					var select = $("#modal-change-select");
					select.empty();
					data.list.forEach(function(element){
						var option = $("<option>"+element.memberName+"</option>");
						option.attr("memberId",element.memberId);
						select.append(option);
						$("#modal-change-charge-btn").attr("index",index);
						$("#modal-del-charge-btn").attr("index",index);
					});
				},	
				error:function(){
					console.log("menufacturerList ajax 통신 실패");	
				}
			});
		});
		$(document).on("click","#modal-change-charge-btn",function(){
			$("#modal").css("display","none");
			$("#modal-change-charge").css("display","none");
			var boardNo = $(this).attr("boardNo");
			var index = $(this).attr('index');
			var memberId =  $("#modal-change-select option:selected").attr("memberId");
			var memberName = $("#modal-change-select").val();
			$.ajax({
				url:'/updateChargeBoard.do',
				data:{"boardNo":boardNo,"memberId":memberId,"memberName":memberName},
				type:'get',
				success:function(data){
					console.log("updateChargeBoard ajax 통신 성공");
					if(data > 0){
						$("#charge-charge2").empty();
						$("#charge-charge2").append("<button name="+index+" value="+boardNo+" id='change-charge'>"+memberName+"</button>");
						$("#charge-tbody").children().eq(index).find('#chare-bool').css("color","#6382c9");
						$("#charge-tbody").children().eq(index).find('#chare-bool').text(memberName);
					}
				},
				eror:function(){	
					console.log("updateChargeBoard ajax 통신 실패");
				}
			});
		});
		
		$(document).on("click","#modal-del-charge-btn",function(){
			$("#modal").css("display","none");
			$("#modal-change-charge").css("display","none");
			var boardNo = $(this).attr("boardNo");
			var index = $(this).attr('index');
			$.ajax({
				url:'/deleteChargeBoard.do',
				data:{"boardNo":boardNo},
				type:'get',
				success:function(data){
					console.log("updateChargeBoard ajax 통신 성공");
					if(data > 0){
						$("#charge-charge2").empty();
						$("#charge-charge2").append("<button name="+index+" value="+boardNo+" id='charge-btn'>담당자 배치</button>");
						$("#charge-tbody").children().eq(index).find('#chare-bool').css("color","#f5627d");
						$("#charge-tbody").children().eq(index).find('#chare-bool').text("미정");
					}
				},
				eror:function(){	
					console.log("updateChargeBoard ajax 통신 실패");
				}
			});
		})
		
		$(document).on("click","#modal-charge-charge",function(){
			$("#modal").css("display","none");
			$("#modal-charge").css("display","none");
			var boardNo = $(this).attr('boardNo');
			var index = $(this).attr('index');
			var memberId =  $("#modal-select option:selected").attr("memberId");
			var memberName = $("#modal-select").val();
			console.log("index:"+index);
			$.ajax({
				url:'/updateChargeBoard.do',
				data:{"boardNo":boardNo,"memberId":memberId,"memberName":memberName},
				type:'get',
				success:function(data){
					console.log("updateChargeBoard ajax 통신 성공");
					if(data > 0){
						$("#charge-charge2").empty();
						$("#charge-charge2").append("<button name="+index+" value="+boardNo+" id='change-charge'>"+memberName+"</button>");
						$("#charge-tbody").children().eq(index).find('#chare-bool').css("color","#6382c9");
						$("#charge-tbody").children().eq(index).find('#chare-bool').text(memberName);
					}
				},
				eror:function(){	
					console.log("updateChargeBoard ajax 통신 실패");
				}
			});
		});
		$(document).on("click","#modal-cancel-charge-btn",function(){
			$("#modal").css("display","none");
			$("#modal-change-charge").css("display","none");
		});
		$(document).on("click","#modal-charge-cancel",function(){
			$("#modal").css("display","none");
			$("#modal-charge").css("display","none");
		});
		$(document).ready(function(){
			$("#suppot-tab1").click();
			$("#member-tab1").click();
		});
		
	</script>
</body>
</html>