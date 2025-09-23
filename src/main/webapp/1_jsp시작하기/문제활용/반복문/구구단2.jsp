<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 전체</title>
</head>
<body>
<h1>구구단 1단부터 9단까지</h1>

<%
    for (int dan = 1; dan <= 9; dan++) {   // 단 반복
%>
    <h3><%= dan %>단</h3>
<%
        for (int i = 1; i <= 9; i++) {     // 곱하는 수 반복
%>
    <span><%= dan %> * <%= i %> = <%= dan * i %></span><br/>
<%
        } // inner for
%>
    <hr/>
<%
    } // outer for
%>

</body>
</html>
