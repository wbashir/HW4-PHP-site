--
-- Table structure for table `Users`
-- Added 'user_password_hash' as part of check including user_email check
--


CREATE TABLE IF NOT EXISTS `hw4`.`users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT ,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL ,
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL ,
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL ,
  `display_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL ,

  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';


--
-- Table structure for table `messages`
--


CREATE TABLE IF NOT EXISTS `messages` (
  id int(11) NOT NULL auto_increment,
  username_from varchar(60) NOT NULL,
  date timestamp NOT NULL default CURRENT_TIMESTAMP,
  message varchar(4000) NOT NULL,
  username_to varchar(60) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


--
-- Table structure for table `relationships`
--

CREATE TABLE IF NOT EXISTS `relationships` (
  username varchar(60) NOT NULL,
  friend varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
