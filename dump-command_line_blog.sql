-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: command_line_blog
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `joined_on` timestamp NULL DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UN` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES
(1,'user123','2023-05-15 16:35:22','pass123'),
(2,'john_doe','2023-05-29 00:47:11','doe1234'),
(3,'emma_s','2023-06-01 15:15:04','emma_789');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_FK` (`client_id`),
  CONSTRAINT `post_FK` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES
(1,1,'Artificial Intelligence (AI) is a branch of computer science that deals with the creation and development of intelligent machines that can perform tasks requiring human-like intelligence. AI encompasses various subfields such as machine learning, natural language processing, and computer vision. This post will provide a brief introduction to AI, its applications, and its impact on various industries.','Introduction to Artificial Intelligence'),
(2,2,'Regular exercise offers numerous benefits for both physical and mental health. It can help in weight management, reduce the risk of chronic diseases, improve cardiovascular health, boost mood and energy levels, enhance cognitive function, and promote better sleep. Incorporating exercise into your daily routine is essential for leading a healthy and fulfilling life.','The Benefits of Regular Exercise'),
(3,3,'The vast expanse of space has always fascinated humanity. From the mesmerizing beauty of the night sky to the exploration of distant planets and galaxies, space continues to captivate our imagination. In this post, we will delve into the mysteries of the universe, discuss the latest discoveries made by astronomers and space agencies, and contemplate the potential for future space exploration.','Exploring the Wonders of Space'),
(4,1,'Meditation is a practice that has been around for centuries and is known for its profound effects on the mind and body. It involves focusing one\'s attention and eliminating the stream of thoughts that often clutter our minds. Regular meditation can reduce stress, improve concentration, enhance self-awareness, promote emotional well-being, and cultivate a sense of inner peace and tranquility.','The Power of Meditation'),
(5,2,'Cooking is not just about preparing meals; it is a creative process that allows you to experiment with flavors, textures, and techniques. Whether you are an experienced chef or a novice in the kitchen, cooking can be a source of joy and self-expression. In this post, we will explore different culinary techniques, share delicious recipes, and discuss the art of plating and presentation.','The Art of Cooking: Nurturing Your Culinary '),
(6,3,'Sustainable living is an approach to life that aims to minimize our negative impact on the environment while maintaining a high quality of life. It involves making conscious choices in areas such as energy consumption, waste management, transportation, and food production. By adopting sustainable practices, we can help preserve natural resources, reduce pollution, and mitigate the effects of climate change. In this post, we will explore various ways to incorporate sustainable habits into our daily lives and contribute to building a greener future for generations to come.','The Importance of Sustainable Living'),
(7,1,'Photography is a powerful medium that allows us to freeze moments in time, convey emotions, and tell stories through images. Whether you\'re a professional photographer or an enthusiastic hobbyist, the art of photography offers endless possibilities for creative expression. In this post, we will explore different genres of photography, discuss essential techniques and equipment, and share tips on how to compose compelling photographs. Join us on this visual journey and discover the beauty of capturing moments through the lens.','The Art of Photography: Capturing Moments in Time'),
(8,3,'Positive thinking is a mindset that focuses on finding the good in every situation and maintaining an optimistic outlook on life. It has the power to transform our lives, improve our mental well-being, and enhance our overall happiness. By cultivating positive thoughts and beliefs, we can overcome challenges, build resilience, and attract positivity into our lives. In this post, we will explore the benefits of positive thinking, provide practical tips for cultivating a positive mindset, and discuss the impact it can have on our relationships, work, and personal growth. Embrace the power of positive thinking and unlock the doors to a brighter future.','The Power of Positive Thinking: Transforming Your Mindset'),
(9,2,'Nature has a way of captivating our senses and providing a sense of peace and serenity. From breathtaking landscapes to the soothing sounds of birds chirping and leaves rustling, immersing ourselves in nature can have a profound impact on our well-being. In this post, we will explore the beauty of nature, discuss the benefits of spending time outdoors, and share tips on how to connect with nature in our daily lives. Join us on this journey of exploration and rediscover the wonders that nature has to offer.','The Beauty of Nature: Finding Serenity in the Great Outdoors'),
(10,2,'Time is a valuable resource, and effective time management is crucial for accomplishing our goals, reducing stress, and achieving a sense of balance in our lives. In this post, we will delve into the art of time management, providing strategies for setting priorities, overcoming procrastination, and optimizing productivity. Whether you\'re a student, professional, or busy individual, mastering time management skills can help you make the most of your days and create a fulfilling and well-balanced life.','The Art of Time Management: Maximizing Productivity and Achieving Balance'),
(11,2,'Cultural diversity is a treasure that enriches our world with vibrant traditions, languages, and perspectives. By embracing and celebrating our differences, we can foster a more inclusive and harmonious society. In this post, we will delve into the beauty of cultural diversity, discuss the importance of cultural exchange, and explore ways to promote intercultural understanding. Join us on this journey of discovery as we recognize the value of diversity and strive for a world where everyone is respected and appreciated for who they are.','Exploring Cultural Diversity: Embracing Our Differences');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'command_line_blog'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_post`(client_id_input INT, title_input VARCHAR(100), content_input VARCHAR(2000))
    MODIFIES SQL DATA
BEGIN
	INSERT INTO post(title, content, client_id) VALUES(title_input, content_input, client_id_input);
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_posts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_posts`()
BEGIN
	SELECT title, content FROM post;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_client`(username_input VARCHAR(30), password_input VARCHAR(50))
BEGIN
	SELECT id FROM client WHERE username = username_input AND password = password_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 21:56:41
