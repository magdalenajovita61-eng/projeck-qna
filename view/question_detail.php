<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

include 'header.php';
include '../controller/forum_controller.php'; // Controller for APIs
require_once '../model/user_model.php'; // For user info
require_once '../model/question_model.php'; 
require_once '../model/answer_model.php';
require_once '../model/comment_model.php';
// Get question ID from GET parameters
if (!isset($_GET['id'])) {
    echo "<p>ID pertanyaan tidak ditemukan.</p>";
    exit;
}

$question_id = intval($_GET['id']);
$question = get_question_by_id($question_id);

if (!$question) {
    echo "<p>Pertanyaan tidak ditemukan.</p>";
    exit;
}

// Get answers for question
$answers = get_answers_by_question($question_id);

// Get comments for question
$question_comments = get_comments_by_question($question_id);

// Processing form submissions for answers, comments, votes via POST handled in forum_controller.php/post_answer, post_comment, etc.

// Helper function to get total votes of answer
function get_answer_votes($answer_id) {
    global $conn;
    $stmt = mysqli_prepare($conn, "SELECT SUM(vote_value) as total_votes FROM vote WHERE answer_id = ?");
    mysqli_stmt_bind_param($stmt, "i", $answer_id);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $row = mysqli_fetch_assoc($result);
    return $row['total_votes'] ?? 0;
}


?>

<div class="container question-detail">

    <div class="question">
        <h2><?php echo htmlspecialchars($question['title']); ?></h2>
        <p><?php echo nl2br(htmlspecialchars($question['body'])); ?></p>
        <div class="question-meta">Ditanya oleh: <?php echo htmlspecialchars($question['user_name']); ?></div>
    </div>

    <div class="comment-section">
        <h3>Komentar pada pertanyaan</h3>
        <?php if (empty($question_comments)) : ?>
            <p>Belum ada komentar pada pertanyaan ini.</p>
        <?php else : ?>
            <ul class="comment-list">
                <?php foreach ($question_comments as $comment) : ?>
                    <li class="comment">
                        <strong><?php echo htmlspecialchars($comment['user_name']); ?>:</strong>
                        <?php echo nl2br(htmlspecialchars($comment['body'])); ?>
                        <div class="comment-meta"><?php echo $comment['created_at']; ?></div>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>

        <!-- Form to add comment on question -->
        <h4>Tambahkan Komentar pada Pertanyaan</h4>
        <form method="POST" action="../controller/forum_controller.php" class="comment-form">
            <input type="hidden" name="action" value="create_comment">
            <input type="hidden" name="question_id" value="<?php echo $question_id; ?>">
            <textarea name="body" required placeholder="Tulis komentar Anda di sini"></textarea><br>
            <button type="submit">Kirim Komentar</button>
        </form>
    </div>

    <hr>

    <div class="answers-section">
        <h3>Jawaban</h3>
        <?php if (empty($answers)) : ?>
            <p>Belum ada jawaban untuk pertanyaan ini.</p>
        <?php else : ?>
            <ul class="answer-list">
                <?php foreach ($answers as $answer) : ?>
                    <li class="answer">
                        <p><?php echo nl2br(htmlspecialchars($answer['body'])); ?></p>
                        <div class="answer-meta">Jawaban dari: <?php echo htmlspecialchars($answer['user_name']); ?></div>
                        <div class="vote-section">
                            Votes: <span class="vote-count"><?php echo get_answer_votes($answer['answer_id']); ?></span>
                            <form method="POST" action="../controller/vote_controller.php" class="vote-form">
                                <input type="hidden" name="answer_id" value="<?php echo $answer['answer_id']; ?>">
                                <input type="hidden" name="action" value="vote">
                                <button type="submit" name="vote_value" value="1" title="Upvote" style="background:none; border:none; cursor:pointer; font-size:1.2rem;">👍</button>
                            </form>
                        </div>

                        <div class="answer-comments">
                            <h4>Komentar pada jawaban ini</h4>
                            <?php if (empty($answer_comments)) : ?>
                                <p>Belum ada komentar pada jawaban ini.</p>
                            <?php else : ?>
                                <ul class="comment-list">
                                    <?php foreach ($answer_comments as $comment) : ?>
                                        <li class="comment">
                                            <strong><?php echo htmlspecialchars($comment['user_name']); ?>:</strong>
                                            <?php echo nl2br(htmlspecialchars($comment['body'])); ?>
                                            <div class="comment-meta"><?php echo $comment['created_at']; ?></div>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>

                            <!-- Form to add comment on answer -->
                            <h5>Tambahkan Komentar pada Jawaban</h5>
                            <form method="POST" action="../controller/forum_controller.php" class="comment-form">
                                <input type="hidden" name="action" value="create_comment">
                                <input type="hidden" name="question_id" value="<?php echo $question_id; ?>">
                                <input type="hidden" name="answer_id" value="<?php echo $answer['answer_id']; ?>">
                                <textarea name="body" required placeholder="Tulis komentar Anda di sini"></textarea><br>
                                <button type="submit">Kirim Komentar</button>
                            </form>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
    </div>

    <div class="answer-form">
        <h3>Berikan Jawaban</h3>
        <form method="POST" action="../controller/forum_controller.php">
            <input type="hidden" name="action" value="create_answer">
            <input type="hidden" name="question_id" value="<?php echo $question_id; ?>">
            <textarea name="body" required placeholder="Tulis jawaban Anda di sini"></textarea><br>
            <button type="submit">Kirim Jawaban</button>
        </form>
    </div>

</div>

<?php include 'footer.php'; ?>
