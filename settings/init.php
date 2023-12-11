<?php
require "classes/classDB.php";


define("CONFIG_LIVE", "1"); // 0: Test enviroment || 1: Live enviroment

if(CONFIG_LIVE == 1){
    $DB_SERVER = "localhost";
    $DB_NAME = "webshop.lea";
    $DB_USER = "root";
    $DB_PASS = "";
}else{
    $DB_SERVER = "mysql60.unoeuro.com"; //fx one.com Database server
    $DB_NAME = "fiint_dk_db_webshop_lea"; // Deres navn på databasen eller jeres navn på databasen online
    $DB_USER = "fiint_dk"; // jeres brugernavn fra databasen
    $DB_PASS = "Noah1804"; // jeres password fra databasen
}

$db = new db($DB_SERVER,
    $DB_NAME,
    $DB_USER,
    $DB_PASS);


$db = new db($DB_SERVER, $DB_NAME, $DB_USER, $DB_PASS);