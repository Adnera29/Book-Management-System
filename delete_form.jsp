<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="Head.jsp"/>

<form action="delete_book.jsp">
 	<table align="center">
 	<tr>
 	<td><h4>Enter Book Number</h4><input type="text" name="bno" id="no"></td>
 	</tr>
 	<br>
 	<tr>
 	<td><input type="submit" value="delete"></td>
 	</tr>
 	</table>
</form>

<jsp:include page="Footer.jsp"/>

</body>
</html>