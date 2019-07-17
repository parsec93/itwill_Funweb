<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
 function idcheck() {
	// id 텍스트 상자가 비어있으면  "아이디입력" 제어
	fid=document.fr.id.value;
	if(fid==""){
		alert("아이디입력");
		document.fr.id.focus();
		return;
	}
	//  아이디 입력되어있으면 새창열기  "idcheck.jsp"
// 	window.open("파일이름","창이름","옵션");
	window.open("idcheck.jsp?fid="+fid,"","width=400,height=200");
}
 </script>
 
 <script src="../script/jquery-3.4.1.js"></script>
 <script type="text/javascript">
 	$(document).ready(function() {
 	   // form대상 submit() 이벤트
 	   // 아이디 비밀번호 비어있으면 제어
 	   $('#join').submit(function(){
 		   if($('#id').val()==""){
 			   alert("아이디입력하세요");
 			  $('#id').focus();
 			  return false;
 		   }
 		   if($('#pass').val()==""){
 			  alert("비밀번호입력하세요");
 			  $('#pass').focus();
 			  return false; 
 		   }
			if($('#gender_man').is(":checked")==false && $('#gender_woman').is(":checked")==false){
				alert("성별체크하세요");
	 			  $('#gender_man').focus();
	 			  return false; 
			}
			if($('#age').val()==""){
				alert("연령체크하세요");
	 			  $('#age').focus();
	 			  return false;
			}
 	   });
	});
 </script>
</head>
<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/top.jsp" />
<!-- 헤더들어가는 곳 -->

<!-- 본문들어가는 곳 -->
<!-- 본문메인이미지 -->
<div id="sub_img_member"></div>
<!-- 본문메인이미지 -->
<!-- 왼쪽메뉴 -->
<nav id="sub_menu">
<ul>
<li><a href="#">Join us</a></li>
<li><a href="#">Privacy policy</a></li>
</ul>
</nav>
<!-- 왼쪽메뉴 -->
<!-- 본문내용 -->
<article>
<h1>Join Us</h1>
<form action="joinPro.jsp" id="join" method="post" name="fr">
<fieldset>
<legend>Basic Info</legend>
<label>User ID</label>
<input type="text" name="id" class="id" id='id'>
<input type="button" value="dup. check" class="dup"
onclick="idcheck()"><br>
<label>Password</label>
<input type="password" name="pass"><br>
<label>Retype Password</label>
<input type="password" name="pass2"><br>
<label>Name</label>
<input type="text" name="name"><br>
<label>E-Mail</label>
<input type="email" name="email"><br>
<label>Retype E-Mail</label>
<input type="email" name="email2"><br>
</fieldset>

<fieldset>
<legend>Optional</legend>
<input type="radio" name="gender" id="gender_man" value="남">남
<input type="radio" name="gender" id="gender_woman" value="여">여<br>
<label>연령</label>
<select name="age" id="age">
	<option value="">선택해주세요</option>
	<option value="10대">10대</option>
	<option value="20대">20대</option>
</select><br>
<label>Address</label>
<input type="text" name="address"><br>
<label>Phone Number</label>
<input type="text" name="phone"><br>
<label>Mobile Phone Number</label>
<input type="text" name="mobile"><br>
</fieldset>
<div class="clear"></div>
<div id="buttons">
<input type="submit" value="Submit" class="submit">
<input type="reset" value="Cancel" class="cancel">
</div>
</form>
</article>
<!-- 본문내용 -->
<!-- 본문들어가는 곳 -->

<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>