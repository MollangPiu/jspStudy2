<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>폼 입력 예제</title>
</head>
<body>
    <h2>회원 가입 폼</h2>
    <form action="result.jsp" method="post">
        <!-- input text -->
        이름: <input type="text" name="name"><br><br>

        <!-- input password -->
        비밀번호: <input type="password" name="password"><br><br>

        <!-- input radio -->
        성별:
        <input type="radio" name="gender" value="남자">남자
        <input type="radio" name="gender" value="여자">여자<br><br>

        <!-- input checkbox -->
        취미:
        <input type="checkbox" name="hobby" value="운동">운동
        <input type="checkbox" name="hobby" value="독서">독서
        <input type="checkbox" name="hobby" value="영화">영화<br><br>

        <!-- select -->
        지역:
        <select name="region">
            <option value="서울">서울</option>
            <option value="부산">부산</option>
            <option value="대전">대전</option>
            <option value="광주">광주</option>
        </select><br><br>

        <input type="submit" value="제출">
    </form>
</body>
</html>
