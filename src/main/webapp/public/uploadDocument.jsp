<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Document Manager</title>
</head>
<body>

<h1> Document Manager</h1>
<div ng-app="" ng-controller="validateCtrl">
<form:form method="post" action="save.html"  commandName="document"  ng-app=""  ng-controller="validateCtrl" name="myForm" novalidate="true" enctype="multipart/form-data" role="form">
 <div class="form form-group">
    <form:errors path="*" cssClass="error"/>
    <table id="uploadInfo">
    <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" class="form-control" name="name" ng-model="name" required="true" placeholder="Publication Name"/>
        <span style="color:red" ng-show="myForm.name.$dirty && myForm.name.$invalid">
        <span ng-show="myForm.name.$error.required">Publication name is required.</span>
        </span>
        </td> 
        
    </tr>
   <tr>
    	<td><form:label path="author">Author</form:label></td>
    	<td><form:input path="author" class="form-control" name="author" ng-model="author" required="true" placeholder="Author(s) Name"/>
    	<span style="color:red" ng-show="myForm.author.$dirty && myForm.author.$invalid">
    	<span ng-show="myForm.author.$error.required"> Author name is required</span>
    	</span>
    	</td>
    	
    
    </tr>
    <tr>
        <td><form:label path="description">Description</form:label></td>
        <td><form:textarea path="description" class="form-control" ng-model="description" rows="5" cols="100" maxlength="500"/>
        <p>Characters left: <span ng-bind="descriptionLeft()"></span></p>
        </td>
    </tr>
    
    
    <tr>
    	<td><form:label path="excerpt">Excerpt</form:label></td>
    	<td><form:textarea path="excerpt" class="form-control" ng-model="excerpt" rows="10" cols="100" maxlength="3000"/>
    	<p>Characters Left: <span ng-bind="excerptLeft()"></span></p>
    	</td>
    	
    </tr>
 
  <tr>
        <td><form:label path="content">Document</form:label></td>
        <td><input type="file" name="file" id="file" class="form-control"></input></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <input type="submit"  value="Add Document" ng-disabled="myForm.name.$dirty && myForm.name.$invalid ||
            myForm.author.$dirty && myForm.author.$invalid"/>
        </td>
    </tr>
</table>  
</div>
</form:form>

</div><!-- angularjs div -->
<br>

<br/>
<h3>Document List</h3>
<c:if  test="${!empty documentList}">
<table class="table table-hover">
<tr>
    <th>Name</th>
    <th>Description</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${documentList}" var="document">
    <tr>
        <td width="100px">${document.name}</td>
        <td width="250px">${document.description}</td>
        
        <td width="20px">
            <a href="${pageContext.request.contextPath}/download/${document.id}.html">
            <span class="glyphicon glyphicon-save" title="Download this document"></span></a> 
         
            <a href="${pageContext.request.contextPath}/remove/${document.id}.html"
                onclick="return confirm('Are you sure you want to delete this document?')">
                <span class="glyphicon glyphicon-remove" title="Delete this document"></span>
                </a> 
        </td>
    </tr>
</c:forEach>
</table>
</c:if>

<script>
function validateCtrl($scope){
	
	$scope.description = "";
	$scope.excerpt = "";
	$scope.descriptionLeft = function() {return 500 - $scope.description.length;};
	$scope.excerptLeft = function() {return 3000 - $scope.excerpt.length;};

	
}

</script>

</body>
</html>