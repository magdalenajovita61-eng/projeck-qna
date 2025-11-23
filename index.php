<?php
session_start();
if (isset($_SESSION['user_id'])) {
    header('Location: view/dashboard.php');
} else {
    header('Location: view/login.php');
}
exit;
?>