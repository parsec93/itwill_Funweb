<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="board.BoardBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDAO bdao=new BoardDAO();
	int count=bdao.getBoardCount();
	int pageSize=5;
	int startRow=1;
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy.MM.dd");
	
	List<BoardBean> boardList =null;
	
	JSONArray arr = new JSONArray();
	
	
	if(count!=0){
		boardList = bdao.getBoardList(startRow, pageSize);
		
		for(int i=0;i<boardList.size();i++){
			BoardBean bb=boardList.get(i);
			JSONObject mb = new JSONObject();
			mb.put("num", bb.getNum());
			mb.put("subject", bb.getSubject());
			mb.put("date", bb.getDate().toString());
			
			arr.add(mb);
		}
		
	}
%>
<%=arr %>
	
	
	

