-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 06:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kenny Lynch', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(2, 'Sierra Moore', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(3, 'Annalise Simonis', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(4, 'Jaylin Predovic', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(5, 'Dr. Luz Goldner DVM', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(6, 'Junius Rohan', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(7, 'Prof. Martine Runolfsson', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(8, 'Lauriane Cole', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(9, 'Vernon Flatley V', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(10, 'Iva Yost V', 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feedback_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `title`, `description`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Culpa molestias ipsam et temporibus qui.', 'Quia et adipisci dolor natus. Modi quisquam sit excepturi ipsam architecto est. Et voluptas assumenda eaque ut aperiam est.', 2, 4, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(2, 'Itaque velit dolores aliquid expedita placeat eveniet dolor explicabo.', 'Libero similique et sit corrupti totam similique. Vero quisquam repellendus est. Qui sit quidem illum qui aut similique.', 3, 2, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(3, 'Illo corporis expedita velit qui.', 'Doloremque consequuntur quos rerum quis. Distinctio qui non incidunt mollitia. Quia fugit eveniet incidunt sit. Excepturi rerum autem qui vel et molestiae.', 8, 9, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(4, 'Dolores totam iusto laborum pariatur consequatur.', 'Enim in impedit laboriosam provident quod. Officiis dolor quasi numquam autem. Eveniet veritatis voluptas aut nostrum.', 5, 11, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(5, 'Totam similique qui magnam iusto ducimus repellat.', 'Et alias quia qui eos. Aut eos aliquid tempora autem aut aperiam. Ex perspiciatis itaque qui qui veniam itaque.', 2, 9, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(6, 'Impedit quos tempore molestias quaerat.', 'Ipsa maxime minima nihil quibusdam debitis sint consequatur et. Illum illo et ut beatae omnis quod. Quo voluptate qui laboriosam impedit voluptatem omnis.', 1, 4, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(7, 'Aut quaerat enim quaerat doloribus blanditiis necessitatibus.', 'Odio error architecto mollitia omnis eos occaecati ipsam. Et dolorum ullam suscipit quaerat ut ullam. Aperiam consequuntur tempore eum nemo placeat consequatur quae numquam.', 1, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(8, 'Consequatur tempora nam soluta perferendis.', 'Est occaecati voluptatem quos dicta atque. Ut velit quas eos quibusdam aut ut. Rerum autem explicabo officia tempora sit. At ut ducimus dolores deleniti aut quasi.', 10, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(9, 'Velit ipsam et magni tempore exercitationem laudantium.', 'Dolor natus veritatis libero vero eos illo nulla consectetur. Et totam aut et molestiae ea voluptas quod. Non distinctio repellendus enim. Et nesciunt est ab perspiciatis voluptatum autem aut.', 1, 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(10, 'Qui rerum expedita laboriosam aut dicta eligendi.', 'Amet ut cumque deleniti eos harum incidunt dolorum. Mollitia suscipit est voluptas et nesciunt aut. Eum totam non sed est nesciunt.', 9, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(11, 'Maiores eos eligendi inventore consequatur.', 'Nihil commodi amet voluptates. Dignissimos delectus impedit voluptates excepturi ipsam ut eum. Vero quas sit magni dignissimos. Eum ab et sint eveniet dolor voluptatem.', 1, 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(12, 'Mollitia sed possimus odit est ab.', 'Sed quia voluptates voluptatem unde voluptas omnis. Et aut voluptatum blanditiis dolorem fugiat nobis odit. Ratione impedit qui eum nisi et sit.', 1, 5, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(13, 'Alias aut quis sint aperiam ut sapiente.', 'Et harum et alias quia est. Omnis in facilis sit assumenda. Totam deleniti consequatur recusandae sed maiores facilis. Iure impedit aperiam dicta dolores.', 9, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(14, 'Nihil voluptas qui natus aut assumenda.', 'Est minus et voluptates doloremque ratione sed. Velit doloribus sed placeat nostrum in. Provident voluptates sed in fugit rem. Qui iure aliquam laudantium quis dolorem doloremque.', 2, 9, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(15, 'Ut voluptate et nemo saepe vel.', 'Aut repellendus est nostrum id explicabo temporibus. Nihil dolorum ex doloribus quibusdam quae nobis. Eum molestiae numquam ad nihil quis. Accusamus modi et rerum dolorem ut.', 10, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(16, 'Quam ducimus aut ex odio quidem.', 'Dolorum ex id voluptatibus consequuntur sunt sunt ducimus est. Ut eum nobis sunt ab. Qui hic sit voluptas et ut aut nostrum.', 1, 11, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(17, 'Est quia sequi velit eos.', 'Sunt ad voluptatem omnis vel debitis ut corporis. Iure unde aut maxime nobis. Molestiae minus laborum repudiandae reiciendis sunt.', 5, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(18, 'Ullam vitae enim accusamus odit quibusdam.', 'Natus repellat ad dolor tempora nesciunt iste. Est et numquam vel enim. Et harum quidem similique aut. Fugiat quia autem veritatis nemo et sed.', 1, 8, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(19, 'Ab aperiam quia sit est quis quos.', 'Molestias accusantium natus repellat omnis qui. Consectetur et accusamus eum commodi tenetur ipsa. Aut debitis dolorem facere hic et ipsam. Ea vero et nihil ipsam laboriosam iure modi amet.', 9, 3, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(20, 'Itaque quis labore perspiciatis quaerat laudantium atque sed quis.', 'Repellendus molestiae aut officiis aut consequatur. Fuga illum qui iusto in fugiat impedit odio.', 2, 9, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(21, 'Saepe aut corporis est debitis aut.', 'Facilis ea ad molestias consectetur. Aut nesciunt consequatur reprehenderit distinctio omnis harum corporis. Incidunt nobis sit debitis asperiores voluptatem. Et doloribus et modi ducimus in.', 4, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(22, 'Facilis alias ut ut aliquam ad dolorem temporibus.', 'Aliquid et ullam enim placeat aut. Quas labore incidunt amet animi. Sunt tenetur accusamus ut rerum. Ipsam atque minus omnis autem iusto.', 2, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(23, 'Sequi modi molestiae eum odit.', 'Explicabo modi officiis ipsa natus consequatur explicabo iusto. Excepturi et dolores architecto omnis a quasi. Consequatur praesentium ea debitis. Dicta saepe est dolorem odio.', 2, 3, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(24, 'Iusto molestiae a consequatur odit vitae et.', 'In vel consequuntur iure qui quaerat. Rerum cupiditate sequi id odit nihil. Officia culpa quisquam quia quo est.', 9, 9, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(25, 'Accusamus enim ullam enim omnis a similique.', 'Beatae eum et dolor ea. Fugiat est dicta consequatur accusantium qui. Tenetur qui voluptatibus voluptas quasi doloremque.', 4, 4, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(26, 'Animi provident autem et omnis ab.', 'Hic sit voluptatem nihil aut aut expedita aliquid. Neque animi qui ullam. At inventore et enim ut. Accusantium in laboriosam quis autem velit.', 10, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(27, 'Aut repudiandae laboriosam et velit.', 'Ipsa blanditiis non itaque ex assumenda et recusandae. Quia ipsa illum ut numquam error commodi. Quos consequatur nobis ut debitis sit. Debitis ullam est laborum nihil optio molestias architecto iusto. In velit minima facilis illo blanditiis ex eos.', 5, 2, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(28, 'Quisquam sint laudantium provident ut.', 'Maxime provident veniam veritatis animi. Quae facere quia est alias non. Voluptatem rerum accusamus aut totam ipsam distinctio voluptatem. Repudiandae maiores in quia.', 3, 9, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(29, 'Et non nisi dolor et nihil.', 'Voluptatum delectus qui quisquam. Cum optio incidunt aut optio magnam repellat. Eos optio autem earum non. Deserunt explicabo debitis architecto tempore et adipisci dolor eos.', 2, 4, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(30, 'Nobis beatae quo labore id at praesentium quis.', 'Eligendi maiores voluptates debitis quos voluptatem consectetur autem. Ratione fuga voluptatum facilis et commodi ut dolor.', 3, 4, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(31, 'Et voluptas distinctio unde eos voluptatem cumque ut.', 'Et alias dolor molestiae esse omnis temporibus a. Consequuntur cupiditate omnis ut quia impedit enim. Culpa voluptatem laboriosam alias ad nihil.', 8, 7, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(32, 'Incidunt sequi vero deleniti doloribus ea consequatur alias.', 'Culpa eligendi quisquam blanditiis molestiae. Earum et molestiae rerum ipsa animi aliquam omnis.', 8, 7, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(33, 'Quia at dignissimos vel recusandae id corporis nesciunt.', 'Repudiandae voluptas maxime qui et quo totam blanditiis rem. Sunt enim quisquam commodi ipsa molestiae ut rerum. Fugiat alias ipsa et doloremque qui non quos culpa. Quia maiores ut autem ex libero aspernatur nostrum qui.', 7, 2, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(34, 'Libero odio maxime quod et occaecati quia.', 'Quia harum ut eius eius consequatur aliquam aut. Officiis et fugit possimus vero ipsum sed aut eligendi. Est dolor velit amet et sed omnis mollitia.', 6, 10, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(35, 'Harum laudantium occaecati aperiam molestiae voluptatem.', 'Dolor veniam autem fugiat consequatur animi quos quo. Impedit ut provident id consequatur nam sunt reiciendis. Beatae sit atque est est necessitatibus quas et.', 8, 2, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(36, 'Maxime totam tempore placeat et deserunt.', 'Quo iure sed illo laboriosam. Nostrum qui aliquam consequatur deleniti. Consequatur tempora aut tenetur sunt rem.', 5, 11, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(37, 'Similique officia quae culpa omnis aut minus est.', 'Asperiores labore tempora rerum autem quae velit. Omnis mollitia est doloremque iste nam soluta aut. Doloremque eius iure est qui consectetur. Et fugiat ut placeat rerum. Fugit voluptas nisi sint iste iusto ea.', 7, 6, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(38, 'Expedita qui qui reiciendis.', 'Doloremque quis voluptas minus delectus alias molestiae. Autem ut est est qui sequi. Amet consequatur reiciendis neque libero. Molestiae quia earum ab quia. Vitae omnis aliquid ut.', 5, 9, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(39, 'Non dolorem dolores assumenda maiores.', 'Eligendi voluptas earum recusandae dolores deserunt. Ipsam rerum architecto enim mollitia maxime soluta non. Nemo quaerat et quisquam. At quia neque enim.', 1, 8, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(40, 'Est voluptatem reprehenderit quis architecto.', 'Fugiat amet nesciunt veritatis impedit. Et voluptatem repellat quo consequatur sed modi. Impedit omnis voluptas quisquam expedita illo. Nam nam ea et sed praesentium qui sint rerum.', 6, 2, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(41, 'Modi iure animi fugit dolores nobis.', 'Distinctio porro atque laboriosam asperiores. Occaecati cumque cumque modi facilis facere. Ipsam quod corporis natus ut ea consequuntur. Quis aut nesciunt fuga labore id earum.', 6, 8, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(42, 'Officia sed itaque molestiae quod.', 'Nisi aut consequatur quam ut similique aut laudantium. Reprehenderit eum aspernatur rem. Unde iste id facilis cum eos beatae. Ut odio cumque aperiam veniam.', 4, 2, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(43, 'Et atque numquam necessitatibus nemo voluptatibus fugit.', 'Aliquid aut consequatur aperiam esse. Quam est saepe dignissimos similique cumque. Distinctio vero molestiae aut ea rerum similique.', 7, 4, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(44, 'Accusamus ut quis molestias sunt molestiae et.', 'Qui facilis nihil sequi illo iste fuga quo voluptas. Necessitatibus molestiae omnis voluptas id odit et eius omnis. Aut temporibus voluptatibus ullam nihil.', 8, 1, '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(45, 'Exercitationem dolore pariatur rerum ut excepturi esse nobis.', 'Ullam eius ipsa accusantium optio modi. Labore consequatur possimus dicta ea odio aut. Molestias aperiam asperiores et voluptatum voluptas occaecati recusandae. Voluptas cum quibusdam atque quae. Qui dolores nesciunt nulla et.', 3, 3, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(46, 'Quaerat animi velit inventore exercitationem culpa necessitatibus consequatur consequatur.', 'Similique sapiente sed quos facilis alias dicta facilis. Assumenda eligendi nesciunt aut facere dolorum. Nobis dolor odit magnam et occaecati in dolorum.', 6, 2, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(47, 'Ipsum libero est et.', 'Delectus labore alias nobis. Iure esse corrupti velit odio.', 5, 4, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(48, 'Iure maiores illum facilis et.', 'Nemo id deserunt eos sunt. Libero beatae ad illum cum omnis qui veritatis totam. Expedita possimus incidunt dolore quia ducimus repellat ipsum.', 10, 4, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(49, 'Accusamus accusantium quo voluptas ex.', 'Velit ad tempore et itaque sequi ut maiores. Sint qui quo cupiditate sed. Ad sit occaecati minus.', 5, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(50, 'Assumenda qui quaerat sint sunt.', 'Quis voluptates dolorem dolor magnam earum esse. Vitae unde temporibus aut. Et fuga eveniet incidunt molestiae error nihil id. Fuga aut exercitationem tempore earum.', 1, 5, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(51, 'Ullam ratione dolorem id pariatur.', 'Asperiores unde cum beatae odio quo. Et et et quis ex voluptas quis. Quia ipsam veritatis aut in magnam labore.', 8, 1, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(52, 'Quae quae id qui delectus voluptas et.', 'Totam hic esse ut. Voluptatibus impedit sequi iste omnis perferendis. Voluptas error ullam officiis. Reiciendis voluptatem porro qui quis fugiat.', 4, 7, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(53, 'Atque officiis provident quam et eum.', 'Deserunt consectetur eum distinctio numquam iste. Laborum non ut quia dolores. Explicabo ullam unde qui ad exercitationem ad.', 3, 4, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(54, 'Aut id ducimus recusandae excepturi provident ut architecto.', 'Fuga esse ducimus rem dolor iste cupiditate facilis. Qui nemo est necessitatibus sint explicabo vel. Mollitia quo reiciendis quia modi ut aut consequatur. Reprehenderit ipsam ut et sint vel in aspernatur. Ut id qui culpa nostrum.', 10, 1, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(55, 'Ipsum est et odio architecto id.', 'Et magnam sint voluptas. Amet minima dolorum sit ut dolor adipisci voluptatibus dicta. Adipisci iste assumenda ex.', 7, 3, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(56, 'Voluptatem eos enim quibusdam omnis.', 'Dolor eos rerum saepe dolorem voluptas ad quidem. Repellat ea qui ratione. Repellat est repellat dolore corrupti laborum et esse.', 10, 6, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(57, 'Tempore aliquam ab voluptatem.', 'Nulla ea aut laudantium quia qui officia a. Vel autem eos autem assumenda.', 6, 1, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(58, 'Ut quia dolores alias aut.', 'Sapiente sed aliquam odio ut dolorem quis. Quo quis eos labore ut labore. Aspernatur laudantium nihil exercitationem reprehenderit molestiae a sunt.', 4, 6, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(59, 'Ut iste accusantium et totam et non.', 'Quisquam placeat sit dolor sint. Atque voluptatem vitae cum esse. Quibusdam provident tempore eos quia error deserunt quidem.', 3, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(60, 'Consequatur vel nesciunt quam.', 'Occaecati fugiat ut qui sit aspernatur asperiores. Praesentium optio voluptatem magni aut non. Perferendis tenetur aliquid ut qui reiciendis in. Voluptatum architecto quasi asperiores. Non ipsa quam in tenetur.', 10, 3, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(61, 'Nihil quibusdam quia velit iste cumque placeat.', 'Excepturi est praesentium dolorum. Rerum exercitationem dolor quis accusantium rerum. Error mollitia nostrum consectetur a enim. Autem aut accusamus rerum.', 10, 3, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(62, 'Dolore perspiciatis rerum assumenda dolor aliquam ut omnis.', 'Quidem optio beatae repellendus qui. Eum et fugiat inventore iusto quia ipsa. Non rerum voluptate vero recusandae aspernatur perspiciatis. Ipsum nihil debitis qui ipsa.', 7, 6, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(63, 'Quaerat blanditiis sed provident porro veritatis ut itaque.', 'Atque suscipit optio eius error. Aliquid autem a praesentium voluptas. Blanditiis aut debitis rem eligendi explicabo. Aut hic laudantium eveniet explicabo qui libero dolorem inventore.', 5, 6, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(64, 'Sapiente dicta ullam porro incidunt sit.', 'Veniam corporis fugiat enim impedit commodi rem dolor corrupti. Minus quo voluptas minima quia qui libero aliquam. Ratione nulla labore vitae doloremque earum esse porro fuga.', 2, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(65, 'Ut corporis quo omnis voluptas.', 'Fugit dolore aut incidunt et animi corrupti. Impedit praesentium excepturi eum quidem. Magni ut accusantium eius ullam vitae.', 1, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(66, 'Veniam molestiae et aut qui asperiores.', 'Ea qui explicabo error voluptatem. Aut numquam iusto facilis ut similique et doloribus repellendus. Beatae suscipit consequatur ratione fugit soluta voluptatum. Culpa sit et incidunt natus et ut eligendi. Nam maxime qui provident quasi dicta quia dicta.', 9, 4, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(67, 'Dolor doloribus ut quisquam commodi.', 'Ea voluptatibus voluptatum quasi quo error sunt. Dolores ad perspiciatis totam ut hic est. Quibusdam tenetur eos qui corporis nemo doloremque totam nesciunt.', 4, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(68, 'Laudantium voluptatem laboriosam quas neque ducimus et est consequuntur.', 'Sed et voluptatem aut dolores nostrum alias delectus quo. Aut iusto beatae unde eius omnis necessitatibus. Necessitatibus aliquam odio omnis dolore.', 3, 3, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(69, 'Odit eos accusamus aut nihil cum totam.', 'Debitis velit est veritatis molestiae voluptatem. Incidunt nostrum et sunt eius ut molestiae id. Dolor ad repellendus odio quaerat iure harum.', 6, 8, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(70, 'Recusandae distinctio vero sunt aliquam nam.', 'Nulla officia aperiam ut veritatis non. Aut animi nostrum quam. Beatae voluptatem quo aperiam placeat dolores.', 7, 6, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(71, 'Facilis similique vel qui saepe mollitia est.', 'Ad nihil voluptatem incidunt qui et. Fuga iure officia eligendi vel impedit. Ullam corporis sint impedit et itaque tempora non soluta. Quasi similique est porro excepturi nihil omnis amet velit.', 3, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(72, 'Minima qui neque facilis quia maxime velit quis.', 'Quaerat in facilis exercitationem voluptates enim commodi aut. Eligendi et ducimus quod deleniti.', 10, 8, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(73, 'Odit optio fuga quia sequi dolorum aliquam hic exercitationem.', 'Cumque id veritatis quisquam laboriosam. Perferendis nulla ea laboriosam reprehenderit est.', 7, 1, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(74, 'Aperiam rem esse sit voluptatem qui.', 'In quis ut cupiditate ut voluptatem aut. Ad aut soluta ducimus ex. In tempore quibusdam ducimus quia praesentium quo harum.', 10, 7, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(75, 'Delectus totam sapiente magnam aut est.', 'Aspernatur non explicabo ipsum modi nobis. Quo at porro harum et et. Sapiente odit nulla ut illum aliquid et recusandae culpa. Dolor eligendi est et eaque culpa nostrum. Omnis veniam omnis qui debitis.', 2, 11, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(76, 'Ab quae quo dolores.', 'Cupiditate aut est sapiente dolorum. Dolor ut quod esse corrupti voluptas. Ea repudiandae recusandae sed excepturi dolorem minima mollitia.', 8, 8, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(77, 'Praesentium doloribus aspernatur veniam explicabo aliquid.', 'Recusandae sit suscipit iusto. Id fugit et exercitationem. Sint velit neque neque voluptatem. Porro similique accusamus voluptate ab est dolores sit. Deleniti modi officiis repudiandae est eos et tempora.', 6, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(78, 'Esse ut expedita ut dignissimos.', 'Quas sit doloribus doloremque deserunt natus. Inventore qui facilis tenetur officiis autem. Rerum doloribus enim sunt maxime voluptate iste. Inventore officia possimus amet aut animi cumque nihil.', 3, 5, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(79, 'Occaecati sequi ut cumque a earum ducimus maiores.', 'Voluptas dicta dolores tenetur ea impedit. Magnam facere qui ut optio. Nemo sapiente nesciunt nisi sunt.', 6, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(80, 'Architecto nostrum nesciunt officiis vero optio et.', 'Recusandae quam dolores quas recusandae dolore praesentium officia. Et occaecati eum dolorum facilis animi fuga. Quod odio tempore exercitationem eos.', 6, 2, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(81, 'Dolorem voluptatibus sapiente quas labore.', 'Recusandae maiores et ducimus ut. Incidunt est asperiores magni rerum. Eligendi et quis sed ullam consectetur velit voluptatibus.', 8, 11, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(82, 'Optio itaque tempore qui praesentium voluptates repellat.', 'Voluptatem sunt eius rerum perspiciatis qui. Dolores ipsam ut sit deleniti quo eos consequatur. Et sequi beatae minus nisi harum saepe ex. Fugit a eos hic.', 4, 11, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(83, 'Recusandae vel est ab commodi voluptates.', 'Molestiae sint pariatur dicta unde blanditiis adipisci. Ex dignissimos vitae quia consequatur repellat error ipsum voluptate. Asperiores explicabo nam dolore eius eveniet ipsam sit.', 1, 10, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(84, 'Corrupti quia culpa vel officiis dolorem sed.', 'Qui repudiandae itaque unde eveniet voluptatem totam tempora qui. Est est eum officiis quod dolor. Corrupti ad deserunt qui similique harum. Sed eum vel esse aut dolor ab soluta.', 3, 4, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(85, 'Sed inventore impedit praesentium doloremque laudantium et repudiandae.', 'Esse et et voluptatem dolorem aut. Reprehenderit ab occaecati aliquid facilis molestiae nobis et.', 5, 7, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(86, 'Consequatur laudantium unde mollitia dicta eaque est praesentium.', 'Repellendus excepturi ea beatae quidem est facere tempora. Et voluptatem ea ad necessitatibus.', 1, 6, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(87, 'Nobis aut molestiae ut sit aliquid labore voluptas excepturi.', 'Molestiae maiores asperiores voluptatem et illo. Voluptate quis nostrum tempore non asperiores qui. Sed illo maiores sunt ipsum et voluptatibus facere. Sunt cumque est et. Et eaque nulla quam aut et.', 10, 5, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(88, 'Qui pariatur quo quidem quasi enim.', 'Et occaecati enim officiis aut nihil ea praesentium. Consequatur odio commodi nisi qui. Velit eos temporibus omnis ipsa dicta et rem nam. Doloremque occaecati fugit modi non.', 4, 4, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(89, 'Veniam consequuntur est repellat alias perspiciatis autem.', 'Provident perferendis ut officia eos perferendis totam. Rerum doloribus est qui aliquid reprehenderit fuga. Ut libero et et et laboriosam. Vel nihil laboriosam tenetur qui tempora vitae minus culpa.', 1, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(90, 'Vel et dolor blanditiis qui laboriosam corporis.', 'Id repellendus iure aut iusto consequuntur dolores impedit. Error praesentium occaecati in et. Minus sint maiores consectetur voluptates iusto. Enim inventore omnis et et. Vero voluptas vel amet ut magni.', 7, 8, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(91, 'Et saepe fugiat rem et.', 'Perferendis iusto maxime et quas et error alias. Animi minima dolore voluptates dolore pariatur et placeat.', 7, 11, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(92, 'Inventore non illo eos quas iure quo.', 'Beatae excepturi architecto provident quia explicabo hic aliquam. Accusamus maiores temporibus vero tempora laudantium commodi tempore. Et et accusamus aperiam. Porro ut id quia fuga commodi ad. Quisquam sunt velit cum similique accusamus rerum corrupti facilis.', 6, 10, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(93, 'Quia voluptas earum reiciendis nulla ad aperiam.', 'Repudiandae quia qui temporibus ad velit quisquam. Ut est accusamus facilis quod qui. Dolores et et nulla deserunt et eum consequuntur. Aut fugiat itaque illum sit reiciendis.', 9, 9, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(94, 'Similique rerum voluptatem est ut.', 'Vel et nisi vitae provident iste. Voluptas sit non molestias. Consequatur a voluptatibus accusantium aliquam quae.', 4, 8, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(95, 'Eveniet voluptatum possimus dolor ut.', 'Ipsa et sint aut inventore tempora. Dolor sed vitae odio. Eum occaecati sed culpa non incidunt. Aperiam eaque magnam aut saepe.', 4, 5, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(96, 'Corporis et ea voluptas ut et tempore quidem consequatur.', 'Dolor voluptatem id quas omnis ut vitae earum. Non ad rem necessitatibus alias explicabo in. Enim non veniam sunt quia placeat consequatur modi.', 5, 7, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(97, 'Consequatur dolor et iusto eaque maxime totam nobis.', 'Voluptatem aut et ut quidem minima sint. Vel quaerat voluptatem voluptatem quis blanditiis cumque fugit.', 7, 8, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(98, 'Temporibus aut facere iste dolorem.', 'Assumenda est ipsum ex animi ipsum. Odio facere ut autem facilis nihil soluta corrupti ad. Quo numquam est velit dicta eos.', 4, 4, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(99, 'Excepturi qui et porro alias quas.', 'Eos tempora cupiditate omnis explicabo vel. Sint sit excepturi odio numquam. Quis beatae rerum inventore eligendi et.', 6, 3, '2024-02-02 06:50:33', '2024-02-02 06:50:33'),
(100, 'Accusantium occaecati harum esse et voluptatibus est.', 'Qui inventore consequatur architecto culpa sed magni quia odit. Ab et et reprehenderit dolorem quia tempora. At consequuntur nulla qui aut quaerat et. Est suscipit consequatur sequi consequatur omnis esse non.', 2, 10, '2024-02-02 06:50:33', '2024-02-02 06:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_04_04_184331_create_categories_table', 1),
(4, '2024_02_01_124930_create_feedback_table', 1),
(5, '2024_02_01_220809_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `role` varchar(191) NOT NULL DEFAULT '1' COMMENT '0 => admin , 1 => company , 2 =. user',
  `location_id` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `added_by` varchar(191) NOT NULL DEFAULT '1',
  `image` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `role`, `location_id`, `email_verified_at`, `password`, `added_by`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'Admin', 'superadmin@gmail.com', '0', NULL, NULL, '$2y$10$nRhbiPlEoN7hpd.9/5i0Hu3cltqhMSZSrDauOTgSXfEwXP5AR4gpK', '1', NULL, '1', NULL, '2024-02-02 06:50:31', '2024-02-02 06:50:31'),
(2, 'Mallory', 'Kreiger', 'sienna.gibson@example.com', '1', '8xRrFlPc6s', '2024-02-02 06:50:31', '$2y$10$uBU5US68TdZXkPe4G6NDIefrjDcKpCcV6QzZQ16XU8foLXQXeqBqq', '1', 'default.png', '1', 'uzRN2pPxsn', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(3, 'Chris', 'Abshire', 'stamm.juwan@example.org', '1', 'HCgXpvVR8D', '2024-02-02 06:50:31', '$2y$10$VA868tsPmfuIFYgNnjRUy.JkDIBzrkwe2LWzs1rIATlEeJAlUVVS.', '1', 'default.png', '1', '8qrtz9yU8B', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(4, 'Charlotte', 'Hyatt', 'golden97@example.net', '2', 'lxIOK5yK81', '2024-02-02 06:50:31', '$2y$10$x2aDuePBpBZC6.tAEzezgODYlsC5p6HEzh5XFd7chER4x0B90twbq', '1', 'default.png', '1', 'lixvIDKSOM', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(5, 'Rosina', 'Carter', 'bbuckridge@example.com', '2', '0jHWa07V02', '2024-02-02 06:50:31', '$2y$10$ZHEEfAYESfT1vx19.59sNOKAUiyXGpiSL3YZ89j92BO7lo9tKF3hO', '1', 'default.png', '1', 'p2HFP0M8qx', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(6, 'Delphia', 'Kovacek', 'lupe24@example.net', '2', 'WmcATk4Te9', '2024-02-02 06:50:31', '$2y$10$8bO1zEQ.uTATw.ekf/6g1OzperA/8rJrbRRExzB9rDi2qMd6/5kmS', '1', 'default.png', '1', 'oqXR5dvkKi', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(7, 'Lyla', 'Rosenbaum', 'herzog.norwood@example.org', '2', 'IabF3i1TNq', '2024-02-02 06:50:32', '$2y$10$XpA6Jf88Ps.2ASOP3oaivOOEnneLLxqPTBHTa/rsa90kC6JzhxKI2', '1', 'default.png', '1', 'rh376oVlGm', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(8, 'Quinn', 'Bechtelar', 'murazik.ottis@example.com', '1', 'Kpz69b9W7w', '2024-02-02 06:50:32', '$2y$10$JwcROJu8K6O8uuLDEDqLQuikVJU/oHHtw2z97fsMq.JCqMuRmOJVa', '1', 'default.png', '1', 'vbzzpHjsJT', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(9, 'Kamryn', 'Trantow', 'robin03@example.com', '2', 'WYDMGQY344', '2024-02-02 06:50:32', '$2y$10$GXf1lvgU6X2CqvxqIhwsmOUpaaHjUp0O1bcrXbzBzQwI9vno19p1e', '1', 'default.png', '1', 'UlLRvhCIT0', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(10, 'Norma', 'Walker', 'wcassin@example.net', '1', 'eO3G3eow2g', '2024-02-02 06:50:32', '$2y$10$I9x326J9B34M7cmN/UJ/veRXQFewE5ueOOSwaJXtKqjszwg8zNJSm', '1', 'default.png', '1', 'zvilzHBDay', '2024-02-02 06:50:32', '2024-02-02 06:50:32'),
(11, 'Tyshawn', 'Walker', 'allie.williamson@example.com', '2', 'FjLXcA8MH6', '2024-02-02 06:50:32', '$2y$10$IzrmNcxEDxEV/zyDlMOIH.WMJw2CyRtOgmcrGCfYXRwgzyTi3BDDG', '1', 'default.png', '1', 'HZmhJLNvN6', '2024-02-02 06:50:32', '2024-02-02 06:50:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_feedback_id_foreign` (`feedback_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_category_id_foreign` (`category_id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_feedback_id_foreign` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
