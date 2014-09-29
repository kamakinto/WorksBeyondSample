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

<link href="<c:url value='/resources/css/project_style.css'  />" rel="stylesheet"/>

<div class="container">
<div class="masthead">
  <h3>WorksBeyond</h3>
 </div>
<!-- Static navbar -->
    <div class="navbar navbar-default cust-proxima" role="navigation">
        <div class="container-fluid">
 <!--            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span>
 <span class="icon-bar"></span>

                    <span class="icon-bar"></span> <span class="icon-bar"></span>

                </button> <a class="navbar-brand" href="#" contenteditable="false"></a>

            </div> -->
            <div class="navbar-collapse collapse cust-proxima">
                <ul class="nav navbar-nav navbar-default">
                    <li><a href="<c:url value="/"/>">Home</a></li>
                    <li><a href="<c:url value="/ourStory"/>" class=""> Our Story </a></li>
                    <li><a href="<c:url value="/whoWeServe"/>"> Who We Serve</a></li>
                    <li><a href="<c:url value="/requestServices"/>">Request Services</a></li>
                    <li><a href="<c:url value="/search"/>"> Search Publications</a></li>
                 <li><a href="<c:url value="/faq"/>">FAQ</a>
                    </li>
                    <li><a href="<c:url value="/contactUs"/>">Contact Us</a>
                    </li>
                    <li><a href="<c:url value="/login"/>">Login</a>
                    </li>
                </ul>
               
                
            </div>
            <!--/.nav-collapse -->
        </div>
        <!--/.container-fluid -->
    </div>
</div>
<div id="push" class=""></div>
<div class="row"></div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
