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
<%--<jsp:forward page="login.jsp"/>--%>
<jsp:forward page="dialog.jsp">
    <jsp:param name="title" value="114514"/>
    <jsp:param name="content" value="<input>"/>
</jsp:forward>
</body>
</html>