<?php

session_start();

ini_set('display_errors', 1);
error_reporting(E_ALL);

include "../koneksi.php";
require_once '../model/question_model.php';
require_once '../model/answer_model.php';
require_once '../model/comment_model.php';
require_once '../model/user_model.php';

function post_question() {
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['user_id'])) {
        $title = $_POST['title'];
        $body = $_POST['body'];
        $tag_id = $_POST['tag_id'] ?? null;
        $user_id = $_SESSION['user_id'];

        if (create_question($user_id, $title, $body, $tag_id)) {
            $_SESSION['success'] = "Pertanyaan berhasil diposting";
        } else {
            $_SESSION['error'] = "Gagal memposting pertanyaan";
        }

        header('Location: ../view/dashboard.php');
        exit;
    }
}

function post_answer() {
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['user_id'])) {
        $question_id = $_POST['question_id'];
        $body = $_POST['body'];
        $user_id = $_SESSION['user_id'];

        if (create_answer($question_id, $user_id, $body)) {
            $_SESSION['success'] = "Jawaban berhasil diposting";
        } else {
            $_SESSION['error'] = "Gagal memposting jawaban";
        }

        header('Location: ../view/question_detail.php?id=' . $question_id);
        exit;
    }
}

function post_comment() {
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['user_id'])) {
        $question_id = $_POST['question_id'] ?? null;
        $answer_id = $_POST['answer_id'] ?? null;
        $body = $_POST['body'];
        $user_id = $_SESSION['user_id'];

        if (create_comment($user_id, $question_id, $answer_id, $body)) {
            $_SESSION['success'] = "Komentar berhasil diposting";
        } else {
            global $conn;
            $error = mysqli_error($conn);
            $_SESSION['error'] = "Gagal memposting komentar: " . $error;
        }


        // Redirect back to question detail page
        if ($question_id) {
            header('Location: ../view/question_detail.php?id=' . $question_id);
        } else {
            header('Location: ../view/dashboard.php');
        }
        exit;
    }
}

function get_top_answers() {
    global $conn;
    $query = "SELECT a.*, u.name as user_name, q.title as question_title, SUM(v.vote_value) as total_votes
              FROM answer a
              JOIN user u ON a.user_id = u.user_id
              JOIN question q ON a.question_id = q.question_id
              LEFT JOIN vote v ON a.answer_id = v.answer_id
              GROUP BY a.answer_id
              ORDER BY total_votes DESC
              LIMIT 10";
    $result = mysqli_query($conn, $query);
    $top_answers = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $top_answers[] = $row;
    }
    return $top_answers;
}

function get_top_answers_by_votes_by_school($school_id) {
    global $conn;
    $school_id = mysqli_real_escape_string($conn, $school_id);
    $query = "SELECT a.*, u.name as user_name, q.title as question_title, SUM(v.vote_value) as total_votes
              FROM answer a
              JOIN user u ON a.user_id = u.user_id
              JOIN question q ON a.question_id = q.question_id
              LEFT JOIN vote v ON a.answer_id = v.answer_id
              WHERE u.school_id = '$school_id'
              GROUP BY a.answer_id
              ORDER BY total_votes DESC
              LIMIT 10";
    $result = mysqli_query($conn, $query);
    $top_answers = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $top_answers[] = $row;
    }
    return $top_answers;
}

function get_top_questions_by_comments($school_id) {
    global $conn;
    $school_id = mysqli_real_escape_string($conn, $school_id);
    $query = "SELECT q.question_id, q.title, q.body, u.name as user_name, COUNT(c.comment_id) as total_comments
              FROM question q
              JOIN user u ON q.user_id = u.user_id
              LEFT JOIN comment c ON q.question_id = c.question_id
              WHERE u.school_id = '$school_id'
              GROUP BY q.question_id
              ORDER BY total_comments DESC
              LIMIT 10";
    $result = mysqli_query($conn, $query);
    $top_questions = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $top_questions[] = $row;
    }
    return $top_questions;
}

if (isset($_POST['action'])) {
    if ($_POST['action'] == "create_question") {
        post_question();
    } elseif ($_POST['action'] == "create_answer") {
        post_answer();
    } elseif ($_POST['action'] == "create_comment") {
        post_comment();
    }
}
?>
