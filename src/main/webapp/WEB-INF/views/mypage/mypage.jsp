<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/board/proHeader.jsp"%>
<style>
	::-webkit-scrollbar {
		display:none;
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
	#mypage-con-main{
		width:1230px;
		height:520px;
		background:white;
		margin:40px;
	}
	#mypage-con-main1{
		float:left;
		height:100%;
		width:20%;
	}
	#mypage-con-main2{
		float:left;
		height:100%;
		width:80%;
	}
	#mypage-tab{
		cursor:pointer;
		height:50%;
		text-align:center;
	}
	#question-tab{
		cursor:pointer;
		height:50%;
		text-align:center;
	}
	#mypage-form{
		margin:0 auto;
		margin-top:35px;
		width:800px;
		height:450px;
		font-size:0.9em;
		color:gray;
		background:white;
		background:#f5f5fa;
		border-width:0px;
		box-shadow:10px 10px #eee;
	}
	#question-form{
		height:100%;
		display:none;
		padding:40px;
	}
	#question-div{
		width:100%;
		height:100%;
		box-shadow:10px 10px #eee;
		border-width:0px;
	}
	#question-form1{
		width:50%;
		height:100%;	
		float:left;
		border:1px solid #eee;
	}
	#question-top1{
		color:white;
		font-size:0.9em;
		line-height:40px;
		height:10%;
		background:#8c8ea3;
		text-align:center;
		border-width:0px;
	}
	#question-con1{
		height:90%;
	}
	#pro-question-tbl{
		width:100%;
		height:8%;
	}
	#pro-question-tbl2{
		text-align:center;
		width:100%;
		color:gray;
		font-size:0.8em;
	}
	#pro-question-tbl-form{
		border:1px solid #eee;
		overflow:scroll;
		height:92%;q
	}
	#com-question-tbl-form{
		border:1px solid #eee;
		overflow:scroll;
		height:92%;
	}
	#pro-question-tbl tr:nth-child(1){
		border-collapse:collapse;
		background:#9995ad;
		color:white;
	}
	#com-question-tbl{
		width:100%;
		height:8%;
	}
	#com-question-tbl2{
		width:100%;
		text-align:center;
		color:gray;
		font-size:0.8em;
	}
	#com-question-tbl2 td{
		height:40px;
		border-bottom:1px solid #f5f5fa;
	}
	#pro-question-tbl2 td{
		height:40px;
		border-bottom:1px solid #eee;
	}

	#com-question-tbl-top{
		width:100%;
	}
	#com-question-tbl tr:nth-child(1){
		border-collapse:collapse;
		background:#9995ad;
		color:white;
	}
	#question-top2{
		color:white;
		line-height:40px;
		font-size:0.9em;
		height:10%;
		background:#8c8ea3;
		text-align:center;
	}
	#question-con2{
		height:90%;
		border-width:0px;
	}	
	#question-form2{
		width:50%;
		height:100%;
		float:left;
		border:1px solid #eee;
	}
	#member-img{
		margin-top:50px;
	}
	#question-img{
		margin-top:50px;
	}
	#member-text{
		color:gray;
		font-size:1.2em;
		margin-top:15px;
		display:inline-block;
	}
	#question-text{
		color:gray;
		font-size:1.2em;
		display:inline-block;
	}
	#my-form{
		width:40%;
		height:100%;
		float:left;
		padding:20px;
		padding-top:45px;
		border:1px solid #eee;
	}
	#my-form2{
		width:60%;
		height:100%;
		float:left;
		padding:20px;
		border:1px solid #eee;
	}
	#my-info{
		height:100%;
	}
	#my-img-div{
		height:280px;
	}
	#my-img-name{
		height:70px;
		text-align:center;
		line-height:70px;
		font-size:1.5em;
		color:gray;
	}
	#my-info{
		padding:20px;
	}
	.my-info{
		height:60px;
		margin-top:25px;
		color:gray;
		line-height:60px;
		text-align:center;
		font-size:1.2em;
	}
	#name-form{
		height:100%;
		width:20%;
		float:left;
	}
	#name-form2{
		height:100%;
		width:80%;
		float:left;
	}
	#id-form{
		height:100%;
		width:20%;
		float:left;
	}
	#id-form2{
		height:100%;
		width:80%;
		float:left;
	}
	#grade-form{
		height:100%;
		width:20%;
		float:left;
	}
	#grade-form2{
		height:100%;
		width:80%;
		float:left;
	}
	#company-form{
		height:100%;
		width:20%;
		float:left;
	}
	#company-form2{
		height:100%;
		width:80%;
		float:left;
	}
	#phone-form{
		height:100%;
		width:20%;
		float:left;
	}
	#phone-form2{
		height:100%;
		width:80%;
		float:left;
	}
	#grade-img{
		margin-top:60px;
		margin-left:37px;
	}
	.question-tr{
		cursor:pointer;
	}
	.question-tr:hover{
		background:#f5f5fa;
	}
