<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  member/idcheck2.jsp -->
<%
//String id = fid 파라미터 가져와서 변수에 저장
String id=request.getParameter("fid");
//MemberDAO mdao 객체생성
MemberDAO mdao=new MemberDAO();
//int check= idcheck(id) 메서드 호출
int check=mdao.idcheck(id);
//check==1   "아이디중복" 
//check==0   "아이디사용가능"
if(check==1){
	out.println("아이디중복");
}else{
	out.println("아이디사용가능");
}
%>


