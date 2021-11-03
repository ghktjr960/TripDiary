<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
	<div id="fixedicon2" class="mb-5">
			
		<c:if test="${not empty drakMode}">
				<img class="icon" alt="" src="resources/img/darkmode.png" style="width: 70px;margin-top: 12%; margin-bottom: 12%;">
		</c:if>
		<img class="icon" alt="" src="resources/img/darkmode2.png" style="width: 70px; margin-bottom: 12%;">
		<a href="/write"><img class="icon" alt="" src="resources/img/write.png" style="width: 70px; margin-bottom: 12%;"></a>
		<img class="icon" alt="" src="resources/img/chat.png" style="width: 70px;">
	</div>
	
	<button id="fixedbtn" type="button" onclick="window.scrollTo(0,0);" class="btn btn-dark mb-5">▲ TOP</button>
</body>
</html>