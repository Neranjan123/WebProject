<?php
    $studentID = $_POST['studentID'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $password = $_POST['password'];
    $birthday = $_POST['birthday'];
    $sex = $_POST['sex'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $class = $_POST['class'];
    $year = $_POST['year'];

    //Database Connection
    $conn = new mysqli('localhost','root','','unacademie');

    if($conn->connect_error) {
        die('Connection Error : '.$conn->connect_error);
    } else {
        $stmt = $conn->prepare("insert into students(studentID, fname, lname, password, birthday, sex, email, phone, address, class, year) values(?,?,?,?,?,?,?,?,?,?,?)");
        $stmt->bind_param("sssssssssss", $studentID, $fname, $lname, $password, $birthday, $sex, $email, $phone, $address, $class, $year);
        $stmt->execute();

        echo ("<script LANGUAGE='JavaScript'>
        window.alert('Registration succesfull...');
        window.location.href='../index.php';
        </script>");

        $stmt->close();
        $conn->close();
    }
?>