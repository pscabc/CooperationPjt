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
	#board-con-main{
		
	}
	#board-main-top{
		height:10%;
	}
	#board-main-board{
		height:80%;
	}
	.board-table{
		background:white;
		width:100%;
		height:100%;
		border-collapse:collapse;
	}
	.board-table td{
		border:1px solid #eee;
		box-sizing:border-box;
		padding:0;
		height:30px;
		width:70px;
		word-break:break-all;
		text-align:center;
	}
	.board-table td:first-child{
		width:30px;
	}
	.board-table td:nth-child(2){
		width:550px;
	}
	.board-table tr{
		font-size:0.8em;
	}
	.board-table tr:first-child{
		/* background:#bfc5f2; */
		background:#8c8ea3;
		font-size:1em;
		color:white;
	}
	.board-table tr:nth-child(2n){
		background:#f5f5fa;
	}
	#paging-navi{
		height:10%;
		text-align:center;
	}
	#question-btn{
		font-size:0.8em;
		background: #8c8ea3;
		width:50px;
	    color: white;
	    outline: none;
	    border: none;
	    height: 30px;
	    float: right;
	    margin-top: 8px;
	    margin-right: 10px;
	    cursor: pointer;
	    line-height:30px;
	}
	.navi-a{
		line-height:20px;
		margin-top:15px;
		text-decoration:none;
		color:white;
		background:#8c8ea3;
		width:20px;
		height:20px;
		font-size:0.8em;
		display:inline-block;
	}
	.navi-a-sel{
		box-sizing:border-box;
		line-height:20px;
		margin-top:15px;
		text-decoration:none;
		color:#8c8ea3;
		border:1px solid #8c8ea3;
		background:white;
		width:20px;
		height:20px;
		font-size:0.8em;
		display:inline-block;
	}
	#search-form{
		width:300px;
		float:right;
		margin-top:12px;
		border-width:0px;
	}
	#search-input{
		height:20px;
		color:gray;
	}
	#search-submit{
		margin-left:5px;
		background:#8c8ea3;
		color:white;
		cursor:pointer;
		outline:0;
		border:0;
		box-sizing:border-box;
	}
	#search-option{
		color:gray;
		font-size:0.8em;
	}
	.search-op{
		color:gray;
		font-size:0.8em;
	}
	#board-title{
		color:gray;
		display:inline-block;
		font-size:1.2em;
		margin-top:12px;
		margin-left:550px;
		border-width:0px;
	}
	#title-a{
		text-decoration:none;
		color:black;
	}
</style>
<div class="con" id="board-con">
	<div class="con-top">
		<span class="con-top-span">게시판</span>
	</div>
	<div id="board-con-main">
		<div id="board-main-top">
			<div id="board-title">
				<span>기술지원 게시판</span>
			</div>
			<div id="search-form">
				<select id="search-option">
					<option class="search-op">제목</option>
					<option class="search-op">내용</option>
					<option class="search-op">작성자</option>
					<option class="search-op">처리상태</option>
				</select>
				<input id="search-input" type="text"><input id="search-submit" type="submit" value="검색">
			</div>
		</div>
		<div id="board-main-board">
			<table class="board-table">
				<tr><td>번호</td><td>글제목</td><td>작성자</td><td>회사명</td><td>담당자</td><td>처리상태</td></tr>
				<c:forEach items="${list}" var="board" varStatus="status">
					<c:set var="count" value="${status.count}"></c:set>
					<tr>
						<td>${board.boardNo}</td>
						<td>
							<a id="title-a" href="/boardView.do?boardNo=${board.boardNo}">
								${board.boardTitle}
								<c:if test="${board.commentCount > 0}">
									(${board.commentCount})
								</c:if>
							</a>
						</td>
						<td>${board.writerName}</td>
						<td>${board.boardCompany}</td>
						<td>${board.chargeName}</td>
						<td>${board.boardState}</td>
					</tr>
				</c:forEach>
<%-- 				<c:if test="10-10 != 0">
					<c:forEach begin="0" end="0">
						<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
					</c:forEach>
				</c:if> --%>
			</table>
		</div>
		<div id="paging-navi">
			<c:forEach begin="${startNavi}" end="${endNavi}" var="i">
				<c:if test="${i == pageNumber}">
					<a class="navi-a-sel" href="/board.do?requestPage=${i}">${i}</a>
				</c:if>
				<c:if test="${i != pageNumber}">
					<a class="navi-a" href="/board.do?requestPage=${i}">${i}</a>
				</c:if>
			</c:forEach>
			<div id="question-btn">글쓰기</div>
		</div>
	</div>
</div>

<script>
	$("#question-btn").on("click",function(){
		location.href="/insertBoardView.do";
	});
</script>



