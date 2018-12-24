<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/pwdLook.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src = "./resources/js/total.js"></script>
</head>
<body>
<form>
<table width="1000" cellpadding="0" cellspacing="0">
<h1 align="center">나옹이 이름찾기</h1>
<div align="center">
<p><label>이름: <input type="text" name="name"></label></p>
<p><label>아이디: <input type="text" name="loginId" onfocus="idOnFocus()"></label></p>
<p><label>전화번호: <select id="firstNum" style="width:60px; height:23px;">
                  <option value="" selected>선택</option>
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="016">016</option>
                  <option value="017">017</option>
                  <option value="018">018</option>
                  <option value="019">019</option>
               </select>-
               <input type="test" name="tel2=" size="4" maxlength="4">-
               <input type="test" name="tel3=" size="4" maxlength="4">
					</label></p>
<p><label>이메일: <input type="text" size="10" id="first_email">@
					<input type="text" size="10" id="last_email"></label>
					<select id="email_select">
						<option value="" selected>선택</option>
						<option value="naver.com">naver.com</option>
						<option value="nate.com" >nate.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hotmail.com">hotmail.com</option>s
						<option value="bondingedu.com">bondingedu.com</option>	
						<option value="hanmir.com">hanmir.com</option>
						<option value="empas.com">empas.com</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="korea.com">korea.com</option>
						<option value="lycos.co.kr">lycos.co.kr</option>
						<option value="freechal.com">freechal.com</option>
						<option value="1">::직접입력::</option>
					</select>
									</p>	
					
					<br>
					
					
					<div align="center">
					<input type="submit" value="비밀번호찾기" >
					<a href="login.jsp" ><input type="button" value="취소"></a>
					</div>
				
				
					</table>
					</form>
				

</body>
</html>