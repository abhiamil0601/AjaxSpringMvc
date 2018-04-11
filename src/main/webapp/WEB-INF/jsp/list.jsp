<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index</title>
</head>
<body>
<h2>Spring MVC and List Example</h2>
 <c:if test="${not empty list}">
        <ul>
			<c:forEach var="listValue" items="${list}">
			<table>
				<li>${listValue.name}${listValue.mobile}${listValue.message}</li>
			</table>
			</c:forEach>
		</ul>
 </c:if>
</body>
</html>