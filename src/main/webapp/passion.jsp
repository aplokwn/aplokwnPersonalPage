<%--
  Created by IntelliJ IDEA.
  User: aphks
  Date: 29/5/2022
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>

    <%@ include file="meta.jsp"%>

    <title>APort::folio | Passion</title>
    <!-- Import local CSS -->
    <link rel="stylesheet" href="css/passionStyle.css" type="text/css"></link>

</head>
<body>
<header>
    <%@ include file="header02.jsp"%>
</header>

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

                    <form method="POST" action="passion">
                    <button name="photoType" type="submit" class="btn btn-secondary my-2" value="1">Architecture</button>
                    <button name="photoType" type="submit" class="btn btn-dark my-2" value="2">Astrophotography & Night</button>
                    <button name="photoType" type="submit" class="btn btn-warning my-2" value="3">Foodie</button>
                    <button name="photoType" type="submit" class="btn btn-light my-2" value="4">Landscape</button>
                    <button name="photoType" type="submit" class="btn btn-success my-2" value="5">Plant</button>
                    <button name="photoType" type="submit" class="btn btn-primary my-2" value="0">Portrait</button>
                    <button name="photoType" type="submit" class="btn btn btn-danger my-2" value="">Show All</button>
                    </form>





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
                    <c:forEach var="photo" items="${photoList}">
                    <div class="col-md-3">
                        <div class="card my-3">
                            <img src="${photo.getPath()}" class="img-fluid" alt="thumbnail">
                            <div class="card-body">
                                <h4 class="card-title">${photo.getName()}</h4>
                                <p class="card-text">${photo.getDate()}</p>
                                <p class="card-text">${photo.getLocation()}</p>

                            </div>
                        </div>
                    </div>
                    </c:forEach>



                </div>
            </div>


        </div>



    </div>



</div>







<footer id="footer">
    <%@ include file="footer.jsp"%>
</footer>


<!-- Masonry scripts-->
<script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous" async></script>

</body>
</html>
