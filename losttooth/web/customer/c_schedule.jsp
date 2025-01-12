<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>My Scheduling</title>
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
            <div class="block-heading">
                <h2 class="text-info">My Dashboard</h2>
            </div>
            <div>
                <ul class="nav nav-tabs justify-content-center" role="tablist">
                    <li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-bs-toggle="tab" href="#tab-1">Appointment Schedule</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" href="#tab-2">Scheduled Appointments</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" href="#tab-3">My Profile</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade show active" role="tabpanel" id="tab-1">
                        <div class="container">
                            <div class="block-heading">
                                <h2 class="text-info">Schedule Your Next Appointment</h2>
                            </div>
                            <form>
                                <div class="mb-3"><label class="form-label" for="date">Date</label><input class="form-control" type="date" id="date" name="date"></div>
                                <div class="mb-3"><label class="form-label" for="time">Time</label><input class="form-control" type="time" id="time" name="time"></div><label class="form-label" for="doctor">Doctor</label><select class="form-select" id="doctor" placeholder="select a doctor!" required="" value="Pick me...">
                                    <optgroup label="Doctors at your service...">
                                        <option value="Doctor 1">Dr. Bryce Larkin</option>
                                        <option value="Doctor 2">Dr. Charles Carmichael</option>
                                        <option value="Doctor 3">Dr. Sarah Walker</option>
                                    </optgroup>
                                </select>
                                <div class="mb-3"></div><button class="btn btn-primary mx-auto d-block" type="submit">Schedule</button>
                                <p class="text-black-50 text-center mt-3" style="font-size: 12px; font-style: italic;">Our offices will call you shortly to confirm your appointment</p>
                            </form>
                        </div>
                    </div>
                    <div class="tab-pane fade" role="tabpanel" id="tab-2">
                        <div class="container">
                            <div class="block-heading">
                                <h2 class="text-info">Scheduled Appointments</h2>
                                <p>Your currently scheduled appointments</p>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th>Doctor</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="padding-top: 15px;">2021/11/15</td>
                                            <td style="padding-top: 16px;">08:30</td>
                                            <td style="margin-top: 0px;padding-top: 15px;">Dr. Bryce Larkin</td>
                                            <td><span class="badge bg-success" style="text-align: center;margin-top: 8px;">Confirmed</span></td>
                                            <td><button class="btn btn-danger" type="button">Cancel</button></td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top: 15px;">2021/11/30</td>
                                            <td style="padding-top: 15px;">16:00</td>
                                            <td style="padding-top: 15px;">Dr Charles Carmichael</td>
                                            <td><span class="badge bg-success" style="text-align: center;margin-top: 8px;">Confirmed</span></td>
                                            <td><button class="btn btn-danger" type="button">Cancel</button></td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top: 15px;">2021/12/20</td>
                                            <td style="padding-top: 15px;">08:00</td>
                                            <td style="padding-top: 15px;">Dr. Sarah Walker</td>
                                            <td><span class="badge bg-info" style="text-align: center;margin-top: 8px;">Processing</span></td>
                                            <td><button class="btn btn-danger" type="button">Cancel</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" role="tabpanel" id="tab-3"><a class="btn btn-primary mx-auto d-block" role="button" style="margin-top: 69px;width: 150px;" href="c_profile.html">Edit My Profile</a></div>
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
                        <li><a href="../customer/c_login.html">Login</a></li>
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
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="../assets/js/script.min.js"></script>
</body>

</html>