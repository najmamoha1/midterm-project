<?php
    $con=mysqli_connect("localhost", "root", "", "security_check");
    if(mysqli_connect_errno()){
        
        echo "DB Connection Failed!".mysqli_connect_error();
    }
  ?>