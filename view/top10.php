<?php
include 'header.php';
?>

<div class="container top10-page">
    <h2>Top 10 <?php echo ($display_type === 'answers') ? 'Jawaban Terbaik' : 'Pertanyaan Terbaik'; ?></h2>

    <div class="toggle-links" style="margin-bottom: 15px;">
        <a href="../controller/top10_controller.php?type=questions" <?php if ($display_type === 'questions') echo 'style="font-weight: bold; text-decoration: underline;"'; ?>>Pertanyaan Terbaik</a> |
        <a href="../controller/top10_controller.php?type=answers" <?php if ($display_type === 'answers') echo 'style="font-weight: bold; text-decoration: underline;"'; ?>>Jawaban Terbaik</a>
    </div>

<?php if ($display_type === 'answers'): ?>
        <?php if (empty($top_answers)): ?>
            <p>Belum ada jawaban yang diberi vote di sekolah Anda.</p>
        <?php else: ?>
            <ol>
                <?php foreach ($top_answers as $answer): ?>
                    <li>
                        <div class="answer-item answer">
                            <h4><?php echo substr($answer['question_title'], 0, 50); ?>...</h4>
                            <p><?php echo substr($answer['body'], 0, 200); ?>...</p>
                            <small>Dijawab oleh: <?php echo htmlspecialchars($answer['user_name']); ?> | Votes: <?php echo $answer['total_votes'] ?: 0; ?></small>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ol>
        <?php endif; ?>
    <?php else: ?>
        <?php if (empty($top_questions)): ?>
            <p>Belum ada pertanyaan yang diberi komentar di sekolah Anda.</p>
        <?php else: ?>
            <ol>
                <?php foreach ($top_questions as $question): ?>
                    <li>
                        <div class="question-item question">
                            <h4><?php echo substr($question['title'], 0, 50); ?>...</h4>
                            <p><?php echo substr($question['body'], 0, 200); ?>...</p>
                            <small>Ditanya oleh: <?php echo htmlspecialchars($question['user_name']); ?> | Komentar: <?php echo $question['total_comments'] ?: 0; ?></small>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ol>
        <?php endif; ?>
    <?php endif; ?>

<?php include 'footer.php'; ?>
