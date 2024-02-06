<%@ page isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Output</title>
</head>

<body>
	<table border="1" bgcolor="cyan">
	<tr>
	<th>Key</th>
	<th>Value</th>
	</tr>
	<c:forEach  var="p" items="${param}">
	<tr>
	<td>${p.key}</td>
	<td>${p.value}</td>
	</tr>
	</c:forEach>
	
	
	</table>
</body>
</html>