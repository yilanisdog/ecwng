<?php
header("content-Type:application/json");
require("init.php");
@$phone=$_REQUEST['phone'];
@$user_name=$_REQUEST['user_name'];
@$sex=$_REQUEST['sex'];
@$addr=$_REQUEST['addr'];
@$did=$_REQUEST['did'];
if(empty($user_name)||empty($sex)||empty($addr)||empty($did)||empty($phone)){
  echo "[]";
  return;
}
$order_time=time()*1000;
$sql="INSERT INTO ecwng_order VALUES(null,$phone,$user_name,$sex,$order_time,$addr,$did)";
$result=mysqli_query($conn,$sql);
$output=[];
if($result){
    $arr['msg']='succ';
    $arr['oid'] = mysqli_insert_id($conn);
}else{
     $arr['msg']='error';
}
$output[]=$arr;
echo json_encode($output);