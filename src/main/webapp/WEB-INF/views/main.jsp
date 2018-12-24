<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MainView</title>
<link rel="stylesheet" href="./resources/css/main.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script src="./resources/js/total.js"></script>
<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
 <script src="themes/1/js-image-slider.js" type="text/javascript"></script> 
 <link href="main.css" rel="stylesheet" type="text/css" /> 

</head>
<body>

	<div id="wrap" class="back" style="width: 1260px; margin: 0 auto;">
		<div id="top" style="width: 870px;">
			<div id="login" style="width: auto; height: 30px;">
				<table>
					<tr>
						<c:if test="${sessionScope.userId == null}">
						<td width=500px;><a target="iframe1" href="#"
								class="sidemenu"></a></td>
							<td width=90px;><a target="iframe1" href="login"
								class="sidemenu">로그인</a></td>
							<td width=90px;><a target="iframe1" href="terms"
								class="sidemenu">회원가입</a></td>
							<td width=90px;><a target="iframe1" href="cartList"
								class="sidemenu">장바구니</a></td>
							<td width=90px;><a target="iframe1" href="getMyInfo"
								class="sidemenu">마이페이지</a></td>
						</c:if>
						<c:if test="${sessionScope.userId != null}">
						<td width=500px;><a href="#"
								class="sidemenu">${sessionScope.userName}님 환영합니다.</a></td>
							<td width=90px;><a onclick="logout()"
								class="sidemenu">로그아웃</a></td>
							<td width=90px;><a target="iframe1" href="cartList"
								class="sidemenu">장바구니</a></td>
							<td width=90px;><a target="iframe1" href="getMyInfo"
								class="sidemenu">마이페이지</a></td>
						</c:if>
						<!-- 관리자모드 설정 (관리자 = 1 일반사용자  = 0) -->
						<c:if test="${userVO2.isAdmin == 1}">
							<td width=90px;><a href="adminModeIndex.jsp"
								onClick="window.open(this.href, '', 'location=no,status=yes,scrollbars=1,resizable=1,width=1200,height=800,left=0,top=0'); return false;"
								class="sidemenu"><font color="red"><b>관리자모드</b></font></a></td>
						</c:if>
					</tr>
				</table>
			</div>
		</div>

		<div id="middle" style="width: 870px; height: 1200px;">
			<div id="rogo" style="width: 305px; height: 105px;">
				<table>
					<tr>
						<td><a onclick="window.location.reload()"><input
								type="image" src="resources/image/logo.png" alt="로고"
								width="300px" height="120px"></a></td>
					</tr>
				</table>
			</div>
			<div id="serch" style="width: 650px; height: 45px;">
				<table>
					<tr>
						<td><input type="text" id="searchWord"
							placeholder="찾으실 상품명을 입력하세요."
							style="width: 450px; height: 35px; font-size: 15px" />
							<button
								style="border: 2px #4ABFD3; background: white; width: 60px; height: 40px; background-color: black;"
								onclick="search()">
								<font color="white">검색</font>
							</button></td>
					</tr>
				</table>
			</div>

			<div id="menu"
				style="width: 870px; height: 80px; display: inline-block;">
				<hr width=1920px;>
				<div id="menu1" style="width: 1300px; height: 35px;">
					<ul>

						<li class="topMenuLi" style="width: 100px; height: 30px;"><a
							target="iframe1" class="menuLink"
							href="itemMenuCategory.do?type=shop">사료</a></li>
						<li class="topMenuLi" style="width: 100px; height: 30px;"><a
							target="iframe1" class="menuLink"
							href="#">간식</a></li>
						<li class="topMenuLi" style="width: 100px; height: 30px;"><a
							target="iframe1" class="menuLink"
							href="#">장난감</a></li>
						<li class="topMenuLi" style="width: 100px; height: 30px;"><a
							target="iframe1" class="menuLink"
							href="#">의류</a></li>
						<li class="topMenuLi" style="width: 100px; height: 30px;"><a
							target="iframe1" class="menuLink"
							href="#">하우스</a></li>
						<li class="topMenuLi" style="width: 100px; height: 30px;"><a
							target="iframe1" class="menuLink"
							href="#">위생/미용</a></li>
						<li class="topMenuLi" style="width: 100px; height: 30px;"><a
							target="iframe1" class="menuLink" href="getBoardList.jsp">자유게시판</a>
							<ul>
								<li
									style="width: 100px; height: 30px; display: none; display: block;"><a
									href="getBoardList.jsp" target="iframe1">자유게시판</a></li>
								<li
									style="width: 100px; height: 30px; display: none; display: block;"><a
									href="FAQ.jsp" target="iframe1">QnA</a></li>
							</ul></li>
					</ul>
				</div>
				<hr>
				</div>
			<div style="max-width:500px" target="iframe1">
  <img class="mySlides" src="resources/image/cat1.png" target="iframe1" style="width:870px; height:500px;">
  <img class="mySlides" src="resources/image/cat2.png" target="iframe1" style="width:870px;height:500px;">
  <img class="mySlides" src="resources/image/cat3.png" target="iframe1" style="width:870px;height:500px;">
  <img class="mySlides" src="resources/image/cat4.png" target="iframe1" style="width:870px;height:500px;">
  <img class="mySlides" src="resources/image/cat5.png" target="iframe1" style="width:870px;height:500px;">
  <img class="mySlides" src="resources/image/cat6.png" target="iframe1" style="width:870px;height:500px;">
  <img class="mySlides" src="resources/image/cat7.png" target="iframe1" style="width:870px;height:500px;">



</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2500); // Change image every 2 seconds
}
</script>
			<style>
			 #floatdiv { position:fixed; 
			 width:175px; 
			 height: 300px;
			 display:inline-block;
			 font-size:20; 
			 right:0px; /* 창에서 오른쪽 길이 */
			 top:10%;
			  /* 창에서 위에서 부터의 높이 */
background-color: skyblue; margin:0; } </style>
			   <div id="floatdiv">광고 문의 <br><br>서박신홍백
			   </div>
			   
			   <style>
			 #floatdiv { position:fixed; 
			 width:175px; 
			 height: 300px;
			 display:inline-block;
			 font-size:40px; 
			 left:0px; /* 창에서 왼쪽 길이 */
			 top:10%;
			  /* 창에서 위에서 부터의 높이 */
background-color: skyblue; margin:0; } </style>
			   <div id="floatdiv">광고 문의 <br><br>서박신홍백</div>
			   

			
			
			
			<div id="slide" style="width: 870px; height: 850px;">
				<iframe name="iframe1" src="initItem" frameborder="0" width=870px
					height=1100px scrolling="no" marginwidth="0" marginheight="0"
					style="onLoad: setFrameSize()"></iframe>
			</div>
			
		</div>
	</div> 
	
</body>
</html>