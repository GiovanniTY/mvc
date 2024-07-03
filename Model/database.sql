CREATE DATABASE mvc CHARACTER SET 'utf8';

USE mvc;

CREATE TABLE `articles` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR (255) NOT NULL,
    `description` TEXT NOT NULL, 
    `publish_date` DATE NOT NULL
);

INSERT INTO `articles` (`title`, `description`, `publish_date`)
VALUES 
('Le Secret du Château Enchanté', 'Dans un petit village au cœur de la France, un vieux château abandonné cachait un secret ancien. Claire, une jeune fille curieuse, décida d''explorer les lieux. En poussant une lourde porte de bois, elle découvrit une bibliothèque remplie de livres magiques. Chaque livre contenait une histoire différente, et en les lisant, Claire se retrouvait transportée dans des mondes fantastiques.', '2022-03-12'),

('Les Aventures de Léo et Léa', 'Léo et Léa, deux amis inséparables, découvraient des trésors cachés dans leur petite ville chaque jour. Un matin, ils trouvèrent une vieille carte dans le grenier de Léa. Cette carte les conduisit à travers des forêts mystérieuses et des rivières scintillantes, jusqu''à un coffre rempli de pièces d''or et de pierres précieuses. Leur amitié fut renforcée par cette incroyable aventure.', '2021-06-25'),

('Le Mystère du Lac Gelé', 'L''hiver était arrivé et le lac du village était complètement gelé. Pierre, un jeune garçon aventureux, remarqua des empreintes étranges près du lac. Il décida de les suivre et découvrit une grotte cachée sous la glace. À l''intérieur, il trouva une créature magique, piégée depuis des siècles. Grâce à son courage, Pierre réussit à libérer la créature, qui remercia le village en apportant des récoltes abondantes l''année suivante.', '2023-12-15'),

('L''Île des Rêves Éternels', 'Lors d''un voyage en bateau, Marie et son père échouèrent sur une île inconnue. Cette île était spéciale : chaque nuit, les habitants faisaient des rêves incroyablement réels. Marie rencontra un vieil homme qui lui expliqua que l''île avait le pouvoir de réaliser les rêves des gens. Grâce à l''aide des habitants, Marie et son père réussirent à réparer leur bateau et à rentrer chez eux, mais l''expérience sur l''île resta gravée dans leur mémoire.', '2020-08-07'),

('La Forêt des Souvenirs Perdus', 'Élise, une jeune femme, retournait dans la forêt où elle passait ses vacances d''été enfant. Elle retrouva des objets oubliés qui faisaient resurgir des souvenirs heureux. Mais la forêt cachait aussi des mystères plus sombres. Élise découvrit une vieille cabane où un gardien des souvenirs, un vieil homme mystérieux, conservait les mémoires des gens. Grâce à lui, Élise apprit à chérir ses souvenirs tout en avançant dans sa vie.', '2023-11-18');
