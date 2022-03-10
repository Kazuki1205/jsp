<%@ page contentType="text/html; charset=UTF-8" import="java.net.URLEncoder"%>
<%
request.setCharacterEncoding("UTF-8");
String email = URLEncoder.encode(request.getParameter("email"), "UTF-8");
session.setAttribute("email", email);
session.setMaxInactiveInterval(180);
%>
<html>
<head>
<meta charset="UTF-8">
<title>registerEmailComplete</title>
</head>
<body>
	<p>セッションが保存されました。</p>
	<a href="redirect.jsp">ログアウト</a>
</body>
</html>