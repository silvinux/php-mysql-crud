SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud`;

USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `country` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (student_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `students` (`student_id`, `student_name`, `email_address`, `contact`, `gender`, `country`, `datetime`) VALUES
(01, 'Son Goku', 'goku@dragonball.com', '81311000001', 'Male', 'Japan', '2017-08-27 20:11:50'),
(02, 'Bulma', 'bulma@dragonball.com', '81311000002', 'Female', 'Japan', '2017-08-27 20:11:50'),
(03, 'Master Roshi', 'turtlehermit@dragonball.com', '81311000003', 'Male', 'Japan', '2017-08-27 20:11:50'),
(04, 'Yamcha', 'yamcha@dragonball.com', '81311000004', 'Male', 'Japan', '2017-08-27 20:11:50'),
(05, 'Krillin', 'krillin@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(06, 'Tien Shinhan', 'tienshinhan@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(07, 'Piccolo', 'piccolo@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(08, 'Son Gohan', 'gohan@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(09, 'Vegeta', 'vegeta@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50'),
(10, 'Chi-Chi', 'chichi@dragonball.com', '81311000005', 'Male', 'Japan', '2017-08-27 20:11:50')
