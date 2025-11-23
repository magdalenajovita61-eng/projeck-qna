<?php
session_start();
require_once '../koneksi.php';
require_once '../model/user_model.php';
require_once '../model/school_model.php';

function register() {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $name = trim($_POST['name']);
        $email = trim($_POST['email']);
        $password = $_POST['password'];
        $school_id = $_POST['school_id'];
        $role = $_POST['role'] ?? '';
        $new_school_name = trim($_POST['new_school_name'] ?? '');

        // Validasi
        if (empty($name) || empty($email) || empty($password) || (empty($school_id) && empty($new_school_name)) || empty($role)) {
            $_SESSION['error'] = "Semua field harus diisi";
            header('Location: ../view/register.php');
            exit;
        }

        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $_SESSION['error'] = "Email tidak valid";
            header('Location: ../view/register.php');
            exit;
        }

        // Cek apakah email sudah terdaftar
        $existing_user = get_user_by_email($email);
        if ($existing_user) {
            $_SESSION['error'] = "Email sudah terdaftar";
            header('Location: ../view/register.php');
            exit;
        }

        // Jika user memasukkan nama sekolah baru, tambahkan ke database
        if (!empty($new_school_name)) {
            $new_school_id = add_school($new_school_name);
            if ($new_school_id === false) {
                $_SESSION['error'] = "Gagal menambahkan sekolah baru";
                header('Location: ../view/register.php');
                exit;
            }
            $school_id = $new_school_id;
        }

        // Buat user baru tanpa password hashing (plain text)
        if (create_user($name, $email, $password, $school_id, $role)) {
            $_SESSION['success'] = "Registrasi berhasil. Silakan login.";
            header('Location: ../view/login.php');
            exit;
        } else {
            $_SESSION['error'] = "Registrasi gagal";
            header('Location: ../view/register.php');
            exit;
        }
    }
}

function login() {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $email = trim($_POST['email']);
        $password = $_POST['password'];
        $selected_role = $_POST['role'];

        $user = get_user_by_email($email);

        if ($user && $password === $user['password']) {
            // Verify selected role matches user's actual role
            if ($selected_role !== $user['role']) {
                $_SESSION['error'] = "Role yang dipilih tidak sesuai dengan akun";
                header('Location: ../view/login.php');
                exit;
            }

            $_SESSION['user_id'] = $user['user_id'];
            $_SESSION['user_name'] = $user['name'];
            $_SESSION['user_email'] = $user['email'];
            $_SESSION['school_id'] = $user['school_id'];
            $_SESSION['school_name'] = $user['school_name'];
            $_SESSION['role'] = $user['role'];

            // Redirect based on role
            if ($user['role'] === 'teacher') {
                header('Location: ../controller/teacher_controller.php?action=dashboard');
            } elseif ($user['role'] === 'admin') {
                header('Location: ../controller/admin_controller.php?action=dashboard');
            } else {
                header('Location: ../view/dashboard.php');
            }
            exit;
        } else {
            $_SESSION['error'] = "Email atau password salah";
            header('Location: ../view/login.php');
            exit;
        }
    }
}

function logout() {
    session_destroy();
    header('Location: ../view/login.php');
    exit;
}

// Handle actions
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_POST['action'] ?? '';
    if ($action == 'register') {
        register();
    } elseif ($action == 'login') {
        login();
    }
} elseif (isset($_GET['action']) && $_GET['action'] == 'logout') {
    logout();
}
?>
