<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Head.jsp"/>
<center>	
<h1 align="center">All Book Details Are</h1>

<table border="1" align="center" width="900">
<tr>
<td>Book Number</td>
<td>Book Name</td>
<td>Book Author</td>
<td>Book Publication</td>
<td>Book Price</td>
</tr>

<% 

Connection con;
Statement s;

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");

s=con.createStatement();
ResultSet rs=s.executeQuery("select * from book");

while(rs.next())
{
	%>
	<tr>
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getInt(5) %></td>
	<td><a href="Delete.jsp?id=<%=rs.getInt(1) %>">Delete</a></td>
	<td><a href="update.jsp?id=<%=rs.getInt(1) %>">Update</a></td>
	</tr>
	
	
	<%
	
}	
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>


</table>
</center>
<jsp:include page="Footer.jsp"/>
</body>
</html>