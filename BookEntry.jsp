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

<form action="SaveBook.jsp" method="post">
<table border="1" width="900" align="center">
<tr>
<tD align="center" colspan="2"> <b>New Book Entry</b> </tD>
</tr>

<tr>
<tD> Book Number </tD>
<td> <input type="text" name="bno"> </td>
</tr>

<tr>
<tD> Book Name </tD>
<td> <input type="text" name="bname"> </td>
</tr>

<tr>
<tD> Book Author </tD>
<td> <input type="text" name="bauthor"> </td>
</tr>

<tr>
<tD> Book Publication </tD>
<td> <input type="text" name="bpub"> </td>
</tr>

<tr>
<tD> Book Price </tD>
<td> <input type="text" name="bprice"> </td>
</tr>

<tr>
<td> </td>
<td> <input type="submit" value="Save Book"> </td>
</tr>

</table>
</form>

<jsp:include page="Footer.jsp"/>


</body>
</html>