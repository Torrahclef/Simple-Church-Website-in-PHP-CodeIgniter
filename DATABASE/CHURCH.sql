-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: mysql1006.mochahost.com
-- Generation Time: Jan 30, 2020 at 09:54 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `torrah12_church`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE IF NOT EXISTS `aboutus` (
  `aboutus_id` int(11) NOT NULL AUTO_INCREMENT,
  `about` text,
  `benfits` text,
  `video` text,
  PRIMARY KEY (`aboutus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`aboutus_id`, `about`, `benfits`, `video`) VALUES
(1, '<p><strong>VISSION STATEMENT</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To raise an end time army for the lord, that will reconcile the world to the church of God (2 Cor 5: 17-20)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>MISSION STATEMENT</strong></p>\r\n\r\n<p>To restore order to the church and reposition it for the end time harvest through apostolic wisdom, love and power. (Matt 5:17; 19:18; 11:5, Luke 4:43, Acts 2:42-47; 4:32-37)</p>\r\n\r\n<p><strong>PURPOSE STATEMENT</strong></p>\r\n\r\n<p>To glorify, thank and honour God by bringing pleasure to Him through building testifiers that will endure to the end. (Rev 4:9, 11:12-21)</p>', '<p>We have a strong sense of community with parishioners. People and children of all ages here are encouraged to learn about their own faith and the role of the church in our community and worldwide. We invite anyone and everyone to attend our Sunday gatherings to celebrate God in song, scripture and prayer.</p>', 'https://www.youtube.com/watch?v=4wDVzjn9s9E');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `image` text,
  `link` text,
  `code` text,
  `ad_location_id` int(11) DEFAULT NULL,
  `type` enum('code','image') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ad_id`, `title`, `image`, `link`, `code`, `ad_location_id`, `type`, `created`) VALUES
(4, 'get website', 'https://elmanawy.info/demo/marocms/cdn/blog/1.jpg', 'http://brightery.com', '', 3, 'code', '0000-00-00 00:00:00'),
(5, 'get website to marwa elmanawy', 'https://elmanawy.info/demo/marocms/cdn/blog/slider001_-_Copy.png', 'https://elmanawy.info', '', 4, 'image', '2016-05-22 09:14:48'),
(6, 'Footer home', 'https://elmanawy.info/demo/marocms/cdn/blog/footer-ads.png', 'https://elmanawy.info', '', 2, 'code', '2016-05-22 09:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `ad_locations`
--

CREATE TABLE IF NOT EXISTS `ad_locations` (
  `ad_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ad_location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ad_locations`
--

INSERT INTO `ad_locations` (`ad_location_id`, `name`) VALUES
(1, 'Blog post'),
(2, 'Footer'),
(3, 'Blog head'),
(4, 'Home footer');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `image` text,
  `datetime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `short` varchar(500) NOT NULL,
  `keyword` varchar(400) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `description`, `image`, `datetime`, `short`, `keyword`) VALUES
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'https://elmanawy.info/demo/marocms/cdn/blog/doctype-hi-res.jpg', '2016-05-30 23:00:00.000000', '', ''),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'http://church.ahomaxtechs.com//cdn/blog/04.jpg', '2016-05-23 23:00:00.000000', '', ''),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'http://church.ahomaxtechs.com//cdn/blog/07.jpg', '2019-11-03 23:00:00.000000', '', ''),
(5, 'The standard Lorem Ipsum passage, used since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'http://church.ahomaxtechs.com//cdn/blog/recent_post2.jpg', '2019-11-02 23:00:00.000000', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.', ''),
(6, 'Lorem Ipsum is simply dummy text of the printing and typesetting', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'http://church.ahomaxtechs.com//cdn/blog/banner.jpg', '2019-11-11 23:00:00.000000', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.', ''),
(8, 'Engage and Manage Your Church Community with our Church CMS', '<p>If you&rsquo;re a church leader, you might be familiar with the classic, hair-pulling madness of trying to get a well functioning website working for your church. We&rsquo;ve made it easy for you to launch your church website without hassle and at cheaper cost. You&rsquo;ll wonder how you ever got by without it!</p>\r\n\r\n<p>We provide all the insights and information you need to help your church or ministry reach its full potential, right at your fingertips.</p>\r\n\r\n<p>We love God, love people, and believe in the local church. We are passionate about Jesus and about helping churches reach their communities for Him. We desire to see the Kingdom grow and when you work with us, we can help you communicate to your community through powerful and simple website tools.</p>\r\n\r\n<p><strong>Why should you choose our Church CMS?</strong></p>\r\n\r\n<p>With over 4+ years in ministry, we&rsquo;ve been in your shoes. We understand how important a great website is&mdash;and how hard it seems to get one! We don&rsquo;t merely chase after what is trendy &mdash;although we are on the leading edge of the latest trends&mdash;but instead, we use what we know is effective and put that to work for you. We&rsquo;re here to help you present your mission, vision, events and anything else you want to communicate through eye-catching and easy to use church website designs. Web-based communication is our specialty and when you work with us, we guarantee your 100% satisfaction!</p>\r\n\r\n<h1><strong>WHATSAPP +2348138652645</strong></h1>', 'http://church.ahomaxtechs.com//cdn/blog/041.jpg', '2019-11-15 21:17:01.000000', 'If you’re a church leader, you might be familiar with the classic, hair-pulling madness of trying to get a well functioning website working for your church. We’ve made it easy for you to launch your church website without hassle and at cheaper cost. You’ll wonder how you ever got by without it!', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `desc` varchar(3000) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `short` varchar(500) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `title`, `desc`, `image`, `date`, `short`, `keyword`) VALUES
(6, 'Mission & Evangelism', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra.', 'http://church.ahomaxtechs.com//cdn/categories/04.jpg', '2019-11-14 15:23:45', '', ''),
(7, 'Children & Youth Ministry', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra.', 'http://church.ahomaxtechs.com//cdn/categories/01.jpg', '2019-11-14 15:23:45', '', ''),
(8, 'Men & Women Ministry', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra.', 'http://church.ahomaxtechs.com//cdn/categories/03.jpg', '2019-11-14 15:23:45', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `date` date NOT NULL,
  `image` varchar(2354) NOT NULL,
  `place` varchar(1000) NOT NULL,
  `short` varchar(400) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `description`, `datetime`, `date`, `image`, `place`, `short`, `keyword`) VALUES
(1, 'Simple Food Website in PHP', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>', '2018-10-31 18:06:46', '2018-10-18', 'http://church.ahomaxtechs.com//cdn/event/041.jpg', 'Ikeja, Lagos', '', ''),
(2, 'Lorem ipsum dolor sit amet, consectetuer', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>', '2018-10-31 19:05:29', '2018-11-28', 'http://church.ahomaxtechs.com//cdn/event/1.png', 'Ajah, Lagos', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE IF NOT EXISTS `faqs` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` text,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `question`, `answer`) VALUES
(4, 'Why did Jesus turn water to wine?', '<p>Jesus turned water into wine to prove that He&#39;s the source of life. Changing the water to wine offered a symbol of the new spiritual life Jesus brings from the old mortal in conversion. As Paul said in 2 Corinthians 5:17, &quot;Therefore, if anyone is in Christ, he is a new creation; the old has gone, the new has come!&quot; Many people make a mistake here; they want to improve themselves into being worthy of God before they accept Christ. In reality, it&#39;s in accepting Jesus as Savior that God counts us worthy of entering his presence (Ephesians 2:8-9).</p>\r\n\r\n<p>Jesus turned water into wine because changing one element into another symbolized marriage. It brings new life out of old; first, as the distinctive relationship between two adults; then, eventually in the children who are at once like, yet different from the parents. The miracle particularly represented Israel&#39;s relationship with God. He betrothed her to Himself in Egypt, married her to Himself at Sinai and repeatedly called her to be a faithful spiritual spouse. When she proved endlessly faithless, He called her a spiritual harlot. Finally, God divorced His corrupt bride by sending her into exile. Ezekiel&#39;s brilliant allegory is but one of many references to that relationship 16:1-63.</p>\r\n\r\n<p>Jesus turned water into wine to prove that the old covenant lacked the resources to meet Israel&#39;s spiritual needs. Jesus didn&#39;t have to reference the stone pots to perform the miracle. Since they were used for ceremonial washing of people and utensils, Jesus had them filled to prove that He fulfilled and overfilled ceremonial cleansing; then had the servants draw water turned into wine from the well to illustrate that God&#39;s new life came from a different source - Christ Himself. Wherever the Old Covenant failed to meet the spiritual needs of God&#39;s people, Christ&#39;s resources flourished energetically, dynamically, and satisfyingly.</p>\r\n\r\n<p>Jesus turned water into wine to illustrate the inimitable nature of God&#39;s revelation through Christ. Everything God had said through Law, Prophets, and Psalmists proved magnificent. And all who studied regaled themselves with stories of God at Sinai and before Jericho and outside Jerusalem slaying Babylonian soldiers. But God saved the best for Israel till the last revelation of himself in Christ. Indeed, no one before or since Christ bettered Him in any way.</p>\r\n\r\n<p>Jesus turned water into wine to prove His real nature to the disciples. The ultimate purpose of the miracle was to reveal His Glory, with the result being faith in Him.</p>\r\n\r\n<p>It&#39;s interesting that Jesus had no interest in recruiting faith in the members of the wedding party, or the steward of the feast. Even though the servants knew the provenance of the wine, Jesus didn&#39;t perform the miracle to convince them. His only interest was to reveal his true, inner being to six men-a glory that would be uncovered completely only one time in His ministry - at His transfiguration. The sign achieved its purpose, for His disciples believed in Him.</p>\r\n\r\n<p>Jesus distinguished between His Glory and His hour or time (John 2:4, Matthew 26:18). The glory His disciples saw wasn&#39;t the same as the hour His mother wanted Him to reveal. His glory was His inner being revealed in miracles, teachings, claims, and example. His hour or time was His death on Calvary, though it&#39;s true that in His hour at Calvary, He revealed His true glory as God in the flesh. Paul delineated that in Colossians 2:15.</p>\r\n\r\n<p>No one but He knew what His hour was, but His disciples, and all who came to believe in Him while He preached, understood that glory meant in Christ God had become a mortal. In Christ God put on a human face - a reality His appearance to John in Revelation 1:12-18 verified. The eternal, invisible God will be visible to all the redeemed in the glorified God/Man Jesus Christ. In essence then, this miracle proved more about the Someone He was than the something He did.</p>'),
(5, 'Miracles Of Jesus', '<p><strong>Miracles of Jesus - Eyewitness Testimony</strong><br />\r\nThe miracles of Jesus range from changing water into wine to healing the lame and the blind. How do we know He did these things? We have the eyewitness testimony of four gospel writers, who record at least 35 miracles of Jesus. (For a complete list of Christ&#39;s miracles and where in Scripture you can find them, click on the link at the bottom of this page.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Miracles of Jesus - What Are They?</strong><br />\r\nA miracle of Jesus would be defined by the Merriam Webster dictionary as &quot;an extraordinary event manifesting divine intervention in human affairs, or as an extremely outstanding or unusual event, thing, or accomplishment.&quot; According to the Biblical Studies Foundation, a miracle <em>&quot;is an unusual and significant event (terasa) which requires the working of a supernatural agent (dunamis) and is performed for the purpose of authenticating the message or the messenger (semeion).&quot;</em><br />\r\n<br />\r\nWhile there are many explanations for what a miracle is, we can probably all agree that the word &quot;miracle&quot; describes an event that occurs outside the bounds of natural law, and which is beneficial in its result. During the course of His three-year public ministry, Jesus performed miracles that demonstrated His ability to heal, to master the elements, to affect the outcome of our endeavors, and even to raise the dead. Every one of His miracles occurred outside the bounds of natural law, and all of them had a beneficial result.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Miracles of Jesus - What Lessons Can We Learn from Them Today?</strong><br />\r\nIf we look at just the first miracle of Jesus, recorded in John 2:1-11, we learn a lot about this singular Man. First, even though He was God and &quot;on mission,&quot; He took time to go to a wedding. Jesus loved people; He came to be with and save people. Do you value your relationships and look for ways to bless others when you are with them?<br />\r\n<br />\r\nSecond, Jesus turned water into wine at His mother&#39;s request. Did Mary expect Him to do a miracle? We don&#39;t know that, but we can see from the verses that Mary clearly relied on and had faith in her Son to be able to fix a bad situation. Who do you turn to in times of trouble? Are you relying on someone you can trust to do the right thing?<br />\r\n<br />\r\nThird, when Jesus performed this miracle, He was demonstrating His power over nature. When His disciples saw this, John tells us, they believed. Also, Jesus didn&#39;t settle for just ordinary wine, but turned the water into the finest of wines, showing Himself to be a Man full of the joy of life. Have you been searching everywhere for truth, but putting off Christ for last? Why wait? Do you believe Jesus is the Son of God? Have you thought that being a Christian is to live a dull, boring life? Jesus wants you to believe as His disciples did, and the experience promises to be dynamic, exciting and life-changing.<br />\r\n<br />\r\nDoes Jesus still perform miracles today? After all, we don&#39;t see Him physically walking in our midst - or do we? Do you know someone who has been healed or whose life has been transformed by a relationship with Christ? Then you have seen a modern-day miracle of Jesus. You, too, can be an eyewitness to a miracle of Christ. Like Mary, you can ask Him, believing He will do what is best for you. Let a miracle of Jesus begin in your heart right now.</p>'),
(6, 'Who is Jesus Christ?', '<p><strong>Who is Jesus? Why It&rsquo;s Important to Know!</strong><br />\r\nWe live in an age of religious pluralism and moral relativism. The popular spiritual philosophy, especially after the events of September 11th, is that all religious belief systems, as long as heart-felt, are equal. Pick one and follow it sincerely, and you&rsquo;ll get to Heaven. That&rsquo;s what the world believes, but Jesus teaches otherwise. Therefore, we need to examine who Jesus is by looking at some of the questions people frequently ask about Him. The answers are found in the <a href="https://www.AllAboutTruth.org/holy-bible.htm">Bible</a>, the historical evidence people have trusted for over 2000 years.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Who is Jesus and was he 100% Man</strong></p>\r\n\r\n<ul>\r\n	<li>According to John 1:14, Jesus became flesh and made His dwelling among us. Why is His humanity so important? In Hebrews 4:15, Jesus was tempted in every way, just as we are. As such, he can sympathize with our weakness as humans. What can we learn from the way he handled temptation? According to 1 John 3:5, Jesus came to earth in human form so that He could die a physical death and take away our sins. How would we all be affected, if we had no potential for escape from our sins?</li>\r\n</ul>\r\n\r\n<p>Jesus is the key to membership in God&rsquo;s family. When He stooped to our level by becoming a man, He made it possible for us to relate to Him and for God to relate to us through Him.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Jesus Was 100% God</strong><br />\r\nWho is Jesus, and how was it possible that Christ&rsquo;s human body held the whole deity and glory of God?</p>\r\n\r\n<ul>\r\n	<li>According to John 1:1-3, Jesus existed from the beginning. From the beginning, Jesus was with God, and Jesus was God. Here, the Bible establishes the inseparable nature of Jesus and the God of the Universe. The following verses provide further evidence that Jesus is 100% God:<br />\r\n	<br />\r\n	Highlights of Christ&#39;s Time on Earth &amp; the verses:\r\n	<ul>\r\n		<li><a href="https://www.AllAboutJesusChrist.org/amazing-miracles.htm">Miracles</a>: Luke 7:22</li>\r\n		<li>Eyewitnesses to His perfect life: Matthew 16:13-17</li>\r\n		<li><a href="https://www.AllAboutTruth.org/messianic-prophecy.htm">Fulfillment of Prophecy</a>: Matthew 13:14, Luke 24:44</li>\r\n		<li>Jesus&#39; own identification/claim: John 10:30-38, Matthew 16:13-17, Mark 14:61-64</li>\r\n		<li>Claims of Christ&#39;s followers: Hebrews 1:8, Colossians 1:16, John&nbsp;12:40 (quoting Isaiah 6:1-10)</li>\r\n		<li><a href="https://www.AllAboutJesusChrist.org/resurrection-of-jesus.htm">Resurrection</a>: Luke 24:39, Mark 8:31, Acts 17:32</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>Jesus is the key to membership in God&rsquo;s family. When He established His deity by rising from the grave, He made it possible for us to have forgiveness from sin and a renewed relationship with God.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Is Jesus the Way to Heaven?</strong><br />\r\nWho is Jesus and why is He the only path to salvation?</p>\r\n\r\n<ul>\r\n	<li>In John 14:6, Jesus declares: <em>&ldquo;I am the way and the truth and the life. No one comes to the Father except through me.&rdquo;</em> Why is it important to know that NO other religious leaders throughout history have ever made these claims? According to Ephesians 2:8-9, <em>&ldquo;For it is by grace you have been saved, through faith - and this not from yourselves, it is the gift of God - not by works, so that no one can boast.&rdquo;</em> How does this contrast with other world religions which are based on &ldquo;works&rdquo; versus faith in Jesus and the resurrection? If we can&rsquo;t build a relationship with God by doing good deeds or repeating rituals, what must we do? Acts 4:12 is clear, <em>&ldquo;Salvation is found in no one else, for there is no other name under heaven given to men by which we must be saved.&rdquo;</em></li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `keyword` varchar(700) NOT NULL,
  `short` varchar(700) NOT NULL,
  `description` varchar(2700) NOT NULL,
  `image` varchar(1887) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `title`, `keyword`, `short`, `description`, `image`, `datetime`) VALUES
(1, 'Youth Ministry', 'youth, youthalive, worship, church', 'Youth ministry brings together all youths from every coner of this world to worship God with us. Youth ministry brings together all youths from every coner of this world to worship God with us.', '<p>Youth ministry brings together all youths from every coner of this world to worship God with us.Youth ministry brings together all youths from every coner of this world to worship God with us.Youth ministry brings together all youths from every coner of this world to worship God with us. Youth ministry brings together all youths from every coner of this world to worship God with us. Youth ministry brings together all youths from every coner of this world to worship God with us.</p>\r\n\r\n<p>Youth ministry brings together all youths from every coner of this world to worship God with us. Youth ministry brings together all youths from every coner of this world to worship God with us. Youth ministry brings together all youths from every coner of this world to worship God with us. Youth ministry brings together all youths from every coner of this world to worship God with us.Youth ministry brings together all youths from every coner of this world to worship God with us.</p>', 'http://church.ahomaxtechs.com//cdn/blog/main-qimg-c3d2bc790396911b7b83f9546bdd041a.jpg', '2019-11-16 16:19:08'),
(2, 'Women', '17AQGetXz6FAkDAcMkDrAxpmQwAXoBty58', 'rmv vjtnrvotmot ek vtomrv trvtlv rkv t or vrt', '<p>f jvkkrv rlkvltr;vt;rglb,gt;llg;,</p>', 'http://church.ahomaxtechs.com//cdn/blog/1.png', '2020-01-27 00:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `content` longtext,
  `short` varchar(500) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `content`, `short`, `keyword`) VALUES
(1, 'Welfare', '<p>Just some random texts</p>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`partner_id`, `name`, `image`) VALUES
(1, 'client 2', 'https://elmanawy.info/demo/marocms/cdn/partners/client2.png'),
(2, 'client 1', 'https://elmanawy.info/demo/marocms/cdn/partners/client1.png'),
(4, 'client 3', 'https://elmanawy.info/demo/marocms/cdn/partners/client3.png'),
(5, 'client 4', 'https://elmanawy.info/demo/marocms/cdn/partners/client4.png'),
(6, 'client 5', 'https://elmanawy.info/demo/marocms/cdn/partners/client5.png'),
(7, 'client7', 'https://elmanawy.info/demo/marocms/cdn/partners/client7.png');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `title`, `image`) VALUES
(52, 'Completely harness efficient deliverables.', 'http://church.ahomaxtechs.com//cdn/projects/121.jpg'),
(53, 'Food product distribution', 'http://church.ahomaxtechs.com//cdn/projects/10.jpg'),
(54, 'Renewable energy', 'http://church.ahomaxtechs.com//cdn/projects/12.jpg'),
(55, 'BRANDING,WEBSITE & MARKETING', 'http://church.ahomaxtechs.com//cdn/projects/04.jpg'),
(56, 'Web Development', 'http://church.ahomaxtechs.com//cdn/projects/031.jpg'),
(57, 'Mobile App Developement', 'http://church.ahomaxtechs.com//cdn/projects/02.jpg'),
(58, 'How to choose between the iPhone 11 Pro, 11 Pro Max, and 11', 'http://church.ahomaxtechs.com//cdn/projects/011.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(65) NOT NULL,
  `message` varchar(2000) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(150) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `benfits` text,
  `how_work` text,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `title`, `description`, `image`, `category_id`, `benfits`, `how_work`) VALUES
(4, 'Logos', 'Your logo is the hub around which you build your brand, and as such really is one of the most important pieces in your marketing kit,Your awesome business needs an awesome logo.\r\nWhat is it that makes a logo awesome? We know the answer to that question – great logo design is our job!\r\nIf you would like to find out, just follow along…', 'https://elmanawy.info/demo/marocms/cdn/services/Web-Design-Vs-Web-Development-Feature_1290x688_KL.jpg', 3, 'A great is simple\r\nA great logo is unique\r\nA great logo is relevant\r\nA great logo is adaptable\r\nA great logo is memorable', 'Learn logo 101\r\nEstablish your own design process\r\nAsk the right questions\r\nPrice your work accordingly\r\nLearn from others\r\nMake use of the resources\r\nChoose the right font\r\nAvoid the clichÃ©s\r\nLimit the concepts sent\r\nDeliver the correct files'),
(5, 'Poster designs', 'Your logo is the hub around which you build your brand, and as such really is one of the most important pieces in your marketing kit.\r\n\r\nYour awesome business needs an awesome logo.\r\n\r\nWhat is it that makes a logo awesome? We know the answer to that question – great logo design is our job!\r\n\r\nIf you would like to find out, just follow along…', 'https://elmanawy.info/demo/marocms/cdn/services/modern-poster-in-abstract-style_23-2147507397.jpg', 3, 'A great is simple\r\nA great logo is unique\r\nA great logo is relevant\r\nA great logo is adaptable\r\nA great logo is memorable', 'Learn logo 101\r\nEstablish your own design process\r\nAsk the right questions\r\nPrice your work accordingly\r\nLearn from others\r\nMake use of the resources\r\nChoose the right font\r\nAvoid the clichÃ©s\r\nLimit the concepts sent\r\nDeliver the correct files'),
(6, 'Mobile app (IOS)', 'Your logo is the hub around which you build your brand, and as such really is one of the most important pieces in your marketing kit,Your awesome business needs an awesome logo.\r\nWhat is it that makes a logo awesome? We know the answer to that question – great logo design is our job!\r\nIf you would like to find out, just follow along…', 'https://elmanawy.info/demo/marocms/cdn/services/ios-apps.png', 2, 'A great is simple\r\nA great logo is unique\r\nA great logo is relevant\r\nA great logo is adaptable\r\nA great logo is memorable', 'Learn logo 101\r\nEstablish your own design process\r\nAsk the right questions\r\nPrice your work accordingly\r\nLearn from others\r\nMake use of the resources\r\nChoose the right font\r\nAvoid the clichÃ©s\r\nLimit the concepts sent\r\nDeliver the correct files'),
(7, 'Mobile App (Android)', 'Your logo is the hub around which you build your brand, and as such really is one of the most important pieces in your marketing kit,Your awesome business needs an awesome logo.\r\nWhat is it that makes a logo awesome? We know the answer to that question – great logo design is our job!\r\nIf you would like to find out, just follow along…', 'https://elmanawy.info/demo/marocms/cdn/services/pic-android.jpg', 2, 'A great is simple\r\nA great logo is unique\r\nA great logo is relevant\r\nA great logo is adaptable\r\nA great logo is memorable', 'Learn logo 101\r\nEstablish your own design process\r\nAsk the right questions\r\nPrice your work accordingly\r\nLearn from others\r\nMake use of the resources\r\nChoose the right font\r\nAvoid the clichÃ©s\r\nLimit the concepts sent\r\nDeliver the correct files'),
(8, 'Banners', 'Your logo is the hub around which you build your brand, and as such really is one of the most important pieces in your marketing kit,Your awesome business needs an awesome logo.\r\nWhat is it that makes a logo awesome? We know the answer to that question – great logo design is our job!\r\nIf you would like to find out, just follow along…', 'https://elmanawy.info/demo/marocms/cdn/services/landing-page-banner-stands-1.png', 3, 'A great is simple\r\nA great logo is unique\r\nA great logo is relevant\r\nA great logo is adaptable\r\nA great logo is memorable', 'Learn logo 101\r\nEstablish your own design process\r\nAsk the right questions\r\nPrice your work accordingly\r\nLearn from others\r\nMake use of the resources\r\nChoose the right font\r\nAvoid the clichÃ©s\r\nLimit the concepts sent\r\nDeliver the correct files'),
(9, 'Web Designing', 'Your logo is the hub around which you build your brand, and as such really is one of the most important pieces in your marketing kit,Your awesome business needs an awesome logo.\r\nWhat is it that makes a logo awesome? We know the answer to that question – great logo design is our job!\r\nIf you would like to find out, just follow along…', 'https://elmanawy.info/demo/marocms/cdn/services/responsive-web-design.png', 1, 'A great is simple\r\nA great logo is unique\r\nA great logo is relevant\r\nA great logo is adaptable\r\nA great logo is memorable', 'Learn logo 101\r\nEstablish your own design process\r\nAsk the right questions\r\nPrice your work accordingly\r\nLearn from others\r\nMake use of the resources\r\nChoose the right font\r\nAvoid the clichÃ©s\r\nLimit the concepts sent\r\nDeliver the correct files'),
(10, 'Web Development', 'Your logo is the hub around which you build your brand, and as such really is one of the most important pieces in your marketing kit,Your awesome business needs an awesome logo.\r\nWhat is it that makes a logo awesome? We know the answer to that question – great logo design is our job!\r\nIf you would like to find out, just follow along…', 'https://elmanawy.info/demo/marocms/cdn/services/Web-Design-Vs-Web-Development-Feature_1290x688_KL1.jpg', 1, 'A great is simple\r\nA great logo is unique\r\nA great logo is relevant\r\nA great logo is adaptable\r\nA great logo is memorable', 'Learn logo 101\r\nEstablish your own design process\r\nAsk the right questions\r\nPrice your work accordingly\r\nLearn from others\r\nMake use of the resources\r\nChoose the right font\r\nAvoid the clichÃ©s\r\nLimit the concepts sent\r\nDeliver the correct files');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `key` varchar(100) NOT NULL,
  `value` varchar(1000) DEFAULT NULL,
  `default_value` text,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `default_value`, `required`) VALUES
('address', 'Lagos, Nigeria', NULL, 0),
('analytic', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src="https://www.googletagmanager.com/gtag/js?id=G-LLZPV4Y3WW"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(''js'', new Date());\r\n\r\n  gtag(''config'', ''G-LLZPV4Y3WW'');\r\n</script>', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src="https://www.googletagmanager.com/gtag/js?id=G-LLZPV4Y3WW"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(''js'', new Date());\r\n\r\n  gtag(''config'', ''G-LLZPV4Y3WW'');\r\n</script>\r\n', 0),
('copyright', 'Native Church 2019', '© Hillsofts Church 2019 All rights reserved.', 1),
('description', 'Native Church is the best website for churches and other organizations. Do come to church every Sunday to receive blessings from God Almighty', NULL, 0),
('facebook', 'https://facebook.com/hillsoftsnetwork', NULL, 0),
('favicon', 'http://church.ahomaxtechs.com//cdn/about/logo_color.png', NULL, 1),
('fax', '0355555', NULL, 0),
('google_plus', 'https://plus.google.com/', NULL, 0),
('instagram', 'https://www.instagram.com/awolu_faith', NULL, 0),
('language', 'english', 'english', 1),
('latitude', '7.301480', NULL, 0),
('linkedin', 'https://www.linkedin.com/', NULL, 0),
('logo', 'http://church.ahomaxtechs.com//cdn/about/loge.png', NULL, 1),
('longitude', '5.151410', NULL, 0),
('meta_description', 'Best website for churches and other religious Organizations.', 'desc', 0),
('meta_keywords', 'Church Website, Awolu Faith, Web Design, Web Development,IT infrastructure,business solutions,business consulting , services,innovation,servers,storage solutions,software, outsourcing,web design,web development,software development', 'key', 1),
('phone', '+(234)813-865-2645', '0', 0),
('skype', 'Torrahclef', NULL, 0),
('title', 'Native Church - Best Church', 'Hillsofts Church', 1),
('twitter', 'https://www.twitter.com', NULL, 0),
('visitors', '12153', '0', 0),
('webmaster_email', 'awolu_faith@live.com', NULL, 0),
('website', 'https://facebook.com/Torrahclef', NULL, 0),
('whatsapp', '+(234)813-865-2645', NULL, 0),
('youtube', 'https://www.youtube.com/', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` text,
  `description` text,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `title`, `image`, `description`) VALUES
(6, 'There is no other way except Jesus.', 'http://church.ahomaxtechs.com//cdn/sliders/slide011.jpg', 'We love God.<br>\r\nWe believe in God.'),
(7, 'Living Hope For Real People', 'http://church.ahomaxtechs.com//cdn/sliders/slide021.jpg', 'Where People Gather <br>\r\nto Worship & Share'),
(8, 'Building Holy and Healthy Lives', 'http://church.ahomaxtechs.com//cdn/sliders/slide031.jpg', 'We Build Hope<br>\r\nand Grow Together');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `position` varchar(255) DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `name`, `description`, `position`, `image`) VALUES
(1, 'Elian Roselin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis tristique sapien. Duis viverra tellus quis sagittis dignissim. Morbi sodales elit erat, non tempus ligula pretium sit amet.', 'Youth Pastor', 'https://elmanawy.info/demo/marocms/cdn/team/testimonial1.png'),
(4, 'Yetunde Are', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis tristique sapien. Duis viverra tellus quis sagittis dignissim. Morbi sodales elit erat, non tempus ligula pretium sit amet.', 'Head Usher', 'https://elmanawy.info/demo/marocms/cdn/team/team5.png'),
(5, 'Bright John', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis tristique sapien. Duis viverra tellus quis sagittis dignissim. Morbi sodales elit erat, non tempus ligula pretium sit amet.', 'Choir Director', 'https://elmanawy.info/demo/marocms/cdn/team/team4.png'),
(6, 'Segun James', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis tristique sapien. Duis viverra tellus quis sagittis dignissim. Morbi sodales elit erat, non tempus ligula pretium sit amet.', 'Pastor', 'https://elmanawy.info/demo/marocms/cdn/team/team2.png'),
(7, 'Awolu Faith', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis tristique sapien. Duis viverra tellus quis sagittis dignissim. Morbi sodales elit erat, non tempus ligula pretium sit amet.', 'Senior Pastor', 'http://localhost/chu//cdn/team/Thank_you_fw.png');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `message` text,
  `image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`testimonial_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonial_id`, `name`, `position`, `message`, `image`) VALUES
(3, 'Rhoda James', 'Secretary', 'Proin a ipsum quis diam dictum eleifend. Sed at aliquet massa. Quisque nec lacinia elit. Fusce tempor condimentum vehicula. Donec porttitor diam in nisi maximus, varius mattis risus consequat. Aenean purus dolor, volutpat et malesuada nec, porttitor nec mi. Sed efficitur diam ligula, vel molestie erat sagittis vel.', 'http://church.ahomaxtechs.com//cdn/testimonials/01.jpg'),
(5, 'Yemi Faith', 'Guest', 'Proin a ipsum quis diam dictum eleifend. Sed at aliquet massa. Quisque nec lacinia elit. Fusce tempor condimentum vehicula. Donec porttitor diam in nisi maximus, varius mattis risus consequat. Aenean purus dolor, volutpat et malesuada nec, porttitor nec mi. Sed efficitur diam ligula, vel molestie erat sagittis vel.', 'http://church.ahomaxtechs.com//cdn/testimonials/05.jpg'),
(6, 'Femi Flames', 'Member', 'Proin a ipsum quis diam dictum eleifend. Sed at aliquet massa. Quisque nec lacinia elit. Fusce tempor condimentum vehicula. Donec porttitor diam in nisi maximus, varius mattis risus consequat. Aenean purus dolor, volutpat et malesuada nec, porttitor nec mi. Sed efficitur diam ligula, vel molestie erat sagittis vel.', 'http://church.ahomaxtechs.com//cdn/testimonials/03.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` text,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `image`, `password`) VALUES
(1, 'Admin', 'admin@admin.com', '03.jpg', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(400) NOT NULL,
  `link` varchar(500) NOT NULL,
  `video` text NOT NULL,
  `video_format` varchar(15) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `title`, `link`, `video`, `video_format`, `image`) VALUES
(1, 'Activating Your Five Spiritual Senses Series - Sense of Sight', 'K1uh4bLiaN0', '', '', ''),
(2, 'dont know', 'jNQXAC9IVRw', '', '', ''),
(9, 'Something to see', 'vsypFJ5mNw0', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
