<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>sign up</title>
    <script src="../lib/jquery-3.7.1.min.js"></script>

    <link rel="stylesheet" href="signForm.css" />
  </head>
  <body>
    <div class="background">
      <h1>Sign Up</h1>
      <form action="signForm_process.jsp" method="post" id="signUp">
        <table>
          <tr>
            <div class="subject sub-title">회원 기본 정보</div>
          </tr>
          <tr>
            <td class="sub-title">아이디:</td>
            <td>
              <input
                type="text"
                name="userId"
                id="userId"
                placeholder="4~12자의 영문 대소문자와 숫자로만 입력"
              />&nbsp;<img src="" alt="" />
            </td>
          </tr>
          <tr>
            <td class="sub-title">비밀번호:</td>
            <td>
              <input
                type="password"
                name="userPw"
                id="userPw"
                placeholder="4~12자의 영문 대소문자와 숫자로만 입력"
              />
            </td>
          </tr>
          <tr>
            <td class="sub-title">비밀번호 확인:</td>
            <td>
              <input
                type="password"
                name="userPwCheck"
                id="userPwCheck"
                onchange="checkCorrectPw()"
              />
            </td>
          </tr>
          <tr>
            <td class="sub-title">메일주소:</td>
            <td>
              <input
                type="text"
                name="userMail"
                id="userMail"
                placeholder="ex) id@domain.com"
              />
            </td>
          </tr>
          <tr>
            <td class="sub-title">이름:</td>
            <td>
              <input type="text" name="userName" id="userName" />
            </td>
          </tr>
          <tr>
            <td colspan="2"></td>
          </tr>
          <tr>
            <td colspan="2">
              <div class="subject sub-title">개인 신상 정보</div>
            </td>
          </tr>
          <tr>
            <td class="sub-title">주민등록번호:</td>
            <td>
              <input
                type="text"
                name="userNumber"
                id="userNumber"
                placeholder="1234561234567"
              />
            </td>
          </tr>
          <tr>
            <td class="sub-title">생일:</td>
            <td>
              <input
                type="number"
                name="userBirthYear"
                id="userBirthYear"
                placeholder="2000"
              />&nbsp;년&nbsp;
              <select name="month" id="month" onchange="makeDateOptionDay()"></select
              >&nbsp;월&nbsp;
              <select name="day" id="day"></select
              >&nbsp;일
            </td>
          </tr>
          <tr>
            <td class="sub-title">관심분야:</td>
            <td>
              <input
                type="checkbox"
                name="interests"
                id="computer"
                value="computer"
              />컴퓨터
              <input
                type="checkbox"
                name="interests"
                id="internet"
                value="internet"
              />인터넷
              <input
                type="checkbox"
                name="interests"
                id="travel"
                value="travel"
              />여행
              <input
                type="checkbox"
                name="interests"
                id="movie"
                value="movie"
              />영화감상
              <input
                type="checkbox"
                name="interests"
                id="music"
                value="music"
              />음악감상
            </td>
          </tr>
          <tr>
            <td class="sub-title">자기소개:</td>
            <td>
              <textarea
                name="userIntroduce"
                id="userIntroduce"
                cols="40"
                rows="5"
              ></textarea>
            </td>
          </tr>
        </table>
        <div class="button-wrapper">
          <button type="submit" id="signUpBtn">
            회원 가입
          </button>
          <button type="reset" onclick="resetEvent()">다시 입력</button>
        </div>
      </form>
    </div>

    <script>
      let samePw = false;
      makeDateOption();
      makeDateOptionDay();

      function makeDateOption() {
        let m = document.getElementById("month");

        let monthHtml = "";
        for (let i = 1; i <= 12; i++) {
          monthHtml += '<option value="'+String(i).padStart(2, "0")+'">'+String(i).padStart(2, "0")+'</option>';
        }
        m.innerHTML = monthHtml;
      }

      function makeDateOptionDay() {
        let month = +document.getElementById("month").value;
        let day = document.getElementById("day");
        let maxDay = 30;

        if ((month < 7 && month % 2 === 1) || (month > 7 && month % 2 === 0)) {
          maxDay = 31;
        }

        if (month === 2) maxDay = 29;

        let dayHtml = "";
        for (let i = 1; i <= maxDay; i++) {
          dayHtml += '<option value="'+String(i).padStart(2, "0")+'">'+String(
            i
          ).padStart(2, "0")+'</option>';
        }
        day.innerHTML = dayHtml;
      }

      function isFill() {
        const fields = ["userName", "userIntroduce"];
        const interets = document.getElementsByName("");
        let ok = 0;

        fields.forEach((f) => {
          const field = document.getElementById(f);
          const text = field.value;

          if (text.length >= 1) {
            field.style.outline = "none";
            ok++;
          } else {
            field.style.outline = "2px solid red";
          }
        });

        if (document.getElementById("userBirthYear").value.length === 4) {
          document.getElementById("userBirthYear").style.outline = "none";
          ok++;
        } else {
          document.getElementById("userBirthYear").style.outline =
            "2px solid red";
        }

        let isCheck = false;
        let interests = document.getElementsByName("interests");
        for (let i = 0; i < interests.length; i++) {
          if (interests[i].checked) {
            isCheck = true;
            ok++;
            break;
          }
        }

        if (!isCheck) {
          for (let i = 0; i < interests.length; i++)
            interests[i].style.outline = "2px solid red";
        } else {
          for (let i = 0; i < interests.length; i++)
            interests[i].style.outline = "none";
        }

        if (ok === 4) return true;

        return false;
      }

      function checkCorrectPw() {
        const pw = document.getElementById("userPw").value;
        const ch = document.getElementById("userPwCheck").value;

        if (pw.length > 0 && pw === ch) {
          document.getElementById("userPwCheck").style.outline = "none";
          samePw = true;
        } else {
          document.getElementById("userPwCheck").style.outline =
            "2px solid red";
        }
      }

      function resetEvent() {
        document.getElementById("userId").style.outline = "none";
        document.getElementById("userPw").style.outline = "none";
        document.getElementById("userPwCheck").style.outline = "none";
        document.getElementById("userMail").style.outline = "none";
        document.getElementById("userName").style.outline = "none";
        document.getElementById("userNumber").style.outline = "none";
        document.getElementById("userBirthYear").style.outline = "none";
        document.getElementById("userIntroduce").style.outline = "none";
      }
    </script>
  </body>
</html> 