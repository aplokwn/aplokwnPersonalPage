<%--
  Created by IntelliJ IDEA.
  User: aphks
  Date: 2/7/2022
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <%@ include file="meta.jsp" %>
    <title>APort::folio | Project Summary, Alberta Bike Swap</title>

    <!-- Import local CSS -->
    <link rel="stylesheet" href="css/projectABSstyle.css" type="text/css">

</head>
<body>
<header>
    <%@ include file="header.jsp" %>
</header>
<div class="wrapper">

    <div class="page-header">
        <div class="container">
            <div class="header-caption">
                <h2> Project Overview - Alberta Bike Swap </h2>
            </div>
        </div>


    </div>

    <div class="summary" id="summary">
        <div class="container">
            <div class="stacklist text-center">
                <div class="card-group">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Type</h5>
                            <p class="card-text"> Non-profit organization's official website </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Stack</h5>
                            <p class="card-text"><b>Frontend:</b> Html + CCS + Javascript + Bootstrap + JSP <br/>
                                <b>Backend:</b> Java + Java Servlet + Json API
                            </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Code + Live Demo</h5>
                            <li class="list-group-item"><a href="https://github.com/aplokwn/ABS2022_June"
                                                           target="_blank">Git</a></li>
                            <li class="list-group-item"><a href="https://sampleabs.herokuapp.com/" target="_blank">Live
                                Demo (herokuapp)</a> <br/>(may takes about 15 seconds to load.)
                            </li>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="content">
                <h5 class="featurette-heading display-6 fw-bold subtitle"> Project Purpose Goal</h5>

                <p class="subcontent">This project aims to build an official website for Alberta Bike Swap to display
                    general event information and act as a bike
                    inventory display portal for buyers to speed up the purchasing process.</p>

                <hr class="featurette-divider">

            </div>


            <div class="content">
                <h5 class="featurette-heading display-6 fw-bold subtitle"> Web Stack and Explanation </h5>
                <ul>
                    <li> Built the project using <b>JSP</b> + <b>Java Servlet</b> because it is easy to maintain, can
                        handle dynamic data and has better security.
                    </li>
                    <li>A backend server is required, and <b>Tomcat</b> is the application server in this project.
                    </li>
                    <li>Bike inventory data is handled through <b>Json</b> and a <b>JSON API</b>, <b>Gson</b>; then,
                        data will be processed through the servlet to generate data back to the web application.
                    </li>
                </ul>
                <br/>


                <hr class="featurette-divider">
            </div>

            <div class="content">
                <h5 class="featurette-heading display-6 fw-bold subtitle"> Problem and Thought Process</h5>

                <p class="subcontent">This project has undergone different development stages to meet the client's
                    requirements. The original solution of this project is to build a management system using the <b>Oracle
                        database</b> to support data processing and purchasing processes.
                    But the client had a plan to develop a supporting system in <b>PHP</b> and wanted the system to be
                    separate from the website. The major problem became how to handle data communication between the two
                    systems.</p>
                <p class="subcontent">To reduce the communication complexity and improve data querying, using
                    <b>JSON</b> is the best solution because both systems don't need to communicate with the other
                    directly.
                    Low coupling between both systems reduces errors and the complexity of future maintenance,
                    especially if they are built with different languages.</p>

                <p class="subcontent">Download a PDF format poster which associate with the event's information page is
                    implemented with <b>javascript</b> and <b>jsPDF</b>, in order to provide more convenience way for
                    participants to share information across social media.
                    Difficulties during building this function:</p>
                <ul>
                    <li>
                        How the webpage has build-up doesn't fit with the common method, simply using HTML tags to get
                        the webpage content and then converting them into PDF.
                    </li>
                    <li>
                        Different location pictures' path also need to be obtained separately due to the webpage build.
                    </li>
                    <li>
                        During the process of loading pictures, may get errors like <b>base64 error</b> and <b>cross-site
                        blocking</b>.
                    </li>
                </ul>
                <p class="subcontent">Using the <b>onload method (img.onload = function(){})</b> with crossorigin Attribute
                <b>crossOrigin (img.crossOrigin)</b> to get the <b>jfPDF</b> obtains the desired picture to reduce extra picture
                conversion and cross-site blocking. </p>


                <div class="displaybox">
                    <div class="card text-white bg-dark mb-3">
                        <div class="card-header">
                            Code Display (section)
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">locationsPoster.js </h5>
                            <p class="card-text">
                            <pre>
        img.onload = function() {
        pdf.setFont('Times', 'Roman');
        pdf.addImage(this, 'JPEG', 10, 10, 595.28, 592.28/2 );
        pdf.setFontSize(40);
        pdf.text(docTitle, 100, 350);
        pdf.setFontSize(15);
        pdf.text(whereTitle, 85, 400);// (horizontal, vertical from 0)
        pdf.text(whereInfo, 150, 400);// (same line -> Where: address )
        pdf.text(cityTitle, 155, 430);

        pdf.text(whenTitle, 85, 480);
        pdf.text(whenInfo, 150, 480);

        pdf.text(consignTitle, 85, 530);
        pdf.text(consignInfo, 150, 530);

        pdf.text(buyTitle, 85, 580);
        pdf.text(buyInfo, 150, 580);

        pdf.text(donateTitle, 85, 630);
        pdf.text(donateInfo, 150, 630);

        pdf.save('absEvent.pdf');

        };

        img.crossOrigin = "";

        img.src = picture_url;

    }
                    </pre>

                            </p>
                        </div>
                    </div>
                </div>


                <p class="subcontent">The main goal of the project was to make it scalable and flexible enough so that
                    it would support future integration with the existing system to monetize the user base.</p>

                <hr class="featurette-divider">

            </div>


            <div class="content">
                <h5 class="featurette-heading display-6 fw-bold subtitle">Lessons Learned</h5>
                <p class="subcontent">The <b>PHP</b> supporting system is unavailable during the webpage development, so
                    we can only have a simulation for the final deliverable.
                    However, we can still take advantage of picking some common language independence stacks for data
                    exchange because this helps reduce development's complexity and provide better integration.
                    This opportunity allowed me to learn more about better system design. Carefully picking an
                    appropriate stack is critical because it may lead to total re-coding during the development cycle.
                </p>
            </div>

        </div>
    </div>
</div>

<footer id="footer">
    <%@ include file="footer.jsp" %>
</footer>

</body>
</html>
