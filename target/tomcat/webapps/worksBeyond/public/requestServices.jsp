
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<div class="container">
Request Services info
<a href="<c:url value="/selectItems"/>"> flow Start</a>

<br>
<input type="submit" name="_eventId_nextPage" value="Next Page"/>
<br>
<a href="<c:url value="/uploadDocument"/>"> Upload Document</a>
 </div>
 
 <div ng-app="">
 <p>Name: <input type="text" ng-model="name"></p>
 
 <p ng-bind="name"></p>
 
 
 
 
 
 </div>
















<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>