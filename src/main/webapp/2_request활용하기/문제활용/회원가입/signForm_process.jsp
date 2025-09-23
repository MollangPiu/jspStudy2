<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // POST 요청 처리
    if ("POST".equals(request.getMethod())) {
        // 폼에서 전송된 데이터 받기
        String userId = request.getParameter("userId");
        String userPw = request.getParameter("userPw");
        String userMail = request.getParameter("userMail");
        String userName = request.getParameter("userName");
        String userNumber = request.getParameter("userNumber");
        String userBirthYear = request.getParameter("userBirthYear");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String userIntroduce = request.getParameter("userIntroduce");
        
        // 관심분야 처리
        String[] interests = request.getParameterValues("interests");
        String interestsStr = "";
        if (interests != null && interests.length > 0) {
            interestsStr = String.join(", ", interests);
        }
        
        // 생년월일 조합
        String birthday = userBirthYear + "-" + month + "-" + day;
        
        // 데이터를 request 속성으로 설정
        request.setAttribute("userId", userId);
        request.setAttribute("userName", userName);
        request.setAttribute("userMail", userMail);
        request.setAttribute("userNumber", userNumber);
        request.setAttribute("birthday", birthday);
        request.setAttribute("interests", interestsStr);
        request.setAttribute("userIntroduce", userIntroduce);
        request.setAttribute("registerTime", new java.util.Date());
        
        // 결과 페이지로 forward
        request.getRequestDispatcher("signForm_result.jsp").forward(request, response);
    } else {
        // GET 요청인 경우 회원가입 폼으로 리다이렉트
        response.sendRedirect("signForm.jsp");
    }
%> 