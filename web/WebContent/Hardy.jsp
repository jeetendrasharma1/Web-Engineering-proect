<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> hardy</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="javascript" href="./js/pleasebhai.js">
    <script type='text/javascript' src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/new.css">
    <link rel="javascript" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">


</head>
<body>


    <div id="Home">

        <!-- Navigator -->
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="./index.jsp"><img src="./css/Photos/hardy.png" width="60px" height="50px" />essiah</a>
            <button class="navbar-toggler" type="button" data-target="#navbarResponsive" data-toggle="collapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-items">
                        <a class="nav-link" href="./index.jsp">Home</a>
                    </li>

                    <li class="nav-items">
                        <a class="nav-link" href="./index.jsp#Form">Form</a>
                    </li>

                    <li class="nav-items">
                        <a class="nav-link" href="./Activity.html">Activity</a>
                    </li>


                    <li class="nav-items">
                        <a class="nav-link" href="./index.jsp#Login">Login</a>
                    </li>

                    <li class="nav-items">
                        <a class="nav-link" href="./index.jsp#Signin">Signin</a>
                    </li>
                </ul>

            </div>
        </nav>
    </div>














    <!-----------------------------------------      form                      -->
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-11 col-sm-9 col-md-7 col-lg-6 col-xl-5 text-center p-0 mt-3 mb-2">
                <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                    <h2 id="heading">Describe Your Needs</h2>
                    <p>Fill all form field to go to next step</p>
                    <form id="msform">
                        <!-- progressbar -->
                        <ul id="progressbar">
                            <li class="active" id="account"><strong>Location</strong></li>
                            <li id="personal"><strong>Requirements</strong></li>
                            <li id="payment"><strong>Estimate</strong></li>
                            <li id="confirm"><strong>Finish</strong></li>
                        </ul>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                        </div> <br> <!-- fieldsets -->
                        <fieldset>
                            <div class="form-card">
                                <div class="row">
                                    <div class="col-7">
                                        <h2 class="fs-title">Location Information:</h2>
                                    </div>
                                    <div class="col-5">
                                        <h2 class="steps">Step 1 - 4</h2>
                                    </div>
                                </div>
                                <label class="fieldlabels">State: *</label>
                                <select name="dropdown" required>
                                    <option value="None" selected>Select your State....</option>
                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                </select>

                                <label class="fieldlabels">City: *</label>
                                <select name="dropdown">
                                    <option value="None" selected>Select your City....</option>
                                    <option value="Indore">Indore</option>
                                </select>
                                <label class="fieldlabels">Address: *</label>
                                <textarea rows="5" name="address" placeholder="Plot number , Street name , Area name , Pincode... "></textarea>

                            </div> <input type="button" name="next" class="next action-button" value="Next" />
                        </fieldset>
                        <fieldset>
                            <div class="form-card">
                                <div class="row">
                                    <div class="col-7">
                                        <h2 class="fs-title">Specify the requirements:</h2>
                                    </div>
                                    <div class="col-5">
                                        <h2 class="steps">Step 2 - 4</h2>
                                    </div>
                                </div>
                                <label class="fieldlabels">Skill type: *</label>

                                <select name="dropdown">
                                    <option value="Construction Worker" selected>Construction Worker</option>
                                    <option value="Plumber">Plumber</option>
                                    <option value="Carpenter">Carpenter</option>
                                    <option value="Painter">Painter</option>
                                </select>

                                <label class="fieldlabels">Worker required: *</label>
                                <input type="text" name="workers" placeholder="Eg. 5" />

                                <label class="fieldlabels">Work Type: *</label>
                                <textarea rows="5" name="address" placeholder="Describe the work briefly... "></textarea>
                            </div>
                            <input type="button" name="next" class="next action-button" value="Next" />
                            <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                        </fieldset>
                        <fieldset>
                            <div class="form-card">
                                <div class="row">
                                    <div class="col-7">
                                        <h2 class="fs-title">Estimate Recipt:</h2>
                                    </div>
                                    <div class="col-5">
                                        <h2 class="steps">Step 3 - 4</h2>
                                    </div>
                                </div>
                                <label class="fieldlabels">Work Type:</label>
                                <input type="text" id="country" name="country" value="plumber" readonly>


                                <label class="fieldlabels">Date:</label>
                                <input type="text" id="country" name="country" value="26-09-2011" readonly>
                                <label class="fieldlabels">Cost Estimation:</label>
                                <input type="text" id="country" name="country" value="5000$" readonly>
                                <label class="fieldlabels">Service Charge:</label>
                                <input type="text" id="country" name="country" value="20$" readonly>

                                <label class="fieldlabels">Discount coupon:</label>
                                <input type="text" id="country" name="country" value="B?haiplease" readonly>
                                <label class="fieldlabels">Total Charge:</label>
                                <input type="text" id="country" name="country" value="5020$" readonly>

                            </div>
                            <input type="button" name="next" class="next action-button" value="Submit" />
                            <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                        </fieldset>
                        <fieldset>
                            <div class="form-card">
                                <div class="row">
                                    <div class="col-7">
                                        <h2 class="fs-title">Finish:</h2>
                                    </div>
                                    <div class="col-5">
                                        <h2 class="steps">Step 4 - 4</h2>
                                    </div>
                                </div> <br><br>
                                <h2 class="purple-text text-center"><strong>SUCCESS !</strong></h2> <br>
                                <div class="row justify-content-center">
                                    <div class="col-3"> <img src="https://i.imgur.com/GwStPmg.png" class="fit-image"> </div>
                                </div> <br><br>
                                <div class="row justify-content-center">
                                    <div class="col-7 text-center">
                                        <h5 class="purple-text text-center">You Have Successfully Placed Your Request</h5>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-----------------------------------------      form       ENDDDDD               -->
    <!---------------------------          footer -------------------------------------->

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








    <!---------------------
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"></script>

        -->
    <script type='text/javascript' src="./js/pleasebhai.js"></script>

</body>
</html>