<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>숫자 비교</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .result {
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h2>숫자 비교 예제</h2>
    
    <%
        // 두 개의 숫자 정의
        int num1 = 15;
        int num2 = 10;
        
        boolean test = 10 > 5;
        
        // 숫자 비교
        out.println("<div class='result'>");
        out.println("<h3>숫자 비교 결과</h3>");
        out.println("<p>첫 번째 숫자: " + num1 + "</p>");
        out.println("<p>두 번째 숫자: " + num2 + "</p>");
        
        if (num1 > num2) {
            out.println("<p>" + num1 + "이(가) " + num2 + "보다 큽니다.</p>");
        } else if (num1 < num2) {
            out.println("<p>" + num1 + "이(가) " + num2 + "보다 작습니다.</p>");
        } else {
            out.println("<p>두 숫자는 같습니다.</p>");
        }
        
        // 짝수/홀수 판별
        out.println("<h3>짝수/홀수 판별</h3>");
        if (num1 % 2 == 0) {
            out.println("<p>" + num1 + "은(는) 짝수입니다.</p>");
        } else {
            out.println("<p>" + num1 + "은(는) 홀수입니다.</p>");
        }
        
        if (num2 % 2 == 0) {
            out.println("<p>" + num2 + "은(는) 짝수입니다.</p>");
        } else {
            out.println("<p>" + num2 + "은(는) 홀수입니다.</p>");
        }
        
        out.println("</div>");
    %>
    
    <h3>학습 내용:</h3>
    <ul>
        <li>if-else if-else 문 사용</li>
        <li>숫자 비교 연산자 사용</li>
        <li>나머지 연산자(%) 사용</li>
        <li>조건에 따른 다른 내용 출력</li>
    </ul>
</body>
</html> 