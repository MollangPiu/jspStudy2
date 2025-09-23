<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구구단</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .gugudan {
            display: inline-block;
            margin: 10px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        h2 {
            color: #333;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>구구단</h1>
    
    <%
        // 2단부터 9단까지 반복
        for(int i = 2; i <= 9; i++) {
            out.println("<div class='gugudan'>");
            out.println("<h2>" + i + "단</h2>");
            
            // 각 단의 1부터 9까지 곱하기
            for(int j = 1; j <= 9; j++) {
                int result = i * j;
                out.println("<p>" + i + " × " + j + " = " + result + "</p>");
            }
            
            out.println("</div>");
        }
    %>
    
    <h3>학습 내용:</h3>
    <ul>
        <li>중첩 for문 사용</li>
        <li>반복문을 이용한 구구단 출력</li>
        <li>HTML과 JSP 코드 조합</li>
        <li>CSS를 이용한 레이아웃 구성</li>
    </ul>
</body>
</html> 