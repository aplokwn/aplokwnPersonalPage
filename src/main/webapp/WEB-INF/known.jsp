<%--
  Created by IntelliJ IDEA.
  User: aphks
  Date: 8/8/2022
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <!-- Import bootstrap Css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
          crossorigin="anonymous">

    <title>Testing</title>


</head>
<body>


Servlet communicated message to JSP:<br>
<c:forEach var="photo" items="${photoList}">

    <div class="page-wrapper">
        <!--Top Header-->
        <div class="top-header">
            <section class="py-5 text-center container">
                <div class="row py-lg-5">
                    <div class="col-lg-6 col-md-8 mx-auto">
                        <h1 class="fw-light">Welcome to my album page!</h1>
                        <p class="lead text-muted">Photography is one of my passion that I discovered after taking a photography course when I was a university student. </p>
                        <p class="lead text-muted">Capturing the wonderful moment in life, beauty of the nature, and recording great foods makes me feel excited because I can creatively capture different subjects.</p>
                        <p>
                            <a href="#" class="btn btn-dark my-2">Astrophotography & Night</a>
                            <a href="#" class="btn btn-warning my-2">Foodie</a>
                            <a href="#" class="btn btn-primary my-2">Landscape</a>
                            <a href="#" class="btn btn-success my-2">Plant</a>

                        </p>
                    </div>
                </div>
            </section>
        </div>


        <!--Body Content-->
        <!--album-->

        <div class="wrapper" id="album">
            <div class="container">
                <div class="row" data-masonry='{"percentPosition": true }'>
                    <div class="col-md-3">
                        <div class="card my-3">
                            <img src="${photo.getPath()}" width="250" height="220" alt="bike" />
                            <p >Bike Name: ${photo.getName()}</p>
                            <p >Bike Date: ${photo.getDate()}</p>
                            <p >Bike Location: ${photo.getLocation()}</p><div class="card-body">


                            </div>
                        </div>
                    </div>


                </div>
            </div>


        </div>



    </div>



    </div>




</c:forEach>






</body>
<!-- Masonry scripts-->
<script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous" async></script>
</html>
