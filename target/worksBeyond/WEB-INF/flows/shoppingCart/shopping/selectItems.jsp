<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <a href="${flowExecutionUrl}&_eventId_submit">Submit 1</a>
 	<br>
 	<a href="<c:out value='${flowExecutionUrl}' />&_eventId=submit">Submit 2</a>
 	
 	
 		

</body>
</html>