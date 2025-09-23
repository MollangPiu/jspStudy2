<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Try-Catch 예외 처리 예제</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        .example {
            margin: 20px 0;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .error {
            color: red;
            font-weight: bold;
        }
        .success {
            color: green;
        }
    </style>
</head>
<body>
    <h1>Try-Catch 예외 처리 예제</h1>

    <div class="example">
        <h2>1. 기본적인 예외 처리</h2>
        <%
            try {
                int result = 10 / 0;  // ArithmeticException 발생
                out.println("결과: " + result);
            } catch (ArithmeticException e) {
                out.println("<p class='error'>예외 발생: " + e.getMessage() + "</p>");
            }
        %>
    </div>

    <div class="example">
        <h2>2. 여러 예외 처리 (Multiple Catch)</h2>
        <%
            try {
                String str = null;
                int length = str.length();  // NullPointerException 발생
            } catch (NullPointerException e) {
                out.println("<p class='error'>NullPointerException: " + e.getMessage() + "</p>");
            } catch (Exception e) {
                out.println("<p class='error'>다른 예외: " + e.getMessage() + "</p>");
            }
        %>
    </div>

    <div class="example">
        <h2>3. Finally 블록 사용</h2>
        <%
            try {
                int[] numbers = {1, 2, 3};
                out.println("배열의 네 번째 요소: " + numbers[3]);  // ArrayIndexOutOfBoundsException 발생
            } catch (ArrayIndexOutOfBoundsException e) {
                out.println("<p class='error'>배열 인덱스 오류: " + e.getMessage() + "</p>");
            } finally {
                out.println("<p class='success'>finally 블록은 항상 실행됩니다.</p>");
            }
        %>
    </div>

    <div class="example">
        <h2>4. 사용자 정의 예외 처리</h2>
        <%
            class AgeException extends Exception {
                public AgeException(String message) {
                    super(message);
                }
            }

            try {
                int age = -5;
                if (age < 0) {
                    throw new AgeException("나이는 음수가 될 수 없습니다.");
                }
            } catch (AgeException e) {
                out.println("<p class='error'>사용자 정의 예외: " + e.getMessage() + "</p>");
            }
        %>
    </div>


    <div class="example">
        <h2>학습 목표</h2>
        <ul>
            <li>기본적인 try-catch 구문 사용법</li>
            <li>여러 예외 처리 방법</li>
            <li>Finally 블록의 활용</li>
            <li>사용자 정의 예외 만들기</li>
            <li>Try-with-resources 구문 사용</li>
        </ul>
    </div>
</body>
</html> 