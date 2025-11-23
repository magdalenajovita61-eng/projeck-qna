<?php include 'header.php'; ?>
<div class="auth-container">
    <h2>Login</h2>
    <form action="../controller/auth_controller.php" method="POST">
        <input type="hidden" name="action" value="login">
        
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>
        
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" required>
        </div>
        
        <div class="form-group">
            <label>Role:</label>
            <select name="role" required>
                <option value="">-- Pilih Role --</option>
                <option value="student">Student</option>
                <option value="teacher">Teacher</option>
            </select>
        </div>
        
        <button type="submit">Login</button>
    </form>
    <p>Belum punya akun? <a href="register.php">Register di sini</a></p>
</div>
<?php include 'footer.php'; ?>
