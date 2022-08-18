<%--
  Created by IntelliJ IDEA.
  User: aphks
  Date: 15/8/2022
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>

    <!-- Import bootstrap Css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
          crossorigin="anonymous">

</head>

<body>
<!-- Top navigation bar -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand mb-1 fs-3">
            <img src="resource/icon/a.png" alt="" width="35" height="35" class="d-inline-block align-text-bottom">
            Port::folio</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active mb-1 fs-4"
                                        aria-current="page" href="index.jsp">
                    <img src="resource/icon/home.png" alt="" width="30" height="30" class="d-inline-block align-text-bottom"> Home</a></li>
                <li class="nav-item"><a class="nav-link  mb-1 fs-4" href="index.jsp#aboutme">
                    <img src="resource/icon/aboutme.png" alt="" width="30" height="30" class="d-inline-block align-text-bottom"> About Me</a>
                </li>
                <li class="nav-item"><a class="nav-link mb-1 fs-4" href="index.jsp#projects">
                    <img src="resource/icon/project.png" alt="" width="30" height="30" class="d-inline-block align-text-bottom"> Projects</a>
                </li>
                <li class="nav-item"><a class="nav-link mb-1 fs-4" href="passion">
                    <img src="resource/icon/flame.png" alt="" width="30" height="30" class="d-inline-block align-text-bottom"> Passion</a>

                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle mb-1 fs-4" href="#"
                       id="navbarDropdownMenuLink" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="resource/icon/resume.png" alt="" width="30" height="30" class="d-inline-block align-text-bottom">  Resume
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="resource/pdf/blank.pdf">PDF</a></li>

                    </ul></li>
            </ul>
        </div>
    </div>
</nav>


</body>
</html>
