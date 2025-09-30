<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
<style>
    body { font-family: Arial, sans-serif; background: #fdf2f2; text-align: center; }
    h1 { color: #e74c3c; }
    a { padding: 10px 20px; background: #3498db; color: #fff; text-decoration: none; border-radius: 5px; }
</style>
</head>
<body>
<h1>로그아웃 되었습니다.</h1>
<a href="login.jsp">로그인 페이지로 이동</a>
</body>
</html>
