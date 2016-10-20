<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head lang="ko">
	    <meta charset="UTF-8">
	    <title>Clean Board</title>
	    <script>
			function check() {
				var checkKeyword = document.search.keyword;

				if(checkKeyword.value.length == 0){
					alert("검색을 입력하세요");
					checkKeyword.focus();
					return false;
				}
				return true;
			}
		</script>
	</head>
	<body>
		<div align="center">
			<p>게시판</p>
		<c:choose>
	  		<c:when test="${empty cleanBoardList}">
				<p>게시글이 없습니다.</p>
			</c:when>
			<c:otherwise>
				<table border=1 style="width: 500px">
					<tr>
						<td>번호</td>
						<td>제목</td>
					    <td>글쓴이</td>
					    <td>날짜</td>
					    <td>조회수</td>
					</tr>
					<c:forEach var="list" items="${cleanBoardList}">
						<tr>
					    	<td>${list.boardId}</td>
					    	<td><a href="<%=request.getContextPath()%>/board/readContent/${list.boardId}">${list.title}</a></td>
					    	<td>${list.name}</td>
					    	<td>${list.writeDate}</td>
					    	<td>${list.views}</td>
				        </tr>
					</c:forEach>
				</table><br>
			</c:otherwise>
		</c:choose>
			<form name="search" action="<%=request.getContextPath()%>/board/search" method="get">
				<input type="radio" name="scope" value="title">제목
				<input type="radio" name="scope" value="content">내용	
				<input type="radio" name="scope" value="name">글쓴이					
				<input type="text" name="keyword" style="width: 300px;height: 20px;">
				<input type="submit" value="검색" onclick="return check()"/>
			</form><br>
			<a href="<%=request.getContextPath()%>/board/index/1">목록보기</a> 
			<a href="<%=request.getContextPath()%>/board/write">글쓰기</a>
		</div>
	</body>
</html>