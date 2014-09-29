<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Search Publications</title>
</head>
<body>

<div class="container">
	<div align="center">
	<h1> Search Publications</h1>
	</div>
		<div align="center">
			<form:form method="post" action="search.html" commandName="search" role="form">
				<form:input path="name" cols="300" />
			
			
				<input type="submit" value="search">
				
			</form:form>
		</div>
		
</div>		
		
		<h3>Document Search Results</h3>

<c:if  test="${!empty publicationList}">
<table class="table table-hover">

<c:forEach items="${publicationList}" var="document">
    <tr>
       <td width="100px">
        <p><a href="${pageContext.request.contextPath}/publication/${document.id}.html">${document.name}</a></p>
        	<p>${document.author}</p>
          <p>${document.description}</p> 
       </td>
   </tr>
</c:forEach>
</table>
</c:if>


</body>
</html>