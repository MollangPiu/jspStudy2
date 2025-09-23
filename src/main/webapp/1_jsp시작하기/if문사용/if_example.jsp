<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>If문 예제</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .result {
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <h2>If문 예제</h2>
    
    <%
        // 현재 시간 가져오기
        java.util.Calendar cal = java.util.Calendar.getInstance();
        int hour = cal.get(java.util.Calendar.HOUR_OF_DAY);
        
        // 시간에 따른 인사말 출력
        if (hour >= 5 && hour < 12) {
            out.println("<div class='result'>");
            out.println("<h3>좋은 아침입니다!</h3>");
            out.println("<p>현재 시간: " + hour + "시</p>");
            out.println("</div>");
        } else if (hour >= 12 && hour < 18) {
            out.println("<div class='result'>");
            out.println("<h3>좋은 오후입니다!</h3>");
            out.println("<p>현재 시간: " + hour + "시</p>");
            out.println("</div>");
        } else {
            out.println("<div class='result'>");
            out.println("<h3>좋은 저녁입니다!</h3>");
            out.println("<p>현재 시간: " + hour + "시</p>");
            out.println("</div>");
        }
    %>
    
    <h3>학습 내용:</h3>
    <ul>
        <li>if-else if-else 문 사용</li>
        <li>Calendar 클래스로 현재 시간 가져오기</li>
        <li>조건에 따른 다른 내용 출력</li>
    </ul>
</body>
</html> 