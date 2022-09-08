<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#tab {
	width:60%;
	margin:0 auto;
}
h1	{
	text-align=center;
}
</style>

<script>
function check(){
	if(document.frm.id.value==""){
		alert("아이디를 입력하세요")
		document.frm.id.focus();
	}else if(document.frm.id.value.length>12||document.frm.id.value.length<8){
		alert("아이디는 8~12자리만 가능")
		document.frm.id.focus();
	}else if(document.frm.name.value==""){
		alert("이름을 입력하세요")
		document.frm.name.focus();
	}else if(document.frm.pass.value==""){
		alert("비밀번호를 입력하세요")
		document.frm.pass.focus();
	}else if(document.frm.address.value==""){
		alert("주소를 입력하세요")
		document.frm.address.focus();
	}else if(document.frm.hp.value==""){
		alert("전화번호를 입력하세요")
		document.frm.hp.focus();
	}else{
		document.frm.submit();
	}
	
}
</script>

</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section id="sec1">

<h1 align=center>회원 등록</h1>
<form name="frm" method=post action="insert_process.jsp">
<table border=1 id="tab">
<tr>
	<th>아이디</th>
	<td><input type="text" name="id">
</tr>

<tr>
	<th>이름</th>
	<td><input type="text" name="name">
</tr>

<tr>
	<th>비밀번호</th>
	<td><input type="password" name="pass">
</tr>

<tr>
	<th>주소</th>
	<td><input type="text" name="address">
</tr>

<tr>
	<th>전화번호</th>
	<td><input type="text" name="hp">
</tr>
<tr>
	<td colspan="2" align="center">
	<input type="button" value="저장" onclick="check()">
	<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>