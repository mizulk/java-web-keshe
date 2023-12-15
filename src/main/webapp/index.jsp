<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:forward page="login.jsp"/>
</body>
</html>