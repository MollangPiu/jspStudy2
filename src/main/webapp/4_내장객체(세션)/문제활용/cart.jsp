<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    int apple = (int) session.getAttribute("apple");
    int banana = (int) session.getAttribute("banana");
    int melon = (int) session.getAttribute("melon");

    int priceApple = 5000;
    int priceBanana = 2000;
    int priceMelon = 10000;

    int total = (apple * priceApple) + (banana * priceBanana) + (melon * priceMelon);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<style>
    body { font-family: Arial, sans-serif; background: #fef9e7; text-align: center; }
    h1 { color: #c0392b; }
    table { margin: 20px auto; border-collapse: collapse; width: 70%; }
    th, td { border: 1px solid #333; padding: 10px; text-align: center; }
    th { background: #f39c12; color: white; }
    .btn { display: inline-block; padding: 10px 20px; margin: 10px; border-radius: 5px; text-decoration: none; }
    .main { background: #27ae60; color: white; }
    .logout { background: #e74c3c; color: white; }
</style>
</head>
<body>
<h1>🛒 <%= session.getAttribute("id") %> 님의 장바구니</h1>

<table>
    <tr>
        <th>상품</th><th>가격</th><th>수량</th><th>합계</th>
    </tr>
    <tr>
        <td>🍎 사과</td><td>5000</td><td><%= apple %></td><td><%= apple * priceApple %></td>
    </tr>
    <tr>
        <td>🍌 바나나</td><td>2000</td><td><%= banana %></td><td><%= banana * priceBanana %></td>
    </tr>
    <tr>
        <td>🍈 멜론</td><td>10000</td><td><%= melon %></td><td><%= melon * priceMelon %></td>
    </tr>
    <tr>
        <th colspan="3">총합계</th><th><%= total %></th>
    </tr>
</table>

<a class="btn main" href="main.jsp">메인으로</a>
<a class="btn logout" href="logout.jsp">로그아웃</a>
</body>
</html>
