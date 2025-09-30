<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
session값: <%=session.getAttribute("apple")%><br/>
request값: <%=request.getAttribute("banana") %><br/>
<a href="./third.jsp">다음 페이지 이동</a>
</body>
