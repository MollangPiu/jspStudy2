<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원가입 결과</title>
    <link rel="stylesheet" href="signForm.css" />
<style>
body {
	background-image: url("./blueblue.jpg");
	background-size: cover;
	position: absolute;
	top: 0;
	width: 100%;
	height: 95%;
}

ul {
	list-style-type: none;
	padding: 20px;
	background-color: rgba(0, 119, 255, 0.8); /* 같은 배경색을 유지 */
	border-radius: 15px;
	width: 50%;
	margin: 30px auto;
	box-shadow: 0 0 20px rgba(255, 255, 255, 0.6); /* 빛나는 효과 */
	font-family: "DungGeunMo", sans-serif;
	color: white;
}

ul li {
	margin: 10px 0;
	font-size: 18px;
	padding: 8px;
	border-bottom: 1px solid #ffffff90; /* 각 항목을 구분하는 선 */
}

ul li:last-child {
	border-bottom: none; /* 마지막 항목은 아래 경계선 없애기 */
}

ul li span {
	font-weight: bold;
	color: #ffffff;
}

ul li span+span {
	color: #00f2ff; /* 항목값은 강조된 색상으로 */
}

ul li:hover {
	background-color: rgba(4, 19, 49, 0.68); /* 항목 hover 시 효과 */
	cursor: pointer;
	transition: 0.2s;
}

h1 {
	font-family: "dalmoori";
	font-size: 50px;
	color: white;
	text-align: center;
	margin-bottom: 20px;
}
</style>
</head>
<body>
       
    <h1>회원 정보</h1>
	<ul>
		<li><span>아이디: </span>${requestScope.userId}</li>
		<li><span>이메일: </span>${requestScope.userMail}</li>
		<li><span>이름: </span>${requestScope.userName}</li>
		<li><span>생년월일: </span>${requestScope.birthday}</li>
		<li><span>관심사: </span>${requestScope.interests}</li>
		<li><span>자기소개: </span>${requestScope.userIntroduce}</li>
	</ul>        
</body>
</html> 