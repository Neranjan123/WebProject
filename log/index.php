<?php
  session_start();
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <title>Unacademie | Sign In</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

  <link rel="icon" href="images/icon.png">


</head>

<body>
  <div class="container" data-aos="fade-up" data-aos-delay="400">
    <div class="cont" data-aos="fade-up" data-aos-delay="400">
      <form class="login" method="post" action="index.php">
        <div class="form sign-in">
          <center>
            <img class="logo" src=images/logo.png height="45.6px" width="216.9px" alt="Unacademie" />
          </center>
          <h2>Sign In</h2>
          <label>
            <span>Email Address</span>
            <input type="email" name="txttemail" id="txttemail">
          </label>
          <label>
            <span>Password</span>
            <input type="password" name="txttpassword" id="txttpassword">
          </label>
          <button class="submit" type="submit" name="submitlog" id="submitlog">Sign In</button>
      </form>
    </div>



    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New here?</h2>
          <p>If you new here, just sign up.</p>
        </div>
        <div class="img-text m-in">
          <h2>One of us?</h2>
          <p>If you already has an account, just sign in.</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>


      <div class="scroll-down" onClick=""></div>
      <div class="form sign-up">

        <form class="formreg" id="contact-form" role="form" action="regstd.php" method="post">

          <center>
            <img class="logo" src=images/logo.png height="45.6px" width="216.9px" alt="Unacademie" />
          </center>
          <h2>Sign Up</h2>

          <label>
            <span>Identity Card Number</span>
            <input type="text" name="studentID">
          </label>
          <label>
            <span>First Name</span>
            <input type="text" name="fname">
          </label>
          <label>
            <span>Last Name</span>
            <input type="text" name="lname">
          </label>
          <label>
            <span>Birthday</span>
            <input type="date" name="birthday">
          </label>
          <label>
            <span>Gender</span>
            <div class="form-group"> <label for="sex"></label> <select id="sex" name="sex" class="form-control" required="required" data-error="Please specify gender">
                <option value="" selected disabled>--Select Gender--</option>
                <option>Male</option>
                <option>Female</option>
                <option>Prefer not to say</option>
              </select> </div>
          </label>
          <label>
            <span>Email</span>
            <input type="email" name="email">
          </label>
          <label>
            <span>Phone Number</span>
            <input type="text" name="phone">
          </label>
          <label>
            <span>Address</span>
            <input type="Address" name="address">
          </label>
          <label>
            <span>Class</span>
            <div class="form-group"> <label for="class"></label> <select id="class" name="class" class="form-control" required="required" data-error="Please specify priority">
                <option value="" selected disabled>--Select Class--</option>
                <option>Grade 5</option>
                <option>Grade 11</option>
                <option>Grade 12</option>
                <option>Grade 13</option>
              </select> </div>
          </label>
          <label>
            <span>Year</span>
            <input type="text" name="year">
          </label>
          <section id="sec-2">
            <label>
              <label>
                <label>
                  <span>Password</span>
                  <input type="password" name="password">
                </label>
                <label>
                  <span>Confirm Password</span>
                  <input type="password" name="cpassword">
                </label>
                <button type="submit" class="submit" name="signup">Sign Up Now</button>
        </form>
      </div>
    </div>
  </div>
  </div>
  <script type="text/javascript" src="script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>

<?php
  if(isset($_POST["submitlog"])) {
    $logmail=$_POST["txttemail"];
    $logpw=$_POST["txttpassword"];

    $con=mysqli_connect("localhost","root","","unacademie");
    if (!$con) {
      die("Sorry, Technical Issue...");
    }
    $sql="SELECT * FROM `students` WHERE `email` LIKE '" . $logmail . "' AND `password` LIKE '" . $logpw . "' ";
    $results = mysqli_query($con, $sql);

    if(mysqli_num_rows($results)>0) {
      $_SESSION["siteLog"]=$logmail;
      echo '<script type="text/javascript">
      location.replace("../index.php");
      </script>';
    } else {
      echo ("<script LANGUAGE='JavaScript'>
        window.alert('Please Enter the valid authentication!');
        window.location.href='index.php';
        </script>");
    }
  }
?>