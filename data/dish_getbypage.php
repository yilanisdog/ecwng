<?php
header("content-Type:application/json");
$conn=mysqli_connect("127.0.0.1",'root','','ecwng',3306);
$sql="SET NAMES UTF8";
mysqli_query($conn,$sql);
$count=5;
@$start=$_REQUEST['start'];
if(empty($start)){
  $start=0;
}
//require('init.php');
$sql="SELECT * FROM ecwng_dish";
//LIMIT $start,$count
$result=mysqli_query($conn,$sql);
var_dump($result);
$output=[];
if($result){
  while(true){
  $row=mysqli_fetch_assoc($result);
    if(!$row){
      break;
    }
    $output[]=$row;
  }
}
echo json_encode($output);
