<?php
session_start();
require_once '../model/user_model.php';

function admin_dashboard() {
    if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
        header('Location: ../view/login.php');
        exit;
    }

    // Fetch all users for admin management
    $users = get_all_users();

    require_once '../view/admin_dashboard.php';
}

// Handle actions
$action = $_GET['action'] ?? '';

switch ($action) {
    case 'dashboard':
        admin_dashboard();
        break;
    default:
        header('Location: ../view/login.php');
        break;
}
?>
