<?php
    session_start();
    if($_SESSION['user_id'] && $_SESSION['user_role'] == 'admin'){
        include "../layouts/navbar_side.php";
        include "../../dbconnect.php";

        $sql = "SELECT * FROM users";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll();
    
?>

    <div class="container my-5">
        <div class="mb-5">
            <h3 class="d-inline">Users List</h3>
            <a href="add_user.php" class="btn btn-primary float-end">Add Users</a>
        </div>
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Profile</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            foreach($users as $user){
                            $j = 1;
                        ?>
                        <tr>
                            <td><?= $j++ ?></td>
                            <td>
                                <img src="<?= $user['profile'] ?>" alt="" style="width:50px; height:50px; object-fit:cover;">
                            </td>
                            <td><?= $user['name'] ?></td>
                            <td><?= $user['email'] ?></td>
                            <td><?= $user['role'] ?></td>
                            <td>
                                <a href="" class="btn btn-sm btn-warning">Edit</a>
                                <a href="" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Profile</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>

<?php 
    include "../layouts/footer.php";
    }else{
        header("location: ../login.php");
    }
?>