<?php
require_once("includes/config.php");

if(!empty($_POST["phone"])) {
	$phonenumber=$_POST["phone"];
    $phonenumberarray=str_split($phonenumber);
	
    if(empty($phonenumber)){
        echo "<span style='color:red'> Phone number field cannot be empty .</span>"; 
        echo "<script>$('#add').prop('disabled',true);</script>";
        echo "<script>$('#update').prop('disabled',true);</script>"; 
    }
    else{
        for($i = 0;$i < count($phonenumberarray);$i++){
            if($phonenumberarray[$i] >= '0' && $phonenumberarray[$i] <= '15'){
                $isNotValid = false;
            }
            else{
                $isNotValid = true;
            }
        }

        if($isNotValid == true){
            echo "<span style='color:red'> Phone number can only contain digits .</span>";
            echo "<script>$('#add').prop('disabled',true);</script>";
            echo "<script>$('#update').prop('disabled',true);</script>"; 
        }
        else if(count($phonenumberarray) != 10){
            echo "<span style='color:red'> Phone number must have 10 digits only.</span>"; 
            echo "<script>$('#add').prop('disabled',true);</script>";
            echo "<script>$('#update').prop('disabled',true);</script>"; 
        }else{
            echo "<script>$('#add').prop('disabled',false);</script>";
            echo "<script>$('#update').prop('disabled',false);</script>"; 
        }
    }

}
else{
    echo "<span style='color:red'> Phone number field cannot be empty .</span>";
    echo "<script>$('#add').prop('disabled',true);</script>";
    echo "<script>$('#update').prop('disabled',true);</script>"; 
}
?>