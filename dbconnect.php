<?php
    // Указываем кодировку
    header('Content-Type: text/html; charset=utf-8');

    $server = "localhost"; /* имя хоста (уточняется у провайдера), если работаем на локальном сервере, то указываем localhost */
    $username = "u0343395_stanrus"; /* Имя пользователя БД */
    $password = "stan818791"; /* Пароль пользователя БД, если у пользователя нет пароля то, оставляем пустым */
    $database = "u0343395_u034339"; /* Имя базы данных, которую создали */
 
    // Подключение к базе данных через MySQLi
    $mysqli = new mysqli($server, $username, $password, $database);

    // Проверяем, успешность соединения. 
    if (mysqli_connect_errno()) { 
        echo "<p><strong>Ошибка подключения к БД</strong>. Описание ошибки: ".mysqli_connect_error()."</p>";
        exit(); 
    }

    // Устанавливаем кодировку подключения
    $mysqli->set_charset('utf8');

    //Для удобства, добавим здесь переменную, которая будет содержать название нашего сайта
    $address_site = "http://poecilotheria.ru/";

    //Почтовый адрес администратора сайта
    $email_admin = "stan19781@gmail.com";
?>