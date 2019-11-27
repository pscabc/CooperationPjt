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
	#support-con-main{
		width:1230px;
		height:520px;
		background:white;
		margin:40px;
		background:#f5f5fa;
	}
	#support1{
		background:#8c8ea3;
		float:left;
		height:100%;
		width:19%;
	}
	#support2{
		float:left;
		height:100%;
		width:35%;
		padding:10px;
	}
	#support2-board{
		height:100%;
		width:100%;
		color:gray;
		font-size:0.9em;
		background:white;
	}
	#support2-board1{
		height:10%;
	}
	#support2-board-no{
		float:left;
		width:20%;
		height:100%;
		text-align:center;
		line-height:47px;
	}
	#support2-board-title{
		float:left;
		width:80%;
		height:100%;
		line-height:47px;
		padding-left:3px;
	}
	#support2-board2{
		height:20%;
	}
	#support2-board-left{
		height:100%;
		width:50%;
		float:left;
		padding:10px;
	}
	#support2-board-right{
		height:100%;
		width:50%;
		float:left;
		padding:10px;
	}
	#support-writer-tbl{
		color:gray;
		font-size:0.9em;
	}
	#support-writer-tbl td{
		height:22px;
	}
	#support-writer-tbl tr:nth-child(1){
		text-align:right;
	}
	#support-writer-tbl tr:nth-child(2){
		text-align:center;
	}
	#support-charge-tbl{
		font-size:0.9em;
	}
	#support-charge-tbl td{
		height:22px;
	}
	#support-charge-tbl tr:nth-child(1){
		text-align:right;
	}
	#writer-table{
		height:100%;
		width:100%;
	}

	#support2-board3{
		height:70%;
		padding:10px;
		font-size:0.9em;
	}
	#support3{
		float:left;
		height:100%;
		width:46%;
		padding:10px;
	}
	#support3-comment{
		height:90%;
		width:100%;
		padding:10px;
		overflow:scroll;
	}
	#answer-form{
		height:90%;
		width:100%;
		padding:5px;
		display:none;
	}
	#support3-btn-form{
		height:10%;
	}
	#answer-btn{
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		height:30px;
		float:right;
		margin-top:8px;
		margin-right:10px;
		cursor:pointer;
	}
	#cancel-btn{
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		height:30px;
		float:right;
		margin-top:8px;
		margin-right:10px;
		cursor:pointer;
		display:none;
		width:50px;
	}
	#answer-save-btn{
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		height:30px;
		float:right;
		margin-top:8px;
		margin-right:10px;
		cursor:pointer;
		display:none;
		width:70px;
	}
	#update-save-btn{
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		height:30px;
		float:right;
		margin-top:8px;
		margin-right:10px;
		cursor:pointer;
		display:none;
		width:70px;
	}
	#comment-form{
		height:200px;
		margin-bottom:15px;
	}
	#comment-my{
		height:100%;
		float:left;
		width:30%;
	}
	#comment-img-form{
		height:70%;
	}
	#comment-img{
		margin-top:12px;
		margin-left:22px;
	}
	#comment-sys-form{
		font-size:0.8em;
		text-align:center;
		line-height:25px;
		height:30%;
	}
	#comment-sys-form2{
		font-size:0.8em;
		text-align:center;
		line-height:25px;
		height:30%;
	}
	#comment-con{
		height:100%;
		float:left;
		width:70%;
		padding:5px;
	}
	#comment-writer{
		padding-left:10px;
		font-size:0.8em;
		height:30px;
		line-height:30px;
	}
	#comment-con2{
		font-size:0.8em;
		height:115px;
		padding:10px;
	}
	#comment-input-con2{
		height:115px;
	}
	#input-textarea{
		height:100%;
		width:100%;
		resize:none;
		box-sizing:border-box;
		padding:10px;
		color:gray;
		font-size:0.8em;
	}
	#comment-btn-form2{
		height:30px;
	}
	#comment-mod{
		font-size:0.8em;
		background:white;
		color:#8c8ea3;
		border:1px solid #8c8ea3; 
		float:right;
		outline:none;
		cursor:pointer;
		margin-right:2px;
		line-height:20px;
		height:22px;
		margin-top:3px;
	}
	#comment-del{
		font-size:0.8em;
		background:white;
		color:#8c8ea3;
		border:1px solid #8c8ea3; 
		float:right;
		outline:none;
		cursor:pointer;
		margin-right:2px;
		line-height:20px;
		height:22px;
		margin-top:3px;
	}
	#support-board1{
		height:7.5%;
		font-size:0.9em;
		text-align:center;
		color:white;
		line-height:38.69px;
	}
	#divdiv{
		border:1px solid gray; margin-top:5px; margin-bottom:5px; width:300px;
	}
	#support-board2{
		height:7.5%;
		background:#9995ad;
	}
	#support-board3{
		background:white;
		height:85%;
		overflow:scroll;
	}
	#support-th1{
		font-size:0.8em;
		text-align:center;
		color:white;
		line-height:38.69px;
		float:left;
		width:20%;
		height:100%;
	}
	#support-th2{
		font-size:0.8em;
		text-align:center;
		color:white;
		line-height:38.69px;
		float:left;
		width:40%;
		height:100%;
	}
	#support-th3{
		font-size:0.8em;
		text-align:center;
		color:white;
		line-height:38.69px;
		float:left;
		width:40%;
		height:100%;
	}
	.support-tr{
		cursor:pointer;
	}
	#support-table{
		text-align:center; 
		color:gray;
		font-size:0.8em;
	}
	#support-table tr:hover{
		background:#f5f5fa;
	}
	#like-span{
		color:red;
		font-size:1em;
	}
