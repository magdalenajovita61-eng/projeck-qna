<?php
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
    header('Location: login.php');
    exit;
}
?>

<?php include 'header.php'; ?>
<div class="container">
    <h2>Admin Dashboard - Manage Users</h2>

    <table border="1" cellpadding="8" cellspacing="0" style="width: 100%; border-collapse: collapse;">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>School</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if(empty($users)): ?>
            <tr>
                <td colspan="5">No users found.</td>
            </tr>
            <?php else: ?>
                <?php foreach ($users as $user): ?>
                <tr>
                    <td><?= htmlspecialchars($user['name']); ?></td>
                    <td><?= htmlspecialchars($user['email']); ?></td>
                    <td><?= htmlspecialchars($user['role']); ?></td>
                    <td><?= htmlspecialchars($user['school_name']); ?></td>
                    <td>
                        <a href="edit_user.php?id=<?= $user['user_id']; ?>">Edit</a> |
                        <a href="delete_user.php?id=<?= $user['user_id']; ?>" onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>

</div>
<?php include 'footer.php'; ?>
