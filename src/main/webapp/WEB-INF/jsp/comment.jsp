<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:forEach var="comment" items="${commentList}">
	<div class="row blog-comments margin-bottom-30">
		<div class="col-sm-12">
			<div class="comments-itself">
				<h4>
					${comment.username}
					<span>${comment.writeDate}</span>
				</h4>
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal.username" var="currentUsername"/>
					<c:if test="${currentUsername eq comment.username}">
						<span>
							<div class="button" onclick="deleteComment(${comment.id})">
								<h4><i class="rounded-x icon-close"></i></h4>
							</div>
						</span>
					</c:if>
				</sec:authorize>
				<p>${comment.content}</p>
			</div>
		</div>
	</div>
</c:forEach>