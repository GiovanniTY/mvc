<?php require 'View/includes/header.php' ?>

<section>
    <h1>Articles</h1>
    <ul>
        <?php foreach ($articles as $article) : ?>
            <li>
                <a href="index.php?page=articles-show&id=<?= htmlspecialchars($article->getId(), ENT_QUOTES, 'UTF-8') ?>">
                    <?= htmlspecialchars($article->getTitle(), ENT_QUOTES, 'UTF-8') ?>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
</section>

<?php require 'View/includes/footer.php' ?>
