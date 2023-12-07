<?php
    include('includes/pdoconfig.php');
    if(!empty($_POST["buildingid"])) {	
    $id=$_POST['buildingid'];
    $stmt = $DB_con->prepare("SELECT * FROM building WHERE office = :id");
    $stmt->execute(array(':id' => $id));
    ?>
    
    <?php
        while($row=$stmt->fetch(PDO::FETCH_ASSOC))
        {
    ?>
    <?php echo htmlentities($row['office']); ?>
    <?php
    }
}


?>