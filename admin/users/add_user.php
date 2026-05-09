<?php
    session_start();
    include "../layouts/navbar_side.php";
?>
    <div class="container mt-3">
        <div class="mb-3">
            <h3 class="d-inline">Users</h3>
                <a href="users.php" class="btn btn-danger float-end">Cancel</a>
                <div class="mt-0">
                    <a href="">Dashboard</a> / <a href="users.php">Users</a> / Create
                </div>
        </div>
        <div class="card mb-4">
            <div class="card-header">
                Create User
            </div>
            <div class="card-body">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="name">Name</label>
                        <input type="text" name="name" id="name" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="profile">Profile</label>
                        <input type="file" class="form-control" id="profile" name="profile">
                    </div>
                    <div class="mb-3">
                        <label for="role">Role</label>
                        <input type="text" name="role" id="role" class="form-control">
                    </div>
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-primary">Create</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php
    include "../layouts/footer.php";    
?>