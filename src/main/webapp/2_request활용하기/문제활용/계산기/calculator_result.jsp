<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>계산 결과</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        .result-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            text-align: center;
        }
        .result {
            font-size: 24px;
            margin: 20px 0;
            padding: 15px;
            background-color: #e9e9e9;
            border-radius: 4px;
        }
        .error {
            color: red;
            font-weight: bold;
        }
        .back-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }
        .back-button:hover {
            background-color: #45a049;
        }
        .calculation-details {
            margin: 20px 0;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h1>계산 결과</h1>
        
        <%
            // 파라미터 받기
            String num1Str = request.getParameter("num1");
            String num2Str = request.getParameter("num2");
            String operator = request.getParameter("operator");
            
            // 결과 변수
            double result = 0;
            String operationSymbol = "";
            boolean hasError = false;
            String errorMessage = "";
            
            try {
                // 문자열을 숫자로 변환
                double num1 = Double.parseDouble(num1Str);
                double num2 = Double.parseDouble(num2Str);
                
                // 연산자에 따라 계산
                switch(operator) {
                    case "add":
                        result = num1 + num2;
                        operationSymbol = "+";
                        break;
                    case "subtract":
                        result = num1 - num2;
                        operationSymbol = "-";
                        break;
                    case "multiply":
                        result = num1 * num2;
                        operationSymbol = "×";
                        break;
                    case "divide":
                        if (num2 == 0) {
                            hasError = true;
                            errorMessage = "0으로 나눌 수 없습니다.";
                        } else {
                            result = num1 / num2;
                            operationSymbol = "÷";
                        }
                        break;
                }
            } catch (NumberFormatException e) {
                hasError = true;
                errorMessage = "올바른 숫자를 입력해주세요.";
            }
        %>
        
        <div class="calculation-details">
            <p>첫 번째 숫자: <%= num1Str %></p>
            <p>두 번째 숫자: <%= num2Str %></p>
            <p>선택한 연산: 
                <%
                    switch(operator) {
                        case "add": out.print("더하기"); break;
                        case "subtract": out.print("빼기"); break;
                        case "multiply": out.print("곱하기"); break;
                        case "divide": out.print("나누기"); break;
                    }
                %>
            </p>
        </div>
        
        <div class="result">
            <%
                if (hasError) {
                    out.println("<p class='error'>" + errorMessage + "</p>");
                } else {
                    out.println(num1Str + " " + operationSymbol + " " + num2Str + " = " + result);
                }
            %>
        </div>
        
        <a href="calculator_form.jsp" class="back-button">다시 계산하기</a>
    </div>
</body>
</html> 