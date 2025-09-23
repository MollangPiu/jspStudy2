<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP 첫 과제</title>
</head>
<body>
    <h1>안녕하세요! JSP 첫 과제입니다.</h1>
    
    <%
        // 현재 시간을 가져와서 출력
        java.util.Date now = new java.util.Date();
        out.println("<p>현재 시간: " + now + "</p>");
        
        // 간단한 계산
        int a = 10;
        int b = 20;
        int sum = a + b;
        out.println("<p>" + a + " + " + b + " = " + sum + "</p>");
    %>
    
    <h2>과제 1: 기본 JSP 페이지 만들기</h2>
    <p>이 페이지는 다음과 같은 내용을 포함합니다:</p>
    <ul>
        <li>JSP 기본 구조 이해하기</li>
        <li>스크립틀릿(&lt;% %&gt;) 사용하기</li>
        <li>out 객체를 사용한 출력</li>
        <li>Java 코드와 HTML의 조합</li>
    </ul>
</body>
</html> 