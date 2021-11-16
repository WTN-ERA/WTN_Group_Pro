<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Registration</title>
    <link rel="icon" type="image/png" sizes="575x712" href="../assets/img/tech/logo.png">
    <link rel="icon" type="image/png" sizes="575x712" href="../assets/img/tech/logo.png">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito&amp;display=swap">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="../assets/css/styles.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
</head>

<body>
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
        <div class="container"><img data-bss-disabled-mobile="true" class="rubberBand animated" src="../assets/img/tech/logo.png" width="3.5%" height="auto"><a class="navbar-brand logo" id="href" href="../index.html">The Lost Tooth</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item" id="home"><a class="nav-link" href="../index.html">Home</a></li>
                    <li class="nav-item" id="services"><a class="nav-link" href="../services.html">SERVICES</a></li>
                    <li class="nav-item" id="about_us"><a class="nav-link" href="../about-us.html">About Us</a></li>
                    <li class="nav-item" id="contact_us"><a class="nav-link" href="../contact-us.html">Contact Us</a></li>
                    <li class="nav-item" id="login"><a class="nav-link" href="c_login.jsp">LogIn</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="page contact-us-page">
        <section class="clean-block clean-form dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Welcome!</h2>
                    <p>Please complete the form below so we can get you started</p>
                </div>
                <form action="register" name="regForm" onsubmit="return validatePass()" method="POST">

                    <div class="mb-3"><label class="form-label" for="firstname">First Name</label>
                        <input class="form-control" type="text" id="name" name="firstname"></div>
                    <div class="mb-3"><label class="form-label" for="lastname">Last Name</label>
                        <input class="form-control" type="text" id="lastName" name="lastname"></div>
                    <label class="form-label" for="email">Email</label>
                        <input class="form-control" type="text" id="email" name="email">
                    <div class="mb-3"></div><label class="form-label" for="password">Password</label>
                        <input class="form-control" type="password" id="password" name="password">
                    <div class="mb-3"></div><label class="form-label" for="confirmPassword">Confirm Password</label>
                        <input class="form-control" type="password" id="confirm_password">
                        <div class="mb-3"></div><button class="btn btn-primary mx-auto d-block btn-disabled" type="submit" onclick="javascript:validatePass()">Register</button>
                </form>
            </div>
        </section>
    </main>
    <footer class="page-footer dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="../index.html">Home</a></li>
                        <li><a href="../customer/register.jsp">Sign up</a></li>
                        <li><a href="../customer/c_login.jsp">Login</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>About us</h5>
                    <ul>
                        <li><a href="../index.html">The Lost Tooth</a></li>
                        <li><a href="../contact-us.html">Contact us</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="../404.html">Tech Support</a></li>
                        <li><a href="../404.html">24/7 Help Line</a></li>
                        <li><a href="../staff/s_login.html">Staff Area</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="../404.html">Terms of Service</a></li>
                        <li><a href="../404.html">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <p>Copyright © - THE LOST TOOTH - 2021<br></p>
        </div>
    </footer>
    
    <script>
        
        function validatePass(){

            if(document.regForm.password.value!=document.regForm.confirmPassword.value){
                alert("New Password and Confirm Password should be same! Re-enter confirm-password!");
            document.regForm.confirmPassword.value="";
            return false;
            }
            return true;
            }
    
    </script>

    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="../assets/js/script.min.js"></script>
</body>

</html>