<%@ page isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Output</title>
</head>

<body>
	<c:url value='core17.jsp' var='x'>
	<c:param name='java' value='nitin'/>
	<c:param name='jee' value='kumar'/>
	</c:url>
	<h1>The modified URL is:${x}</h1>
	<a href='${x}'>Click here to go to new page</a>
</body>
</html>