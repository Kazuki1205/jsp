<%@ page contentType="text/html; charset=UTF-8" import="java.util.*, java.text.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendarPost</title>
</head>
<body>
	<%
	Map events = new HashMap();
	events.put("2022/01/01", "元旦");
	events.put("2022/01/11", "鏡開き");
	events.put("2022/01/15", "小正月");
	events.put("2022/12/24", "クリスマス");
	events.put("2022/12/25", "クリスマスイブ");
	events.put("2022/1/10", "成人の日");
	events.put("2022/2/14", "バレンタインデー");
	events.put("2022/3/14", "ホワイトデー");
	events.put("2022/4/1", "エイプリルフール");
	events.put("2022/2/23", "天皇誕生日");
	events.put("2022/3/21", "春分の日");
	events.put("2022/4/29", "昭和の日");
	events.put("2022/5/3", "憲法記念日");
	events.put("2022/5/4", "みどりの日");
	events.put("2022/5/5", "子供の日");
	events.put("2022/7/18", "海の日");
	events.put("2022/8/11", "山の日");
	events.put("2022/9/19", "敬老の日");
	events.put("2022/9/23", "秋分の日");
	events.put("2022/10/10", "スポーツの日");
	events.put("2022/11/3", "文化の日");
	%>
	<%
	String datePost = request.getParameter("datePost");
	pageContext.setAttribute("datePost", datePost);
	%>
	
	<fmt:parseDate var="date" value="${datePost}" pattern="yyyy/MM/dd" />
	<p>
		<fmt:formatDate value="${date}" pattern="yyyy/MM/dd E曜日" />
	</p>
	<p>
		<% 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		out.println(events.get(sdf.format(pageContext.getAttribute("date")))); %>
	</p>


</body>
</html>