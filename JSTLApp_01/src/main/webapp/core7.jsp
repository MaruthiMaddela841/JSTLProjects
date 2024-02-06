<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Output</title>
</head>

<body>
	<c:set var="x" value="10" scope="page" />
<%-- 	<c:if test="${x eq 10}" var="y" scope="application" /> --%>
<%-- 	<c:if test="${x ne 10}" var="y" scope="application" /> --%>
<c:if test="${x eq 10}" var="y" scope="application">
<h1 style='color: green; text-align: center;'>
		X values is equal to 10
	</h1>
</c:if>
	<h1 style='color: blue; text-align: center;'>
		X values is :: ${x}<br /> Test Result is :: ${y}
	</h1>
</body>
</html>