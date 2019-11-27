<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/board/proHeader.jsp"%>
<style>
	 ::-webkit-scrollbar {
		display:none;
	}
	#board-con-main{
		width:1230px;
		height:520px;
		background:white;
		margin:40px;
	}
	#board-view-form{
		float:left;
		width:50%;
		height:520px;
		padding:15px;
	}
	#board-view-form2{
		height:100%;
	}
	#board-comment-form{
		float:left;
		width:50%;
		height:520px;
		background:#f5f5fa;
		padding:15px;
	}
	#comments{
		padding:10px;
		height:90%;
		overflow-y:scroll;
	}
	#input-comments{
		padding:10px;
		height:90%;
		display:none;
	}
	#update-comments{
		padding:10px;
		height:90%;
		display:none;
	}
	#comment-btn-form{
		width:100%;
		height:10%;
	}
	#board-view1{
		height:25%;
	}
	#board-view2{
		height:65%;
		color:gray;
		font-size:0.9em;
		padding:10px;
	}
	#board-view3{
		height:10%;	
	}
	#board-modify{
		margin-left:10px;
		font-size:0.8em;
		margin-top:8px;
		float:right;
		background:#8c8ea3;
		color:white;
		cursor:pointer;
		outline:0;
		border:0;
		box-sizing:border-box;
		width:60px;
		height:30px;
	}
	#board-delete{
		margin-left:10px;
		font-size:0.8em;
		margin-top:8px;
		float:right;
		background:#8c8ea3;
		color:white;
		cursor:pointer;
		outline:0;
		border:0;
		box-sizing:border-box;
		width:60px;
		height:30px;
	}
	#board-move{
		margin-right:10px;
		margin-left:10px;
		font-size:0.8em;
		margin-top:8px;
		float:right;
		background:#8c8ea3;
		color:white;
		cursor:pointer;
		outline:0;
		border:0;
		box-sizing:border-box;
		width:60px;
		height:30px;
	}
	
	#comment-form{
		height:200px;
		margin-bottom:10px;
	}
	#comment-my{
		float:left;
		width:30%;
		height:100%;
	}
	#comment-con{
		float:left;
		width:70%;
		height:100%;
	}
	#comment-img-form{
		height:70%;
	}
	#comment-sys-form{
		height:30%;
	}
	#comment-img{
		margin-top:15px;
		margin-left:25px;
	}
	#comment-sys-form{
		color:gray;
		text-align:center;
		font-size:0.8em;
		padding-top:15px;
	}
	#comment-con{
		padding:10px;
	}
	#comment-writer{
		color:gray;
		font-size:0.8em;
		padding:3px;
	}
	#comment-con2{
		margin-top:5px;
		height:120px;
		color:gray;
		font-size:0.7em;
		padding:10px;
		overflow-y:scroll;
	}
	#board-title-form{
		height:30%;
	}
	#board-writer{
		padding:5px;
		float:left;
		height:70%;
		width:50%;
		color:gray;
		font-size:0.9em;
	}
	#board-writer2{
		padding:5px;
		float:left;
		height:70%;
		width:50%;
		color:gray;
		font-size:0.9em;
	}
	#board-file-form{
		height:30%;
		color:gray;
		font-size:0.9em;
	}
	#board-charge-form{
		height:70%;
	}
	#file-img{
		cursor:pointer;
	}
	#board-charge{
		height:50%;
		color:gray;
		font-size:0.9em;
	}
	#board-state{
		height:50%;
		color:gray;
		font-size:0.9em;
	}
	#writer-table tr:nth-child(1){
	}
	#file-table{
	
	}
	#board-no{
		float:left;
		width:10%;
		color:gray;
		font-size:0.9em;
		height:100%;
		padding:5px;
	}
	#board-title{
		float:left;
		width:90%;
		color:gray;
		font-size:0.9em;
		height:100%;
		line-height:32px;
		padding-left:5px;	
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
	#question-btn{
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
	#input-textarea{
		width:100%;
		height:100%;
		resize:none;
		box-sizing:border-box;
	}
	#update-textarea{
		width:100%;
		height:100%;
		resize:none;
		box-sizing:border-box;
	}
	#comment-submit{
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		cursor:pointer;
		height:30px;
		float:right;
		margin-right:10px;
		margin-top:20px;
	}
	#update-submit{
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		cursor:pointer;
		height:30px;
		float:right;
		margin-right:10px;
		margin-top:20px;
	}
	#comment-cancel{
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		cursor:pointer;
		height:30px;
		float:right;
		margin-top:20px;
	}
	#update-cancel{
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		cursor:pointer;
		height:30px;
		float:right;
		margin-top:20px;
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
	}
	#comment-like{
		font-size:0.8em;
		border:1px solid #8c8ea3;
		background:white;
		color:#8c8ea3;
		outline:none;
		cursor:pointer;
		height:20px;
		margin-left:3px;
	}
	#comment-like-cancel{
		font-size:0.8em;
		background:#606e89;
		border:1px solid white;
		color:white;
		outline:none;
		cursor:pointer;
		height:20px;
		margin-left:2px;
	}
	#like-span{
		color:red;
		font-size:0.9em;
	}
