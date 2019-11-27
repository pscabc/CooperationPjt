<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/board/proHeader.jsp"%>
<style>
	#board-con-main{
		width:1230px;
		height:520px;
		background:white;
		margin:40px;
		background:#f5f5fa;
	}
	#board-write-form{
		margin:0 auto;
		width:600px;
		height:100%;
		background:white;
		padding:10px;
	}
	#title-form{
		height:10%;
		border:1px solid white;
	}
	#writer-form{
		height:10%;
		color:white;
		background:#8c8ea3;
		border:1px solid #eee;
	}
	#write-form{
		height:70%;
		padding:10px;
		border:1px solid #eee;
	}
	#title-form1{
		width:20%;
		height:100%;
		float:left;
		text-align:center;
		line-height:50px;
		color:white;
		background:#8c8ea3;
	}
	#title-form2{
		height:100%;
		width:80%;
		float:left;
		text-align:center;
		padding:5px;
		border:1px solid #eee;
		
	}
	#title-text{
		padding-left:10px;
		width:100%;
		height:100%;
		box-sizing:border-box;
		resize:none;
		color:gray;
		font-size:1.1em;
		line-height:30px;
	}
	#write-text{
		padding:20px;
		color:gray;
		font-size:0.9em;
		width:100%;
		height:100%;
		resize:none;
		box-sizing:border-box;
	}
	#file-form{
		height:100%;
		border:1px solid #eee;
		width:70%;
		float:left;
	}
	#bottom-form{
		height:10%;
		border:1px solid #eee;
	}
	#file-form1{
		height:100%;
		width:25%;
		float:left;
		color:white;
		background:#8c8ea3;
		text-align:center;
		line-height:45px;
		border:1px solid #eee;
	}
	#file-form2{
		height:100%;
		width:85%;
		float:left;
		border:1px solid #eee;
	}
	#writer-name{
		color:white;
		background:#8c8ea3;
		height:100%;
		width:33.333%;
		float:left;
		text-align:center;
		line-height:50px;
		border:1px solid white;
	}
	#writer-company{
		color:white;
		background:#8c8ea3;
		height:100%;
		width:33.333%;
		float:left;
		text-align:center;
		line-height:50px;
		border:1px solid white;
	}
	#writer-grade{
		color:white;
		background:#8c8ea3;
		height:100%;
		width:33.333%;
		float:left;
		text-align:center;
		line-height:50px;
		border:1px solid white;
	}
	#button-from{
		width:30%;
		height:100%;
		float:left;
		line-height:45px;
		border:1px solid #eee;
	}
	#save-btn{
		width:100%;
		height:100%;
		background:#8c8ea3;
		color:white;
		outline:none;
		border:none;
		cursor:pointer;
		border:1px solid #eee;
	}
	
</style>
<form action="/insertBoard.do" method="get" onsubmit="return titleChk()">
	<input type="hidden" name="writerName" value="${sessionScope.m.memberName}">
	<input type="hidden" name="boardCompany" value="${sessionScope.m.company}">
	<input type="hidden" name="boardGrade" value="${sessionScope.m.grade}">
	<input type="hidden" name="writerId" value="${sessionScope.m.memberId}">
	<div class="con" id="board-con">
		<div class="con-top">
			<span class="con-top-span">게시글 작성</span>
		</div>
		<div id="board-con-main">
			<div id="board-write-form">
				<div id="title-form">
					<div id="title-form1">글제목</div>
					<div id="title-form2"><textarea placeholder="글제목 작성" id="title-text" name="boardTitle"></textarea></div>
				</div>
				<div id="writer-form">
					<div id="writer-name">이름 / ${sessionScope.m.memberName}</div>
					<div id="writer-company">회사 / ${sessionScope.m.company}</div>
					<div id="writer-grade">등급 / ${sessionScope.m.grade}</div>
				</div>
				<div id="write-form">
					<textarea id="write-text" placeholder="글내용 작성" name="boardContent"></textarea>
				</div>
				<div id="bottom-form">
				<div id="file-form">
					<div id="file-form1">파일첨부</div>
					<div id="file-form2"></div>
				</div>
					<div id="button-from">
						<button type="submit" id="save-btn">등록</button>
					</div>					
				</div>
			</div>
		</div>
	</div>
</form>
<div id="back-div">
	<img src="/resources/img/back.png" width="200" height="200">
</div>
<script>
	function titleChk(){
		
		if($("#title-text").val() == ''){
			alert("글제목을 작성해주세요");
			return false;
		}
		return true;
	}
</script>
