<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	alert("가입에 성공했습니다.");
	window.location.replace('<%=request.getContextPath()%>/common/loginForm');
</script>