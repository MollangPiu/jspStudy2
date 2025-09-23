<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀수 / 짝수 구분</title>
</head>
<body>
<h1>홀수/짝수 구분하기</h1>

<%
    int start = 3;   // 시작값
    int end = 15;    // 종료값
%>
















<%
    for (int i = start; i <= end; i++) {
        if (i % 2 == 0) {
%>
    <span><%= i %> : 짝수</span><br/>
<%
        } else {
%>
    <span><%= i %> : 홀수</span><br/>
<%
        }
    }
%>

</body>
</html>
