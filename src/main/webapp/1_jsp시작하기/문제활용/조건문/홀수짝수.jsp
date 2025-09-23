<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀짝 구분</title>
</head>
<body>
<h1>홀짝 구분하기</h1>

<%
    int num = 7;   // 원하는 숫자 넣기

    if (num % 2 == 0) {
%>
    <p><%= num %> 는 짝수입니다.</p>
<%
    } else {
%>
    <p><%= num %> 는 홀수입니다.</p>
<%
    }
%>

</body>
</html>
