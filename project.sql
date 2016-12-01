-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2016 at 09:15 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `ProductionId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DateReleased` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Description` varchar(5000) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`ProductionId`, `Name`, `DateReleased`, `Description`, `Country`, `LastUpdate`, `Image`) VALUES
(1, 'Marvel''s Agents of S.H.I.E.L.D.', '2016-11-22 22:41:46', 'American television series created for ABC by Joss Whedon, Jed Whedon, and Maurissa Tancharoen, based on the Marvel Comics organization S.H.I.E.L.D. (Strategic Homeland Intervention, Enforcement, and Logistics Division), a fictional peacekeeping and spy agency in a world of superheroes. It is set in the Marvel Cinematic Universe (MCU), sharing continuity with the films and other television series of the franchise. The series is produced by ABC Studios, Marvel Television, and Mutant Enemy Productions, with Jed Whedon, Tancharoen, and Jeffrey Bell serving as showrunners.', 'United States', '2016-11-22 22:41:46', 'agentsofshield.jpg'),
(2, 'Star Wars Rebels', '2014-10-03 05:00:00', 'Fourteen years after the fall of the Galactic Republic and the Jedi Order in Star Wars: Episode III – Revenge of the Sith and the rise of the Galactic Empire, a motley group of rebels unite aboard a freighter starship called the Ghost, and conduct covert operations against the Imperial garrison on and around the planet Lothal.', 'United States', '2016-11-06 20:29:59', ''),
(5, 'Game of Thrones', '2016-11-22 20:20:09', '&lt;p&gt;Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss. It is an adaptation of A Song of Ice and Fire, George R. R. Martin&#39;s series of fantasy novels, the first of which is A Game of Thrones. It is filmed at Titanic Studios in Belfast, on location elsewhere in the United Kingdom, and in Croatia, Iceland, Malta, Morocco, Spain, and the United States. The series premiered on HBO in the United States on April 17, 2011, and its sixth season ended on June 26, 2016. The series was renewed for a seventh season, scheduled to premiere in mid-2017, with a total of seven episodes[1] and will conclude with its eighth season in 2018.[2]&lt;/p&gt;\r\n\r\n&lt;p&gt;Set on the fictional continents of Westeros and Essos, it has several plot lines and a large ensemble cast. The first story arc follows a dynastic conflict among competing claimants for succession to the Iron Throne of the Seven Kingdoms, with other noble families fighting for independence from the throne. The second covers attempts to reclaim the throne by the exiled last scion of the realm&#39;s deposed ruling dynasty; the third chronicles the threat of the impending winter and the legendary creatures and fierce peoples of the North.&lt;/p&gt;\r\n', 'United States', '2016-11-22 20:20:09', 'gameofthrones.jpg'),
(6, 'Daredevil', '2016-11-27 20:28:32', '&lt;p&gt;&lt;strong&gt;Marvel&#39;s Daredevil, or simply Daredevil, is an American web television series created for Netflix by Drew Goddard, based on the Marvel Comics character of the same name. It is set in the Marvel Cinematic Universe (MCU), sharing continuity with the films of the franchise, and is the first in a series of shows that will lead up to The Defenders crossover miniseries.&lt;br /&gt;\r\nThe first season sees lawyer-by-day Matt Murdock use his heightened senses from being blinded as a young boy to fight crime at night on the streets of New York City&#39;s Hell&rsquo;s Kitchen neighborhood as Daredevil, while uncovering a conspiracy of the criminal underworld being led by Wilson Fisk.[3] In the second season, Murdock continues to balance life as a lawyer and Daredevil, while crossing paths with Frank Castle / Punisher, a vigilante with far deadlier methods as well as the return of his old girlfriend&mdash;Elektra Natchios.&lt;/strong&gt;&lt;/p&gt;\r\n', 'United States', '2016-11-27 20:28:32', 'Demolidor.jpg'),
(7, 'Jessica Jones', '2016-11-22 06:00:00', '&lt;p&gt;&lt;strong&gt;Marvel&#39;s Jessica Jones&lt;/strong&gt;, or simply Jessica Jones, is an American web television series created for Netflix by Melissa Rosenberg, based on the Marvel Comics character of the same name. It is set in the Marvel Cinematic Universe (MCU), sharing continuity with the films of the franchise, and is the second in a series of shows that will lead up to The Defenders crossover miniseries. The series is produced by Marvel Television in association with ABC Studios and Tall Girls Productions, with Rosenberg serving as showrunner.&lt;/p&gt;\r\n\r\n&lt;p&gt;Krysten Ritter stars as Jessica Jones, a former superhero who opens her own detective agency. Mike Colter, Rachael Taylor, Wil Traval, Erin Moriarty, Eka Darville, Carrie-Anne Moss, and David Tennant also star in season one.&lt;/p&gt;\r\n', 'United States', '2016-11-27 20:29:55', 'jessicajones.jpg'),
(8, 'Luke Cage', '2016-09-30 05:00:00', '&lt;p&gt;Marvel&#39;s Luke Cage, or simply Luke Cage, is an American web television series created for Netflix by Cheo Hodari Coker, based on the Marvel Comics character of the same name. It is set in the Marvel Cinematic Universe (MCU), sharing continuity with the films of the franchise and is the third in a series of shows that will lead up to The Defenders crossover miniseries. The series is produced by Marvel Television in association with ABC Studios, with Coker serving as showrunner.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mike Colter stars as Luke Cage, a former convict with superhuman strength and unbreakable skin who now fights crime. Mahershala Ali, Simone Missick, Theo Rossi, Erik LaRay Harvey, Rosario Dawson, and Alfre Woodard also star. Development of the series began in late 2013. In December 2014, Colter was cast as Cage, to appear first in Marvel&#39;s Jessica Jones, with Coker hired as the showrunner in March 2015. Filming began in New York City in September 2015 and concluded in March 2016. The series is set in Harlem, and looked to replicate its unique atmosphere and culture, particularly with music, which Coker put emphasis on throughout production. The series also comments on race, politics, and the Black Lives Matter movement.&lt;/p&gt;\r\n\r\n&lt;p&gt;The series premiered on September 28, 2016, in Harlem, with the full series of 13 episode releasing on Netflix on September 30. The series was met with positive reviews, with praise going to Colter, Missick, Ali and Woodard for their performances, the 1970s style, and music, while its structure and some of the writing was viewed as some of the series&#39; shortcomings.&lt;/p&gt;\r\n', 'United States', '2016-11-15 21:01:50', ''),
(9, 'Star Wars: Episode IV &ndash; A New Hope', '1977-05-25 05:00:00', '&lt;p&gt;Star Wars (later retitled Star Wars: Episode IV &ndash; A New Hope)[7][8] is a 1977 American epic space opera[9][10] film written and directed by George Lucas. The first installment in the original Star Wars trilogy, it stars Mark Hamill, Harrison Ford, Carrie Fisher, Peter Cushing, and Alec Guinness. David Prowse, James Earl Jones, Anthony Daniels, Kenny Baker and Peter Mayhew co-star in supporting roles.&lt;/p&gt;\r\n\r\n&lt;p&gt;The plot focuses on the Rebel Alliance, led by Princess Leia (Fisher), and its attempt to destroy the Galactic Empire&#39;s space station, the Death Star. This conflict disrupts the isolated life of farmhand Luke Skywalker (Hamill) who inadvertently acquires a pair of droids that possess stolen architectural plans for the Death Star. When the Empire begins a destructive search for the missing droids, Skywalker accompanies Jedi Master Obi-Wan Kenobi (Guinness) on a mission to return the plans to the Rebel Alliance and rescue Leia from her imprisonment by the Empire.&lt;/p&gt;\r\n', 'United States', '2016-11-15 21:05:14', ''),
(10, 'The Simpsons', '1989-12-17 06:00:00', '&lt;p&gt;The Simpsons is an American animated sitcom created by Matt Groening for the Fox Broadcasting Company.[1][2][3] The series is a satirical depiction of working-class life epitomized by the Simpson family, which consists of Homer, Marge, Bart, Lisa, and Maggie. The show is set in the fictional town of Springfield and parodies American culture, society, television, and the human condition.&lt;/p&gt;\r\n\r\n&lt;p&gt;The family was conceived by Groening shortly before a solicitation for a series of animated shorts with producer James L. Brooks. Groening created a dysfunctional family and named the characters after members of his own family, substituting Bart for his own name. The shorts became a part of The Tracey Ullman Show on April 19, 1987. After a three-season run, the sketch was developed into a half-hour prime time show and became an early hit for Fox, becoming the network&#39;s first series to land in the Top 30 ratings in a season (1989&ndash;90).&lt;/p&gt;\r\n', 'United States', '2016-11-15 21:07:35', ''),
(11, 'Doctor Who', '2016-11-27 21:31:39', '&lt;p&gt;Doctor Who is a British science-fiction television programme produced by the BBC since 1963. The programme depicts the adventures of the Doctor, a Time Lord&mdash;a spacefaring and time-travelling humanoid alien. He explores the universe in his TARDIS, a sentient time-travelling space ship. Its exterior appears as a blue British police box, which was a common sight in Britain in 1963 when the series first aired. Accompanied by companions, the Doctor combats a variety of foes, while working to save civilisations and help people in need.&lt;/p&gt;\r\n\r\n&lt;p&gt;The show is a significant part of British popular culture,and elsewhere it has become a cult television favourite. The show has influenced generations of British television professionals, many of whom grew up watching the series.&nbsp;The programme originally ran from 1963 to 1989. There was an unsuccessful attempt to revive regular production in 1996 with a backdoor pilot, in the form of a television film. The programme was relaunched in 2005 by Russell T Davies, who was showrunner and head writer for the first five years of its revival, and produced in-house by BBC Wales in Cardiff. The first series of the 21st century featured Christopher Eccleston in the title role and was produced by the BBC.&nbsp;Doctor Who also spawned spin-offs in multiple media, including Torchwood (2006&ndash;2011) and The Sarah Jane Adventures (2007&ndash;2011), both created by Russell T Davies; K-9 (2009&ndash;2010); Class (2016); and a single pilot episode of K-9 and Company (1981). There also have been many spoofs and cultural references to the character in other media.&lt;/p&gt;\r\n\r\n&lt;p&gt;Twelve actors have headlined the series as the Doctor. The transition from one actor to another is written into the plot of the show as is the differing approach to the role that each brings, under the concept of regeneration into a new incarnation. The show&#39;s premise is that this is a life process of Time Lords through which the character of the Doctor takes on a new body and, to some extent, new personality, which occurs after sustaining an injury which would be fatal to most other species. Each actor&#39;s portrayal differs, but they are all intended to be aspects of the same character and form part of the same storyline. The time-travelling nature of the plot means that, on occasion, different Doctors have met each other. Peter Capaldi took on the role after Matt Smith&#39;s exit in the 2013 Christmas special &quot;The Time of the Doctor&quot;.&lt;/p&gt;\r\n', 'United Kingdom', '2016-11-27 21:31:39', 'doctor_who.jpg'),
(12, 'One-Punch Man', '2015-10-05 05:00:00', '&lt;p&gt;One-Punch Man is an ongoing Japanese superhero parody webcomic created by an author using the pseudonym One which began publication in early 2009.The series quickly went viral, surpassing 7.9 million hits in June 2012.&nbsp;The Japanese shortened name Wanpanman is a play on the long-running children&#39;s character Anpanman,&nbsp;wanpan being a contraction of wanpanchi (&quot;one punch&quot;).&nbsp;One-Punch Man tells the story of Saitama, a completely overpowered superhero who has grown bored by the absence of challenge in his fight against evil.&lt;br /&gt;\r\nOn an Earth-like supercontinent planet (mentioned to be Earth in the English dub), strange monsters have been mysteriously appearing and causing disasters resulting in the world&#39;s superheroes rising to combat them alongside the local supervillains. Saitama, the protagonist of the series, is the strongest hero alive in the entire franchise, hailing from the metropolis of City Z who easily defeats the monsters or other villains with a single punch to the point where monsters just explode when struck. However, due to his immeasurable strength, Saitama has become bored with his power and is constantly trying to find stronger opponents who can present a challenge to him.&lt;/p&gt;\r\n\r\n&lt;p&gt;As Saitama is active as a hero, he meets various other heroes and villains. He gets a disciple in the form of the cyborg Genos and consequently joins the Hero Association in order to gain official recognition. Despite defeating many strong monsters that even the Heroes Association&rsquo;s top members are unable to defeat, Saitama struggles to gain respect. Most people look down on him due to his plain physical appearance and some accuse him of being a counterfeit hero. Only a small number of individuals in the series recognize his talent and humility towards others.&lt;/p&gt;\r\n', 'Japan', '2016-11-15 23:20:33', '');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `SeasonNum` int(11) NOT NULL,
  `ProductionId` int(11) NOT NULL,
  `NumEpisodes` int(11) NOT NULL DEFAULT '1',
  `Year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`SeasonNum`, `ProductionId`, `NumEpisodes`, `Year`) VALUES
