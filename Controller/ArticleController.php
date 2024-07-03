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
        //  prepare the database connection
        include 'engine.php';
        // Note: you might want to use a re-usable databaseManager class - the choice is yours
        // "todo" fetch all articles as $rawArticles (as a simple array)
        $query = "SELECT `title`, `description`, `publish_date` FROM `articles`";
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rawArticles = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $articles = [];
        foreach ($rawArticles as $rawArticle) {
            // We are converting an article from a "dumb" array to a much more flexible class
            $article = new Article($rawArticle['title'], $rawArticle['description'], $rawArticle['publish_date']);
            $articles[] = $article;
        }

        return $articles;
    }

    public function show()
    {
        // "TODO": this can be used for a detail page
        
        // Example: Assuming you pass the article ID as a GET parameter 'id'
        if (isset($_GET['id'])) {
            $articleId = $_GET['id'];

            // Fetch the article details from the database
            include 'engine.php'; // Include database connection
            $query = "SELECT `title`, `description`, `publish_date` FROM `articles` WHERE `id` = ?";
            $stmt = $bdd->prepare($query);
            $stmt->execute([$articleId]);
            $rawArticle = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($rawArticle) {
                // Create an Article object from the database data
                $article = new Article($rawArticle['title'], $rawArticle['description'], $rawArticle['publish_date']);
                
                // Load the view for showing the article details
                require 'View/articles/show.php';
            } else {
                echo "Article not found.";
            }
        } else {
            echo "Article ID is required.";
        }
    }
}