<?php

declare(strict_types = 1);

class ArticleController
{
    public function index()
    {
        // Load all required data
        $articles = $this->getArticles();

        // Load the view
        require 'View/articles/index.php';
    }

    // Note: this function can also be used in a repository - the choice is yours
    private function getArticles()
    {
        // TODO: prepare the database connection
        include 'engine.php';
        // Note: you might want to use a re-usable databaseManager class - the choice is yours
        // TODO: fetch all articles as $rawArticles (as a simple array)
        $sql = 'SELECT * FROM article';
        $stmt = $bdd->prepare($sql);
        $stmt->execute();
        $rawArticles = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $articles = [];
        foreach ($rawArticles as $rawArticle) {
            // We are converting an article from a "dumb" array to a much more flexible class
            $articles[] = new Article($rawArticle['title'], $rawArticle['description'], $rawArticle['publish_date']);
        }

        return $articles;
    }

    public function show(int $id)
    {
        // TODO: this can be used for a detail page
        include 'engine.php';
        $sql = 'SELECT title, description , publish_date FROM article WHERE id= :id';
        $stmt = $bdd->prepare($sql);
        $stmt->execute(['id' => $id]);

        if ($rawArticle) {
            // Create an Article instance
            $article = new Article($rawArticle['title'], $rawArticle['description'], $rawArticle['publish_date']);
            // Load the view and pass the article
            require '/View/article/show.php';
        } else {
            // Handle the case where the article is not found
            echo 'Article not found';
        }
        
    }
}