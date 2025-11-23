<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);
require_once '../koneksi.php';
include 'header.php';
require_once '../model/school_model.php';

$schools = get_all_schools();
?>
<div class="auth-container">
    <h2>Registrasi User Baru</h2>
    <?php
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }
    if (isset($_SESSION['error'])) {
        echo '<p style="color:red;">' . htmlspecialchars($_SESSION['error']) . '</p>';
        unset($_SESSION['error']);
    } elseif (isset($_SESSION['success'])) {
        echo '<p style="color:green;">' . htmlspecialchars($_SESSION['success']) . '</p>';
        unset($_SESSION['success']);
    }
    ?>
    <form action="../controller/auth_controller.php" method="POST" class="auth-form" id="registerForm">
        <input type="hidden" name="action" value="register">
        
        <div class="form-group">
            <label>Nama:</label>
            <input type="text" name="name" required>
        </div>
        
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>
        
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" required>
        </div>

        <div class="form-group">
            <label>Peran:</label>
            <select name="role" required>
                <option value="">Pilih Peran</option>
                <option value="student">Student</option>
                <option value="teacher">Teacher</option>
            </select>
        </div>
        
        <div class="form-group">
            <label>Sekolah:</label>
            <select name="school_id" id="schoolSelect" required>
                <option value="">Pilih Sekolah</option>
                <?php foreach ($schools as $school): ?>
                    <option value="<?php echo htmlspecialchars($school['school_id']); ?>">
                        <?php echo htmlspecialchars($school['school_name']); ?>
                    </option>
                <?php endforeach; ?>
                <option value="new_school">Tambah Sekolah Baru</option>
            </select>
        </div>

        <div class="form-group" id="newSchoolDiv" style="display:none;">
            <label>Nama Sekolah Baru:</label>
            <input type="text" name="new_school_name" id="newSchoolName">
        </div>
        
        <button type="submit">Register</button>
    </form>
    <p>Sudah punya akun? <a href="login.php">Login di sini</a></p>
</div>

<script>
document.getElementById('schoolSelect').addEventListener('change', function() {
    var newSchoolDiv = document.getElementById('newSchoolDiv');
    if (this.value === 'new_school') {
        newSchoolDiv.style.display = 'block';
        document.getElementById('newSchoolName').setAttribute('required', 'required');
        this.removeAttribute('required');
    } else {
        newSchoolDiv.style.display = 'none';
        document.getElementById('newSchoolName').removeAttribute('required');
        this.setAttribute('required', 'required');
    }
});
</script>

<?php include 'footer.php'; ?>
