<script>
/*

*	File:			newField_Tel.php
*	By:			Roy Canseco
*	Date:			27 Sep 2018	
*
*	This script alters the tPerson table to a Tel field
*
*=====================================
*/
</script>


<?php
$servername = "localhost";
$username = "root";
$password = "";
$databaseName = "alphaCRM";

// Create connection
$conn = new mysqli($servername, $username, $password, $databaseName);

// Check connection
if ($conn->connect_error) {
    die("<br> Connection failed: " . $conn->connect_error);
} 
echo "<br> Connected successfully";



    
$sql = "ALTER TABLE tPerson ADD Tel VARCHAR(50);  ";

if ($conn->query($sql) === TRUE) {
    echo "<br> Table tPerson altered successfully";
} else {
    echo "<br> Error updating record: " . $conn->error;
}

/*
UPDATE <tableName> SET
	fieldA = 'valueA' ,
	fieldB = 'valueB' ,
	fieldC = 'valueC' 
WHERE 
	fieldX <operator> 'valueX'
	
	
// operator can  = or < or >	
*/


$conn->close();



?>