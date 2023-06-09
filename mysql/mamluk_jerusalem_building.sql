-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mamluk_jerusalem
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `modern_name` varchar(255) DEFAULT NULL,
  `loc_id` int DEFAULT NULL,
  `arch_id` int DEFAULT NULL,
  `hist_id` int DEFAULT NULL,
  `date_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loc_id` (`loc_id`),
  KEY `arch_id` (`arch_id`),
  KEY `hist_id` (`hist_id`),
  KEY `fk_building_date` (`date_id`),
  CONSTRAINT `building_ibfk_1` FOREIGN KEY (`loc_id`) REFERENCES `location` (`id`),
  CONSTRAINT `building_ibfk_2` FOREIGN KEY (`arch_id`) REFERENCES `architecture` (`id`),
  CONSTRAINT `building_ibfk_3` FOREIGN KEY (`hist_id`) REFERENCES `history` (`id`),
  CONSTRAINT `fk_building_date` FOREIGN KEY (`date_id`) REFERENCES `date` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,' NORTH PORTICO',NULL,NULL,1,NULL,1,NULL),(2,' TURBA OF BARKA KHAN','Tomb of Barka Khan and his sons',' al-Maktabat al-Khalidiyya (Khalidi Library)',2,2,NULL,2),(3,' RIBAT OF ALA AL-DIN','Pilgrim Hospice of ‘Ala’ al-Din Aydughdi al-Basir',' Habs al-Dam (‘Prison of Blood’)',3,3,3,3),(4,' MUAZZAMIYYA MINARET','Minaret of the Mu‘azzamiyya Madrasa',' Minaret of ‘Masjid al-Mujahidin’',4,4,NULL,4),(5,' RIBAT AL-MANSURI','Pilgrim Hospice of Sultan Qalawin',' Habs al-Ribat (Hospice Prison’)',5,5,5,5),(6,' AL-KUBAKIYYA','Tomb of ‘Ala’ al-Din Aydughdi al-Kubaki',' not known\"',6,6,6,6),(7,' RIBAT OF KURT AL-MAN SURI','Pilgrim Hospice of Sayf al-Din Kurt!',' Dar al-Shihabi',7,NULL,7,7),(8,' AL-DAWADARIYYA','Khanqah of the Amir ‘Alam al-Din Sanjar al-Dawadari.',' Madrasa al-Bakriyya',8,NULL,8,8),(9,' AL-AWHADIYYA',NULL,NULL,9,9,9,NULL),(10,' GHAWANIMA MINARET','North-western minaret of Haram',' Minaret al-Ghawanima',10,10,10,10),(11,' AL-JALIQIYYA',NULL,NULL,11,11,11,NULL),(12,' WEST PORTICO',NULL,NULL,12,NULL,NULL,NULL),(13,' AL-SA\'DIYYA','Tomb of Sa‘d al-Din Mas ‘td',' Dar al-Khalidi',13,13,13,13),(14,' AL-JAWILIYYA','Madrasa of Sanjar al-Jawili',' Madrasa al-‘Umariyya',14,14,14,14),(15,' AL-KARIMIYYA',NULL,NULL,15,15,15,NULL),(16,' NORTH QANATIR','North colonnade of Dome of the Rock terrace',' Mawazin Bab al-‘Atm',16,16,NULL,16),(17,' NORTH-EAST QANATIR','North-eastern colonnade of Dome of the Rock terrace',' Mawazin Bab Hitta',17,17,17,17),(18,' AL-TANKIZIYYA','Madrasa, khanqah, etc. of Tankiz al-Nasiri',' not known',18,18,18,18),(19,' RIBAT AL-NISA','Women’s hospice founded by Tankiz al-Nasiri',' not known (photographer’s shop and studio)',19,19,NULL,19),(20,' BAB AL-SILSILA MINARET','Western minaret of the Haram',' Bab al-Silsila Minaret',20,NULL,20,20),(21,' AL-AMINIYYA','Madrasa or zawiya of Amin al-Mulk',' Dar al-Imam',21,21,21,21),(22,' AL-FAKHRIYYA','Zawiya, khanqah or madrasa of Fakhr al-Din Muhammad',' Maktab mudir al-mathaf al-islami/office of the',22,22,22,22),(23,' FAKHRIYYA MINARET','South-western minaret of the Haram',' Fakhriyya Minaret',23,23,NULL,23),(24,' SUQ AL-QATTANIN','Commercial centre of Sultan al-Nasir Muhammad and Tankiz','unknown',24,24,24,24),(25,' AL-SALLAMIYYA','Madrasa of al-Majd al-Sallami',' Dar Jarallah',25,NULL,25,25),(26,' AL-ALMALIKIYYA',NULL,NULL,26,26,26,NULL),(27,' SUMMER PULPIT','Open-air pulpit on the Dome of the Rock terrace',' Minbar Burhan al-Din',27,27,27,27),(28,' TURBA OF TURKAN KHATUN','Tomb of Turkan Khatin',' unknown',28,28,28,28),(29,' AL-KILANIYYA','Tomb of Jamal al-Din Pahlavan',' Dar al-Da‘na’',29,NULL,29,29),(30,' AL-FARISIYYA','Madrasa of Faris al-Din',' Dar al-Dajani',30,30,30,30),(31,' AL-KHATUNIYYA',NULL,NULL,31,31,31,NULL),(32,' AL-ARGHUNIYYA','Madrasa and tomb of Arghtn al-Kamili',' Dar al-‘Afifi',32,32,32,32),(33,' AL-IS\'ARDIYYA','Khanqah and/or Madrasa of Majd al-Din al-Is‘ardi',' Dar al-Ansari',33,33,33,33),(34,' DAR AL-QURAN AL-SALLAMIYYA','Koran School of Siraj al-Din ‘Umar',' Qabr Shaykh Musa',34,34,34,34),(35,' AL-MANJAKIYYA','Madrasa of Manjak al-Yusufi',' Da’irat al-awqaf wa’l-shu’tin al-islamiyya/',35,35,35,35),(36,' AL-TAZIYYA','Memorial madrasa of Sayf al-Din Taz',' Dar al-Hidaya/‘Antiquities from Jericho’ shop',36,36,36,36),(37,' RIBAT AL-MARIDINI','Hospice for pilgrims from Mardin',' Dar al-Qabbani',37,37,37,37),(38,' BAB AL-ASBAT MINARET','Northern minaret of the Haram',' Bab al-Asbat Minaret',38,38,38,38),(39,' AL-BISTAMIYYA','Zawiya of Shaykh ‘Abdallah al-Bistami',' Dar al-Hammar',39,39,39,39),(40,' AL-LULUTYYA','Madrasa of Badr al-Din Lulu’ Ghazi',' Dar al-Asmar',40,40,40,40),(41,' AL-ZAWIYA AL-LULUTYYA','Zawiya of Badr al-Din Lu’lu’ Ghazi',' Masjid al-Shaykh Lu\'lu’',41,41,41,41),(42,' AL-HANBALIYYA','Madrasa of Baydamur al-Khwarizmi',' Dar al-Surtiri',42,42,42,42),(43,' AL-BALADIYYA','Funerary madrasa of Manklibugha al-Ahmadi',' not known',43,43,43,43),(44,' AL-WAFATYYA','Zawiya of the Abu\'l-Wafa’ family',' Dar al-Budayri',44,44,44,44),(45,' AL-TASHTAMURIYYA',NULL,NULL,45,45,45,NULL),(46,' AL-QIRAMIYYA','Zawiya of Shaykh Shams al-Din Muhammad al-Qirami',' Masjid Muhammad al-Qirami',46,46,46,46),(47,' AL-WAKALA','Caravanserai of Sultan Barqitiq',' Khan al-Sultan',47,NULL,47,47),(48,' DARAL-SITT TUNSHUQ','Palace of the Lady Tunshuq al-Muzaffariyya',' Dar al-Aytam al-Islamiyya al-Sina‘iyya',48,48,48,48),(49,' TURBA OF SITT TUNSHUQ','Tomb of Sitt Tunshuq al-Muzaffariyya',' Khassaki Sultan',49,NULL,49,49),(50,' MINARET IN HARAT AL-YAHUD','Minaret of an unnamed mosque in the Jewish Quarter',' Minaret of Jami‘ Sidi ‘Umar’',50,50,50,50),(51,' AL-SUBAYBIYYA','Madrasa and tomb of ‘Ala’ al-Din ‘Ali b. Nasir al-Din Muhammad',' not known',51,51,51,51),(52,' SALAHIYYA MINARET','Minaret of the Salahiyya Khanqah',' Salahiyya Minaret',52,52,52,52),(53,' AL-BASITIYYA','Madrasa or Khanqah of ‘Abd al-Basit',' part of Madrasa al-Bakriyya',53,NULL,53,53),(54,' AL-GHADIRIYYA','Madrasa of Muhammad b. Dhulghadir',' not known (used as storeroom)',54,54,54,54),(55,' AL-HASANIYYA','Madrasa of Husam al-Din al-Hasan',' Dar Nir al-Din',55,55,55,55),(56,' WELL OF IBRAHIM AL-RUMI','Well-house for distributing water to the poor',' Sabil ‘Ala’ al-Din al-Basiri',56,56,56,56),(57,' AL-UTHMANIYYA','Madrasa and tomb of Isfahan Shah Khatin',' Dar al-Fityani',57,57,57,57),(58,' AL-JAWHARIYYA','Modern names: (i) Dar al-Khatib','not known',58,58,58,NULL),(59,' MINARET OF JAMI UMAR','Minaret of the Masjid of al-Afdal ‘Ali (‘Jami‘ ‘Umar’)',' Minaret of Masjid ‘Umar b. al-Khattab',59,59,59,59),(60,' SOUTH-WEST QANATIR','South-west colonnade of the Dome of the Rock terrace',' Mawazin Bab al-Silsila',60,60,60,60),(61,' RIBAT AL-ZAMANI','Pilgrim hospice of Ibn al-Zamin',' not known',61,NULL,61,61),(62,' AL-MUZHIRIYYA','Madrasa of Abt Bakr b. Muzhir',' Dar al-Sha‘bani',62,62,62,62),(63,' AL-ASHRAFTIYYA',NULL,NULL,63,63,63,NULL),(64,' SABIL QAYTBAY','Public fountain of Sultan Qaytbay',' Sabil Qaytbay',64,64,64,64);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-09 13:17:28