</style>
<div class="con" id="board-con">
	<div class="con-top">
		<span class="con-top-span">게시글</span>
	</div>
	<div id="board-con-main">
		<div id="board-view-form">
			<div id="board-view-form2">
				<div id="board-view1">
					<div id="board-title-form">
						<div id="board-no">No. ${board.boardNo }</div>
						<div id="board-title">Title. ${board.boardTitle } </div>
					</div>
					<div id="board-writer">
						<table id="writer-table">
							<tr><td style="text-align:right;">작성자</td><td style="text-align:center;">${board.writerName}(${board.boardCompany})</td></tr>
							<tr><td style="text-align:right;">작성날짜</td><td style="text-align:center;">${board.enrollDate}</td></tr>
							<tr>
								<td style="text-align:right;">파일명</td><td style="text-align:center; width:190px;"> 
									<c:if test="${board.filepath != null}">
										${board.filepath}
										<img id ="file-img" src="/resources/img/다운로드.png" width="18" height="18">
									</c:if>
									<c:if test="${board.filepath == null }">
										파일없음
									</c:if>
								</td>
							</tr>
						</table>
					</div>
					<div id="board-writer2">
					<%-- 	<div id="board-file-form">
							파일명 : ${board.filepath} <img id ="file-img" src="/resources/img/다운로드.png" width="18" height="18">
						</div>
						<div id="board-charge-form">
							<div id="board-charge">
								담당자 : ${board.chargeName}
							</div>
							<div id="board-state">
								처리상태 : ${board.boardState}
							</div>
						</div> --%>
						
						<table id="file-table">
							<tr>
								<td style="text-align:right;">담당자</td><td style="text-align:center;width:190px;">
									<c:if test="${board.chargeName == null}">
										<span style="color:red">미정</span>
									</c:if>
									<c:if test="${board.chargeName != null}">
										<span style="font-weight:bold">${board.chargeName}</span>
									</c:if>
								</td>
							</tr>
							<tr style="height:15px;"><td></td><td></td><td></td></tr>
							<tr>
								<td style="text-align:right;">처리상태</td><td style="text-align:center;">
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
						</table>
					</div>
				</div>
				<div id="board-view2">
					${board.boardContent}
				</div>
				<div id="board-view3">
					<button id="board-move">목록</button>
					<button id="board-delete">삭제</button>
					<button id="board-modify">수정</button>
				</div>
			</div>
		</div>
		<div id="board-comment-form">
			<div id="comments">
				<c:forEach items="${commentList}" var="comment">
				
					<c:if test="${comment.commentLike == 0}">
						<div id="comment-form">
							<div id="comment-my">
								<div id="comment-img-form">
									<c:if test="${comment.grade=='제조사직원' }">
										<img id="comment-img" src="/resources/img/직원.png" width="115" height="110">
									</c:if>
									<c:if test="${comment.grade=='협력사직원' }">
										<img id="comment-img" src="/resources/img/협력사직원.png" width="115" height="110">
									</c:if>
								</div>
								<div id="comment-sys-form">
									${comment.commentDate}<br>
									<span id="like-span"></span>
								</div>
							</div>
							<div id="comment-con">
								<div id="comment-writer">
									by. ${comment.writerName }<span>&nbsp&nbsp&nbsp ${comment.grade}(${comment.company})</span>
								</div>
								<div id="divdiv" style="border:1px solid gray; margin-top:5px; width:300px;"></div>
								<div id="comment-con2">
									${comment.commentContent}
								</div>
								<div id="comment-btn-form2">
									<button type="button" id="comment-del" value="${comment.commentNo}">삭제</button>
									<button type="button" id="comment-mod" value="${comment.commentNo}">수정</button>
									<c:if test="${comment.grade=='제조사직원' }">
										<button type="button" id="comment-like" value="${comment.commentNo}">답변채택</button>
									</c:if>
								</div>
							</div>
						</div>
					</c:if>
					
					<c:if test="${comment.commentLike == 1}">
						<div id="comment-form" style="background:#606e89">
							<div id="comment-my">
								<div id="comment-img-form" style="border-color:white">
									<img id="comment-img" src="/resources/img/직원.png" width="115" height="110">
								</div>
								<div id="comment-sys-form" style="color:white; border-color:white;">
									${comment.commentDate}<br>
									<span id="like-span">채택완료</span>
								</div>
							</div>
							<div id="comment-con" style="border-color:white">
								<div id="comment-writer" style="color:white; border-color:white;">
									by. ${comment.writerName }<span>&nbsp&nbsp&nbsp ${comment.grade}(${comment.company})</span>
								</div>
								<div id="divdiv" style="border:1px solid white; margin-top:5px; width:300px;"></div>
								<div id="comment-con2" style="color:white; border-color:white;">
									${comment.commentContent}
								</div>
								<div id="comment-btn-form2" style="border-color:white">
									<button type="button" id="comment-del" style="color:white; border-color:white; background:#606e89" value="${comment.commentNo}">삭제</button>
									<button type="button" id="comment-mod" style="color:white; border-color:white; background:#606e89" value="${comment.commentNo}">수정</button>
									<button type="button" id="comment-like-cancel" value="${comment.commentNo}">채택취소</button>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
			
				<form name="insertForm" onsubmit="return insertComment();">
					<div id="input-comments">
						<div id="comment-form">
							<div id="comment-my">
								<div id="comment-img-form">
									<c:if test="${sessionScope.m.grade == '제조사직원'}">
										<img id="comment-img" src="/resources/img/직원.png" width="115" height="110">
									</c:if>
									<c:if test="${sessionScope.m.grade == '협력사직원'}">
										<img id="comment-img" src="/resources/img/협력사직원.png" width="115" height="110">
									</c:if>
								</div>
								<div id="comment-sys-form">
									답글등록 중...
								</div>
							</div>
							<div id="comment-con">
								<div id="comment-writer">
									by. ${sessionScope.m.memberName}<span>&nbsp&nbsp&nbsp ${sessionScope.m.grade}/${sessionScope.m.company}</span>
								</div>
								<div style="border:1px solid gray; margin-top:5px; width:300px;"></div>
								<div id="comment-con2" style="padding:0">
									<textarea name="commentContent" id="input-textarea"></textarea>
								</div>
							</div>
						</div>
						<button type="button" id="comment-cancel">취소</button>
						<button type="submit" id="comment-submit" type="submit">등록완료</button>
						<input type="hidden" name="boardNo" value="${board.boardNo}">
						<input type="hidden" name="commentWriterId" value="${sessionScope.m.memberId}">
						<input type="hidden" name="commentWriterName" value="${sessionScope.m.memberName}">
						<input type="hidden" name="commentGrade" value="${sessionScope.m.grade}">
						<input type="hidden" name="commentCompany" value="${sessionScope.m.company}">
					</div>
				</form>
				
				<form action="/updateComment.do" method="post">
					<div id="update-comments">
						<div id="comment-form">
							<div id="comment-my">
								<div id="comment-img-form">
									<img id="comment-img" src="/resources/img/직원.png" width="115" height="110">
								</div>
								<div id="comment-sys-form">
									댓글 수정 중..
								</div>
							</div>
							<div id="comment-con">
								<div id="comment-writer">
									by. ${sessionScope.m.memberName}<span>&nbsp&nbsp&nbsp ${sessionScope.m.grade}/${sessionScope.m.company}</span>
								</div>
								<div style="border:1px solid gray; margin-top:5px; width:300px;"></div>
								<div id="comment-con2" style="padding:0">
									<textarea name="commentContent" id="update-textarea"></textarea>
								</div>
							</div>
						</div>
						<button type="button" id="update-cancel">취소</button>
						<button type="submit" id="update-submit" type="submit">수정완료</button>
						<input type="hidden" name="boardNo" value="${board.boardNo}">
						<input type="hidden" name="commentWriterId" value="${sessionScope.m.memberId}">
						<input type="hidden" name="commentWriterName" value="${sessionScope.m.memberName}">
						<input type="hidden" name="commentGrade" value="${sessionScope.m.grade}">
						<input type="hidden" name="commentCompany" value="${sessionScope.m.company}">
						<input type="hidden" id="update-comment-no" name="commentNo">
					</div>
				</form>
				
			<div id="comment-btn-form">
				<!-- <button type="button" id="answer-btn">답글등록</button> -->
				<c:if test="${sessionScope.m.grade == '협력사직원' || sessionScope.m.grade == '관리자'}">
					<button type="button" id="question-btn">문의등록</button>
				</c:if>
