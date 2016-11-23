<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:forEach var="comment" items="${commentList}">
	<div class="row blog-comments margin-bottom-30">
		<div class="col-sm-2 sm-margin-bottom-40">
			<img src="<%=request.getContextPath()%>/img/team/img1-sm.jpg" alt="">
		</div>
		<div class="col-sm-10">
			<div class="comments-itself">
				<h4>
					${comment.username}
					<span>${comment.writeDate}</span>
				</h4>
				<p>${comment.content}</p>
			</div>
		</div>
	</div>
</c:forEach>