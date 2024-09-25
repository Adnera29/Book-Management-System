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

<%
	String bno=request.getParameter("bno");
	String bname=request.getParameter("bname");
	String bauthor=request.getParameter("bauthor");
	String bpub=request.getParameter("bpub");
	String bprice=request.getParameter("bprice");
	
	out.println("<h1>Book Name:- "+bname+"</h1>");
	Connection con;
	PreparedStatement s;
	
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
	s=con.prepareStatement("insert into book values(?,?,?,?,?)");
	s.setString(1,bno);
	s.setString(2,bname);
	s.setString(3,bauthor);
	s.setString(4,bpub);
	s.setInt(5,Integer.parseInt(bprice));
	int c=s.executeUpdate();
	if(c>0)
		out.println("<h1>Book Saved</h1>");
	else
		out.println("<h1>Problem in Book Saving</h1>");
	}
	catch(Exception e)
	{	
	out.println(e.getMessage());
	}
%>

</center>
<jsp:include page="Footer.jsp"/>
</body>
</html>