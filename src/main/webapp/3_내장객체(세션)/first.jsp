<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute("apple", "사과");
request.setAttribute("banana", "바나나");
%>

<a href="./second.jsp">second.jsp 이동</a>
</body>
</html>