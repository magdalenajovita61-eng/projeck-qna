<?php include 'header.php'; ?>
<div class="container">
    <h2>Edit User</h2>
    <form method="POST" action="../controller/teacher_controller.php?action=edit_user&id=<?= $user['user_id']; ?>">
        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name" value="<?= htmlspecialchars($user['name']); ?>" required>
        </div>
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" value="<?= htmlspecialchars($user['email']); ?>" required>
        </div>
        <div class="form-group">
            <label>Role:</label>
            <select name="role" required>
                <option value="student" <?= $user['role'] == 'student' ? 'selected' : ''; ?>>Student</option>
                <option value="teacher" <?= $user['role'] == 'teacher' ? 'selected' : ''; ?>>Teacher</option>
            </select>
        </div>
        <div class="form-group">
            <label>School:</label>
            <select name="school_id" required>
                <?php
                $schools = get_all_schools();
                foreach ($schools as $school) {
                    echo "<option value='" . $school['school_id'] . "' " . ($user['school_id'] == $school['school_id'] ? 'selected' : '') . ">" . htmlspecialchars($school['school_name']) . "</option>";
                }
                ?>
            </select>
        </div>
        <button type="submit">Update User</button>
        <a href="../controller/teacher_controller.php?action=dashboard">Cancel</a>
    </form>
</div>
<?php include 'footer.php'; ?>
