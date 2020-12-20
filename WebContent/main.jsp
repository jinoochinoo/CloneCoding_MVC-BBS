<%@page import="login.SessionCheck" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC_BBS</title>
</head>
<body>

	<!-- top 레이아웃 삽입 -->
	<jsp:include page="/layout/topLayout.jsp" flush="false" />

	<%
		//세션과 쿠키 체크
		Cookie[] cookie = request.getCookies();
		boolean check = SessionCheck.loginCheck(session, cookie);
		if(check){
	%>
	<br/><br/><br/>
	
	<h3 align="center" ><%=session.getAttribute("userID") %>님, 환영합니다</h3>

	<%
	} 
	%>
			<!-- bottom 레이아웃 삽입 -->
	<jsp:include page="/layout/bottomLayout.jsp" flush="false" />
</body>
</html>