<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

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
String bname=request.getParameter("bname");
String bauthor=request.getParameter("bauthor");
String bpub=request.getParameter("bpub");
String bprice=request.getParameter("bprice");
int bno=Integer.parseInt(request.getParameter("bid"));

Connection con;;
PreparedStatement s;

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection
   ("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
	s=con.prepareStatement("update book set bname=?,bauthor=?,bpub=?,bprice=? where bno=?");
	
	s.setString(1,bname);
	s.setString(2,bauthor);
	s.setString(3,bpub);
	s.setInt(4,Integer.parseInt(bprice));
	
	s.setInt(5, bno);
	
	int c=s.executeUpdate();
	if(c>0)
		out.println("<h1>Book Updated..</h1>");
	else
		out.println("<h1>Problem in Book Update</h1>");
	
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