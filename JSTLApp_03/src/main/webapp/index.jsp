<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<c:set var="data" value="Learning JSTL is very easy"></c:set>
	<h1 style='color: green; text-align: center;'>
		Length :: ${fn:length(data)}<br /> UpperCase ::
		${fn:toUpperCase(data)}<br /> LowerCase :: ${fn:toLowerCase(data)}<br />
		Substring :: ${fn:substring(data,6,15)}<br /> Contains ::
		${fn:contains(data,"JSTL")}<br /> StartsWith ::
		${fn:startsWith(data,"Learning")}<br /> EndsWith ::
		${fn:endsWith(data,"easy")}<br />
	</h1>
	<c:set var='data' value='maruthi,reshma,vijay,pruthwi' />
	<h1>
		Result of Split Method::
		<c:set var='names' value='${fn:split(data,",")}' />
		<c:forEach var='name' items='${names}'>
	${name}
	</c:forEach>
	</h1>
	<c:set var='result' value='${fn:join(names,"-")}' />
	<h1>Result of join is :: ${result}</h1>
</body>
</html>