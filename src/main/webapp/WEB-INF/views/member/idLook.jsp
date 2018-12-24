<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src = "./resources/js/total.js"></script>
<script>
	function idLookClick() {
		var name = $('#name').val();
		var phone = $("#firstNum").find(":selected").val() + "-" + $("#middleNum").val() + "-" + $("#lastNum").val();
		
		if (!phoneFomatter(phone)) {
			alert('전화번호를 확인 바랍니다.')
		} else {
			$.ajax({
				type : 'POST',
				url : 'idLook',
				dataType : 'json',
				data : {"name" : name, "phone" : phone},
				success : function(json) {
					var result = json.result;
					var id = json.idLook;
					if(result == 0) {
						alert('아이디 찾기 실패')
					} else {
						alert('회원님의 아이디는 ' + id + ' 입니다.')
					}
				}
			});
		}
	}
</script>
</head>
<body>

<form>
<table width="1000" cellpadding="0" cellspacing="0" >
<h1 align="center" >나옹이 아이디찾기</h1>
<div align="center">
<p><label>이름 : <input type="text" name="name" id="name"></label></p>
<p><label>전화번호: 
               <select id="firstNum" style="width:60px; height:23px;">
                  <option value="" selected>선택</option>
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="016">016</option>
                  <option value="017">017</option>
                  <option value="018">018</option>
                  <option value="019">019</option>
               </select>-
					<input id="middleNum" type="text" onkeydown="return isNumberKey(event)" onkeyup='removeChar(event)' style="ime-mode: disabled;" size="6"  maxlength="4"> - 
					<input id="lastNum" type="text" onkeydown="return isNumberKey(event)" onkeyup='removeChar(event)' style="ime-mode: disabled;" size="6" maxlength="4">
               </label></p>
               
               <div align="center">
               <input type="button" value="아이디찾기" onclick='idLookClick()'>
               <a href="login" ><input type="button" value="취소"></a>
</table>
</form>
</body>
</html>