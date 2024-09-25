<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<jsp:include page="Head.jsp"/>

<%

String bno=request.getParameter("bno");

Connection c;
PreparedStatement s;

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");

s=c.prepareStatement("delete from Book where bno=?");
s.setString(1,bno);

int r=s.executeUpdate();

if(r>0)
out.println("Book deleted");
else
out.println("Problem in deletion");
}
catch(Exception e){
	out.println(e.getMessage());
}


%>

<jsp:include page="Footer.jsp"/>
</center>
</body>
</html>