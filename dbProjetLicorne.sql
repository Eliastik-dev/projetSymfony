-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 17, 2025 at 11:13 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbProjetLicorne`
--

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE `choice` (
  `id` int(11) NOT NULL,
  `choice_description` varchar(255) NOT NULL,
  `episode_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `choice`
--

INSERT INTO `choice` (`id`, `choice_description`, `episode_id`) VALUES
(11, 'Diplomatie (Intelligence) – Vous tentez de raisonner les bandits et leur proposer un marché : épargner le village en échange d’un trésor caché.', 1),
(12, 'Combat (Force) – Vous prenez une vieille épée et défendez le village.', 1),
(13, 'Fuite (Agilité) – Vous guidez les villageois vers un passage secret pour échapper aux bandits.', 1),
(21, 'Utiliser la magie (Intelligence) – Vous tentez un sort pour contenir la créature et refermer le piège.', 2),
(22, 'Esquiver et détruire le parchemin (Agilité) – Vous esquivez l’attaque et brûlez le parchemin pour briser le lien de la créature.', 2),
(23, 'Fuir vers le village voisin (Sagesse) – Vous décidez que survivre est plus important, et partez avertir le conseil elfe.', 2),
(31, 'Protéger votre clan (Force) – Vous prenez votre marteau de guerre et défendez les survivants du clan.', 3),
(32, 'Chasser les gobelins (Agilité) – Vous poursuivez les gobelins dans un tunnel étroit et sombre pour sauver votre frère.', 3),
(33, 'Utiliser une ancienne rune de feu (Sagesse) – Vous déclenchez une explosion pour détruire les gobelins, mais cela pourrait endommager la mine.', 3),
(41, 'Accepter et attaquer (Force) – Vous menez une attaque brutale contre le village pour sceller le pacte.', 4),
(42, 'Tenter de négocier avec la voix (Sagesse) – Vous demandez un autre moyen de sceller le pacte.', 4),
(43, 'Refuser l’épreuve (Agilité) – Vous fuyez le village pour éviter de céder à cette force obscure.', 4),
(101, 'Arrêter le rituel par la force brute.', 1111),
(102, ' Utiliser l’amulette pour sceller IPSSI.', 1111),
(103, 'Négocier avec IPSSI.', 1111),
(104, 'Utiliser l’artefact découvert dans la crypte. (Disponible si les joueurs ont exploré la crypte et récupéré l’artefact)', 1111),
(105, ' Mobiliser les alliés ralliés. (Disponible si les joueurs ont recruté des alliés, comme les réfugiés ou la guerrière recluse)', 1111),
(106, 'Déployer une stratégie secrète. (Disponible si les joueurs ont espionné les fanatiques ou trouvé des informations sur le rituel)', 1111),
(111, 'Explorer la crypte avec prudence pour déjouer ses pièges.', 11),
(112, 'Trahir les bandits en les enfermant dans la crypte.', 11),
(113, 'Partager le trésor pour sceller une alliance précaire.', 11),
(121, 'Renforcer la défense du village en entraînant les habitants.', 12),
(122, 'Poursuivre les bandits pour les éliminer avant qu’ils ne reviennent.', 12),
(123, 'Partir à la recherche d’un allié puissant pour protéger le village.', 12),
(131, 'Explorer l’histoire de l’amulette avec l’érudit.', 13),
(132, 'Rallier les réfugiés pour former une milice et reconquérir le village.', 13),
(133, 'Partir seul pour découvrir qui est derrière l’attaque des bandits.', 13),
(201, 'Utiliser le cristal de scellage pour piéger IPSSI (Intelligence).', 2222),
(202, 'Combattre IPSSI directement à l’aide d’une arme magique (Force/Combat).', 2222),
(203, 'Tenter de raisonner ou manipuler IPSSI (Charisme/Diplomatie).', 2222),
(204, 'Invoquer la créature spectrale pour qu’elle combatte à vos côtés. (Disponible uniquement si vous avez lié magiquement la créature.)', 2222),
(205, 'Activer l’artefact maudit découvert dans la vallée interdite. (Disponible uniquement si vous avez exploré la vallée.)', 2222),
(206, 'Exploiter les informations obtenues auprès du mage immortel. (Disponible uniquement si vous avez convaincu le mage de vous aider.)', 2222),
(211, 'Interroger la créature sur l’origine du mal ancien.', 21),
(212, 'Demander à la créature de vous conduire à un allié puissant.', 21),
(213, ' Utiliser la créature comme protecteur.', 21),
(221, 'Rechercher d’autres écrits dans la bibliothèque.', 22),
(222, 'Quitter la bibliothèque et consulter un sage du village.', 22),
(223, ' Suivre une piste laissée par la créature.', 22),
(231, 'Convaincre le conseil de vous soutenir.', 23),
(232, 'Chercher à regagner la confiance de la communauté.', 23),
(233, 'Ignorer les critiques et partir immédiatement.', 23),
(301, 'Confrontation directe avec IPSSI (Combat)', 3333),
(302, ' Utiliser un artefact ancien pour sceller IPSSI (Magie)', 3333),
(303, ' Négocier avec IPSSI (Diplomatie)', 3333),
(304, 'Si vous avez choisi de \"Créer un nouveau réseau de tunnels plus sécurisé\"', 3333),
(305, 'Si vous avez choisi de \"Chasser les gobelins et détruire leur camp\"', 3333),
(306, ' Si vous avez choisi de \"Demander de l’aide à des alliés extérieurs\"', 3333),
(311, ' Vous lancez une quête pour retrouver votre frère et le libérer des griffes des gobelins, malgré la perte de ressources dans la défense de la mine.', 31),
(312, 'Vous prenez un moment pour soigner vos blessures et vous regroupez avec les autres membres du clan avant de partir en expéditions pour renforcer la défense et préparer une contre-attaque.', 31),
(313, 'Vous vous alliez à d’autres clans nains dans la région pour renforcer votre armée et détruire la horde de gobelins une bonne fois pour toutes, au péril de laisser un peu de répit à votre frère.', 31),
(321, 'Vous explorez les tunnels secrets des anciens nains pour trouver une autre sortie, mais la sécurité de votre clan dépendra de cette expéditions risquée.', 32),
(322, 'Vous retournez à la surface pour organiser une expédition de sauvetage de plus grande envergure, en ralliant des alliés, mais vous devrez faire face à la menace des gobelins partout dans la région.', 32),
(323, 'Vous demandez à votre frère de mener un groupe pour infiltrer l’armée ennemie et détruire de l’intérieur, bien que cela risque de vous éloigner encore plus de la sécurité de votre clan.', 32),
(331, ' Vous explorez les tunnels voisins pour retrouver une route sûre et libérer les prisonniers restants, mais les ressources de la mine sont sérieusement menacées.', 33),
(332, 'Vous réparez rapidement les tunnels et préparez une offensive contre la horde de gobelins qui tente de se regrouper dans les environs, mais vous risquez de perdre plus de terrain.', 33),
(333, 'Vous demandez de l’aide à des alliés extérieurs pour créer un nouveau réseau de tunnels plus sécurisé, mais cela pourrait vous coûter beaucoup d’efforts et de temps.', 33),
(401, 'Lancer l\'attaque directe contre IPSSI en utilisant la puissance accumulée (Force)', 4444),
(402, 'Chercher à manipuler IPSSI pour le contrôler ou l’affaiblir (Sagesse)', 4444),
(403, 'Réaliser un rituel ultime pour sceller à jamais IPSSI (Magie)', 4444),
(404, 'Fusionner vos pouvoirs avec ceux de la voix pour un ultime affrontement contre IPSSI (Ambition)', 4444),
(405, 'Appeler vos alliés et utiliser leur puissance combinée contre IPSSI (Diplomatie)', 4444),
(406, 'Utiliser l\'artefact pour éveiller la vraie forme d\'IPSSI et affronter une version plus forte de lui-même (Ambition)', 4444),
(411, 'Utiliser votre nouveau pouvoir pour imposer votre volonté sur d\'autres villages (Force)', 41),
(412, 'Chercher un mentor pour maîtriser ce pouvoir (Sagesse) ', 41),
(413, 'Chercher à détrôner la voix et prendre son pouvoir à son tour (Ambition) ', 41),
(421, 'Rassembler les artefacts nécessaires et accomplir le rituel seul (Magie)', 42),
(422, 'Chercher des alliés pour accomplir le rituel (Diplomatie) –', 42),
(423, 'Accepter d’impliquer des innocents dans le rituel pour gagner du temps (Ambition) ', 42),
(431, 'Utiliser l’artefact pour contrecarrer la voix (Magie) ', 43),
(432, 'Chercher un moyen d’utiliser l’artefact pour protéger les innocents (Diplomatie) ', 43),
(433, 'Utiliser l’artefact pour accroitre votre pouvoir personnel (Ambition) ', 43),
(1111, 'Tenter de déchiffrer les murmures pour comprendre la nature d’IPSSI.', 111),
(1112, 'Sortir rapidement avec l’artefact avant de déclencher quelque chose d’incontrôlable.', 111),
(1121, 'Explorer plus profondément la crypte pour trouver des indices sur cet ordre.', 112),
(1122, 'Rentrer au village pour avertir les habitants d’une menace plus grande.', 112),
(1131, 'Suivre les bandits jusqu’au contact pour infiltrer le culte.', 113),
(1132, 'Éliminer les bandits une fois que vous avez les informations nécessaires.', 113),
(1211, 'Suivre la piste des bandits pour découvrir qui est IPSSI.', 121),
(1212, 'Envoyer des éclaireurs pour recueillir des informations tout en restant pour protéger le village.', 121),
(1221, 'Détruire les parchemins pour empêcher le rituel.', 122),
(1222, 'Garder les parchemins pour mieux comprendre leur magie.', 122),
(1231, 'Accepter de l’aider à récupérer la relique avant qu’elle ne tombe entre de mauvaises mains.', 123),
(1232, 'Convaincre la guerrière de revenir directement au village avec vous.', 123),
(1311, 'Partir immédiatement à la recherche du sanctuaire pour renforcer le sceau.', 131),
(1312, 'Enquêter sur qui ou quoi affaiblit le sceau, même si cela retarde la restauration.', 131),
(1321, 'Détruire l’autel pour éliminer la menace d’IPSSI dans le village.', 132),
(1322, 'Conserver l’autel pour en apprendre davantage sur l’entité.', 132),
(1331, 'Interrompre la cérémonie par la force avant que l’invocation ne soit terminée.', 133),
(1332, 'Espionner la cérémonie pour comprendre leurs plans avant d’agir.', 133),
(2111, 'Explorer la vallée interdite immédiatement (Courage).', 211),
(2112, 'Chercher des alliés avant d’entrer dans la vallée (Prudence).', 211),
(2121, 'Accepter l’épreuve du mage (Résilience).', 212),
(2122, 'Tenter de convaincre le mage sans épreuve (Charisme).', 212),
(2131, 'Explorer le sanctuaire malgré le danger (Audace).', 213),
(2132, 'Forcer la créature à entrer avec vous (Domination).', 213),
(2211, 'Partir immédiatement pour la cité oubliée (Exploration).', 221),
(2212, 'Partager les fragments avec un érudit local (Collaboration).', 221),
(2221, 'Chercher la deuxième relique dans une ruine proche (Exploration).', 222),
(2222, 'Demander de l’aide au conseil pour trouver les reliques (Leadership).', 222),
(2231, 'Entrer dans le portail sans hésitation (Courage).', 223),
(2232, 'Fermer le portail et enquêter davantage sur IPSSI (Prudence).', 223),
(2311, 'Utiliser le cristal pour localiser IPSSI (Intelligence).', 231),
(2312, 'Convoquer un groupe de guerriers pour une expédition (Stratégie).', 231),
(2321, 'Explorer la forêt hantée pour trouver la relique (Exploration).', 232),
(2322, 'Revenir au village pour demander davantage d’aide (Persuasion).', 232),
(2331, 'Tendre une embuscade aux espions (Stratégie).', 233),
(2332, 'Infiltrer leur campement pour obtenir des informations (Discrétion).', 233),
(3111, 'Vous décidez d’entrer discrètement en utilisant des tunnels souterrains, en espérant éviter une confrontation directe.', 311),
(3112, 'Vous attaquez frontalement les gardes pour forcer un passage et sauver rapidement votre frère, en prenant le risque d’alarmer toute la forteresse.', 311),
(3121, 'Vous menez une sortie audacieuse pour détruire le camp des gobelins et éviter une future attaque, en prenant un risque considérable.', 312),
(3122, 'Vous fortifiez les défenses de la mine et vous préparez un piège pour prendre les gobelins au piège lorsqu’ils tenteront d\'attaquer à nouveau.', 312),
(3131, ' Vous attaquez de front avec votre armée pour écraser les gobelins, espérant mettre fin à la menace une fois pour toutes, même si cela laisse peu de chance à votre frère.', 313),
(3132, ' Vous préparez une embuscade dans les montagnes pour surprendre les gobelins, en mettant en place des pièges et en affaiblissant leur avant-garde.', 313),
(3211, 'Vous récupérez un artefact puissant, espérant qu’il pourra vous donner l’avantage contre les gobelins.', 321),
(3212, 'Vous continuez votre route, mais devez faire face à des pièges anciens activés par les gobelins.', 321),
(3221, 'Vous menez une bataille décisive avec vos alliés pour écraser les gobelins, mais vous risquez de perdre vos troupes.', 322),
(3222, ' Vous vous retirez dans une forteresse sécurisée et préparez une défense, mais les gobelins vous poursuivent sans relâche.', 322),
(3231, 'Vous partez à sa rescousse avec un groupe restreint, mais en risquant de laisser la mine sans défense.', 323),
(3232, 'Vous envoyez un autre groupe d\'infiltrateurs pour libérer votre frère et détruire le camp des gobelins, tout en minimisant les risques pour le clan.', 323),
(3311, 'Vous établissez une ligne de défense dans la mine pour protéger les prisonniers et empêcher les gobelins de revenir.', 331),
(3312, ' Vous partez à la rencontre des gobelins dans les tunnels voisins pour tenter de les prendre de vitesse et empêcher toute invasion future.', 331),
(3321, 'Vous menez une attaque éclaire contre les forces principales des gobelins pour les désorienter, risquant de perdre plus d’hommes dans le processus.', 332),
(3322, 'Vous consolidez vos défenses dans les tunnels et préparez une contre-offensive plus robuste en espérant que le renfort arrivera à temps.', 332),
(3331, ' Vous pressez vos alliés pour accélérer leur travail, quitte à risquer des erreurs dans la construction des tunnels qui pourraient mettre tout le clan en danger.', 333),
(3332, 'Vous envoyez une équipe d’élite pour attaquer les gobelins dans les environs, en espérant que cela ralentisse leur avance pendant que vous terminez les travaux de renforcement.', 333),
(4111, 'Créer un empire de peur en unifiant les villages sous votre domination ', 411),
(4112, 'Attirer l\'attention d\'IPSSI, en cherchant à le défier pour prouver votre suprématie (Force) ', 411),
(4121, 'Poursuivre votre quête de sagesse pour comprendre la vraie nature d’IPSSI ', 412),
(4122, 'Vous préparez à tout risquer pour affronter IPSSI avec ce pouvoir maîtrisé ', 412),
(4131, 'Utiliser le pouvoir de la voix contre elle-même pour la détruire (Magie)', 413),
(4132, 'Partir à la recherche d\'IPSSI, le seul être pouvant vous donner un pouvoir supérieur (Ambition) ', 413),
(4211, 'Utiliser ces artefacts pour entrer en conflit direct avec IPSSI (Force)', 421),
(4212, 'Chercher à comprendre les secrets des artefacts pour contrecarrer IPSSI par la ruse (Sagesse)', 421),
(4221, 'Mettre en place un plan pour unir les alliés dans une guerre contre IPSSI', 422),
(4222, 'Utiliser vos alliés pour affronter IPSSI tout en prenant sa place parmi eux (Ambition)', 422),
(4231, 'Exploiter ce pouvoir et affronter IPSSI pour devenir le plus grand des tyrans ', 423),
(4232, 'Chercher à apaiser la colère des innocents sacrifiés en les invoquant pour vous aider contre IPSSI (Magie)', 423),
(4311, 'Utiliser l’artefact pour invoquer IPSSI et défier directement ce mal ancien ', 431),
(4312, 'Chercher un moyen de fusionner avec l’artefact pour devenir plus puissant que la voix et IPSSI (Ambition) ', 431),
(4321, 'Rassembler une coalition d\'armées pour une bataille décisive contre IPSSI ', 432),
(4322, 'Utiliser l’artefact pour sceller IPSSI à jamais, mais à un prix terrible (Magie) ', 432),
(4331, 'Utiliser cette puissance pour écraser IPSSI et régner sur le royaume (Force) – ', 433),
(4332, 'Chercher à manipuler IPSSI à votre avantage, en utilisant votre nouvelle puissance pour le contrôler (Sagesse)', 433);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250116091838', '2025-01-16 09:19:07', 673),
('DoctrineMigrations\\Version20250116095849', '2025-01-16 09:59:02', 157);

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `episode_description` varchar(255) NOT NULL,
  `story_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`id`, `episode_description`, `story_id`) VALUES
(1, 'Un jour, une pluie de cendres noires tombe sur votre paisible village, accompagnée d’un murmure étrange. Une vieille femme vous désigne comme « l’Élu » et vous confie une amulette. Peu après, des bandits attaquent le village pour s’en emparer.', 1),
(2, 'En explorant une bibliothèque millénaire, vous trouvez un parchemin contenant un avertissement sur le retour du mal ancien. Alors que vous déchiffrez le texte, un piège magique s’active, libérant une créature spectrale qui vous attaque.', 2),
(3, 'Votre mine est attaquée par une horde de gobelins, probablement envoyés par une force obscure. Votre frère aîné est capturé et emmené dans les tunnels. Vous vous retrouvez à devoir choisir entre sauver votre clan ou poursuivre les gobelins.', 3),
(4, 'Banni de votre clan, vous errezez dans les terres désolées. Une nuit, une voix vous offre un pouvoir illimité contre votre loyauté au mal ancien, mais pour sceller le pacte, vous devez massacrer un village humain voisin.', 4),
(11, 'Les bandits, intrigués par votre proposition, acceptent de vous suivre vers le trésor caché. Vous découvrez une ancienne crypte oubliée dans les collines.', 1),
(12, 'Vous parvenez à blesser le chef des bandits, forçant leur retraite. Cependant, ils promettent de revenir avec des renforts.', 1),
(13, 'Vous atteignez un camp de réfugiés où un ancien érudit reconnaît l’amulette comme un artefact légendaire. Il vous offre son aide.', 1),
(21, 'Vous maîtrisez la créature et elle devient une source d’information sur le mal ancien.\r\nEn discutant avec la créature spectrale, vous découvrez des fragments de vérité concernant l\'ancien mal. Cela vous ouvre de nouvelles perspectives.', 2),
(22, 'La créature disparaît, mais le savoir est perdu.\r\nVous êtes libre, mais vous vous sentez hanté par la perte du parchemin. Tout n’est pas fini, car la destruction du parchemin pourrait avoir des conséquences imprévues.', 2),
(23, 'Vous alertez le conseil, mais vous êtes considéré comme un lâche par certains.\r\nBien que le conseil prenne votre avertissement au sérieux, la division au sein du village met en péril votre mission.', 2),
(31, 'Le clan est sauvé, mais votre frère est perdu pour le moment.', 3),
(32, 'Vous sauvez votre frère, mais les gobelins détruisent l’entrée de la mine.', 3),
(33, 'Les gobelins sont détruits, mais le tunnel devient inutilisable.', 3),
(41, 'Le pouvoir qui vous est accordé est immense. Vous sentez votre force physique décupler. Ce pouvoir vous confère une aura menaçante et un charisme magnétique. Vous pouvez désormais manipuler plus facilement les faibles d’esprit.', 4),
(42, 'La voix accepte une alternative moins violente mais vous impose un rituel complexe, plus long et risqué. Ce rituel nécessite de rassembler des artefacts spécifiques et de réaliser des sacrifices.', 4),
(43, 'En fuyant le village, vous découvrez une ancienne ruine renfermant un artefact de grande puissance. Bien que la voix vous menace, vous savez que vous avez trouvé quelque chose de précieux.', 4),
(111, 'Vous désactivez plusieurs pièges dans la crypte et découvrez une salle centrale abritant un artefact ancien. L’artefact pulse d’une énergie sombre et semble lié à l’amulette. Les murmures deviennent plus clairs, chuchotant un nom : « IPSSI ».', 1),
(112, 'Vous attirez les bandits dans un piège de la crypte et les enfermez. Le chef hurle qu\'il sert une puissance supérieure. Vous découvrez une gravure mentionnant un ancien ordre voué à IPSSI.', 1),
(113, 'En partageant le trésor, vous gagnez la confiance des bandits, qui révèlent qu’ils doivent remettre l’amulette à un culte mystérieux. En chemin, vous entendez parler d’IPSSI, l’entité vénérée par ce culte.', 1),
(121, 'Avec votre aide, les villageois forment une milice et résistent à l’attaque des bandits. À leur retour, ils fuient en voyant que le village est prêt à se défendre. Un symbole étrange laisse penser à leur allégeance à IPSSI.', 1),
(122, 'Vous traquez les bandits, les affrontez et découvrez des parchemins révélant un rituel pour invoquer IPSSI. Une fois vaincus, vous devez choisir votre prochaine action.', 1),
(123, 'Vous trouvez une ancienne guerrière recluse qui connaît les légendes sur IPSSI. Elle accepte de vous aider, mais en échange, elle exige que vous l’aidiez à récupérer une relique sacrée volée par un groupe de fanatiques.', 1),
(131, 'L’érudit révèle que l’amulette était autrefois un sceau emprisonnant une partie d’IPSSI. Quelque chose ou quelqu’un l’a affaibli, menaçant de libérer l’entité. L’érudit suggère de trouver un sanctuaire ancien pour renforcer le sceau.', 1),
(132, 'Avec l’aide des réfugiés, vous attaquez les bandits et reprenez le village. Après la bataille, vous découvrez un autel caché dédié à IPSSI dans une maison abandonnée. L’amulette réagit à la présence de l’autel, vibrant fortement.', 1),
(133, 'En suivant des indices, vous trouvez un repaire de fanatiques qui préparent une cérémonie pour invoquer un aspect d’IPSSI. Vous êtes confronté à leur chef, un mage qui semble connaître l’amulette et vos intentions.', 1),
(211, 'La créature vous guide à travers les pièges de la bibliothèque, jusqu’à une pièce scellée contenant une carte de la vallée interdite et une clé ancienne.', 2),
(212, 'La créature vous conduit à la tour d’un mage immortel, qui vous révèle qu’IPSSI est une entité piégée dans un artefact. Mais ce mage exige une preuve de votre valeur avant de vous aider.', 2),
(213, 'La créature vous protège des pièges de la bibliothèque, mais commence à montrer des signes de rébellion. Elle vous conduit néanmoins à une porte menant à un sanctuaire où IPSSI a laissé son empreinte.', 2),
(221, 'Vous trouvez des fragments d’un journal mentionnant une cité oubliée où se trouvent des archives cruciales sur l’ancien mal.', 2),
(222, 'Le sage révèle que le parchemin détruit faisait partie d’un ensemble de trois reliques magiques nécessaires pour sceller IPSSI.', 2),
(223, 'La trace magique de la créature vous mène à un portail ancien, ouvrant sur un temple interdit où IPSSI semble avoir laissé des traces de son pouvoir.', 2),
(231, 'Le conseil accepte de vous donner un artefact ancien : un cristal de scellage qui peut temporairement contenir IPSSI.', 2),
(232, 'Vous partez seul, mais les villageois vous donnent des provisions et des informations sur une relique cachée dans une forêt hantée.', 2),
(233, 'Alors que vous voyagez seul, des espions d’IPSSI commencent à vous traquer. Vous découvrez leur campement dans une grotte.', 2),
(311, 'Votre quête pour retrouver votre frère vous mène à travers des terrains dangereux, infestés de gobelins. Vous parvenez à découvrir une ancienne forteresse gobeline, mais les gardes sont nombreux et vigilants.', 3),
(312, 'Votre quête pour retrouver votre frère vous mène à travers des terrains dangereux, infestés de gobelins. Vous parvenez à découvrir une ancienne forteresse gobeline, mais les gardes sont nombreux et vigilants.', 3),
(313, 'Les clans nains se rassemblent, et vous formez une alliance, mais les gobelins ont repéré vos mouvements. Une bataille à grande échelle se prépare.', 3),
(321, 'En explorant les tunnels, vous découvrez des anciens artefacts de guerre, mais les gobelins semblent aussi avoir des espions dans ces souterrains.', 3),
(322, 'Vous rassemblez des alliés, mais les gobelins sont nombreux. Ils préparent une grande offensive sur la région.', 3),
(323, 'Votre frère réussit à infiltrer le camp des gobelins, mais il est capturé avant de pouvoir accomplir sa mission.', 3),
(331, 'Vous libérez les prisonniers, mais vous devez faire face à une horde de gobelins qui revient pour prendre possession de la mine.', 3),
(332, 'Les tunnels sont réparés à temps, mais l’offensive contre les gobelins est une bataille difficile. Vous avez l’avantage du terrain, mais les gobelins arrivent en grand nombre et semblent prêts à tout pour percer vos lignes.', 3),
(333, 'Les alliés arrivent, mais leur aide est plus lente que prévu, et le temps presse. Vous commencez à renforcer les tunnels voisins, mais les gobelins se rapprochent de plus en plus.', 3),
(411, 'Vous mettez en œuvre vos compétences magiques pour rassembler les artefacts nécessaires et accomplir le rituel par vous-même. Bien que le processus soit long et épuisant, vous parvenez à maîtriser un pouvoir ancien qui vous prépare à l\'affronter.', 4),
(412, 'Au lieu de précipiter votre ascension, vous partez en quête de sagesse et de connaissances. Vous trouvez un ancien sorcier qui accepte de vous enseigner comment canaliser et contrôler ce pouvoir sans être consumé par lui.', 4),
(413, 'Ambitieux et avide de pouvoir, vous décidez que la voix qui vous a offert ce pouvoir n’est qu’un obstacle à votre domination. Vous planifiez de la renverser et de vous approprier ses pouvoirs.', 4),
(421, 'Vous mettez en œuvre vos compétences magiques pour rassembler les artefacts nécessaires et accomplir le rituel par vous-même. Bien que le processus soit long et épuisant, vous parvenez à maîtriser un pouvoir ancien qui vous prépare à l\'affronter.', 4),
(422, 'Grâce à vos compétences diplomatiques, vous réussissez à rallier un groupe de sorciers, d\'aventuriers et de sages prêts à vous aider à accomplir le rituel. Ensemble, vous rassemblez les artefacts nécessaires et effectuez le rituel avec un succès modéré.', 4),
(423, 'Pour accélérer le rituel, vous ne reculez devant rien. Vous sacrifiez des innocents, et le pouvoir qui en découle est immédiat et dévastateur. Toutefois, vous vous sentez plus isolé que jamais, car la culpabilité vous ronge.', 4),
(431, 'Vous avez découvert que l\'artefact peut non seulement vous donner un immense pouvoir, mais aussi contrecarrer la voix. Vous commencez à comprendre son fonctionnement et à l’utiliser pour défier l\'influence de la voix.', 4),
(432, 'Vous décidez de garder l\'artefact secret et de l\'utiliser à des fins nobles : protéger les innocents contre la menace grandissante d’IPSSI. Vous tentez de protéger le royaume des ténèbres tout en conservant votre humanité.', 4),
(433, 'Vous succombez à la tentation de maximiser votre propre pouvoir en utilisant l\'artefact. Vous devenez plus puissant, mais votre âme se corrompt progressivement sous l\'influence du mal ancien.', 4),
(1111, 'Vous arrivez au temple du Cœur d\'IPSSI, où le sceau de l\'amulette vibre. Le culte, accompagné d\'un mage noir et d\'une créature invoquée, prépare le rituel final. Vos choix ont influencé vos alliés, compétences et alignement. Il est temps d\'agir.', 1),
(2222, 'Le voyage touche à sa fin. Face à IPSSI, l’entité maléfique prête à s’échapper, son pouvoir menace Ærial. Dans une salle ancienne, éclairée par des runes spectrales, le combat final commence. Une erreur pourrait détruire le monde.', 2),
(3333, 'Le temps est venu. Après des mois de luttes, vous êtes face à IPSSI, l’entité maléfique menaçant Ærial. Vous avez forgé des alliances et repoussé les gobelins. Avant d’entrer dans la salle du trône, de nouvelles décisions critiques s’imposent.', 3),
(4444, 'IPSSI, l\'ombre ancienne, se dresse devant vous. Il vous fixe, reconnaissant l\'ambition et le pouvoir. La terre tremble, et une voix résonne : \"Tu crois pouvoir me défier ?\" La confrontation est inévitable.', 4),
(11111, 'Votre épée s’abat une dernière fois sur le mage noir, brisant le cercle d’invocation. Les cris des fanatiques s’éteignent, et le temple s’effondre alors qu’IPSSI est repoussé dans les ténèbres, votre courage devenant une légende dans tout Ærial.', 1),
(11112, 'La lumière émanant de l’amulette inonde le temple, consumant les ombres et réduisant le pouvoir d’IPSSI à néant. Alors que le calme revient, vous sentez que l’équilibre du monde est restauré, mais à un prix que seul le temps révélera.', 1),
(11113, 'Il est impossible de négocier, vous avez perdu.', 1),
(11114, 'Le pouvoir de l’artefact explose dans une tempête de lumière et d’ombres, déchirant le lien d’IPSSI avec ce monde. Alors que l’artefact se désintègre entre vos mains, vous réalisez que son sacrifice a offert à Ærial une nouvelle chance de prospérer.', 1),
(11115, 'Vos alliés combattent à vos côtés avec une détermination farouche, leurs cris de guerre résonnant dans le temple. Ensemble, vous détruisez les fanatiques et forcez IPSSI à battre en retraite, laissant derrière vous un royaume uni par ce triomphe commun.', 1),
(11116, 'Votre sabotage précis prend effet au moment parfait, interrompant le rituel et dispersant les fanatiques dans la confusion. Dans un hurlement de rage, IPSSI est banni, incapable de franchir le seuil entre les mondes, grâce à votre esprit aiguisé.', 1),
(22221, 'Vous concentrez votre énergie pour activer l’artefact ancien donné par le conseil ou découvert durant votre périple. Cela nécessite une grande précision et une maîtrise parfaite des runes.', 2),
(22222, 'Vous utilisez une arme ou un sort puissant obtenu lors de votre quête pour frapper IPSSI directement, mettant votre vie en jeu pour l’affaiblir.', 2),
(22223, 'Vous tentez une approche risquée : parler à IPSSI pour la convaincre que son réveil mènera à sa propre destruction ou pour gagner du temps et découvrir une faiblesse.', 2),
(22224, 'Vous utilisez votre lien avec la créature spectrale pour l’appeler et la contraindre à attaquer IPSSI. Cependant, la créature pourrait tenter de se libérer dans ce chaos.', 2),
(22225, 'Vous utilisez l’artefact maudit comme une arme contre IPSSI. Son pouvoir est immense, mais l’utiliser pourrait également vous corrompre ou vous détruire.', 2),
(22226, 'Grâce aux connaissances transmises par le mage, vous identifiez une faille dans les défenses d’IPSSI, permettant une attaque stratégique. Cela nécessite une coordination précise et une compréhension approfondie des runes.', 2),
(33331, 'Dans un dernier rugissement de rage et de désespoir, IPSSI s’effondre sous vos coups, dissipant son ombre maléfique, mais laissant votre peuple épuisé et en quête de reconstruction.', 3),
(33332, 'Le sceau brille d\'une lumière éclatante, emprisonnant IPSSI dans un silence oppressant, mais vous savez que son retour n’est qu’une question de temps.', 3),
(33333, 'Votre dialogue avec IPSSI ouvre une voie vers un fragile équilibre, où la paix demeure possible, mais l\'ombre plane toujours au-dessus du royaume.', 3),
(33334, 'Le piège se referme dans un grondement titanesque, emprisonnant IPSSI dans une dimension lointaine, offrant au royaume une lueur d’espoir.', 3),
(33335, 'Les informations arrachées au gobelin vous offrent la clé pour détruire IPSSI, et c’est avec un plan précis que vous remportez cette victoire décisive.', 3),
(33336, 'Vos alliés, unis par une volonté d’acier, repoussent l’influence d’IPSSI, et ensemble, vous triomphez de l’obscurité pour rétablir la lumière.', 3),
(44441, 'Vous possédez un pouvoir immense obtenu par destruction, manipulation ou fusion. Vous lancez un assaut direct contre l\'entité maléfique, repoussant les limites de votre force dans une tentative désespérée de la submerger.', 4),
(44442, 'Plutôt que d’affronter IPSSI de front, vous utilisez sagesse, connaissances et artefacts rassemblés pour tenter de manipuler ou soumettre l’entité à votre volonté. Vous cherchez à exploiter ses faiblesses cachées et à la rendre vulnérable.', 4),
(44443, 'Maîtrisant artefacts et rituels anciens, vous pouvez accomplir un rituel pour sceller IPSSI à jamais. Cependant, un tel acte exige un sacrifice : votre vie, votre âme ou l\'une de vos plus précieuses ressources.', 4),
(44444, 'Vous fusionnez le pouvoir volé à la voix et celui acquis par votre force. Ensemble, ils forment une puissance inimaginable que vous utilisez pour écraser IPSSI.', 4),
(44445, 'Vous avez rassemblé des alliés puissants et mettez en œuvre leur soutien. En unissant vos forces et leurs compétences, vous espérez vaincre IPSSI. Mais même avec cette alliance, le combat sera difficile.', 4),
(44446, 'L\'artefact acquis a des pouvoirs incommensurables. Vous l’utilisez pour réveiller l’essence la plus pure d’IPSSI, espérant qu’en l’affrontant sous sa forme ultime, vous pourrez le contrôler à votre guise ou le détruire définitivement.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `leader_board`
--

CREATE TABLE `leader_board` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `selected_race_id` int(11) NOT NULL,
  `leader_board_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `strength` int(11) NOT NULL,
  `intelligence` int(11) NOT NULL,
  `wisdom` int(11) NOT NULL,
  `agility` int(11) NOT NULL,
  `hp` int(11) NOT NULL,
  `what_story_id` int(11) NOT NULL,
  `leader_board_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`id`, `strength`, `intelligence`, `wisdom`, `agility`, `hp`, `what_story_id`, `leader_board_id`, `name`) VALUES
(1, 3, 3, 2, 3, 10, 1, NULL, 'Humain'),
(2, 1, 5, 4, 4, 10, 2, NULL, 'Elfe'),
(3, 5, 2, 3, 1, 10, 3, NULL, 'Nain'),
(4, 5, 0, 1, 2, 10, 4, NULL, 'Orque');

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `story_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `story_description`) VALUES
(1, 'Un jour, une pluie de cendres noires tombe sur votre paisible village, accompagnée d’un murmure étrange. Une vieille femme vous désigne comme « l’Élu » et vous confie une amulette. Peu après, des bandits attaquent le village pour s’en emparer.'),
(2, 'En explorant une bibliothèque millénaire, vous trouvez un parchemin contenant un avertissement sur le retour du mal ancien. Alors que vous déchiffrez le texte, un piège magique s’active, libérant une créature spectrale qui vous attaque.'),
(3, 'Votre mine est attaquée par une horde de gobelins, probablement envoyés par une force obscure. Votre frère aîné est capturé et emmené dans les tunnels. Vous vous retrouvez à devoir choisir entre sauver votre clan ou poursuivre les gobelins.'),
(4, 'Banni de votre clan, vous errez dans les terres désolées. Une nuit, une voix vous offre un pouvoir illimité contre votre loyauté au mal ancien, mais pour sceller le pacte, vous devez massacrer un village humain voisin.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C1AB5A92362B62A0` (`episode_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DDAA1CDAAA5D4036` (`story_id`);

--
-- Indexes for table `leader_board`
--
ALTER TABLE `leader_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98197A65861DAA93` (`selected_race_id`),
  ADD KEY `IDX_98197A65DC4D339C` (`leader_board_id`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DA6FBBAFEAC15B4A` (`what_story_id`),
  ADD KEY `IDX_DA6FBBAFDC4D339C` (`leader_board_id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4333;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44447;

--
-- AUTO_INCREMENT for table `leader_board`
--
ALTER TABLE `leader_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `choice`
--
ALTER TABLE `choice`
  ADD CONSTRAINT `FK_C1AB5A92362B62A0` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`);

--
-- Constraints for table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `FK_DDAA1CDAAA5D4036` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `FK_98197A65861DAA93` FOREIGN KEY (`selected_race_id`) REFERENCES `race` (`id`),
  ADD CONSTRAINT `FK_98197A65DC4D339C` FOREIGN KEY (`leader_board_id`) REFERENCES `leader_board` (`id`);

--
-- Constraints for table `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `FK_DA6FBBAFDC4D339C` FOREIGN KEY (`leader_board_id`) REFERENCES `leader_board` (`id`),
  ADD CONSTRAINT `FK_DA6FBBAFEAC15B4A` FOREIGN KEY (`what_story_id`) REFERENCES `story` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
