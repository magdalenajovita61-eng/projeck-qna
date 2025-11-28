<?php
include 'header.php';
?>

<div class="container dashboard">

    <h2>Forum Q&A</h2>

    <form method="GET" style="margin-bottom: 20px;" class="form-group">
        <label>Filter Tag:</label>
        <select name="tag_id" onchange="this.form.page.value=1; this.form.submit()">
            <option value="">-- Pilih Tag --</option>
            <?php mysqli_data_seek($tags, 0);
            while ($tag = mysqli_fetch_assoc($tags)) { ?>
                <option value="<?= htmlspecialchars($tag['tag_id']); ?>"
                    <?= ($tag_filter == $tag['tag_id']) ? "selected" : ""; ?>>
                    <?= htmlspecialchars($tag['tag_name']); ?>
                </option>
            <?php } ?>
        </select>
        <input type="hidden" name="page" value="1">
    </form>

    <div class="ask-question">
        <h3>Ajukan Pertanyaan</h3>
        <form action="../controller/forum_controller.php" method="POST" class="form-group ask-question-form">
            <input type="hidden" name="action" value="create_question">

            <div class="form-group">
                <label>Judul Pertanyaan:</label>
                <input type="text" name="title" required>
            </div>

            <div class="form-group">
                <label>Pilih Tag:</label>
                <select name="tag_id" required>
                    <option value="">-- Pilih Tag --</option>

                    <?php
                    mysqli_data_seek($tags, 0); // reset pointer result
                    while ($tag = mysqli_fetch_assoc($tags)) {
                        echo "<option value='" . htmlspecialchars($tag['tag_id']) . "'>" . htmlspecialchars($tag['tag_name']) . "</option>";
                    }
                    ?>
                </select>
            </div>

            <div class="form-group">
                <label>Isi Pertanyaan:</label>
                <textarea name="body" rows="5" required></textarea>
            </div>

            <button type="submit">Kirim Pertanyaan</button>
        </form>
    </div>

    <div class="questions-list">
        <h3>Pertanyaan Terbaru <?= $tag_filter ? "(Disaring berdasarkan tag)" : "" ?></h3>

        <?php if (mysqli_num_rows($questions) == 0): ?>
            <p>Tidak ada pertanyaan dengan tag ini.</p>
        <?php endif; ?>

        <?php while ($question = mysqli_fetch_assoc($questions)): ?>
            <div class="question-item question">
                <h4>
                    <a href="../controller/forum_controller.php?action=question_detail&id=<?= $question['question_id']; ?>">
                        <?= htmlspecialchars($question['title']); ?>
                    </a>
                </h4>

                <p><?= nl2br(htmlspecialchars(substr($question['body'], 0, 200))); ?>...</p>

                <small>
                    Ditanya oleh: <b><?= htmlspecialchars($question['user_name']); ?></b>
                    pada <?= date("d M Y H:i", strtotime($question['created_at'])); ?>
                </small>
                <br>
                <small>Tag: <b><?= htmlspecialchars($question['tags']); ?></b></small>
            </div>
        <?php endwhile; ?>
    </div>

    <!-- Pagination Tabs -->
    <?php if ($total_pages > 1): ?>
        <div class="pagination" style="margin-top: 20px;">
            <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                <a href="?page=<?= $i ?><?= $tag_filter ? '&tag_id=' . urlencode($tag_filter) : '' ?>"
                    style="padding: 5px 10px; margin: 0 3px; border: 1px solid #ccc; text-decoration: none; <?= ($i == $page) ? 'font-weight: bold; background-color: #eee;' : '' ?>">
                    <?= $i ?>
                </a>
            <?php endfor; ?>
        </div>
    <?php endif; ?>
</div>

</div>

<script>
    function showTab(tabName) {
        var questionsTab = document.getElementById('tabQuestions');
        var historyTab = document.getElementById('tabHistory');
        var questionsBtn = document.getElementById('tabQuestionsBtn');
        var historyBtn = document.getElementById('tabHistoryBtn');

        if (tabName === 'questions') {
            questionsTab.style.display = 'block';
            historyTab.style.display = 'none';
            questionsBtn.setAttribute('aria-selected', 'true');
            historyBtn.setAttribute('aria-selected', 'false');
        } else {
            questionsTab.style.display = 'none';
            historyTab.style.display = 'block';
            questionsBtn.setAttribute('aria-selected', 'false');
            historyBtn.setAttribute('aria-selected', 'true');
        }
    }
</script>

<?php include 'footer.php'; ?>