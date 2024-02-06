<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Output</title>
</head>

<body>
	<c:set var='x' value='10' />
	<c:set var='y' value='20' />
	<c:set var='z' value='${x+y}' scope='application' />
	<h1 style='color: blue; text-align: center'>
		The result is ::
		<c:out value='${z}' />
	</h1>
	<c:remove var="x"/>
	<c:remove var="y"/>
	<c:remove var="z"/>
	<h1 style='color: blue; text-align: center'>
		The result is ::
		<c:out value='${z}' default="1000"/>
	</h1>
</body>

</html>