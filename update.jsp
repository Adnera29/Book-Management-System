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
String bno=request.getParameter("id");


Connection con;;
PreparedStatement s;

String bname="";
String bauthor="";
String bpub="";
int bprice=0;


try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection
   ("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
	s=con.prepareStatement("select * from book where bno=?");
	s.setInt(1,Integer.parseInt(bno));
	
	ResultSet rs=s.executeQuery();
	
	
	if(rs.next())
	{
		bname=rs.getString(2);
		bauthor=rs.getString(3);
		bpub=rs.getString(4);
		bprice=rs.getInt(5);
		
	}	
	
}
catch(Exception e)
{
	out.println(e.getMessage());
}

%>

<form action="UpdateBook.jsp" method="post">
<table border="1" width="900" align="center">
<tr>
<tD align="center" colspan="2"> <b>Update Book Entry</b> </tD>
</tr>

<tr>
<tD> Book id </tD>
<td> <input type="text" name="bid" value="<%=bno %>" readonly > </td>
</tr>

<tr>
<tD> Book Name </tD>
<td> <input type="text" name="bname" value="<%=bname %>"    > </td>
</tr>

<tr>
<tD> Book Author </tD>
<td> <input type="text" name="bauthor" value="<%=bauthor %>" > </td>
</tr>

<tr>
<tD> Book Publication </tD>
<td> <input type="text" name="bpub" value="<%=bpub %>"> </td>
</tr>

<tr>
<tD> Book Price </tD>
<td> <input type="text" name="bprice" value="<%=bprice %>"> </td>
</tr>

<tr>
<tD> </tD>
<td> <input type="submit" value="Update Book"> </td>
</tr>

</table>
</form>




</center>




<jsp:include page="Footer.jsp"/>



</body>
</html>