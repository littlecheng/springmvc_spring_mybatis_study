<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*,com.manwudingzhi.domain.*,com.manwudingzhi.utils.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>springmvc/spring/mybatis 整合</title>
</head>
<body bgcolor="green">

	<table border="1" >
	<th>getId</th>
	<th>getUser_id</th>
	<th>getNumber</th>
	<th>getCreatetime</th>
	<th>operation</th>
		<%
			List<Orders> list = (List<Orders>) request.getAttribute("list");
			for (Orders order : list) {
		%>
		<tr>
			<td><%=order.getId()%></td>
			<td><%=order.getUser_id()%></td>
			<td><%=order.getNumber()%></td>
			<td><%=DateFormatter.coverToString(order.getCreatetime())%></td>
			<td><a href="addAction">add</a> &nbsp&nbsp <a href="updateAction">update</a>&nbsp&nbsp <a href="deleteAction">delete</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>