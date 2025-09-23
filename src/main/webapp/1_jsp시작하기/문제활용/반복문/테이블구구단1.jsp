<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 3단</title>
<style>
    table { border-collapse: collapse; margin-top: 10px; }
    td { border: 1px solid #333; padding: 5px; text-align: center; }
    th { border: 1px solid #333; padding: 5px; background: #f2f2f2; }
</style>
</head>
<body>
<h1>구구단 3단</h1>

<table>
    <tr>
        <th>3단</th>
    </tr>
<%
    int num = 3;
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