(1, 1, 22, 2013),
(1, 2, 15, 2014),
(1, 6, 13, 2015),
(2, 1, 22, 2014),
(2, 2, 22, 2015),
(2, 6, 13, 2016),
(3, 1, 22, 2015),
(3, 2, 22, 2016),
(4, 1, 6, 2016);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PermissionType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `FirstName`, `LastName`, `Password`, `Username`, `DateCreated`, `PermissionType`) VALUES
(1, 'User', 'Admin', '$2y$10$6zoU24k05XoKULvtGwjSRO9ksYPp56e8poSqtAH4.gXNYyJqU8er.', 'admin', '2016-11-06 20:23:44', 1),
(8, 'Austinn', 'Marofke', '$2y$10$3UAY8QluJJwoz0djL7wjh.KyjAmXhSq.Mf8gmog3umeCRbn1JtRU6', 'austin', '2016-11-19 22:44:07', 2),
(10, 'clark', 'kentt', '$2y$10$Ok.9LiuDM5ikMNmwN76sx.JsdWAYF7ZTf/BKHCiDPvRrb2aT1zG/C', 'clark', '2016-11-20 03:09:11', 2),
(11, 'Loiss', 'Lane', '$2y$10$3NgediTze.T0r7mM5ykhJejDG8g2lNQ4AKJWUdTWARop3NhKlAfyC', 'lois', '2016-11-22 20:24:18', 2),
(12, 'Bruce', 'Wayne', '$2y$10$rQJ72gtoGQfWhg0p880bZel1CD52PSYitGerLKAeXgUgM0WDPp6z.', 'bruce', '2016-11-22 20:27:22', 2),
(13, 'Denis', 'Nishida', '$2y$10$WXypTllWlxNJD32fAcfw0OYM2v2eB72aC4HjmilAJhgJnbiAQyuRq', 'denis', '2016-11-22 22:31:29', 2),
(14, 'john', 'asdad', '$2y$10$iBmwKGZRhyXhvoW9pHUlIOKBXB2mjnSkYqjj78Aezcq/pu3nr.Wu.', 'john', '2016-11-27 20:29:07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `usersproductions`
--

CREATE TABLE `usersproductions` (
  `UserId` int(11) NOT NULL,
  `ProductionId` int(11) NOT NULL,
  `LastSeasonWatched` int(11) NOT NULL DEFAULT '0',
  `IsTracked` int(1) NOT NULL,
  `LastEpisodeWatched` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`ProductionId`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`SeasonNum`,`ProductionId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `usersproductions`
--
ALTER TABLE `usersproductions`
  ADD PRIMARY KEY (`UserId`,`ProductionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `ProductionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
