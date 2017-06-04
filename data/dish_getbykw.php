<?php
header("content-Type:application/json");
require('init.php');
@$kw=$_REQUEST['kw'];
if(empty($kw)){
  echo '[]';
  return;
}
$sql="SELECT did,name,price,material,img_sm FROM ecwng_dish WHERE name LIKE '%$kw%' OR material LIKE '%$kw%'";
$result=mysqli_query($conn,$sql);
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