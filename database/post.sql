-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 mars 2021 à 12:07
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `devblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `ID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `image` longtext NOT NULL,
  `description` longtext NOT NULL,
  `auteurID` int(11) NOT NULL,
  `publishedat` timestamp NOT NULL DEFAULT current_timestamp(),
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`ID`, `title`, `subtitle`, `image`, `description`, `auteurID`, `publishedat`, `categoryID`) VALUES
(4, 'Le développement front-end : ', 'conception de l’interface graphique utilisateur', 'user-interface-t.jpg', 'Les deux interfaces sur lesquelles interagiront l’expert-comptable et le client de l’expert sont considérées comme du front-end. En effet, il s’agit de la partie visible de l’application, destinée à être manipulée par un tiers.\r\n\r\nIl ne faut donc pas confondre « front-end » et « back-end » avec « interface client » et « panneau administrateur ». Dans la conception graphique du premier comme du second, ce sont les compétences d’un développeur front-end qui seront nécessaires.\r\n\r\nEn effet, celui-ci va mettre en place les éléments graphiques qui permettront à l’utilisateur final de se repérer sur l’interface et la prendre facilement en mains. Il va également développer les interactions, les animations, le responsive design,… Il travaillera conjointement avec au moins un webdesigner et, idéalement, un expert UX afin de livrer une interface ergonomique et ludique.\r\n\r\nLes compétences du développeur front-end sont, au minimum :\r\n\r\nHTML\r\nCSS\r\nJavascript\r\nIl peut aussi se reposer sur les frameworks suivants :\r\n\r\njQuery\r\nAngular\r\nBootstrap\r\nFoundation\r\nSemantic UI\r\nPure…\r\nLa liste est très loin d’être exhaustive. Il existe un grand nombre de bibliothèques et de frameworks (que vous pouvez consulter sur le guide de l’Open Source), certains possédant des spécificités qui font leur réputation : légèreté, ergonomie UX, type de projet,… Dans tous les cas, le développement front-end d’une application demandera généralement le choix d’un framework dans sa conception, pour des questions de coûts, de temps et de sécurité.', 1, '2021-03-28 10:40:52', 1),
(5, 'Le développement back-end', 'clé de voûte de l’application web', 'hqdefault.jpg', 'Une belle interface reste une coquille vide si une équipe de développement back-end n’intervient pas sur notre application web. En accord avec le cahier des charges, l’équipe de développeurs back-end va travailler au développement des fonctionnalités de l’application mobile.\r\n\r\nLe travail du dev back-end est invisible pour l’utilisateur final, mais sans son intervention, pas d’application. La partie back-end va construire, développer et mettre en interaction trois piliers essentiels au fonctionnement de l’application :\r\n<b>\r\nLe serveur d’hébergement\r\nL’application web\r\nLa base de données\r\n</b>\r\nLe serveur est le disque dur sur lequel seront enregistrées votre application, partie front-end. Tous les fichiers composant les pages, le design, les éléments qui construisent la partie visible de votre application.\r\n\r\nLa base de données, quant à elle, est construite par le développeur back-end de sorte à conserver dans des tableaux spécifiques toutes les données nécessaires au fonctionnement de l’application (ID d’un utilisateur, droits d’utilisateurs, stockage des mots de passe, etc.).\r\n\r\nPour que la base de données puisse être mise à jour, modifiée, ou que des éléments (nouvel utilisateur, par exemple) puissent s’intégrer à la base pré-existante, le développeur back-end va utiliser des langages dynamiques, lesquels vont connecter la base de données avec l’application.\r\n\r\nPour cela, le développeur back-end va avoir tendance à utiliser les langages :\r\n<b>\r\nPHP\r\nRuby\r\nPython\r\nSQL\r\n</b>\r\nPour les mêmes raisons de coûts, rapidités et rentabilités que le développeur front-end, le dev back-end utilise généralement des frameworks tels que :\r\n<b>\r\nSymfony\r\ndjango\r\nRuby on Rails\r\nAngular\r\nMeteor\r\n</b>\r\nSi, traditionnellement, on attribue le développement PHP au développement du back-end, cette tendance tend à changer, notamment grâce à l’essor d’Angular. Ainsi, il n’est pas impossible pour un développeur back-end de s’orienter vers du développement en js. Ces profils sont d’ailleurs très recherchés.', 2, '2021-03-28 10:51:35', 2),
(6, '\r\n20 Frameworks Front-end pour vos créations web', 'Les Frameworks Front-end', 'frameworks.png', '<h4>1) Bootstrap</h4>\r\nBootstrap est sans doute la plus grande référence des frameworks front-end. Qui plus est, il existe de nombreux templates Bootstrap pour créer un site web.\r\n\r\n<h4>2) Semantic UI</h4>\r\nSemantic UI est un autre framework de grande qualité qui brille notamment par sa simplicité.\r\n\r\n<h4>3) Clank</h4>\r\nCe framework se focalise sur la création d’applications pour mobiles et tablettes.\r\n\r\n<h4>4) Skeleton</h4>\r\nCe framework est un vrai poids plume avec seulement 400 lignes de code. Skeleton va droit à l’essentiel puisqu’il ne contient que les éléments fondamentaux pour créer un site web.\r\n\r\n<h4>5) KickStart</h4>\r\nLéger et fonctionnel, KickStart inclut tout le nécessaire pour créer un site internet en un temps record.\r\n\r\n<h4>6) Foundation</h4>\r\nCe framework très avancé permet de créer des sites de grande ampleur et complètement responsive, mais n’est pas le plus accessible.\r\n\r\n<h4>7) Kube</h4>\r\nKube est un framework front-end riche et complet pour les développeurs professionnels et les designers.\r\n\r\n<h4>8) UIkit</h4>\r\nCe framework très modulable s’est taillé une vraie réputation, notamment pour créer des interfaces utilisateur avancées.\r\n\r\n<h4>9) PureCSS</h4>\r\nCréé par les développeurs de Yahoo!, Pure est un framework léger idéal pour créer des sites parfaitement responsive.\r\n\r\n<h4>10) KNACSS</h4>\r\nCe framework français a tout ce qu’il faut pour lancer la création de toute sorte de site internet.\r\n\r\n<h4>11) GroundworkCSS</h4>\r\nUn framework front-end flexible doté d’un système de grilles particulièrement abouti.\r\n\r\n<h4>12) Cascade</h4>\r\nCascade se distingue de Bootstrap en donnant plus de contrôle au développeur insi qu’en étant compatible avec les anciennes versions des navigateurs web.\r\n\r\n<h4>13) Jeet</h4>\r\nUn système de grille très avancé qui vous aide à créer vos sites plus vite avec moins de code.\r\n\r\n<h4>14) Milligram</h4>\r\nEncore un framework CSS très léger qui se distingue notamment par un système de grille singulier.\r\n\r\n<h4>15) MontageJS</h4>\r\nMontageJS se spécialise dans la construction d’applications sur une seule page, garantissant une expérience utilisateur maximale.\r\n\r\n<h4>16) Susy</h4>\r\nSusy n’est pas un framework à proprement parler, mais plutôt un générateur de grilles « à la demande » qui peut être extrêmement utile.\r\n\r\n<h4>17) Metro UI CSS</h4>\r\nInspiré de l’interface de Windows 8, ce framework est très simple d’utilisation et personnalisable.\r\n\r\n<h4>18) Topcoat</h4>\r\nCréé par Adobe, Topcoat met la priorité sur la performance tout en étant assez customisable.\r\n\r\n<h4>19) BlueTrip</h4>\r\nComplet et pratique, BlueTrip permet de ne pas perdre de temps et de se consacrer pleinement aud esign de son site.\r\n\r\n<h4>20) Ink</h4>\r\nInk est un framework front end pensé pour développer plus vite et plus simplement les interfaces utilisateur.', 1, '2021-03-28 10:59:05', 2),
(7, '14 Best Android Frameworks', 'for App Development in 2020', 'app-development-framework.png', 'In the past couple of years, more and more businesses realized that apps are important to their brand experiences, as they can help establish a strong connection with customers. Over 2 million apps were available on Google Play Store for download in the third quarter of 2018, Statista reports. Today,  many companies big and small include mobile applications into their marketing strategies, as the digital space provides a wide array of engagement opportunities.\r\n\r\nInstalled on the vast majority of existing smartphones, Android is often considered to be the best OS when it comes to building custom mobile apps. Many developers prefer Android as it is highly customisable and has a large community ready to help and provide useful information. Android also has many integrated tools that help enhance the efficiency of an app while reducing the number of actions that need to be taken to perform a task.\r\n\r\nStill, choosing the right Android framework for app development is not easy due to a large number of different options available. To lend you a helping hand, we have created a comprehensive list of 14 best Android frameworks that can make the app development process fast and easy. These frameworks help in reducing the effort that developers put in by boosting productivity and offering technology solutions to handle complex tasks.\r\n\r\n<h3>Top Frameworks For Android App Development</h3>\r\nBefore we start, it is important to note that we categorize 14 top Android frameworks by their capabilities. Let’s have a closer look at the best frameworks for Android application development and what features they offer.\r\n\r\nBest Android App Development Framework: Games Development\r\nUnity\r\nUnity is known as the best Android development framework for development of multi-platform 2D, 3D, augmented reality, and virtual reality games as well as other simulations. Developed by Unity Technologies, this game engine comes in free and professional editions. You can work with Unity in C# and UnityScript, the language of Unity that is similar to JavaScript. Unity is a cross-platform framework that and enables game developers to export their games to multiple platforms, like iOS, Web, PlayStation, Windows, Xbox, and more.\r\n\r\nBeing a physics engine, it can control the behavior of different game objects, lighting rendering, momentum, and graphic elements. Similar to many software development tools, Unity has a built-in editor that enables you to edit images and manage animations from the “Animator” window. As of 2018, half of new mobile games and 60% of the augmented reality and virtual reality experiences are created with the Unity engine. All in all, It is an easy-to-use platform that allows game developers to create amazing content and a strong connection with the audience. In other words, the platform is a great choice for interactive experiences.\r\n\r\n<h4>Best Frameworks For Android Development: High Performance</h4>\r\n<h5>Kotlin</h5>\r\nOriginated in the minds of JetBrains, Kotlin is a statically-typed, modern programming language solution for Android that combines the features functional and object-oriented programming. In 2017, Google declared Kotlin as an official IDE (Integrated Development Environment) for Android development. It runs on Java Virtual Machine (JVM) and is 100% interoperable with the Java language. In many scenarios, it is considered as a replacement for Java as it significantly streamlines the development process. Many programmers have adopted Kotlin as their primary language for Android.\r\n\r\nApplication developed with Kotlin also run as fast as the ones created with Java as they share a similar bytecode structure. In the recent Stack Overflow developer survey, Kotlin was ranked as the fourth most loved programming language. In 2020, many of the large enterprises are planning to move or are in the process of moving to Kotlin. Trello, Pinterest, Basecamp, Uber, Twitter, Airbnb, and Netflix are all migrating to Kotlin for Android application development. Since its launch, Kotlin has proved itself as a highly intuitive platform for Android app development.\r\n\r\n<h5>Corona SDK</h5>\r\nDeveloped in 2009, Corona SDK is a perfect software development kit for building speedy apps and games. This general-purpose, cross-platform framework enables 10x faster development than other Android app frameworks. Corona achieves this by integrating Lua, a lightweight and multi-paradigm programming language, which is itself layered on top of C++/OpenGL, and allows to achieve high speed, usability, and flexibility. \r\n\r\nHighly popular among game developers, Corona is free and available both Mac OS X and Windows, with real-time testing support. In addition, the framework has native UI support, over 500 APIs, and a dynamic advertising platform built for developers. Its API suite features is feature-rich, with graphics, networking, widgets, particle effects, and more. Simple to understand and integrate into Android, Corona SDK has gained notable popularity among Android app developers.\r\n\r\n<h5>Sencha Touch</h5>\r\nPerceived as one of the best Android development frameworks by Android’s development community, Sencha Touch is an enterprise-first framework built for native mobile application development. It is based on JavaScript and HTML5, which allows for creating universal applications for Android. \r\n\r\nSencha Touch comes with nearly 50 built-in UI components and native themes, enabling developers create engrossing and eye-catching apps. The framework utilizes hardware acceleration techniques, so the apps created with its help exhibit high performance. Big companies choose Sencha Touch due its high-level compatibility and flexibility, responsive touch features, and fast execution. Apps built using Sencha Touch are rich in fluid animations, smooth scrolling, and are highly adaptive. Its huge collection of themes, enriched UI, integrated MVC system, and a vast data package makes Sencha Touch the leading Android application development framework.\r\n\r\n<h5>TheAppBuilderh</h5>\r\nPowered by HTML5, TheAppBuilder is an app building framework that supports a codeless user interface, which means users do not need to know how to code in any language to create a solid app. Plus, with its drag-and-drop interface, developers can build applications really quickly. The framework comes with pre-built blocks which include features like feedback, content updates, polls, push notifications, and much more.\r\n\r\nAndroid app development framework also got traction from users because it allows them to submit their apps directly to Google Play and boasts social network integration. Plus, it generates analytics reports, so users could identify the issues that slow down their apps. In most cases, businesses use TheAppBuilder to cut costs. \r\n\r\n<h5>SproutCore</h5>\r\nSproutCore is an open-source JavaScript framework used for developing blazing fast applications with advanced features. Developed by Apple, this HTML5-driven framework offers users a clear MVC design that enables performance optimization and scalability for applications. Unlike other JavaScript libraries, SproutCore comes with a complete set of tools required to build a desktop-like application in a browser, including routing, UI components, testing and deployment tools.\r\n\r\nWith more than 50,000 items in the toolset, maintainable application code, and well thought out business logic behind it, SproutCore has become a top framework for Android app development. These features, when combined, provide a rock-solid foundation for building feature-packed, high-performance applications.\r\n\r\n<h4>Best Android Frameworks: Native Apps Development</h4>\r\n<h5>React Native</h5>\r\nBacked by Facebook, React Native is a powerful open-source framework that offers ample support to other development tools and their IDEs. It is based on React, a JS library for web solutions. Companies like Instagram, Walmart, Airbnb, Tesla, as well as many other Fortune 500 companies, use the framework to develop native mobile apps. As most of the React Native APIs are cross-platform, developers can write code once and then run it anywhere, which improves development speed and helps cut costs.\r\nReact Native uses building blocks similar to the ones employed in most Android development frameworks. With the hot-reload option in React Native, developers can link updated files while retaining the current state of the app. The developer community of React Native has been growing much faster than Facebook’s expectations. \r\n\r\nGoogle Trends indicate that the framework has been gaining more and more traction in the past few years. As of today, around 1600 developers have used this framework. \r\n\r\n<h5>Xamarin</h5>\r\nOwned by Microsoft, and one of the top Android development frameworks, Xamarin offers an advanced toolset that enables developers to build native apps for multiple mobile platforms on a shared C# codebase. With Microsoft’s cloud testing service, the apps built using Xamarin can be tested on numerous devices. Moreover, its code-sharing feature makes it developers’ favorite as it reduces coding time and number of bugs in the software development process.\r\nCompared to other Android frameworks, Xamarin is one of the oldest cross-platform frameworks and is already used by 1.4 million developers across 120 countries. \r\n\r\nXamarin became a part of Visual Studio IDE,  which made large companies in industries like healthcare, and energy shift to using this framework. Xamarin has been around for a while, but the number of developers using it has increased a lot over the years as compared to other frameworks for Android.\r\n\r\n<h5>Appcelerator Titanium</h5>\r\nThe best Android framework according to some developers, Appcelerator Titanium is an open-source platform for building native apps with a single JavaScript code base.  Titanium became popular as it allows for creating multi-platform mobile apps using around 60%-90% of the existing code. The framework employs the JavaScript programming language to ensure high performance of applications.\r\n\r\nTitanium can be used to develop solid games, while mobile apps built with Appcelerator Titanium can utilize hardware-specific features like Android menu buttons, OS-centric controls, and platform-appropriate notifications. Currently, over 345,577,760 apps run through this Android application framework. Also, it provides many other useful features like automated testing on mobile devices, application monitoring, and performance regulation.\r\n\r\n<h4>Best Android Frameworks: Hybrid Apps Development</h4>\r\n<h5>Ionic</h5>\r\nIonic is a free and open-source framework certified by MIT (Massachusetts Institute of Technology) and allows developers to build progressive hybrid apps with the help of HTML5, CSS3, and JavaScript.  Ionic has become one of the most famous frameworks for Android development due to its cross-platform functionalities and the ability to integrate AngularJS.\r\nIt hosts a simple CLI (Command-line Interface ) that facilitates features like emulators, live reload, and logging. As it is Cordova and Angular based, Ionic has a large community. Around 4 million Ionic based apps were built, with more than 5 million developers in around 200 countries worldwide using the framework. Moreover, it integrates with many services, including Google Play, Instagram, and many more.\r\n\r\n<h5>Flutter</h5>\r\nDesigned and maintained by Google, Flutter is a multi-platform mobile app SDK which can be used to build applications, but in a way that is different from other Android app frameworks. It simplifies cross-platform development process and is written in the Dart language. When it comes to selecting a framework, Flutter is the best choice for hybrid app development.\r\nGoogle’s Flutter framework uses a 2D rendering engine called Skia for visuals that are similar to material design and the Cupertino style. Flutter also serves as a solid testing framework, enabling developers to perform UI, unit, and functionality tests. Moreover, Flutter has best-in-class hot-reload functionality, which allows for seamless testing without the need to restart the application.\r\n\r\n<h5>Cordova</h5>\r\nCordova is a free open source Android framework that allows developers to build multi-platform apps using a single code base like Appcelerator Titanium. It is a hybrid framework that enables app development based on standard web technologies, including JavaScript, HTML5, and CSS3. Cordova serves as a bridge between a mobile application and a web application.\r\nAlso, it can access native device APIs, making it hard to identify whether the app has been developed using a native language or not. Primarily designed to develop online apps, Cordova also provides support for offline scenarios, making it a perfect platform for developing desktop apps as well.\r\n\r\n<h5>PhoneGap</h5>\r\nSupported by Adobe and Apache, PhoneGap is an open-source Android app framework that allows software engineers to build apps using web development technologies (HTML5, CSS3, and JavaScript). With PhoneGap, developers can instantly see changes during the development of the apps. Commonly used for developing hybrid mobile applications, PhoneGap provides best-in-class performance as well as the freedom to work without hardware-specific limitations.\r\nIn addition to Android, the platform helps developing apps for several other operating systems. The latest version of this cross-platform framework comes with built-in Cordova WebView for integrating PhoneGap code into larger native apps. Its extended plugin library, third-party software tools, and growing community make it stand out among other Android app development frameworks\r\n\r\n<h5>NativeScript</h5>\r\nListed as a top framework for hybrid apps development, NativeScript is a free open-source framework that enables developers to create applications using Vue, TypeScript, and Angular. This Android framework is backed by a Bulgarian software company Telerik. From Gradle to CocoaPods, developers can easily reuse a wide array of plugins from directly in the projects with NativeScript. \r\nWrapping Up\r\nSelecting the right Android framework for app development is a complicated process. If you are looking for a one-shot solution for the app development, you should know that, since every business and project has different requirements, what works best for one company might not work for another. First, you should consider the capabilities of each of these frameworks, then focus on your project objectives, and after, pick out the platform from the ones mentioned above — based on your business needs. That is the way you can guarantee your choice will have a positive impact. ', 1, '2021-03-28 11:11:29', 4),
(8, 'HOW DOES ARTIFICIAL INTELLIGENCE WORK?', 'Can machines think? — Alan Turing, 1950', 'ai.png', 'Less than a decade after breaking the Nazi encryption machine Enigma and helping the Allied Forces win World War II, mathematician Alan Turing changed history a second time with a simple question: \"Can machines think?\" \r\n\r\nTuring\'s paper \"Computing Machinery and Intelligence\" (1950), and it\'s subsequent Turing Test, established the fundamental goal and vision of artificial intelligence.   \r\nAt it\'s core, AI is the branch of computer science that aims to answer Turing\'s question in the affirmative. It is the endeavor to replicate or simulate human intelligence in machines.\r\n\r\nThe expansive goal of artificial intelligence has given rise to many questions and debates. So much so, that no singular definition of the field is universally accepted.  \r\n\r\nThe major limitation in defining AI as simply \"building machines that are intelligent\" is that it doesn\'t actually explain what artificial intelligence is? What makes a machine intelligent?\r\n\r\nIn their groundbreaking textbook Artificial Intelligence: A Modern Approach, authors Stuart Russell and Peter Norvig approach the question by unifying their work around the theme of intelligent agents in machines. With this in mind, AI is \"the study of agents that receive percepts from the environment and perform actions.\" (Russel and Norvig viii)\r\n\r\nNorvig and Russell go on to explore four different approaches that have historically defined the field of AI: \r\n\r\n<b>\r\n1.Thinking humanly\r\n2.Thinking rationally\r\n3.Acting humanly \r\n4.Acting rationally\r\n</b>\r\n\r\nThe first two ideas concern thought processes and reasoning, while the others deal with behavior. Norvig and Russell focus particularly on rational agents that act to achieve the best outcome, noting \"all the skills needed for the Turing Test also allow an agent to act rationally.\" (Russel and Norvig 4).\r\n\r\nPatrick Winston, the Ford professor of artificial intelligence and computer science at MIT, defines AI as  \"algorithms enabled by constraints, exposed by representations that support models targeted at loops that tie thinking, perception and action together.\"\r\nWhile these definitions may seem abstract to the average person, they help focus the field as an area of computer science and provide a blueprint for infusing machines and programs with machine learning and other subsets of artificial intelligence. \r\n\r\nWhile addressing a crowd at the Japan AI Experience in 2017,  DataRobot CEO Jeremy Achin began his speech by offering the following definition of how AI is used today:\r\n\r\n\"AI is a computer system able to perform tasks that ordinarily require human intelligence... Many of these artificial intelligence systems are powered by machine learning, some of them are powered by deep learning and some of them are powered by very boring things like rules.\" ', 2, '2021-03-29 09:48:14', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_ibfk_1` (`auteurID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`auteurID`) REFERENCES `admin` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;