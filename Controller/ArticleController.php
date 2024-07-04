<?php

declare(strict_types=1);

class ArticleController
{
    public function index()
    {
        $articles = $this->getArticles();
        require 'View/articles/index.php';
    }

    private function getArticles(): array
    {
        include('config/db-config.php');

        $rawArticles = [];
        $sql = 'SELECT * FROM articles';
        $stmt = $pdo->prepare($sql);
        $stmt->execute();
        $rawArticles = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $articles = [];
        foreach ($rawArticles as $rawArticle) {
            $articles[] = new Article((int)$rawArticle['id'], $rawArticle['title'], $rawArticle['description'], $rawArticle['publish_date']);
        }
        return $articles;
        
    }

    public function show($id)
    {
        $article = $this->getArticleById($id);
        $allIds = $this->getAllArticleIds();
        $maxCount = count($allIds);

        list($previousId, $nextId) = $this->getAdjacentIds($allIds, $id);

        require 'View/articles/show.php';
    }

    private function getArticleById($id)
    {
        include('config/db-config.php');
        $sql = "SELECT * FROM articles WHERE id = :id";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();

        $rawArticle = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($rawArticle) {
            return new Article((int)$rawArticle['id'], $rawArticle['title'], $rawArticle['description'], $rawArticle['publish_date']);
        }



        return null; 
    }

    private function getAllArticleIds()
    {
        include('config/db-config.php');
        $sql = "SELECT id FROM articles ORDER BY id";
        $stmt = $pdo->prepare($sql);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_COLUMN, 0);
    }

    private function getAdjacentIds($allIds, $currentId)
    {
        $currentIndex = array_search($currentId, $allIds);

        $previousId = $currentIndex > 0 ? $allIds[$currentIndex - 1] : null;
        $nextId = $currentIndex < count($allIds) - 1 ? $allIds[$currentIndex + 1] : null;

        return [$previousId, $nextId];
    }
}