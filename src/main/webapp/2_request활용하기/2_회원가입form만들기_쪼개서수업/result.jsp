<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>결과 출력</title>
</head>
<body>
    <h2>입력 결과</h2>

    <%-- input text --%>
    이름: <%= request.getParameter("name") %><br>

    <%-- input password --%>
    비밀번호: <%= request.getParameter("password") %><br>

    <%-- input radio --%>
    성별: <%= request.getParameter("gender") %><br>

    <%-- input checkbox --%>
    취미:
    <%
        String[] hobbies = request.getParameterValues("hobby");
        if (hobbies != null) {
            for (String h : hobbies) {
                out.print(h + " ");
            }
        } else {
            out.print("선택 없음");
        }
    %><br>

    <%-- select --%>
    지역: <%= request.getParameter("region") %><br>

</body>
</html>