<!-- 				<button type="button" id="answer-btn2">test</button> -->
			</div>
		</div>
	</div>
</div>

<script>

	function insertComment(){
		var boardNo = insertForm.boardNo.value;
		var commentWriterId = insertForm.commentWriterId.value;
		var commentWriterName = insertForm.commentWriterName.value;
		var commentContent = insertForm.commentContent.value;
		var commentGrade = insertForm.commentGrade.value;
		var commentCompany = insertForm.commentCompany.value;
		$("#comments").css("display","block");
		$("#input-comments").css("display","none");
		$("#answer-btn").css("display","block");
		
		$.ajax({
			url:'insertComment.do',
			type:'get',
			data:{"boardNo":boardNo, "commentWriterId":commentWriterId,
				"commentWriterName":commentWriterName,"commentContent":commentContent,"commentGrade":commentGrade,"commentCompany":commentCompany},
			success:function(data){
				console.log("insertComment ajax 성공");
				commentList(boardNo);
				if(commentGrade == '협력사직원'){
					$("#stateSpan").text("피드백 요청");
					$("#stateSpan").css("color","#d1d3ff");
				}
				alert("댓글이 등록되었습니다.");
			},
			error:function(){
				console.log("insertComment ajax 실패");
			}
		});
		
		return false;
	}
	
	function commentList(boardNo){
		console.log("commentList 시작");
		 $.ajax({
			 url:'/commentList.do',
			 data:{"boardNo":boardNo},
			 type:"get",
			 dataType:"json",
			 success : function(data){
				 console.log("commentList ajax 통신 성공");
				 $("#comments").empty();
				 console.log("commenList : "+data.list);
/* 				 console.log("data.commenList.get(0).writerName : "+data.list.get(0).writerName); */
				 data.list.forEach(function(element){
					 
					 var img = element.grade == '제조사직원'?"<img id='comment-img' src='/resources/img/직원.png' width='115' height='110'>":"<img id='comment-img' src='/resources/img/협력사직원.png' width='115' height='110'>";
					 var btn = element.grade == '제조사직원'?"<button type='button' id='comment-like' value="+element.commentNo+">댓글채택</button>":"";
					 if(element.commentLike == 1){
				
						 /* if(element.grade == '제조사직원'){
							 console.log("true");
							 var img = "<img id='comment-img' src='/resources/img/직원.png' width='115' height='110'>";
						 }else{
							 console.log("false");
							 var img = "<img id='comment-img' src='/resources/img/협력사직원.png' width='115' height='110'>"
						 } */
						  console.log("img -> " + img);
						 var commentForm = $(" <div id='comment-form' style='background:#606e89'>"+
								 					"<div id='comment-my'>"+
								 						"<div id='comment-img-form' style='border-color:white'>"+
								 							img+
								 						"</div>"+
								 						"<div id='comment-sys-form' style='color:white; border-color:white;'>"+
								 							element.commentDate+"<br>"+
								 							"<span id='like-span'>채택완료</span>"+
								 						"</div>"+
								 					"</div>"+
								 						"<div id='comment-con' style='border-color:white'>"+
								 							"<div id='comment-writer' style='color:white; border-color:white;'>"+
								 							"by. "+element.writerName+"<span>&nbsp&nbsp&nbsp"+element.grade+"("+element.company+")</span>"+
								 						"</div>"+
								 						"<div id='divdiv' style='border:1px solid white; margin-top:5px; width:300px;'></div>"+
								 						"<div id='comment-con2' style='color:white; border-color:white;'>"+
								 							element.commentContent+
								 						"</div>"+
								 						"<div id='comment-btn-form2' style='border-color:white'>"+
								 							"<button type='button' id='comment-del' style='color:white; border-color:white; background:#606e89' value="+element.commentNo+">삭제</button>"+
								 							"<button type='button' id='comment-mod' style='color:white; border-color:white; background:#606e89' value="+element.commentNo+">수정</button>"+
								 							"<button type='button' id='comment-like-cancel' value="+element.commentNo+">채택취소</button>"+
								 						"</div>"+
								 					"</div>"+
								 				"</div>");
						$("#comments").append(commentForm);
					 }else{
						 var commentForm = $(" <div id='comment-form'>"+
				 					"<div id='comment-my'>"+
				 						"<div id='comment-img-form'>"+
				 							img+
				 						"</div>"+
				 						"<div id='comment-sys-form'>"+
				 							element.commentDate+"<br>"+
				 							"<span id='like-span'></span>"+
				 						"</div>"+
				 					"</div>"+
				 						"<div id='comment-con'>"+
				 							"<div id='comment-writer'>"+
				 							"by. "+element.writerName+"<span>&nbsp&nbsp&nbsp"+element.grade+"("+element.company+")</span>"+
				 						"</div>"+
				 						"<div id='divdiv' style='border:1px solid gray; margin-top:5px; width:300px;'></div>"+
				 						"<div id='comment-con2'>"+
				 							element.commentContent+
				 						"</div>"+
				 						"<div id='comment-btn-form2' style='border-color:white'>"+
				 							"<button type='button' id='comment-del' value="+element.commentNo+">삭제</button>"+
				 							"<button type='button' id='comment-mod' value="+element.commentNo+">수정</button>"+
				 							btn+
				 						"</div>"+
				 					"</div>"+
				 				"</div>");
						$("#comments").append(commentForm);
					 }
				 });
			 },
			 error : function(){
				 console.log("commentList ajax 통신 실패");
			 }
			
		 });
	}
	$("#board-move").on("click",function(){
		location.href="/board.do";
	});
	
	$("#board-delete").on("click",function(){
		location.href="/deleteBoard.do?boardNo="+${board.boardNo};
	});
	
	$("#board-modify").on("click",function(){
		location.href="/updateView.do?boardNo="+${board.boardNo};
	});
	$("#answer-btn").on("click",function(){
		$(this).css("display","none");
		$("#input-comments").css("display","block");
		$("#comments").css("display","none");
		$("#input-textarea").val('');
	});
	$("#question-btn").on("click",function(){
		$(this).css("display","none");
		$("#input-comments").css("display","block");
		$("#comments").css("display","none");
		$("#input-textarea").val('');
	});
	$("#comment-cancel").on("click",function(){
		$("#comments").css("display","block");
		$("#input-comments").css("display","none");
		$("#answer-btn").css("display","block");
		$("#question-btn").css("display","block");
	});
	$("#update-cancel").on("click",function(){
		$("#comments").css("display","block");
		$("#answer-btn").css("display","block");
		$("#update-comments").css("display","none");
		$("#update-textarea").val('');
	});
	
	$(document).on("click","#comment-del",function(){
		var commentNo = $(this).val();
		var boardNo = ${board.boardNo};
		$.ajax({
			url:'/deleteComment.do',
			data:{"commentNo":commentNo,"boardNo":boardNo},
			type:"get",
			success : function(data){
				console.log("deleteComment ajax 통신 성공");
				if(data > 0){
					commentList(boardNo);
					alert("댓글이 삭제되었습니다.");
				}
			},
			error : function(){
				console.log("deleteComment ajax 통신 실패");
			}
		});
	});
	$(document).on("click","#comment-mod",function(){
		$("#update-comments").css("display","block");
		$("#comments").css("display","none");
		$("#answer-btn").css("display","none");
		var commentNo = $(this).val();
		
		$("#update-comment-no").val(commentNo);
		var preText = $(this).parent().parent().find("#comment-con2").text();
		console.log("preText : "+preText);
		$("#update-textarea").val(preText);
	});
	
	$(document).on("click","#comment-like",function(){
		
		var commentNo = $(this).val();
		var commentLike = $(this);
		var boardNo = ${board.boardNo};
		$.ajax({
			url : '/commentLike.do',
			data : {'commentNo':commentNo,"boardNo":boardNo},
			type : 'get',
			success : function(data){
				if(data > 0){
					console.log("commentLike ajax 성공");
					var likeSpan = commentLike.parent().parent().parent().find("#like-span");
					commentLike.parent().parent().parent().find("#comment-con2").css("color","white");
					commentLike.parent().parent().parent().find("#comment-con2").css("border-color","white");
					commentLike.parent().parent().parent().find("#comment-sys-form").css("color","white");
					commentLike.parent().parent().parent().find("#comment-sys-form").css("border-color","white");
					commentLike.parent().parent().parent().find("#comment-writer").css("color","white");
					commentLike.parent().parent().parent().find("#comment-writer").css("border-color","white");
					commentLike.parent().parent().parent().find("#divdiv").css("border","1px solid white");
					commentLike.parent().parent().parent().find("#comment-mod").css("background","#606e89");
					commentLike.parent().parent().parent().find("#comment-mod").css("color","white");
					commentLike.parent().parent().parent().find("#comment-mod").css("border-color","white");
					commentLike.parent().parent().parent().find("#comment-del").css("background","#606e89");
					commentLike.parent().parent().parent().find("#comment-del").css("color","white");
					commentLike.parent().parent().parent().find("#comment-del").css("border-color","white");
					commentLike.parent().parent().parent().find("#comment-img-form").css("border-color","white");
					commentLike.parent().parent().parent().find("#comment-btn-form2").css("border-color","white");
					commentLike.parent().parent().css("border-color","white");
					
					likeSpan.text("채택완료");
					/* $(this).parents("#comments").css("background","#a7c1f2"); */
					commentLike.parent().parent().parent().css("background","#606e89");
					var likeCancelBtn = $("<button type='button' id='comment-like-cancel' value="+commentNo+">채택취소</button>");
					commentLike.after(likeCancelBtn);
					commentLike.remove();
					$("#stateSpan").text("처리완료");
					$("#stateSpan").css("color","#6382c9");
				}
			},
			error : function(){
				console.log("commentLike ajax 실패");
			}
			
		});
	});
	
	$(document).on("click","#comment-like-cancel",function(){
		
		var commentNo = $(this).val();
		var commentLike = $(this);
		$.ajax({
			url : '/commentLikeCancel.do',
			data : {'commentNo':commentNo},
			type : 'get',
			success : function(data){
				if(data > 0){
					console.log("commentLiecancel ajax 성공");
					var likeSpan = commentLike.parent().parent().parent().find("#like-span");
					commentLike.parent().parent().parent().find("#comment-con2").css("color","#8c8ea3");
					commentLike.parent().parent().parent().find("#comment-con2").css("border-color","black");
					commentLike.parent().parent().parent().find("#comment-sys-form").css("color","#8c8ea3");
					commentLike.parent().parent().parent().find("#comment-sys-form").css("border-color","black");
					commentLike.parent().parent().parent().find("#comment-writer").css("color","#8c8ea3");
					commentLike.parent().parent().parent().find("#comment-writer").css("border-color","black");
					commentLike.parent().parent().parent().find("#divdiv").css("border","1px solid black");
					commentLike.parent().parent().parent().find("#comment-mod").css("background","white");
					commentLike.parent().parent().parent().find("#comment-mod").css("color","#8c8ea3");
					commentLike.parent().parent().parent().find("#comment-mod").css("border-color","#8c8ea3");
					commentLike.parent().parent().parent().find("#comment-del").css("background","white");
					commentLike.parent().parent().parent().find("#comment-del").css("color","#8c8ea3");
					commentLike.parent().parent().parent().find("#comment-del").css("border-color","#8c8ea3");
					
					commentLike.parent().parent().parent().find("#comment-img-form").css("border-color","black");
					commentLike.parent().parent().parent().find("#comment-btn-form2").css("border-color","black");
					
					likeSpan.text("");
					/* $(this).parents("#comments").css("background","#a7c1f2"); */
					commentLike.parent().parent().parent().css("background","transparent");
					var likeCancelBtn = $("<button type='button' id='comment-like' value="+commentNo+">댓글채택</button>");
					commentLike.after(likeCancelBtn);
					commentLike.remove();
				}
			},
			error : function(){
				console.log("commentLiecancel ajax 실패");
			}
		});
	});
</script>