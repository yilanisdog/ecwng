<?php
header('content-type:application/json');
$phone=$_REQUEST['phone'];
if(empty($phone)){
    echo '[]';
    return;
}
require('init.php');
$sql="SELECT b.phone,b.oid,b.user_name,b.addr,b.order_time,a.did,a.img_sm FROM ecwng_dish a,ecwng_order b WHERE b.phone=$phone AND a.did=b.did";
$result=mysqli_query($conn,$sql);
$output=[];
while(true){
    $row=mysqli_fetch_assoc($result);
    if(!$row){
        break;
    }
    $output[]=$row;
}
echo json_encode($output);
