<%@ page isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Output</title>
</head>

<body>
	<c:url value="https://www.google.co.in/" var="googleURL" scope="request"/>
	<c:redirect url="${googleURL}"/>
	
</body>
</html>