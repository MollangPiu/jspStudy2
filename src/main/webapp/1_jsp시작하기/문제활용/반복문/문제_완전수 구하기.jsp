<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>완전수 구하기</title>
</head>
<body>
<h1>완전수 판별하기</h1>
<h3>변수 한 개를 입력 받고, 해당 변수가 완전수 인지 판단하시오.</h3>
<%
    int num = 28;  // 판별할 숫자
    
%>










<%
    int sum = 0;

    // num의 약수 구하기 (자기 자신 제외)
    for (int i = 1; i < num; i++) {
        if (num % i == 0) {
            sum += i;
        }
    }

    if (sum == num) {
%>
    <p><%= num %> 은(는) 완전수입니다.</p>
<%
    } else {
%>
    <p><%= num %> 은(는) 완전수가 아닙니다.</p>
<%
    }
%>

</body>
</html>
