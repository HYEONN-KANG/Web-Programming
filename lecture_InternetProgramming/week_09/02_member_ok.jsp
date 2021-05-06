<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pass = request.getParameter("pass");

if(id.equals("admin") && pass.equals("1234")){
	session.setAttribute("id", id);
	response.sendRedirect("02_login.jsp");
}else if(id.equals("admin")){
	out.println("<script>alert('wrong password'); history.back();</script>");
}
else if(pass.equals("1234")){
	out.println("<script>alert('wrong id'); history.back();</script>");
}else{
	out.println("<script>alert('wrong id, password'); history.back();</script>");
}
%>