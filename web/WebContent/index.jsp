<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Messiah</title>
    <link rel="stylesheet" href="bootstrap-4.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/fixed.css">
    <link rel="javascript" href="react.js">

</head>

<body data-spy="scroll" data-target="#navbarResponsive">

    <!--   Start Home Section  -->
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
                        <a class="nav-link" href="#Form">Hire Workers</a>
                    </li>

                    

                    <li class="nav-items">
                        <a class="nav-link" href="#Login">Login</a>
                    </li>

                    <li class="nav-items">
                        <a class="nav-link" href="#Signin">Signin</a>
                    </li>
                </ul>

            </div>
        </nav>
    </div>
    <!--    End Home Section   -->
    <!--  Start of Landing Page-->
    <div class="landing">
        <div class="home-wrap">
            <div class="home-inner">
            </div>
        </div>
    </div>

    <div class="caption text-center">
        <h1>Welcome to Messiah</h1>
        <h3>Lets get started</h3>
        <a class="btn btn-outline-light btn-lg" href="#Form">Get Started</a>
    </div>

    <!--  End Of Landing Page-->
    <!--   Start Form Section  -->
    <div id="Form" class="offset">

        <h1 align="centre" ><a href="./Hardy.jsp">Describe Your Needs</a></h1>


    </div>
    <!----------------------------------------------------------------------------------------------------------------------->
    <!--    End Form Section   -->
    <!--   Start Login Section  -->
    <div id="Login" class="offset">
        <div class="fixed-background">
            <div class="row dark">
                <div class="col-12 narrow text-center">
                    <h1>Already a user!!!</h1>
                    <h3>Lets Go</h3>
                    <br><br><br><br>
                    <a class="btn btn-secondary btn-lg" onclick="document.getElementById('id01').style.display='block'">Login</a>

                </div>
            </div>
            <div class="fixed-wrap">
                <div class="fixed">
                </div>
            </div>
        </div>
        <div id="id01" class="modal">

            <form class="modal-content animate" action="<%= request.getContextPath() %>/login"  method="post">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <label for="uname"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="username" required>

                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="password" required>

                    <button type="submit">Login</button>
                    <label>
                        <input type="checkbox" checked="checked" name="remember"> Remember me
                    </label>
                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                    <span class="psw">Forgot <a href="#">password?</a></span>
                </div>
            </form>
        </div>

    </div>
    <!--    End Login Section   -->
    <!--   Start Signin Section  -->
    <div id="Signin" class="offset">
        <form id="regForm" action="<%= request.getContextPath() %>/registration" method="post">

            <h1>Register:</h1>
            <br />
            <br>

            <!-- One "tab" for each step in the form: -->
            <div class="tab">
                Name:
                <p><input placeholder="First name..." name="first_name" oninput="this.className = ''"></p>
                <p><input placeholder="Last name..." name="last_name" oninput="this.className = ''"></p>

            </div>

            <div class="tab">
                Contact Info:
                <p><input placeholder="E-mail..." name="email" oninput="this.className = ''"></p>
                <p><input placeholder="Phone..." name="phone" oninput="this.className = ''"></p>
            </div>


            <div class="tab">
                Login Info:
                <p><input placeholder="Username..." name="username" oninput="this.className = ''"></p>
                <p><input placeholder="Password..." name="password" oninput="this.className = ''"></p>
            </div>

            <br>
            <div style="overflow:auto;">
                <div style="float:right;">
                    <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                    <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                 
                </div>
            </div>

            <!-- Circles which indicates the steps of the form: -->
            <div style="text-align:center;margin-top:40px;">
                <span class="step"></span>
                <span class="step"></span>
                <span class="step"></span>
            </div>

        </form>
    </div>
    <!--    End Signin Section   -->
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
            © 2020 Copyright:
            <a class="dark-grey-text" href="#Home"> Messiah.com</a>
        </div>
        <!-- Copyright -->

    </footer>


    <!-- Footer -->
    <!--- Script Source Files -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.5.0/js/all.js"></script>

    
    <!-----------For resgistration and login section    ------------->
    <script src="react.js"></script>

    <!--- End of Script Source Files -->
</body>



</html>











