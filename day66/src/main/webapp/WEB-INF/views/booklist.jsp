<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="day6.Book" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
border:1px soild black;
border-collapse: collapse;
width: 500px;
margin:0 auto;
}
td{
border:1px soild black;
}
</style>
</head>
<body>
<table>
	<tr>
		<td>제목</td>
		<td>저자</td>
		<td>가격</td>
	</tr>
	
	<%
	ArrayList<Book> list=  (	ArrayList<Book>)request.getAttribute("list");
	
	for(int i=0;i<list.size();i++){
		Book  b =list.get(i);
	%>
	
	<tr>
		<td><%=b.getTitle() %></td>
		<td><%=b.getAuthor() %></td>
		<td><%=b.getPrice() %></td>
	</tr>
	
	<%} %>
</table>
</body>
</html>