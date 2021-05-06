<?php require_once('./includes/header.php'); ?>

    <body class="nav-fixed">
        <?php require_once('./includes/top-navbar.php'); ?>
        

        <!--Side Nav-->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <?php 
                    $curr_page = basename(__FILE__);
                    require_once("./includes/left-sidebar.php");
                ?>
            </div>

            <?php 
                if(isset($_POST['edit-post'])) {
                    $post_id = $_POST['post-id'];
                    $url = "http://localhost/beyondtheblog/backend/edit-post.php?post_id".$post_id;
                    header("Location: $url");
                }
            ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="page-header pb-10 page-header-dark bg-gradient-primary-to-secondary">
                        <div class="container-fluid">
                            <div class="page-header-content">
                                <h1 class="page-header-title">
                                    <div class="page-header-icon"><i data-feather="edit-3"></i></div>
                                    <span>Try Updating Post</span>
                                </h1>
                            </div>
                        </div>
                    </div>

                    <?php 
                        if(isset($_GET['post_id'])) {
                            $post_id = $_POST['post-id'];
                            $sql = "DELETE FROM posts WHERE post_id = :id";
                            $stmt = $pdo->prepare($sql);
                            $stmt->execute([
                                ':id' => $post_id
                            ]);
                            $post = $stmt->fetch(PDO::FETCH_ASSOC);
                            $post_title = $post['post_title'];
                            $post_status = $post['post_status'];
                            $post_category_id = $post['post_category_id'];

                            $sql1 = "SELECT * FROM categories WHERE category_id = :id";
                            $stmt1 = $pdo->prepare($sql1);
                            $stmt1->execute([':id'=>$post_category_id]);
                            $cat = $stmt1->fetch(PDO::FETCH_ASSOC);
                            $category_title = $cat['category_name'];

                            $post_photo = $post['post_image'];
                            $post_details = $post['post_details'];
                            $post_tags = $post['post_tags'];
                        }
                    ?>

                    <!--Start Table-->
                    <div class="container-fluid mt-n10">
                        <div class="card mb-4">
                            <div class="card-header">Update Post</div>
                            <div class="card-body">
                                <form action="edit-post.php?post_id=<?php echo $_GET['post_id'] ?>" method="POST" enctype="multipart/form-data" >
                                    <div class="form-group">
                                        <label for="post-title">Post Title:</label>
                                        <input name="post_title" value="<?php echo $post_title; ?>" class="form-control" id="post_title" type="text" placeholder="Post title ..." />
                                    </div>
                                    <div class="form-group">
                                        <label for="post-status">Post Status:</label>
                                        <select name="post-status" class="form-control" id="post-status">
                                            <option value="Published" <?php echo $post_status == "Published"?"selected":""; ?>>Published</option>
                                            <option value="Draft" <?php echo $post_status !== "Published"?"selected":""; ?>>Draft</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="select-category">Select Category:</label>
                                        <select name="post-category" class="form-control" id="select-category">
                                        <?php 
                                            $sql = "SELECT * FROM categories WHERE category_status = :status";
                                            $stmt = $pdo->prepare($sql);
                                            $stmt->execute([
                                                ':status' => 'Published'
                                            ]);
                                            while($cats = $stmt->fetch(PDO::FETCH_ASSOC)) { ?>
                                                <option  value="<?php echo $cats['category_id']; ?>" <?php echo $cats['category_id']==$post_category_id?"selected":""; ?>> 
                                                    <?php echo $cats['category_name']; ?> 
                                                </option>
                                            <?php }
                                            ?>
                                            <option>Love</option>
                                            <option>Coding</option>
                                            <option>Lifestyle</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="post-title">Choose photo:</label>
                                        <input name="post-photo" class="form-control" id="post-title" type="file" />
                                        <img src="../img/<?php echo $post_photo; ?>" alt="">
                                    </div>

                                    <div class="form-group">
                                        <label for="post-content">Post Details:</label>
                                        <textarea class="form-control" placeholder="Type here..." id="post-content" rows="9"><?php echo $post_detail; ?></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label for="post-tags">Post Tags:</label>
                                        <textarea class="form-control" placeholder="Tags..." id="post-tags" rows="3"><?php echo $post_tags; ?></textarea>
                                    </div>
                                    <button name="update" class="btn btn-primary mr-2 my-1" type="submit">Submit now</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!--End Table-->

                </main>

<?php require_once('./includes/footer.php'); ?>