<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
<style>
    table { border-collapse: collapse; margin-top: 10px; }
    td { border: 1px solid #333; padding: 5px; text-align: center; }
    th { border: 1px solid #333; padding: 5px; background: #f2f2f2; }
</style>
</head>
<body>
<h1>구구단 출력</h1>

<%
    // 입력값 가져오기 (문자열 → 정수 변환)
    String danParam = request.getParameter("dan");
    int num = 0;
    if (danParam != null && !danParam.equals("")) {
        num = Integer.parseInt(danParam);
    }
%>

<table>
    <tr>
        <th><%= num %>단</th>
    </tr>
<%
    for (int i = 1; i <= 9; i++) {
%>
    <tr>
        <td><%= num %> * <%= i %> = <%= num * i %></td>
    </tr>
<%
    }
%>
</table>

</body>
</html>
