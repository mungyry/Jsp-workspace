<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% for(int i=0; i<5; i++){ %>
<p> 이태그는 <%=i %>번 반복 됩니다. </p>

<% } %>
</body>
</html>