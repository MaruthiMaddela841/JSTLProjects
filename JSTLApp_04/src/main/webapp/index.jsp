<%@ page isELIgnored='false'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<fmt:setLocale value="hi-IN"/>
	<fmt:setBundle basename="in/ineuron/commons/app"/>
	<fmt:message key='welcome.msg' var='msg1'></fmt:message>
	<fmt:message key='goodbye.msg' var='msg2'></fmt:message>
	Message is :: ${msg1} &nbsp;&nbsp; ${msg2}
	<fmt:formatNumber var="fnumber" value="40004556" type="currency"/>
	<h1>Formatted Number is:: ${fnumber}</h1>
	<jsp:useBean id="dt" class="java.util.Date"/>
	<fmt:formatDate var="fdt" value="${dt}"/>
	<h1>Formaated Date is:: ${fdt}</h1>
	
</body>
</html>