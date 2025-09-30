<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setAttribute("samsung", "삼성"); %>
<a href="second.jsp?apple=사과" >second.jsp이동</a>
</body>
</html>