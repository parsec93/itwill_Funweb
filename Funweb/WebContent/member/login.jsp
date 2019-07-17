<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">

<script src="../script/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#join').submit(function(){
			if($('#id').val()==""){
				alert("아이디를 입력하세요");
				$('#id').focus();
				return false;
			}
			
			if($('#pass').val()==""){
				alert("비밀번호를 입력하세요.");
				$('#pass').focus();
				return false;
			}
			
		});
		
	});
	</script>

 <script type="text/javascript">
 
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
<h1>Login</h1>
<form action="loginPro.jsp" id="join" method="post">
<fieldset>
<legend>Login Info</legend>
<label>User ID</label>
<input type="text" name="id" id='id'><br>
<label>Password</label>
<input type="password" name="pass" id='pass'><br>
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