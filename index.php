<?php
    include "layouts/navbar.php";
    include "dbconnect.php";

    $sql = "SELECT * FROM posts ORDER BY id DESC LIMIT 18446744073709551615 OFFSET 1";
    //18446744073709551615 is very value of MySQl
    // $stmt = $conn->query($sql);
    $stmt = $conn->prepare($sql); //IN PDO very secure
    $stmt->execute();
    $posts = $stmt->fetchAll();

    $sql = "SELECT * FROM posts ORDER BY id DESC LIMIT 1";
    // $stmt = $conn->query($sql);
    $stmt = $conn->prepare($sql); //IN PDO very secure
    $stmt->execute();
    $latest_post = $stmt->fetch();
?>
<!-- Page header with logo and tagline-->
<header class="py-5 bg-light border-bottom mb-4">
    <div class="container">
        <div class="text-center my-5">
            <h1 class="fw-bolder">Welcome to Blog Home!</h1>
            <p class="lead mb-0">A Bootstrap 5 starter layout for your next blog homepage</p>
        </div>
    </div>
</header>
<!-- Page content-->
<div class="container">
    <div class="row">
        <!-- Blog entries-->
        <div class="col-lg-8">
            <!-- Featured blog post-->
            <div class="card mb-4">
                <a href="#!"><img class="card-img-top" src="<?= $latest_post['image'] ?>" alt="..." /></a>
                <div class="card-body">
                    <div class="small text-muted"><?= date('F d, Y', strtotime($latest_post['created_at'])) ?></div>
                    <h2 class="card-title"><?= $latest_post['title'] ?></h2>
                    <p class="card-text"><?= substr($latest_post['description'],0,150) ?>.....</p>
                    <a class="btn btn-primary" href="detail.php?id=<?= $latest_post['id'] ?>">Read more →</a>
                </div>
            </div>
            <!-- Nested row for non-featured blog posts-->
            <div class="row">
            <?php 
                foreach($posts as $post){
            ?>
                <div class="col-lg-6">
                    <!-- Blog post-->
                    <!-- substr(string, start, number) -->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="<?php echo $post['image']  ?>" alt="..." /></a>
                        <div class="card-body">
                            <div class="small text-muted"><?php echo date('F d, Y',strtotime($post['created_at'])) ?></div>
                            <h2 class="card-title h4"><?php echo $post['title'] ?></h2>
                            <p class="card-text"><?php echo substr($post['description'],0,150) ?>.....</p>
                            <a class="btn btn-primary" href="detail.php?id=<?= $post['id'] ?>">Read more →</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
            </div>
        </div>
<?php 
    include "layouts/footer.php";
?>