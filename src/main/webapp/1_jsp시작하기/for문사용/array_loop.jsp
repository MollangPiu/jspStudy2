<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>배열 순회2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .array-example {
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
        }
        .item {
            display: inline-block;
            padding: 5px 10px;
            margin: 3px;
            background-color: #4CAF50;
            color: white;
            border-radius: 3px;
        }
        .fruit {
            background-color: #FF9800;
        }
        .number {
            background-color: #2196F3;
        }
    </style>
</head>
<body>
    <h2>For문을 이용한 배열 순회</h2>
    
    <div class="array-example">
        <h3>기본 for문으로 배열 순회</h3>
        <%
            String[] fruits = {"사과", "바나나", "오렌지", "포도", "키위"};
            
            for(int i = 0; i < fruits.length; i++) {
                out.println("<span class='item fruit'>" + fruits[i] + "</span>");
            }
        %>
        
        <h3>향상된 for문(for-each)으로 배열 순회</h3>
        <%
            int[] numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
            
            for(int num : numbers) {
                out.println("<span class='item number'>" + num + "</span>");
            }
        %>
        
        <h3>배열의 인덱스와 값 함께 출력</h3>
        <%
            for(int i = 0; i < fruits.length; i++) {
                out.println("<p>" + i + "번째 과일: <span class='item fruit'>" + 
                          fruits[i] + "</span></p>");
            }
        %>
        
        <h3>짝수 인덱스의 요소만 출력</h3>
        <%
            for(int i = 0; i < numbers.length; i++) {
                if(i % 2 == 0) {
                    out.println("<span class='item number'>" + numbers[i] + "</span>");
                }
            }
        %>
        
        <h3>배열의 값 합계 구하기</h3>
        <%
            int sum = 0;
            for(int num : numbers) {
                sum += num;
            }
            out.println("<p>배열의 합계: " + sum + "</p>");
        %>
    </div>
    
    <h3>학습 내용:</h3>
    <ul>
        <li>기본 for문으로 배열 순회</li>
        <li>향상된 for문(for-each) 사용</li>
        <li>배열의 인덱스와 값 활용</li>
        <li>조건문과 반복문 조합</li>
        <li>배열 요소의 합계 구하기</li>
    </ul>
</body>
</html> 