<%@ page isELIgnored='false'%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix='sql'%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<sql:setDataSource url='jdbc:mysql://localhost:3306/jdbcsessions'
		user='root' password='Maru@841' driver='com.mysql.cj.jdbc.Driver'
		var='dataSource' />
	<sql:query var='result' dataSource='${dataSource}'>
		select id,name,age,address from students;
	</sql:query>
	<c:forEach var='row' items='${result.rows}'>
		${row.id}----${row.name}----${row.age}----${row.address}<br />
	</c:forEach>

	<%-- 	<sql:update dataSource='${dataSource}' var='count'> --%>
	<!-- 		INSERT INTO students(name, age, address) VALUES ('vijju',24,'anukunta'); -->
	<%-- 	</sql:update> --%>
	<%-- 	<h1 style='color:red;'> The no of rows updated :: ${count} </h1> --%>

	<%-- 	<sql:update dataSource='${dataSource}' var='count'> --%>
	<!-- 		INSERT INTO students(name, age, address) VALUES (?,?,?); -->
	<%-- 		<sql:param value='basa'/> --%>
	<%-- 		<sql:param value='23'/> --%>
	<%-- 		<sql:param value='nirmal'/> --%>
	<%-- 	</sql:update> --%>
	<%-- 	<h1 style='color:red;'> The no of rows updated :: ${count} </h1> --%>

	<sql:transaction dataSource='${dataSource}'>
		<sql:update>
			update students set name=?,age=?,address=? where id=?;
			<sql:param value='basakumar' />
			<sql:param value='26' />
			<sql:param value='adilabad' />
			<sql:param value='20' />
		</sql:update>
	</sql:transaction>
</body>
</html>