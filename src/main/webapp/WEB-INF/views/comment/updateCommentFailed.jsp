<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("댓글 수정 성공");
		location.href="/boardView.do?boardNo="+${boardNo};
	</script>
</body>
</html>