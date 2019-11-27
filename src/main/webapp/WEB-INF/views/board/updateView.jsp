<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/board/proHeader.jsp"%>

<style>
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
		overflow:hidden;
		padding:15px;
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
		margin-right:10px;
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
		height:220px;
		margin-bottom:15px;
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
		padding:20px;
	}
	#comment-writer{
		color:gray;
		font-size:0.9em;
	}
	#comment-con2{
		margin-top:5px;
		height:150px;
		color:gray;
		font-size:0.7em;
		padding:10px;
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
	#board-textarea{
		box-sizing:border-box;
		resize:none;
		width:100%;
		height:100%;
	}
	#board-textarea:focus{
		outline:none;
	}
	#title-text{
		width:90%;
	}
</style>

<form action="/updateBoard.do" method="post">
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
						<input type="hidden" name="boardNo" value="${board.boardNo }">
						<div id="board-title">Title. <input id="title-text" type="text" name="boardTitle" value="${board.boardTitle }"> </div>
					</div>
					<div id="board-writer">
						<table id="writer-table">
							<tr><td style="text-align:right;">작성자</td><td style="text-align:center;">${board.writerName}</td></tr>
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
							<tr><td style="text-align:right;">담당자</td><td style="text-align:center;width:190px;">${board.chargeName}</td></tr>
							<tr style="height:15px;"><td></td><td></td><td></td></tr>
							<tr>
								<td style="text-align:right;">처리상태</td><td style="text-align:center;">
									<c:if test="${board.boardState == '처리대기' }">
										<span style="color:#6ddea3">${board.boardState}</span>
									</c:if>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div id="board-view2">
					<textarea id= "board-textarea" name="boardContent">${board.boardContent}</textarea>
				</div>
				<div id="board-view3">
					<input type="submit" id="board-modify" value="수정완료">
				</div>
			</div>
		</div>
		<div id="board-comment-form">
		</div>
	</div>
</div>
</form>