</style>
<div class="con" id="support-con">
	<div class="con-top">
		<span class="con-top-span">기술지원</span>
	</div>
	<div id="support-con-main">
		<div id="support1">
			<div id="support-board1">
				요청된 문의글
			</div>
			<div id="support-board2">
				<div id="support-th1">
					번호
				</div>
				<div id="support-th2">
					문의날짜
				</div>
				<div id="support-th3">
					처리상태
				</div>
			</div>
			<div id="support-board3">
				<table id="support-table">
					<c:forEach items="${list}" var="board">
						<tr class="support-tr">
							<td id="boardNo" style="width:55px;">${board.boardNo}</td>
							<td style="width:117px;height:36.7px;">
								${board.enrollDate}
							</td>
							<td style="width:120.8px;height:36.7px;">
								<c:if test="${board.boardState == '신규요청'}">
										<span id="stateSpan" style="color:#6ddea3">${board.boardState}</span>
									</c:if>
									<c:if test="${board.boardState == '요청할당'}">
										<span id="stateSpan" style="color:#e3de5b">${board.boardState}</span>
									</c:if>
									<c:if test="${board.boardState == '피드백요청'}">
										<span id="stateSpan" style="color:#cd56e8">${board.boardState}</span>
									</c:if>
									<c:if test="${board.boardState == '처리완료'}">
										<span id="stateSpan" style="color:#6382c9">${board.boardState}</span>
									</c:if>
									<c:if test="${board.boardState == '답변등록'}">
										<span id="stateSpan" style="color:#7ae0f0">${board.boardState}</span>
									</c:if>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div id="support2">
		</div>
		<div id="support3">
			<!-- <div id="support3-comment">
			</div>
			<div id="support3-btn-form">
				<button id="answer-btn">답변작성</button>
			</div> -->
		</div>
	</div>
