<?php
session_start();
if($_SESSION['user_id']){
    include "../layouts/navbar_side.php";
    include "../../dbconnect.php";

    $sql = "SELECT * FROM categories";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $categories = $stmt->fetchAll();

    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $title = $_POST['title'];
        $category_id = $_POST['category_id'];
        $description = $_POST['description'];
        $user_id = $_SESSION['user_id'];

        $image_array = $_FILES['image'];
        if(isset($image_array) && $image_array['size'] > 0){
            $dir = "../images/";
            $image_dir = $dir.$image_array['name']; // ../images/eg.jpg (stored place files)
            $image = 'images/'.$image_array['name']; // admin/images/eg.jpg (stored in database)
            $tmp_name = $image_array['tmp_name']; // temporary name of the file
            move_uploaded_file($tmp_name,$image_dir);
        }

        $sql = "INSERT INTO posts (title,image,description,category_id,user_id) VALUES (:title,:image,:description,:category_id,:user_id)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':title',$title);
        $stmt->bindParam(':image',$image);
        $stmt->bindParam(':description',$description);
        $stmt->bindParam(':category_id',$category_id);
        $stmt->bindParam(':user_id',$user_id);
        $stmt->execute();

        header("location: posts.php");
    }

?>
    <div class="container mt-3">
        <div class="mb-3">
            <h3 class="d-inline">Posts</h3>
            <a href="posts.php" class="btn btn-danger float-end">Cancel</a>
            <div class="mt-0">
                <a href="">Dashboard</a> / <a href="posts.php">Posts</a> / Create
            </div>
        </div>
        <!-- Main Card -->
        <div class="card m-4">
            <div class="card-header">
                <i class="fa fa-table me-1"></i> Create Post
            </div>
            <div class="card-body">
                <form action="<?php htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>
                    <div class="mb-3">
                        <label for="category_id">Categories</label>
                        <select class="form-select" id="category_id" name="category_id">
                            <option value="">Choose....</option>
                            <?php 
                                foreach($categories as $category){
                            ?>
                            <option value="<?= $category['id'] ?>"><?= $category['name'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="image">Image</label>
                        <input type="file" class="form-control" id="image" name="image">
                    </div>
                    <div class="mb-3">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" name="description"></textarea>
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
    }else{
        header("location: ../login.php");
    }
?>