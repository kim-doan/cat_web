<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품검색 결과 화면</title>

<link rel="stylesheet" href="./resources/css/searchList.css">

</head>
<body>
	<div id="wrapper">
		<form action="search.do">
		'${keyword.word}' 검색결과 : ${fn:length(searchList)} 건
			<input type="hidden" name="word" value="${keyword.word}">
			<c:if test="${keyword.sortType eq 'accuracyCompare'}">
				<select class="searchoption" name="sortType" onChange="this.form.submit();">
						<option value="accuracyCompare"> 정확도순 </option>
		        		<option value="recentCompare"> 최신순 </option>
		   	 	</select>
	   	 	</c:if>
	   	 	<c:if test="${keyword.sortType eq 'recentCompare'}">
				<select class="searchoption" name="sortType" onChange="this.form.submit();">
						<option value="recentCompare"> 최신순 </option>
						<option value="accuracyCompare"> 정확도순 </option>
		   	 	</select>
	        </c:if>
   	 	</form>
		<br>
		<hr>
		<c:forEach items="${searchList}" var="search" begin="0" end="8">
			<div id="product">
				<div id="item">
					<a target="iframe1" href="getItem.do?id=${search.id}">
						<img src="getItemImg.do?id=${search.id}" style="width:100%; height:100%">
					</a>
				</div>
				<div id="name">
					<center>${search.name}</center>
				</div>
				<div id="price">
					<center>${search.price}원</center>
				</div>
			</div>
		</c:forEach>
		<div id="paging">
		
		</div>
	</div>
</body>
</html>