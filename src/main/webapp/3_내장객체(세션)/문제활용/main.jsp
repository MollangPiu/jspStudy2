<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    if (id != null) {
        session.setAttribute("id", id);
        session.setAttribute("apple", 0);
        session.setAttribute("banana", 0);
        session.setAttribute("melon", 0);
    }

    String fruit = request.getParameter("fruit");
    String action = request.getParameter("action");
    if (fruit != null && action != null) {
        int count = (int) session.getAttribute(fruit);
        if ("plus".equals(action)) count++;
        else if ("minus".equals(action) && count > 0) count--;
        session.setAttribute(fruit, count);
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과일가게 메인</title>
<style>
    body { font-family: Arial, sans-serif; background: #fdf6e3; text-align: center; }
    h1 { color: #27ae60; }
    .fruit-box { display: inline-block; width: 200px; margin: 15px; padding: 20px; background: #fff; border: 2px solid #27ae60; border-radius: 10px; }
    .fruit-name { font-size: 20px; margin-bottom: 10px; }
    .btn { padding: 5px 10px; margin: 5px; border: none; border-radius: 5px; cursor: pointer; }
    .plus { background: #2ecc71; color: white; }
    .minus { background: #e74c3c; color: white; }
    a { display: inline-block; margin-top: 30px; padding: 10px 20px; background: #f39c12; color: #fff; text-decoration: none; border-radius: 5px; }
    a:hover { background: #d35400; }
</style>
</head>
<body>
<h1>🍎 <%= session.getAttribute("id") %> 님의 과일가게 🍌</h1>

<div class="fruit-box">
    <div class="fruit-name">🍎 사과 (5000원)</div>
    수량: <%= session.getAttribute("apple") %>개<br/>
    <form method="post" style="margin-top:10px;">
        <button class="btn plus" type="submit" name="fruit" value="apple" formaction="main.jsp?action=plus">+</button>
        <button class="btn minus" type="submit" name="fruit" value="apple" formaction="main.jsp?action=minus">-</button>
    </form>
</div>

<div class="fruit-box">
    <div class="fruit-name">🍌 바나나 (2000원)</div>
    수량: <%= session.getAttribute("banana") %>개<br/>
    <form method="post" style="margin-top:10px;">
        <button class="btn plus" type="submit" name="fruit" value="banana" formaction="main.jsp?action=plus">+</button>
        <button class="btn minus" type="submit" name="fruit" value="banana" formaction="main.jsp?action=minus">-</button>
    </form>
</div>

<div class="fruit-box">
    <div class="fruit-name">🍈 멜론 (10000원)</div>
    수량: <%= session.getAttribute("melon") %>개<br/>
    <form method="post" style="margin-top:10px;">
        <button class="btn plus" type="submit" name="fruit" value="melon" formaction="main.jsp?action=plus">+</button>
        <button class="btn minus" type="submit" name="fruit" value="melon" formaction="main.jsp?action=minus">-</button>
    </form>
</div>

<br/>
<a href="cart.jsp">🛒 장바구니 보기</a>

</body>
</html>
