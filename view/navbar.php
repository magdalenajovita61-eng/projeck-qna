<?php
require_once '../model/user_model.php';
require_once '../model/question_model.php';

$user = get_user_by_id($_SESSION['user_id']);
$user_questions = get_user_questions($_SESSION['user_id']);
?>
<style>
    /* Navbar container */
    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        background-color: #f8f9fa;
        padding: 12px 20px;
        border-bottom: 1px solid #ddd;
        font-family: Arial, sans-serif;
    }
    /* Left side: profile and navigation */
    .nav-left {
        display: flex;
        align-items: center;
        gap: 30px;
    }
    /* Profile details block */
    .profile {
        text-align: left;
        min-width: 220px;
    }
    .profile h3 {
        margin: 0 0 4px 0;
        font-size: 1.25rem;
        color: #333;
    }
    .profile p {
        margin: 2px 0;
        font-size: 0.85rem;
        color: #666;
    }
    /* Navigation links */
    .nav-links {
        display: flex;
        gap: 15px;
        align-items: center;
    }
    .nav-links a {
        color: #007bff;
        text-decoration: none;
        font-weight: 600;
        padding: 6px 10px;
        border-radius: 4px;
        transition: background-color 0.2s ease;
        font-size: 0.95rem;
    }
    .nav-links a:hover {
        background-color: #e2e6ea;
        color: #0056b3;
    }
    /* Right side: question history */
    .nav-right {
        max-width: 320px;
    }
    /* Question history dropdown styling */
    details {
        background: white;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        padding: 10px 15px;
        cursor: pointer;
        font-weight: bold;
        font-size: 1rem;
        color: #333;
        user-select: none;
    }
    details[open] {
        box-shadow: 0 5px 15px rgba(0,0,0,0.15);
    }
    summary {
        list-style: none;
    }
    summary::-webkit-details-marker {
        display: none;
    }
    /* Dropdown content container */
    .question-history-dropdown {
        margin-top: 8px;
        max-height: 180px;
        overflow-y: auto;
    }
    /* Individual question link */
    .question-history-item {
        display: block;
        padding: 8px 12px;
        margin-bottom: 6px;
        background-color: #f9f9f9;
        border-radius: 4px;
        text-decoration: none;
        color: #222;
        font-size: 0.9rem;
        box-shadow: inset 0 -1px 0 #ddd;
        transition: background-color 0.2s ease;
        position: relative;
    }
    .question-history-item:hover {
        background-color: #e4f0fd;
        color: #1a73e8;
    }
    .question-history-item small {
        position: absolute;
        right: 12px;
        top: 50%;
        transform: translateY(-50%);
        font-size: 0.75rem;
        color: #555;
    }
</style>
<div class="navbar">
    <div class="nav-left">
        <div class="profile">
            <h3><?php echo htmlspecialchars($user['name']); ?></h3>
            <p><?php echo htmlspecialchars($user['email']); ?></p>
            <p><?php echo htmlspecialchars($user['school_name']); ?></p>
        </div>
        <div class="nav-links">
            <a href="dashboard.php" title="Dashboard">Forum QnA</a>
            <a href="top10.php" title="Top 10 Questions">Top 10</a>
            <?php if ($_SESSION['role'] == 'teacher'): ?>
                <a href="teacher_dashboard.php" title="Kelola User">Kelola User</a>
            <?php elseif ($_SESSION['role'] == 'admin'): ?>
                <a href="admin_dashboard.php" title="Admin Dashboard">Admin Dashboard</a>
            <?php endif; ?>
            <a href="../controller/auth_controller.php?action=logout" title="Logout">Logout</a>
        </div>
    </div>
    <div class="nav-right">
        <details>
            <summary style="display: flex; align-items: center; gap: 6px; cursor: pointer; font-weight: bold; padding: 5px 0; user-select: none;">
                <span>Riwayat Pertanyaan Anda</span>
                <span style="font-size: 0.8em; transform: translateY(1px);">▼</span>
            </summary>
            <div class="question-history-dropdown" tabindex="0" aria-label="User Asked Questions History">
                <?php if(empty($user_questions)): ?>
                    <p>Tidak ada riwayat pertanyaan.</p>
                <?php else: ?>
                    <?php foreach ($user_questions as $question): ?>
                        <a href="question_detail.php?id=<?php echo $question['question_id']; ?>" class="question-history-item" title="<?php echo htmlspecialchars($question['title']); ?>">
                            <?php echo htmlspecialchars(mb_strimwidth($question['title'], 0, 50, "...")); ?>
                            <small><?php echo date('d M Y', strtotime($question['created_at'])); ?></small>
                        </a>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </details>
    </div>
</div>