</style>
<div class="con" id="mypage-con">
	<div class="con-top">
		<span class="con-top-span">마이페이지</span>
	</div>
	<div id="mypage-con-main">
		<div id="mypage-con-main1">
			<div id="mypage-tab">
				<img id="member-img" src="/resources/img/회원정보4.png" width="120" height="120"><br>
					<span id="member-text">회원정보</span>
			</div>
			<div id="question-tab" >
				<img id="question-img" src="/resources/img/질문4.png" width="130" height="130"><br>
					<span id="question-text">문의내역</span>
			</div>
		</div>
		<div id="mypage-con-main2">
			<div id="mypage-form">
				<div id="my-form">
					<div id="my-img-div">
						<c:if test="${sessionScope.m.grade == '제조사직원'}">
							<img id="grade-img" src="/resources/img/직원.png" width="200" height="200">
						</c:if>
						<c:if test="${sessionScope.m.grade == '협력사직원'}">
							<img id="grade-img" src="/resources/img/협력사직원.png" width="200" height="200">
						</c:if>
					</div>
					<div id="my-img-name">${sessionScope.m.memberName}</div>
				</div>
				<div id="my-form2">
					<div id="my-info">
						<div class="my-info" id="my-info2">
							<div id="id-form">ID</div>
							<div id="id-form2">${sessionScope.m.memberId}</div>
						</div>
						<div class="my-info" id="my-info3">
							<div id="grade-form">등급</div>
							<div id="grade-form2">${sessionScope.m.grade}</div>
						</div>
						<div class="my-info" id="my-info4">
							<div id="company-form">회사</div>
							<div id="company-form2">${sessionScope.m.company}</div>
						</div>
						<div class="my-info" id="my-info5">
							<div id="phone-form">번호</div>
							<div id="phone-form2">${sessionScope.m.phone}</div>
						</div>
					</div>
				</div>
			</div>
			<div id="question-form">
				<div id="question-div">
					<div id="question-form1">
						<div id="question-top1">
							처리중인 문의내역
						</div>
						<div id="question-con2">
							<table id="pro-question-tbl">
								<tbody>
									<tr><th width="50%">제목</th><th width="25%">처리상태</th><th width="25%">날짜</th></tr>
								</tbody>
							</table>
							<div id="pro-question-tbl-form">
								<table id="pro-question-tbl2">
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div id="question-form2">
						<div id="question-top1">
							완료된 문의내역
						</div>
						<div id="question-con2">
							<table id="com-question-tbl">
								<tbody>
									<tr><th width="50%">제목</th><th width="25%">처리상태</th><th width="25%">날짜</th></tr>
								</tbody>
							</table>
							<div id="com-question-tbl-form">
								<table id="com-question-tbl2">
									<tbody>
									</tbody>
							</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>
