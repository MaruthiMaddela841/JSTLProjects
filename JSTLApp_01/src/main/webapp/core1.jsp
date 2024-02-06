<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Output</title>
</head>

<body>
	<c:set scope="request" var="data" value="Maruthi" />
	<h1 style='color: red; text-align: center'>
		<c:out value="${data}" />
	</h1>

	<c:set var='x' value='10' />
	<c:set var='y' value='20' />
	<c:set var='z' value='${x+y}' scope='application' />
	<h1 style='color: blue; text-align: center'>
		The result is ::
		<c:out value='${z}' />
	</h1>

	<c:set var='username' value='${param.username}' scope='request' />
	<h1 style='color: green; text-align: center'>
		The Username is ::
		<c:out value='${param.username}' default="iNeuron"/>
<%-- 		<c:out value='${username}' default="iNeuron"/> --%>
	</h1>
</body>

</html>