<%@ page isELIgnored="false" %>

<!-- <h1 style='color:blue;text-align:center'> -->
<%-- 	Page Scope:: <%=pageContext.getAttribute("p") %> --%>
<!-- </h1> -->

<!-- <h1 style='color:blue;text-align:center'> -->
<%-- 	Request Scope:: <%=request.getAttribute("r") %> --%>
<!-- </h1> -->

<!-- <h1 style='color:blue;text-align:center'> -->
<%-- 	Session Scope:: <%=session.getAttribute("s") %> --%>
<!-- </h1> -->

<!-- <h1 style='color:blue;text-align:center'> -->
<%-- 	Application Scope:: <%=application.getAttribute("a") %> --%>
<!-- </h1> -->

<h1 style='color:blue;text-align:center'>
	Page Scope:: ${p}
</h1>

<h1 style='color:blue;text-align:center'>
	Request Scope:: ${requestScope.r}
</h1>

<h1 style='color:blue;text-align:center'>
	Application Scope:: ${applicationScope.r}
</h1>

<h1 style='color:blue;text-align:center'>
	The Request Object is :: ${request.method}<br/>
</h1>

<h1 style='color:blue;text-align:center'>
	The Session Object is :: ${session.id}<br/>
</h1>

<h1 style='color:blue;text-align:center'>
	The Request Object is :: ${pageContext.request.method}<br/>
</h1>

<h1 style='color:blue;text-align:center'>
	The Session Object is :: ${pageContext.session.id}<br/>
</h1>

<h1 style='color:blue;text-align:center'>
	The Username is :: ${initParam.user}<br/>
</h1>

<h1 style='color:blue;text-align:center'>
	The Password is :: ${initParam.pwd}<br/>
</h1>











