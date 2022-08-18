<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <%@ include file="meta.jsp"%>

    <title>APort::folio | April Wan | Software Developer</title>

    <!-- Import local CSS -->
    <link rel="stylesheet" href="css/indexStyle.css" type="text/css">

</head>

<body>

<header>
    <%@ include file="header.jsp"%>
</header>
<!-- Page Header -->

<div class="wrapper">
    <div class="page-header" style="height: 600px;">
        <div class="container">
            <br />
            <div class="row">
                <div class="col-md-8 section1">
                    <h1 class="display-2 fw-normal text-white">Hello. I am April,
                    </h1>
                    <h1 class="display-2 fw-normal text-white">a software
                        developer.</h1>
                    <p class="lead fs-3 fw-normal text-white">I love problem
                        solving, and love creation!</p>

                </div>
            </div>
        </div>
    </div>

    <!-- About -->
    <div class="aboutme" id="aboutme">
        <div class="container">
            <hr class="featurette-divider">
            <br />
            <div class="row featurette">
                <div class="col-md-7">
                    <h1 class="featurette-heading display-2 fw-bold">About Me</h1>
                    <br />
                    <blockquote class="blockquote">
                        <p>I devote myself to being a software developer because it
                            lets me use my creative and problem-solving skills as I believe
                            design thinking can be adapted into building app/web/projects!</p>
                    </blockquote>
                    <p class="lead">Software development wasn't my initial career
                        path, but I'm glad I discovered it. I sought more flexibility,
                        possibility, and improvement for projects and works during my
                        marketing and graphic design career. In the end, all the
                        experience points me to the same goal: software development.</p>


                    <p class="lead">I'm a self-motivated learner with strong
                        organization, time management and communication skills.</p>
                </div>

            </div>
            <br/>
            <hr class="featurette-divider">
        </div>
    </div>



<!-- Project -->
<div class="projects" id="projects">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h1 class="display-2 fw-bold text-dark">Projects</h1>
                <br/>
            </div>
        </div>
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
                <div class="col">
                    <div class="card shadow-sm">
                        <img class="bd-placeholder-img card-img-top" width="100%"
                             height="225" src="resource/images/ABSlogo.png">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#55595c" />

                        <div class="card-body">
                            <h5>Alberta Bike Swap</h5>
                            <p class="card-text">This is a Java with Mavel web application which act as an infornation display for the Alberta Bike Swap Event,
                                and also act as a bike inventory display platform during the event.  </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button"
                                            class="btn btn-sm btn-outline-secondary">
                                            <a href="https://sampleabs.herokuapp.com/" target="_blank">Live Demo</a></button>
                                    <button type="button"
                                            class="btn btn-sm btn-outline-secondary" >
                                        <a href="projectABS.jsp">Overview</a></button>
                                    <button type="button"
                                            class="btn btn-sm btn-outline-secondary"> <a href="https://github.com/aplokwn/ABS2022_June" target="_blank">Git</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">

                            <span class="badge bg-primary text-wrap">HTML</span>
                            <span class="badge bg-primary text-wrap">Java</span>
                            <span class="badge bg-primary text-wrap">Bootstrap</span>
                            <span class="badge bg-primary text-wrap">Javascript</span>


                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <img class="bd-placeholder-img card-img-top" width="100%"
                             height="225" src="resource/images/ppp01.png">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#55595c" />


                        <div class="card-body">
                            <h5>Cross-store Item Record Sysytem (Coming Soon)</h5>
                            <p class="card-text">This is a Spring Boot + Vue web application provide CURD service on dish items in different restaurants for admin purpose. </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button"
                                            class="btn btn-sm btn-outline-secondary">Link</button>
                                    <button type="button"
                                            class="btn btn-sm btn-outline-secondary">Overview</button>
                                    <button type="button"
                                            class="btn btn-sm btn-outline-secondary">Git</button>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <span class="badge bg-primary text-wrap">HTML</span>
                            <span class="badge bg-primary text-wrap">Spring Boot</span>
                            <span class="badge bg-primary text-wrap">Vue</span>
                            <span class="badge bg-primary text-wrap">Bootstrap</span>
                            <span class="badge bg-primary text-wrap">SQL</span>
                        </div>
                    </div>
                </div>




            </div>

        </div>
    </div>

</div>


</div>
<footer id="footer">
    <%@ include file="footer.jsp"%>
</footer>



</body>
</html>