</div>
<script>
	var selIndex = 0;
	
	$(".support-tr").on("click",function(){
		var boardNo = $(this).children().eq(0).text();
		var index = $(this).index();
		selIndex = index;
		console.log("boardNo : "+boardNo);
		console.log("index : "+index);
		$(".support-tr").css("background","white");
		
		$(this).css("background","#f5f5fa");
		
		$.ajax({
			url:'/boardOne.do',
			dataType:'json',
			type:'get',
			data:{"boardNo":boardNo},
			success:function(data){
				console.log("boardOne ajax 통신 성공");
				console.log("data.board.boardState : "+data.board.boardState);
				if(data.board.filename == ''){
					var filename="<td style='width:130px; text-align:center;' >없음</td>";
				}else{
					var filename="<td style='width:130px; text-align:center;' >"+data.board.filename+"</td>";
				}
				
				
				if (data.board.boardState == '신규요청'){
				    var stateSpan = "<span id='stateSpan' style='color:#6ddea3'>"+data.board.boardState+"</span>";
				}
				else if(data.board.boardState == '요청할당'){
					var stateSpan = "<span id='stateSpan' style='color:#e3de5b'>"+data.board.boardState+"</span>";
				}
				else if(data.board.boardState == '피드백요청'){
					var stateSpan = "<span id='stateSpan' style='color:#cd56e8'>"+data.board.boardState+"</span>";
				}
				else if(data.board.boardState == '처리완료'){
					var stateSpan = "<span id='stateSpan' style='color:#6382c9'>"+data.board.boardState+"</span>";
				}
				else if(data.board.boardState == '답변등록'){
					var stateSpan = "<span id='stateSpan' style='color:#7ae0f0'>"+data.board.boardState+"</span>";
				}
				
				var boardView = "<div id='support2-board'>"+
									"<div id='support2-board1'>"+
										"<div id='support2-board-no'>"+
											"No. <span id='boardNo2'>"+data.board.boardNo+"</span>"+
										"</div>"+
										"<div id='support2-board-title'>"+
											"Title. "+data.board.boardTitle+
										"</div>"+
									"</div>"+
									"<div id='support2-board2'>"+
										"<div id='support2-board-left'>"+
											"<table id='support-writer-tbl'>"+
												"<tr>"+
													"<td>작성자</td>"+
													"<td style='width:130px;text-align:center;'>"+data.board.writerName+"</td>"+
												"</tr>"+
												"<tr>"+
													"<td>회사명</td>"+
													"<td>"+data.board.boardCompany+"</td>"+
												"</tr>"+
												"<tr>"+
													"<td>파일명</td>"+
													filename+
												"</tr>"+
											"</table>"+
										"</div>"+
										"<div id='support2-board-right'>"+
											"<table id='support-charge-tbl'>"+
												"<tr>"+
													"<td>담당자</td>"+
													"<td style='width:115px; text-align:center;'>"+data.board.chargeName+"</td>"+
												"</tr>"+
												"<tr>"+
													"<td>처리상태</td>"+
													"<td style='text-align:center;'>"+stateSpan+"</td>"+
												"</tr>"+
												"<tr>"+
													"<td>작성날짜</td>"+
													"<td>"+data.board.enrollDate+"</td>"+
												"</tr>"+
											"</table>"+
										"</div>"+
									"</div>"+
									"<div id='support2-board3'>"+data.board.boardContent+
									"</div>"+
								"</div>";
				$("#support2").empty();
				$("#support2").append(boardView);
				commentList(boardNo,index);
			},
			error:function(){
				console.log("boardOne ajax 통신 실패");
			}
		});
	});
	
	function commentList(boardNo,index){
		console.log("commentList index : "+index);
		$.ajax({
			 url:'/commentList.do',
			 data:{"boardNo":boardNo},
			 type:"get",
			 dataType:"json",
			 success : function(data){
				 console.log("commentList ajax 통신 성공");
				 console.log("commentList ajax index : " +index);
				 console.log("commentList ajax boardNo : " +boardNo);
				 var support3 = $("#support3");
				 var commentForm = $("<div id='support3-comment'></div>");
				 support3.empty();
				 data.list.forEach(function(element){
					 var img = element.grade == '제조사직원'?"<img id='comment-img' src='/resources/img/직원.png' width='115' height='110'>":"<img id='comment-img' src='/resources/img/협력사직원.png' width='115' height='110'>";
					 var btn = element.grade == '제조사직원'?"<button type='button' id='comment-like' value="+element.commentNo+">댓글채택</button>":"";
					 var modBtn = "";
	 				if(element.grade == '제조사직원'){
						modBtn = "<button id='comment-del' style='color:white; border-color:white; background:#606e89' value="+element.commentNo+">삭제</button>"+
 									"<button id='comment-mod' style='color:white; border-color:white; background:#606e89' value="+element.commentNo+">수정</button>"; 					
	 				}
					 
					 if(element.commentLike == 1){
						 var comment = $("<div id='comment-form' style='background:#606e89'>"+
								 				"<div id='comment-my'>"+
								 					"<div id='comment-img-form' style='border-color:white'>"+
								 						img+
								 					"</div>"+
								 					"<div id='comment-sys-form' style='color:white; border-color:white;'>"+element.commentDate+"<br>"+
								 						"<span id='like-span'>채택완료</span>"+
								 					"</div>"+
								 				"</div>"+
								 				"<div id='comment-con' style='border-color:white'>"+
								 					"<div id='comment-writer' style='color:white; border-color:white;'>"+
								 						"by. "+element.writerName+"<span>&nbsp&nbsp&nbsp"+element.grade+"("+element.company+")</span>"+
								 					"</div>"+
								 					"<div id='divdiv' style='border:1px solid white;'></div>"+
								 					"<div id='comment-con2'  style='color:white; border-color:white;'>"+
								 						element.commentContent+
								 					"</div>"+
								 					"<div id='comment-btn-form2' style='border-color:white'>"+
								 						modBtn+
								 					"</div>"+
								 				"</div>"+
								 			"</div>");	
						 commentForm.append(comment);
					 }else{
						 var comment = $("<div id='comment-form'>"+
					 				"<div id='comment-my'>"+
					 					"<div id='comment-img-form'>"+
					 						img+
					 					"</div>"+
					 					"<div id='comment-sys-form'>"+
					 						element.commentDate+"<br>"+
					 					"</div>"+
					 				"</div>"+
					 				"<div id='comment-con'>"+
					 					"<div id='comment-writer'>"+
					 						"by. "+element.writerName+"<span>&nbsp&nbsp&nbsp"+element.grade+"("+element.company+")</span>"+
					 					"</div>"+
					 					"<div id='divdiv'></div>"+
					 					"<div id='comment-con2'>"+
					 						element.commentContent+
					 					"</div>"+
					 					"<div id='comment-btn-form2' >"+
					 						modBtn+
					 					"</div>"+
					 				"</div>"+
					 			"</div>");	
			 			commentForm.append(comment);
					 }	 					
				 });	
				 var btnForm = $("<div id='support3-btn-form'>"+
						 			"<button id='answer-btn'>답변작성</button>"+
						 			"<button id='cancel-btn'>취소</button>"+
						 			"<button id='answer-save-btn' value="+index+">등록완료</button>"+
						 			"<button id='update-save-btn' value="+index+">수정완료</button>"+
						 		"</div>");
				 var answerForm = $("<div id='answer-form'></div>");
				 var answerComment = $("<div id='comment-form'>"+
			 								"<div id='comment-my'>"+
			 									"<div id='comment-img-form'>"+
			 										"<img id='comment-img' src='/resources/img/직원.png' width='115' height='110'>"+
			 									"</div>"+
			 									"<div id='comment-sys-form2' style='line-height:55px;'>답변 작성 중.."+
			 									"</div>"+
		 									"</div>"+
		 									"<div id='comment-con'>"+
							 					"<div id='comment-writer'>"+
				 									"by. ${sessionScope.m.memberName}<span>&nbsp&nbsp&nbsp${sessionScope.m.grade}(${sessionScope.m.company})</span>"+
				 								"</div>"+
			 									"<div id='divdiv'></div>"+
			 									"<div id='comment-input-con2'>"+
				 									"<textarea name='commentContent' id='input-textarea'></textarea>"+
				 								"</div>"+
				 								"<div id='comment-btn-form2'>"+
			 									"</div>"+
			 								"</div>"+
			 							"</div>");	
				 support3.append(commentForm);
				 answerForm.append(answerComment);
				 support3.append(answerForm);
				 support3.append(btnForm);
			 },
			 error:function(){
				 console.log("commentList ajax 통신 실패");
			 }
		});
	}
	
	$(document).on("click","#answer-btn",function(){
		console.log("!");
		$("#support3-comment").css("display","none");
		$("#answer-btn").css("display","none");
		$("#cancel-btn").css("display","block");
		$("#answer-form").css("display","block");
		$("#answer-save-btn").css("display","block");
		$("#comment-sys-form2").text("답변 작성 중...");
	});
	$()
	$(document).on("click","#cancel-btn",function(){
		$("#support3-comment").css("display","block");
		$("#answer-btn").css("display","block");
		$("#cancel-btn").css("display","none");
		$("#answer-form").css("display","none");
		$("#answer-save-btn").css("display","none");
		$("#update-save-btn").css("display","none");
	});
	$(document).on("click","#answer-save-btn",function(){
		var commentContent = $("#input-textarea").val();
		var commentWriterId = "${sessionScope.m.memberId}";
		var commentWriterName = "${sessionScope.m.memberName}";
		var commentGrade = "${sessionScope.m.grade}";
		var commentCompany = "${sessionScope.m.company}";
		var boardNo = $("#boardNo2").text();
		console.log("boardNo:"+boardNo);
		var index = $(this).val();
		console.log("index:"+index);
		
		$.ajax({
			url:'/insertComment.do',
			data:{"commentWriterId":commentWriterId,
				"commentWriterName":commentWriterName,
				"commentGrade":commentGrade,
				"commentCompany":commentCompany,
				"boardNo":boardNo,
				"commentContent":commentContent},
			type:'get',
			success:function(data){
				console.log("insertComment ajax 후 boardNo : "+boardNo);
				console.log("insertComment ajax 통신 성공");
				if(data > 0){
					alert("답변 등록이 완료되었습니다.");
					$("#support3-comment").css("display","block");
					$("#answer-btn").css("display","block");
					$("#cancel-btn").css("display","none");
					$("#answer-form").css("display","none");
					$("#answer-save-btn").css("display","none");
					
					$("#support-table").children().children().eq(index).click();
				}
			},
			error:function(){
				
			}
		});
	});
	
	$(document).on("click","#comment-del",function(){
		var commentNo = $(this).val();
		var index = selIndex;
		console.log("comment-del / index : "+index);
		console.log("comment-del / commentNo : "+commentNo);
		console.log("!");
		var boardNo = $("#support-table").children().children().eq(index).children().eq(0).text();
		console.log("boardNo : "+boardNo);
		console.log("!");
		
		$.ajax({
			url:'/deleteComment.do',
			data:{"commentNo":commentNo,"boardNo":boardNo},
			type:'get',
			success:function(data){
				if(data > 0){
					console.log("deleteComment.do ajax 통신 성공");
					alert("댓글이 삭제되었습니다.");
 					$("#support-btn").click();
				}
			},
			error:function(){
				console.log("deleteComment.do ajax 통신 실패");
			}
		});
	});
	
	$(document).on("click","#comment-mod",function(){
		var commentNo = $(this).val();
		var commentContent = $(this).parent().prev().text();
		
		$("#support3-comment").css("display","none");
		$("#answer-btn").css("display","none");
		$("#cancel-btn").css("display","block");
		$("#answer-form").css("display","block");
		$("#update-save-btn").css("display","block");
		
		$("#update-save-btn").attr("commentNo",commentNo);
		$("#input-textarea").text(commentContent);
		$("#comment-sys-form2").text("답변 수정 중...");
	});
	
	$(document).on("click","#update-save-btn",function(){
		var commentNo = $(this).attr("commentNo");
		var commentContent = $("#input-textarea").val();
		var index = $(this).val();
		$.ajax({
			url:'/updateCommentAjax.do',
			data:{"commentNo":commentNo,"commentContent":commentContent},
			type:'get',
			success:function(data){
				console.log("updateCommentAjax ajax 통신 성공");
				if(data > 0){
					alert("댓글 수정 성공");
				}else{
					alert("댓글 수정 실패");
				}
				$("#support-table").children().children().eq(index).click();
			},
			error:function(){
				console.log("updateCommentAjax ajax 통신 실패");
			}
		});
	});
	
	
</script>