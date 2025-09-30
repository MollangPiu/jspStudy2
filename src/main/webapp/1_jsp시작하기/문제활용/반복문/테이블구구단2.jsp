<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 전체 (테이블)</title>
<style>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    td { border: 1px solid #333; padding: 5px; text-align: center; }
    th { border: 1px solid #333; padding: 5px; background: #f2f2f2; }
</style>
</head>
<body>
<h1>구구단 1단부터 9단까지</h1>

<table>
    <tr>
    <%
        // 단 제목 출력 (1단, 2단, ... 9단)
        for (int dan = 1; dan <= 9; dan++) {
    %>
        <th><%= dan %>단</th>
    <%
        }
    %>
    </tr>

    <%
        // 곱하는 수 1 ~ 9
        for (int i = 1; i <= 9; i++) {
    %>
        <tr>
        <%
            for (int dan = 1; dan <= 9; dan++) {
        %>
            <td><%= dan %> * <%= i %> = <%= dan * i %></td>
        <%
            }
        %>
        </tr>
    <%
        }
    %>
</table>

</body>
</html>
