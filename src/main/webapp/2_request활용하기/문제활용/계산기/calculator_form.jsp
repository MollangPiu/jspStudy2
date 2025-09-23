<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>간단한 계산기</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        .calculator-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .radio-group {
            margin: 10px 0;
        }
        .radio-group label {
            display: inline;
            margin-right: 15px;
            font-weight: normal;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
        .title {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="calculator-container">
        <h1 class="title">간단한 계산기</h1>
        <form action="calculator_result.jsp" method="post">
            <div class="form-group">
                <label for="num1">첫 번째 숫자:</label>
                <input type="number" id="num1" name="num1" required step="any">
            </div>

            <div class="form-group">
                <label for="num2">두 번째 숫자:</label>
                <input type="number" id="num2" name="num2" required step="any">
            </div>

            <div class="form-group">
                <label>연산자:</label>
                <div class="radio-group">
                    <input type="radio" id="add" name="operator" value="add" checked>
                    <label for="add">더하기 (+)</label>
                    
                    <input type="radio" id="subtract" name="operator" value="subtract">
                    <label for="subtract">빼기 (-)</label>
                    
                    <input type="radio" id="multiply" name="operator" value="multiply">
                    <label for="multiply">곱하기 (×)</label>
                    
                    <input type="radio" id="divide" name="operator" value="divide">
                    <label for="divide">나누기 (÷)</label>
                </div>
            </div>

            <button type="submit">계산하기</button>
        </form>
    </div>
</body>
</html> 