</div>
<script>
	$(document).ready(function(){
		$("#mypage-tab").click();
	});
	$("#mypage-tab").on("click",function(){
		$("#mypage-form").css("display","block");
		$("#question-form").css("display","none");
		
		$("#question-text").css("color","gray");
		$("#question-text").css("font-size","1em");
		$("#member-text").css("color","#6382c9");
		$("#member-text").css("font-size","1.3em");
	});
	$("#question-tab").on("click",function(){
		$("#mypage-form").css("display","none");
		$("#question-form").css("display","block");
		$("#question-text").css("color","#6382c9");
		$("#question-text").css("font-size","1.3em");
		$("#member-text").css("color","gray");
		$("#member-text").css("font-size","1em");
		
		var memberId = "${sessionScope.m.memberId}";
		
		completeQuestionList(memberId);
		progressQuestionList(memberId);
		
	});
	 function completeQuestionList(memberId){
		$.ajax({
			url:'/completeQuestionList.do',
			type:'get',
			dataType:'json',
			data:{"memberId":memberId},
			success:function(data){
				console.log("completeQuestionList ajax 통신 성공");
				var comTbl = $("#com-question-tbl2");
				comTbl.children().empty();
				data.list.forEach(function(element){
					if (element.boardState == '신규요청'){
					    var stateSpan = "<span id='stateSpan' style='color:#6ddea3'>"+element.boardState+"</span>";
					}
					else if(element.boardState == '요청할당'){
						var stateSpan = "<span id='stateSpan' style='color:#e3de5b'>"+element.boardState+"</span>";
					}
					else if(element.boardState == '피드백요청'){
						var stateSpan = "<span id='stateSpan' style='color:#cd56e8'>"+element.boardState+"</span>";
					}
					else if(element.boardState == '처리완료'){
						var stateSpan = "<span id='stateSpan' style='color:#6382c9'>"+element.boardState+"</span>";
					}
					var comTr = $("<tr class='question-tr'><td width='50%'>"+element.boardTitle+"</td><td width='25%'>"+stateSpan+"</td><td width='25%'>"+element.enrollDate+"</td></tr>");
					comTr.attr('boardNo',element.boardNo);
					comTbl.children().append(comTr);
				});
			},
			error:function(){
				console.log("completeQuestionList ajax 통신 실패");
			}
		});
	}
	function progressQuestionList(memberId){
		$.ajax({
			url:'/progressQuestionList.do',
			type:'get',
			dataType:'json',
			data:{"memberId":memberId},
			success:function(data){
				console.log("progressQuestionList ajax 통신 성공");
				var proTbl = $("#pro-question-tbl2");
				proTbl.children().empty();
				data.list.forEach(function(element){
					
					if (element.boardState == '신규요청'){
					    var stateSpan = "<span id='stateSpan' style='color:#6ddea3'>"+element.boardState+"</span>";
					}
					else if(element.boardState == '요청할당'){
						var stateSpan = "<span id='stateSpan' style='color:#e3de5b'>"+element.boardState+"</span>";
					}
					else if(element.boardState == '피드백요청'){
						var stateSpan = "<span id='stateSpan' style='color:#cd56e8'>"+element.boardState+"</span>";
					}
					else if(element.boardState == '처리완료'){
						var stateSpan = "<span id='stateSpan' style='color:#6382c9'>"+element.boardState+"</span>";
					}
					
					var proTr = $("<tr class='question-tr'><td width='50%'>"+element.boardTitle+"</td><td width='25%'>"+stateSpan+"</td><td width='25%'>"+element.enrollDate+"</td></tr>");
					proTr.attr('boardNo',element.boardNo);
					proTbl.children().append(proTr);
				});
			},
			error:function(){
				console.log("progressQuestionList ajax 통신 실패");
			}
		});
	}
	
	$(document).on("click",".question-tr",function(){
		var boardNo = $(this).attr('boardNo');
		location.href="/boardView.do?boardNo="+boardNo;
	})

</script>