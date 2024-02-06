
<%
pageContext.setAttribute("p", "page");
request.setAttribute("r", "request");
session.setAttribute("s", "session");
application.setAttribute("a", "application");
// pageContext.setAttribute("p", "page");
// request.setAttribute("p", "request");
// session.setAttribute("p", "session");
// application.setAttribute("p", "application");
pageContext.forward("./disp.jsp");
%>