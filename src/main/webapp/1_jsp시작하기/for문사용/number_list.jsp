<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>숫자 나열</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .number-list {
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
        }
        .number {
            display: inline-block;
            width: 30px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            margin: 5px;
            background-color: #4CAF50;
            color: white;
            border-radius: 50%;
        }
        .even {
            background-color: #2196F3;
        }
        .odd {
            background-color: #f44336;
        }
    </style>
</head>
<body>
    <h2>For문을 이용한 숫자 나열</h2>
    
    <div class="number-list">
        <h3>1부터 10까지 나열</h3>
        <%
            for(int i = 1; i <= 10; i++) {
                out.println("<span class='number'>" + i + "</span>");
            }
        %>
        
        <h3>짝수와 홀수 구분하여 나열</h3>
        <%
            for(int i = 1; i <= 10; i++) {
                if(i % 2 == 0) {
                    out.println("<span class='number even'>" + i + "</span>");
                } else {
                    out.println("<span class='number odd'>" + i + "</span>");
                }
            }
        %>
        
        <h3>역순으로 나열</h3>
        <%
            for(int i = 10; i >= 1; i--) {
                out.println("<span class='number'>" + i + "</span>");
            }
        %>
        
        <h3>2의 배수 나열</h3>
        <%
            for(int i = 2; i <= 20; i += 2) {
                out.println("<span class='number'>" + i + "</span>");
            }
        %>
    </div>
    
    <h3>학습 내용:</h3>
    <ul>
        <li>기본 for문 사용</li>
        <li>조건문과 for문 조합</li>
        <li>역순 반복</li>
        <li>증가값 조정</li>
    </ul>
</body>
</html> 