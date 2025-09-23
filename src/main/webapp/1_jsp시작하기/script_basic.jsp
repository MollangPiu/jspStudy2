<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP 스크립트 요소</title>
    <style>
        body { padding: 20px; }
        .box { 
            margin: 10px 0;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h2>JSP 스크립트 요소 기본 문법</h2>

    <!-- 1. 선언문 태그 -->
    <%!
        // 변수 선언
        String name = "홍길동";
        
        // 메소드 선언
        public int add(int a, int b) {
            return a + b;
        }
    %>

    <!-- 2. 스크립틀릿 태그 -->
    <div class="box">
        <h3>스크립틀릿 예제</h3>
        <%
            // 변수 선언
            int age = 20;
            
            // if문 사용
            if(age >= 20) {
                out.println("성인입니다.<br>");
            } else {
                out.println("미성년자입니다.<br>");
            }
            
            // for문 사용
            for(int i = 1; i <= 3; i++) {
                out.println(i + "번째 줄입니다.<br>");
            }
        %>
    </div>

    <!-- 3. 표현식 태그 -->
    <div class="box">
        <h3>표현식 예제</h3>
        <p>이름: <%= name %></p>
        <p>나이: <%= age %>세</p>
        <p>10 + 20 = <%= add(10, 20) %></p>
        <p>현재 시간: <%= new java.util.Date() %></p>
    </div>

    <h3>스크립트 요소 설명:</h3>
    <ul>
        <li>선언문 태그 &lt;%! ... %&gt; : 변수나 메소드를 선언할 때 사용</li>
        <li>스크립틀릿 태그 &lt;% ... %&gt; : Java 코드를 작성할 때 사용</li>
        <li>표현식 태그 &lt;%= ... %&gt; : 변수값이나 계산결과를 출력할 때 사용</li>
    </ul>
</body>
</html> 