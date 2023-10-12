<?php 
require_once("includes/config.php");
// code for empid availablity
if(!empty($_POST["departmentname"])) {
	$deptname=$_POST["departmentname"];
	
    $sql ="SELECT * FROM tbldepartments WHERE DepartmentName=:deptname";
    $query= $dbh->prepare($sql);
    $query-> bindParam(':deptname',$deptname, PDO::PARAM_STR);
    $query-> execute();
    $results = $query -> fetchAll(PDO::FETCH_OBJ);
    if($query->rowCount() > 0)
    {
    echo "<span style='color:red'> Department name already exists .</span>";
    echo "<script>$('#add').prop('disabled',true);</script>";
    } else{
        
    echo "<span style='color:green'> Department name available for Registration .</span>";
    echo "<script>$('#add').prop('disabled',false);</script>";
    }
}
// code for emailid availablity
if(!empty($_POST["departmentshortname"])) {
	$deptshortname=$_POST["departmentshortname"];
	
    $sql ="SELECT * FROM tbldepartments WHERE DepartmentShortName=:deptshortname";
    $query= $dbh->prepare($sql);
    $query-> bindParam(':deptshortname',$deptshortname, PDO::PARAM_STR);
    $query-> execute();
    $results = $query -> fetchAll(PDO::FETCH_OBJ);
    if($query->rowCount() > 0)
    {
    echo "<span style='color:red'> Department short name already exists .</span>";
    echo "<script>$('#add').prop('disabled',true);</script>";
    } else{
        
    echo "<span style='color:green'> Department short name available for Registration .</span>";
    echo "<script>$('#add').prop('disabled',false);</script>";
    }
}

if(!empty($_POST["deptcode"])) {
	$deptcode=$_POST["deptcode"];
	
    $sql ="SELECT * FROM tbldepartments WHERE DepartmentCode=:deptcode";
    $query= $dbh->prepare($sql);
    $query-> bindParam(':deptcode',$deptcode, PDO::PARAM_STR);
    $query-> execute();
    $results = $query -> fetchAll(PDO::FETCH_OBJ);
    if($query->rowCount() > 0)
    {
    echo "<span style='color:red'> Department code already exists .</span>";
    echo "<script>$('#add').prop('disabled',true);</script>";
    } else{
        
    echo "<span style='color:green'> Department code available for Registration .</span>";
    echo "<script>$('#add').prop('disabled',false);</script>";
    }
}


?>