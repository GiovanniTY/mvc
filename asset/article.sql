-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 02 juil. 2024 à 09:37
-- Version du serveur : 11.3.2-MariaDB
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `books`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--



DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` bigint(9) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `publish_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `publish_date`) VALUES
(1, 'Le Petit Prince', 'Un conte philosophique et poétique écrit par Antoine de Saint-Exupéry. Il raconte l\'histoire d\'un petit prince venu d\'un autre monde qui voyage de planète en planète, apprenant des leçons de vie importantes.', '1943-04-06'),
(2, 'Les Misérables', 'Un roman historique et social de Victor Hugo. Il décrit la vie de plusieurs personnages, notamment Jean Valjean, sur fond de révolution et de lutte pour la justice et la dignité humaine.', '1862-06-30'),
(3, '1984', 'Un roman dystopique de George Orwell. Il se déroule dans un futur totalitaire où la surveillance de masse et la manipulation de l\'information sont omniprésentes.', '1949-06-08'),
(4, 'L\'Étranger', 'Un roman existentiel d\'Albert Camus. Il explore l\'absurdité de la condition humaine à travers le personnage de Meursault, un homme indifférent aux normes sociales.', '1942-05-19'),
(5, 'Fahrenheit 451', 'Un roman dystopique de Ray Bradbury. L\'histoire se déroule dans une société futuriste où les livres sont interdits et où les pompiers sont chargés de brûler les ouvrages trouvés. Le protagoniste, Guy Montag, est un pompier qui commence à remettre en question son rôle et la société répressive dans laquelle il vit après une série de rencontres qui l\'éveillent à la beauté et à l\'importance des livres et des idées.', '1947-06-10'),
(6, 'Madame Bovary', 'Un roman réaliste de Gustave Flaubert. Il raconte l\'histoire d\'Emma Bovary, une femme insatisfaite par sa vie provinciale et ses rêves d\'amour et de luxe inassouvis.', '1857-12-12'),
(7, 'Le Comte de Monte-Cristo', 'Un roman d\'aventure d\'Alexandre Dumas. Il suit Edmond Dantès, qui, après avoir été trahi et emprisonné, s\'évade pour se venger de ceux qui l\'ont injustement condamné.', '1844-08-28'),
(8, 'À la recherche du temps perdu', 'Un roman en sept volumes de Marcel Proust. Il explore les thèmes de la mémoire et du temps à travers les expériences de la vie de l\'auteur.', '1913-11-14'),
(9, 'Les Fleurs du mal', 'Un recueil de poésie de Charles Baudelaire. Il traite des thèmes de la beauté, de l\'amour, de la mélancolie et de la décadence.', '1857-06-25'),
(10, 'Le Rouge et le Noir', 'Un roman d\'apprentissage de Stendhal. Il raconte l\'ascension et la chute de Julien Sorel, un jeune homme ambitieux dans la société française post-napoléonienne.', '1830-11-22'),
(11, 'Bel-Ami', 'Un roman réaliste de Guy de Maupassant. Il suit la carrière de Georges Duroy, un homme ambitieux qui utilise son charme et sa ruse pour gravir les échelons de la société parisienne.', '1885-04-23'),
(12, 'Candide', 'Un conte philosophique de Voltaire. Il critique la philosophie de l\'optimisme à travers les aventures de Candide, un jeune homme naïf confronté aux dures réalités du monde.', '1759-01-01'),
(13, 'Alice au pays des merveilles', 'Ce livre écrit par Lewis Carroll est un conte fantastique qui raconte les aventures d\'une jeune fille nommée Alice. En suivant un lapin blanc vêtu d\'un gilet, Alice tombe dans un terrier et se retrouve dans un monde étrange et merveilleux.', '1831-03-16'),
(14, 'Le Père Goriot', 'Un roman réaliste de Honoré de Balzac. Il décrit la déchéance de Goriot, un vieil homme ruiné par l\'amour pour ses filles ingrates, et l\'ambition de Rastignac, un jeune homme arrivant à Paris.', '1835-03-14'),
(15, 'Germinal', 'Un roman naturaliste d\'Émile Zola. Il décrit la vie difficile des mineurs de charbon dans le nord de la France et leur lutte pour des conditions de travail meilleures.', '1885-03-12'),
(16, 'Je suis une légende', 'Un roman post-apocalyptique de Richard Matheson. L’histoire suit Robert Neville, le dernier homme vivant sur Terre après une pandémie qui a transformé l’humanité en créatures vampiresques. Isolé dans une maison fortifiée à Los Angeles, Neville passe ses journées à chercher des provisions, à renforcer ses défenses et à essayer de comprendre la nature du virus. La nuit, il doit se protéger des vampires qui assiègent sa maison.', '1844-03-14'),
(17, 'Le Seigneur des anneaux', 'Un roman de fantasy de J.R.R. Tolkien. Il suit la quête de Frodon Sacquet et de la Communauté de l\'Anneau pour détruire l\'Anneau Unique et vaincre Sauron, le Seigneur des Ténèbres.', '1954-07-29'),
(18, 'Harry Potter à l\'école des sorciers', 'Un roman de fantasy de J.K. Rowling. Il raconte les débuts de Harry Potter à l\'école de sorcellerie de Poudlard, où il découvre ses pouvoirs et se fait des amis pour la vie.', '1997-06-26'),
(19, 'L\'Attrape-cœurs', 'Un roman d\'apprentissage de J.D. Salinger. Il suit Holden Caulfield, un adolescent en crise qui erre dans New York après avoir été expulsé de son école.', '1951-07-16'),
(20, 'Moby Dick', 'Un roman d\'aventure de Herman Melville. Il narre la quête obsessionnelle du capitaine Achab pour traquer et tuer Moby Dick, un gigantesque cachalot blanc.', '1851-10-18');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;