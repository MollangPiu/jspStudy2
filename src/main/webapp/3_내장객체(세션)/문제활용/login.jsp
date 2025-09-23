<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과일가게 로그인</title>
<style>
    body { font-family: Arial, sans-serif; background: #fff8f0; text-align: center; }
    h1 { color: #e67e22; }
    form { margin-top: 50px; }
    input[type=text] { padding: 10px; border: 2px solid #e67e22; border-radius: 5px; }
    input[type=submit] { padding: 10px 20px; background: #e67e22; color: #fff; border: none; border-radius: 5px; cursor: pointer; }
    input[type=submit]:hover { background: #d35400; }
</style>
</head>
<body>
<h1>🍎 과일가게 로그인 🍌</h1>
<form action="main.jsp" method="post">
    아이디: <input type="text" name="id" required>
    <input type="submit" value="입장하기">
</form>
</body>
</html>
