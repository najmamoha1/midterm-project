<?php
    session_start();
    error_reporting(0);
    include('includes/dbconn.php');

    
    if(isset($_POST['resetpassword']))
    {
        $secode=$_SESSION['secode'];
        $email=$_POST['email'];
        $password=md5($_POST['newpassword']);

        $query=mysqli_query($con,"UPDATE tbladmin set Password='$password' where Email='$email' && Security_Code='$secode' ");
        //$ret=mysqli_fetch_array($query);

        // if($ret>0){
        //     $_SESSION['secode']=$secode;
        //     $_SESSION['email']=$email;
        //     header('location:password-recovery.php');
        // } else {
        //     $msg="Invalid Details, Please Try Again!";}
        if($query){
            header('location:dashboard.php');
            echo "<script>alert('Password successfully changed');</script>";
            session_destroy();
            
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Security Check Management System</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <style>
    html, body{
      height: 100%;
      width: 100%;
    }
    body{
      background-image:url('./dist/img/bg.jpg') !important;
      background-repeat:no-repeat !important;
      background-size:cover !important;
      background-position:center center !important;
    }
    .login-logo a, .register-logo a {
    color: #fff;
}
  </style>
  <script type="text/javascript">
    function checkpassword(){
        if(document.resetpassword.newpassword.value!=document.resetpassword.confirmpassword.value){
            alert('New Password and Confirmation Password does not match');
            document.resetpassword.confirmpassword.focus();
        return false;
        }
        return true;
    } 

</script>
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href=""><b>Security Check</b> Management System</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Password Recovery - STEP 2/2</p>

    <form onsubmit="return checkpassword();" method="POST" name="resetpassword">

        <?php if($msg){ echo "<div class='alert alert-danger alert-dismissible'>
                    <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                    <h4><i class='icon fa fa-info-circle'></i> Alert!</h4>
                    $msg
        </div>";}  ?>

        <div class="form-group has-feedback">
            <input type="password" class="form-control" name="newpassword" placeholder="Enter New Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>

      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="confirmpassword" placeholder="Repeat Password" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      
        
        <!-- /.col -->
        <div class="">
          <button type="submit" name="resetpassword" class="btn btn-primary btn-block btn-flat">Reset Password</button>
        </div>
        <!-- /.col -->
    </form>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
