<?php
session_start();

require_once '../model/user_model.php';

function dashboard() {
    if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'teacher') {
        header('Location: ../view/login.php');
        exit;
    }

    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    
    $school_id = $_SESSION['school_id'];
    
    if (empty($school_id)) {
        echo "Error: School ID missing in session.";
        exit;
    }
    
    $users = get_users_by_school($school_id);

    if ($users === false) {
        echo "Database query error on fetching users.";
        exit;
    }
    
    // Debugging output, remove if verified working
    echo "<p>School ID: $school_id</p>";
    echo "<p>Number of users fetched: " . count($users) . "</p>";

    // Pass $users to the view
    include '../view/teacher_dashboard.php';
}

// Simple router for this controller
$action = $_GET['action'] ?? 'dashboard';

switch ($action) {
    case 'dashboard':
        dashboard();
        break;
    default:
        header('HTTP/1.0 404 Not Found');
        echo 'Action not found';
        break;
}
?>
