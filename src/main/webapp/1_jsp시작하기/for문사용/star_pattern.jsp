<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>별 찍기</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .pattern {
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
            font-family: monospace;
            white-space: pre;
        }
    </style>
</head>
<body>
    <h2>For문을 이용한 별 찍기</h2>
    
    <div class="pattern">
        <h3>직각삼각형 모양</h3>
        <%
            // 직각삼각형
            for(int i = 1; i <= 5; i++) {
                for(int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.println("<br>");
            }
        %>
        
        <h3>역직각삼각형 모양</h3>
        <%
            // 역직각삼각형
            for(int i = 5; i >= 1; i--) {
                for(int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.println("<br>");
            }
        %>
        
        <h3>피라미드 모양</h3>
        <%
            // 피라미드
            for(int i = 1; i <= 5; i++) {
                // 공백 출력
                for(int j = 5-i; j >= 1; j--) {
                    out.print("&nbsp;");
                }
                // 별표 출력
                for(int k = 1; k <= 2*i-1; k++) {
                    out.print("*");
                }
                out.println("<br>");
            }
        %>
        
        <h3>마름모 모양</h3>
        <%
            // 마름모 위쪽
            for(int i = 1; i <= 5; i++) {
                for(int j = 5-i; j >= 1; j--) {
                    out.print("&nbsp;");
                }
                for(int k = 1; k <= 2*i-1; k++) {
                    out.print("*");
                }
                out.println("<br>");
            }
            // 마름모 아래쪽
            for(int i = 4; i >= 1; i--) {
                for(int j = 5-i; j >= 1; j--) {
                    out.print("&nbsp;");
                }
                for(int k = 1; k <= 2*i-1; k++) {
                    out.print("*");
                }
                out.println("<br>");
            }
        %>
    </div>
    
    <h3>학습 내용:</h3>
    <ul>
        <li>중첩 for문 사용</li>
        <li>증감 연산자 활용</li>
        <li>공백과 별표 조합</li>
        <li>다양한 패턴 만들기</li>
    </ul>
</body>
</html> 