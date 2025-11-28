<?php
include 'header.php';
?>

<div class="container question-detail">
    <div id="notification" class="notification" style="display: none;"></div>

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
                            Votes: <span class="vote-count" id="vote-count-<?php echo $answer['answer_id']; ?>"><?php echo $answer['total_votes']; ?></span>
                            <button type="button" class="vote-btn" data-answer-id="<?php echo $answer['answer_id']; ?>" data-vote-value="1" title="Upvote" style="background:none; border:none; cursor:pointer; font-size:1.2rem;">👍</button>
                        </div>

                        <div class="answer-comments">
                            <h4>Komentar pada jawaban ini</h4>
                            <?php if (empty($answer_comments[$answer['answer_id']])) : ?>
                                <p>Belum ada komentar pada jawaban ini.</p>
                            <?php else : ?>
                                <ul class="comment-list">
                                    <?php foreach ($answer_comments[$answer['answer_id']] as $comment) : ?>
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
        <form method="POST" action="../controller/forum_controller.php" class="answer-form-submit">
            <input type="hidden" name="action" value="create_answer">
            <input type="hidden" name="question_id" value="<?php echo $question_id; ?>">
            <textarea name="body" required placeholder="Tulis jawaban Anda di sini"></textarea><br>
            <button type="submit">Kirim Jawaban</button>
        </form>
    </div>

</div>

<script>
const questionId = <?php echo $question_id; ?>;

function showNotification(message, type) {
    const notification = document.getElementById('notification');
    notification.textContent = message;
    notification.className = 'notification ' + type;
    notification.style.display = 'block';
    setTimeout(() => {
        notification.style.display = 'none';
    }, 3000);
}

document.addEventListener('DOMContentLoaded', function() {
    const voteButtons = document.querySelectorAll('.vote-btn');

    voteButtons.forEach(button => {
        button.addEventListener('click', function() {
            const answerId = this.getAttribute('data-answer-id');
            const voteValue = this.getAttribute('data-vote-value');

            fetch('../controller/vote_controller.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    'X-Requested-With': 'XMLHttpRequest'
                },
                body: new URLSearchParams({
                    answer_id: answerId,
                    vote_value: voteValue
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    document.getElementById('vote-count-' + answerId).textContent = data.new_vote_count;
                    showNotification(data.message, 'success');
                } else {
                    showNotification(data.message, 'error');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showNotification('Terjadi kesalahan saat melakukan vote.', 'error');
            });
        });
    });

    const commentForms = document.querySelectorAll('.comment-form');

    commentForms.forEach(form => {
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            const formData = new FormData(this);

            fetch('../controller/forum_controller.php', {
                method: 'POST',
                headers: {
                    'X-Requested-With': 'XMLHttpRequest'
                },
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showNotification(data.message, 'success');
                    this.reset(); // Clear the form
                    // Add the new comment to the list
                    if (data.comment) {
                        const commentContainer = this.closest('.comment-section, .answer-comments');
                        let commentList = commentContainer.querySelector('.comment-list');
                        if (!commentList) {
                            // If no comment list exists, create it and remove the "no comments" message
                            const noCommentsMsg = commentContainer.querySelector('p');
                            if (noCommentsMsg) {
                                noCommentsMsg.remove();
                            }
                            commentList = document.createElement('ul');
                            commentList.className = 'comment-list';
                            commentContainer.insertBefore(commentList, this);
                        }
                        const newComment = document.createElement('li');
                        newComment.className = 'comment';
                        newComment.innerHTML = `
                            <strong>${data.comment.user_name}:</strong>
                            ${data.comment.body.replace(/\n/g, '<br>')}
                            <div class="comment-meta">${data.comment.created_at}</div>
                        `;
                        commentList.insertBefore(newComment, commentList.firstChild);
                    }
                } else {
                    showNotification(data.message, 'error');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showNotification('Terjadi kesalahan saat mengirim komentar.', 'error');
            });
        });
    });

    const answerForm = document.querySelector('.answer-form-submit');

    if (answerForm) {
        answerForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const formData = new FormData(this);

            fetch('../controller/forum_controller.php', {
                method: 'POST',
                headers: {
                    'X-Requested-With': 'XMLHttpRequest'
                },
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showNotification(data.message, 'success');
                    this.reset(); // Clear the form
                    // Add the new answer to the list
                    if (data.answer) {
                        const answersSection = document.querySelector('.answers-section');
                        let answerList = answersSection.querySelector('.answer-list');
                        if (!answerList) {
                            // If no answer list exists, create it and remove the "no answers" message
                            const noAnswersMsg = answersSection.querySelector('p');
                            if (noAnswersMsg) {
                                noAnswersMsg.remove();
                            }
                            answerList = document.createElement('ul');
                            answerList.className = 'answer-list';
                            answersSection.insertBefore(answerList, this.closest('.answer-form'));
                        }
                        const newAnswer = document.createElement('li');
                        newAnswer.className = 'answer';
                        newAnswer.innerHTML = `
                            <p>${data.answer.body.replace(/\n/g, '<br>')}</p>
                            <div class="answer-meta">Jawaban dari: ${data.answer.user_name}</div>
                            <div class="vote-section">
                                Votes: <span class="vote-count" id="vote-count-${data.answer.answer_id}">${data.answer.total_votes}</span>
                                <button type="button" class="vote-btn" data-answer-id="${data.answer.answer_id}" data-vote-value="1" title="Upvote" style="background:none; border:none; cursor:pointer; font-size:1.2rem;">👍</button>
                            </div>
                            <div class="answer-comments">
                                <h4>Komentar pada jawaban ini</h4>
                                <p>Belum ada komentar pada jawaban ini.</p>
                                <h5>Tambahkan Komentar pada Jawaban</h5>
                                <form method="POST" action="../controller/forum_controller.php" class="comment-form">
                                    <input type="hidden" name="action" value="create_comment">
                                    <input type="hidden" name="question_id" value="${questionId}">
                                    <input type="hidden" name="answer_id" value="${data.answer.answer_id}">
                                    <textarea name="body" required placeholder="Tulis komentar Anda di sini"></textarea><br>
                                    <button type="submit">Kirim Komentar</button>
                                </form>
                            </div>
                        `;
                        answerList.insertBefore(newAnswer, answerList.firstChild);
                    }
                } else {
                    showNotification(data.message, 'error');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showNotification('Terjadi kesalahan saat mengirim jawaban.', 'error');
            });
        });
    }
});
</script>

<?php include 'footer.php'; ?>
