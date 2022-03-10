<%@ page contentType="text/html; charset=UTF-8" import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
</head>
<body>
	<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd E曜日");
	out.print(sdf.format(date));
	%>
	<form method="POST" action="calendarPost.jsp">
		<p>年月日を入力してください。</p>
		<textarea name="datePost"></textarea>
		<input type="submit" value="送信">
	</form>
</body>
</html>