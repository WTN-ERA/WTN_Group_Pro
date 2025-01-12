<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-us">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>My Profile</title>
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
    <main class="page contact-us-page">
        <section class="clean-block clean-form dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Welcome $fname!</h2>
                    <p>Please update your profile below</p>
                </div>
                <div class="row">
                    <div class="col">
                        <div>
                            <ul class="nav nav-tabs justify-content-center" role="tablist">
                                <li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-bs-toggle="tab" href="#personal_info">Personal Information</a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" href="#medical_info">Medical Information</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" role="tabpanel" id="personal_info">
                                    <div class="row">
                                        <div class="col">
                                            <form id="personal_info" class="mt-3">
                                                <h2 class="text-info">Personal Information</h2>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3"><label class="form-label" for="name">First Name</label><input class="form-control" type="text" id="name" name="name"></div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="mb-3"><label class="form-label" for="last_name">Last Name</label><input class="form-control" type="text" id="last_name" name="last_name"></div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col"><label class="form-label" for="idNumber">ID Number</label><input class="form-control" type="text" id="idNumber" name="idNumber">
                                                        <div class="mb-3"></div>
                                                    </div>
                                                    <div class="col"><label class="form-label" for="mstatus">Marital Status</label><select class="form-select" id="mstatus">
                                                            <option value="Single" selected="">Single</option>
                                                            <option value="Married">Married</option>
                                                            <option value="Divorsed">Divorsed</option>
                                                            <option value="Widowed">Widowed</option>
                                                        </select>
                                                        <div class="mb-3"></div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col"><label class="form-label" for="officeNumber">Office Telephone</label><input class="form-control" type="text" id="officeNumber" name="officeNumber">
                                                        <div class="mb-3"></div>
                                                    </div>
                                                    <div class="col"><label class="form-label" for="cellNumber">Cell</label><input class="form-control" type="text" id="cellNumber" name="cellNumber">
                                                        <div class="mb-3"></div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col"><label class="form-label" for="email">Update Email</label><input class="form-control" type="text" id="email" name="email">
                                                        <div class="mb-3"></div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col"><label class="form-label" for="password">Update Password</label><input class="form-control" type="email" id="password" name="password">
                                                        <div class="mb-3"></div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col"><button class="btn btn-primary mx-auto d-block mt-5" type="submit">Update</button></div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" role="tabpanel" id="medical_info">
                                    <div class="row">
                                        <div class="col">
                                            <form id="medical_info" class="mt-3">
                                                <h2 class="text-info">Medical Information</h2>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3"><label class="form-label" for="maid_name">Medical Aid</label><select class="form-select" id="maid_name">
                                                                <option value="Medical Aid 1" selected="">Medical Aid 1</option>
                                                                <option value="Medical Aid 2">Medical Aid 2</option>
                                                                <option value="Medical Aid 3">Medical Aid 3</option>
                                                            </select></div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="mb-3"><label class="form-label" for="maid_number">Membership Number</label><input class="form-control" type="text" id="maid_number" name="maid_number" required=""></div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col"><label class="form-label" for="dependent1">Dependents<br></label><input class="form-control" type="text" id="dependent1" name="dependent1"><input class="form-control mt-2" type="text" id="dependent2" name="dependent2"><input class="form-control mt-2" type="text" id="dependent3" name="dependent3">
                                                        <div class="mb-3"></div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3"><label class="form-label" for="nok">Next of Kin</label><input class="form-control" type="text" id="nok" name="nok"></div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="mb-3"><label class="form-label" for="nok_contact">Contact Number</label><input class="form-control" type="text" id="nok_contact" name="nok_contact"></div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3"><label class="form-label" for="nok_relation">Relationship</label><input class="form-control" type="text" id="nok_relation" name="nok_relation"></div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col"><a class="btn btn-primary mx-auto d-block mt-5" role="button" href="c_schedule.html" style="width: 200px;">Update &amp; Continue</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                        <li><a href="../customer/registration.html">Sign up</a></li>
                        <li><a href="../customer/c_login.jsp">Login</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>About us</h5>
                    <ul>
                        <li><a href="#">The Lost Tooth</a></li>
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
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="../assets/js/script.min.js"></script>
</body>

</html>