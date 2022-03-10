<%@ page contentType="text/html; charset=UTF-8" import="java.net.URLDecoder, java.net.URLEncoder"%>
<%
String email = (String) session.getAttribute("email");
if (email == null) {
	email = "";
} else {
	email = URLDecoder.decode(email);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerEmail</title>
</head>
<body>
	<form method="POST" action="registerEmailComplete.jsp">
		<dl>
			<dt>Eメール</dt>
			<dd>
				<input type="text" name="email" value="<%= email %>">
			</dd>
		</dl>
		<input type="submit" value="登録">
	</form>
</body>
</html>