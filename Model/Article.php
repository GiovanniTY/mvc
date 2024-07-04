<?php

class Article {
    private int $id;
    private string $title;
    private string $description;
    private string $publish_date;

    public function __construct(int $id, string $title, string $description, string $publish_date) {
        $this->id = $id;
        $this->title = $title;
        $this->description = $description;
        $this->publish_date = $publish_date;
    }

    public function getId(): int {
        return $this->id;
    }

    public function getTitle(): string {
        return $this->title;
    }

    public function getDescription(): string {
        return $this->description;
    }

    public function getPublishDate(): string {
        return $this->publish_date;
    }

    public function formatPublishDate(): string {
        $date = new DateTime($this->publish_date);
        return $date->format('d M Y');
    }
}
?>
