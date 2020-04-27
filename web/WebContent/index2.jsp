<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Messiah</title>
    <link rel="stylesheet" href="bootstrap-4.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style2.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 40%;
        }
    </style>
</head>

<body>


    <div id="Home">

        <!-- Navigator -->
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="#"><img src="./css/Photos/hardy.png" width="60px" height="50px" />essiah</a>
            <button class="navbar-toggler" type="button" data-target="#navbarResponsive" data-toggle="collapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-items">
                        <a class="nav-link" href="#Home">Home</a>
                    </li>

                    <li class="nav-items">
                        <a class="nav-link" href="Hardy.jsp">Hire Workers</a>
                    </li>

                    <li class="nav-items">
                        <a class="nav-link" href="index2.jsp">History</a>
                    </li>


                    <li class="nav-items">
                        <a class="nav-link" href="#Logout">Logout</a>
                    </li>
                </ul>

            </div>
        </nav>
    </div>

    <!--    End Home Section   -->
    <!------------------------Activity   Section ------------------->

    <div class="hero-image">
        <div class="hero-text">
            <h1>Welcome <c:out value="${user.name }"/></h1>
        </div>
    </div>

    <div class="jumbotron text-center" style="margin-bottom:0">
        <div class="container" style="margin-top:30px">
            <div class="row text-md-left">
                <div class="col-md-3">
                    <h1>Profile</h1>
                    <img src="./css/Photos/hero.jpg" width="200f" height="200" alt="Profile Photo" style="padding-bottom:1rem;">



                    <h5>NAME :<c:out value="${user.name}" /> </h5>
                    <h5>E-MAIL :<c:out value="${user.email}" /></h5>
                    <h5>PHONE NO :<c:out value="${user.phone}" /></h5>
                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="Hardy.jsp" style="padding:0.8rem;text-align:center;">New request</a>
                        </li>
                    </ul>
                    <hr class="d-sm-none">
                </div>

                <div class="col-sm-8 text-center">
                    <div class="Me" style="align-content:center;padding-left:5rem;">
                        <h2>REQUESTS</h2>


                        <div class="Me" style="align-content:center;padding-top:2rem;">
                            <table class="table table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">First</th>
                                        <th scope="col">Last</th>
                                        <th scope="col">Skill Type</th>
                                        <th scope="col">Workers</th>
                                        <th scope="col">Status</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>Plumber</td>
                                        <td>5</td>
                                        <td>Pending</td>
                                    </tr>

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!------------------------   End     Activity   Section    ------------------->
    <!--------------------------Window Slider---------------------->
    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./css/Photos/Working.jpg" alt="Construction Worker" >
                <div class="carousel-caption">
                    <h1>Construction Worker</h1>
                    
                </div>
            </div>
            <div class="carousel-item">
                <img src="./css/Photos/plumbers.jpg" alt="Chicago"  >
                <div class="carousel-caption">
                    <h1>Plumber</h1>
                </div>
            </div>
            <div class="carousel-item">
                <img src="./css/Photos/carpenter.jpg" alt="New York">
                <div class="carousel-caption ">
                    <h1>Carpenter</h1>

             </div>

            </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
        </div>

    <!--------------------------Window Slider---------------------->
    <!-- Footer -->


    <footer class="page-footer font-small blue-grey lighten-5" style="background-color: black;">

        <!-- Footer Links -->
        <div class="container text-center text-md-left mt-5" style="background-color: black;">

            <!-- Grid row -->
            <div class="row mt-3 dark-grey-text">

                <!-- Grid column -->
                <div class="col-md-4 col-lg-4 col-xl-3 mb-4">

                    <!-- Content -->
                    <h6 class="text-uppercase font-weight-bold">Messiah</h6>
                    <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p>
                        Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
                        consectetur
                        adipisicing elit.
                    </p>

                </div>

                <!-- Grid column -->
                <!-- Grid column -->
                <div class="col-md-4 col-lg-2 col-xl- mx-auto mb-4">

                    <!-- Links -->
                    <h6 class="text-uppercase font-weight-bold">Useful links</h6>
                    <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p>
                        <a class="dark-grey-text" href="#!">Your Account</a>
                    </p>
                    <p>
                        <a class="dark-grey-text" href="#!">Become an Affiliate</a>
                    </p>
                    <p>
                        <a class="dark-grey-text" href="#!">Shipping Rates</a>
                    </p>
                    <p>
                        <a class="dark-grey-text" href="#!">Help</a>
                    </p>

                </div>
                <!-- Grid column -->
                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                    <!-- Links -->
                    <h6 class="text-uppercase font-weight-bold">Contact</h6>
                    <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p>
                        <i class="fas fa-home mr-3"></i> New York, NY 10012, US
                    </p>
                    <p>
                        <i class="fas fa-envelope mr-3"></i> info@example.com
                    </p>
                    <p>
                        <i class="fas fa-phone mr-3"></i> + 01 234 567 88
                    </p>
                    <p>
                        <i class="fas fa-print mr-3"></i> + 01 234 567 89
                    </p>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Links -->
        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">
            � 2020 Copyright:
            <a class="dark-grey-text" href="#Home"> Messiah.com</a>
        </div>
        <!-- Copyright -->

    </footer>


</body>
</html>
