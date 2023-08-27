<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	alert("${message}")
	window.location.replace('<%=request.getContextPath()%>/common/loginForm.do');
</script>