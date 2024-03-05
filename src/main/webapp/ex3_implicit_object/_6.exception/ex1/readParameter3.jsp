<%-- 현재 페이지를 실행하면 error500.JSP가 실행됩니다.
	 8번 라인 오류를 발생시켜 500번 에러 확인합니다.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head><title>파라미터 출력</title></head>
<body>
<%
	response.sendRedirect("hoho.jsp");
%>
</body>
</html>