<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 3단</title>
</head>
<body>
<h1>구구단 3단</h1>

<%
    int num = 3;
    for (int i = 1; i <= 9; i++) {
%>
    <span><%= num %> * <%= i %> = <%= num * i %></span><br/>
<%
    }
%>

</body>
</html>
