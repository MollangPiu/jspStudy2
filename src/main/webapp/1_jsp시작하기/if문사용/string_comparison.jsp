<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>문자열 비교</title>
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
    <h2>문자열 비교 예제</h2>
    
    <%
        // 문자열 정의
        String str1 = "안녕하세요";
        String str2 = "안녕하세요";
        String str3 = "반갑습니다";
        
        // 문자열 비교
        out.println("<div class='result'>");
        out.println("<h3>문자열 비교 결과</h3>");
        out.println("<p>첫 번째 문자열: " + str1 + "</p>");
        out.println("<p>두 번째 문자열: " + str2 + "</p>");
        out.println("<p>세 번째 문자열: " + str3 + "</p>");
        
        // equals() 메서드 사용
        if (str1.equals(str2)) {
            out.println("<p>첫 번째와 두 번째 문자열은 같습니다.</p>");
        } else {
            out.println("<p>첫 번째와 두 번째 문자열은 다릅니다.</p>");
        }
        
        if (str1.equals(str3)) {
            out.println("<p>첫 번째와 세 번째 문자열은 같습니다.</p>");
        } else {
            out.println("<p>첫 번째와 세 번째 문자열은 다릅니다.</p>");
        }
        
        // 문자열 길이 비교
        out.println("<h3>문자열 길이 비교</h3>");
        out.println("<p>첫 번째 문자열 길이: " + str1.length() + "</p>");
        out.println("<p>세 번째 문자열 길이: " + str3.length() + "</p>");
        
        if (str1.length() > str3.length()) {
            out.println("<p>첫 번째 문자열이 더 깁니다.</p>");
        } else if (str1.length() < str3.length()) {
            out.println("<p>세 번째 문자열이 더 깁니다.</p>");
        } else {
            out.println("<p>두 문자열의 길이가 같습니다.</p>");
        }
        
        // 문자열 포함 여부 확인
        out.println("<h3>문자열 포함 여부</h3>");
        if (str1.contains("안녕")) {
            out.println("<p>첫 번째 문자열에 '안녕'이 포함되어 있습니다.</p>");
        } else {
            out.println("<p>첫 번째 문자열에 '안녕'이 포함되어 있지 않습니다.</p>");
        }
        
        if (str3.contains("안녕")) {
            out.println("<p>세 번째 문자열에 '안녕'이 포함되어 있습니다.</p>");
        } else {
            out.println("<p>세 번째 문자열에 '안녕'이 포함되어 있지 않습니다.</p>");
        }
        
        out.println("</div>");
    %>
    
    <h3>학습 내용:</h3>
    <ul>
        <li>if-else 문 사용</li>
        <li>문자열 비교 메서드(equals) 사용</li>
        <li>문자열 길이 확인(length)</li>
        <li>문자열 포함 여부 확인(contains)</li>
    </ul>
</body>
</html> 