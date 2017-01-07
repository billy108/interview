<?php
//    连接数据库
    $conn = mysqli_connect("127.0.0.1", "root", "", "interview");

    $sql = "SELECT id, title, answer FROM interview_table";
    mysqli_query($conn, "SET NAMES UTF8");
    $result = mysqli_query($conn, $sql);
    $outputArr = [];
    while($row = mysqli_fetch_array($result, MYSQL_ASSOC)){
        $outputArr[] = $row;
    }

    echo json_encode($outputArr);
?>