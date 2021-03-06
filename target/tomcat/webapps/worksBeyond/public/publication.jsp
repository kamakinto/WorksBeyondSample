<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<title><c:out value="${publication.name}"></c:out></title>
<body>

<div class="container">
	<div class="row">  
  		<div class="col-md-8">

				<div class="page-header">
  					<h1><c:out value="${publication.name}"></c:out> <small>by <c:out value="${publication.author}"></c:out></small></h1>
				</div>
      </div><!--end of sample header-->
      
      <div class="col-md-4">
      <br>
      <br>
        <div class="row">
          	<div class="col-md-4">
       		 <a href="#" class="thumbnail">
      		<img data-src="holder.js/100%x180" alt="...">
    		</a>
          </div>
          <div class="col-md-8">This is the sample text about the author, just a quick bio </div>
        </div>
      </div>
 </div> <!--end of header row-->
  
  <div class="row">
    <div class="col-md-3">
      Download
      <br>
      <br>
      Add to Favorites
      <br>
      <br>
      share
    </div>
     

    
    <div class="col-md-9">
      <h2>Description</h2>
      <p> <c:out value="${publication.description}"></c:out>Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. </p>
      <h2>Excerpt</h2>
    <p><c:out value="${publication.excerpt}"></c:out>Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. Sample text I am using this text to test the sample information that will
      be placed within each section. </p>
      
    </div>
    
    
  </div><!--end of side bar row-->
  
  
  
  
</div><!--end of container--> 
</body>
</html>
