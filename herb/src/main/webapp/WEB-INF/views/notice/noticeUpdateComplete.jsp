<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어른허브</title>
</head>
<body>
	<c:choose>
		<c:when test="${result==1}">
			<script>
				alert('글이 수정되었습니다.');
				location.href = 'noticeList.do';
			</script>
		</c:when>	
		<c:otherwise>
			<script>
				alert('글 수정에 실패했습니다.');
				history.back(-1);
			</script>		
		</c:otherwise>
	</c:choose>
</body>
</html>