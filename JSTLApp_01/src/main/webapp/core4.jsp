<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Output</title>
</head>

<body>
	<h1 style="color:blue; text-align: center">The Username is :: ${param.userName}</h1><br/>
	<c:catch var="e">
		<jsp:scriptlet>Integer userAge = Integer.parseInt(request.getParameter("userAge"));
		</jsp:scriptlet>
		<h1 style="color:blue; text-align: center">The User Age is :: ${param.userAge}</h1><br/>
	</c:catch>
	
	
	<c:if test="${! empty e }">
		<br />
		<h1 style="color: red; text-align: center">The exception is ::
			${e }</h1>
	</c:if>
	<h1 style="color:blue; text-align: center">The code after
		handling the dynamic content</h1>

</body>

</html>