<?php require 'View/includes/header.php'?>

<?php include '/Controller/ArticleController.php';
include '/Controller/HomepageController.php';
include 'engine.php'; ?>



<section>
    <h1><?= $article->title ?></h1>
    <p><?= $article->formatPublishDate() ?></p>
    <p><?= $article->description ?></p>

    <?php // TODO: links to next and previous ?>
    <a href="#">Previous article</a>
    <a href="#">Next article</a>
</section>

<?php require 'View/includes/footer.php'?>