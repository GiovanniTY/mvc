<?php

try {
    // Connexion au database  MySQL
    $bdd = new PDO('mysql:host=localhost;dbname=mvc;charset=utf8', 'root', 'root');
    // Imposta l'attributo PDO per visualizzare gli errori
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connexion réussi";
} catch (PDOException $e) {
    echo "Erreur de connexion: " . $e->getMessage();
    exit;
}