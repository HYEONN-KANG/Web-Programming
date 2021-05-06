<%-- 02_logout.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
	session.invalidate();	
%>
<script>
alert('sign outed.');
location.href = "02_login.jsp";
</script>