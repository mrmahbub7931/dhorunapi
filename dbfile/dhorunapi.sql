-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 08:55 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhorunapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `icon_class`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
(7, 'Home & Cleaning', 'home-cleaning', NULL, NULL, 0, '2020-10-05 13:09:26', '2020-10-05 13:09:26'),
(8, 'Air Fresheners', 'air-fresheners', NULL, NULL, 7, '2020-10-05 13:09:55', '2020-10-05 13:09:55'),
(9, 'Food', 'food', NULL, NULL, 0, '2020-10-06 13:22:51', '2020-10-06 13:22:51'),
(10, 'Fruits & Vegetables', 'fruits-vegetables', NULL, NULL, 9, '2020-10-06 13:23:10', '2020-10-06 13:23:10'),
(11, 'Beauty & Health', 'beauty-health', NULL, NULL, 0, '2020-10-23 00:01:29', '2020-10-23 00:01:29'),
(12, 'Health Care', 'health-care', NULL, NULL, 11, '2020-10-23 00:01:52', '2020-10-23 00:01:52'),
(13, 'Personal Care', 'personal-care', NULL, NULL, 11, '2020-10-23 00:02:57', '2020-10-23 00:02:57'),
(14, 'Kitchen Accessories', 'kitchen-accessories', NULL, NULL, 7, '2020-10-23 00:03:38', '2020-10-23 00:03:38'),
(15, 'Pest Control', 'pest-control', NULL, NULL, 7, '2020-10-23 00:04:47', '2020-10-23 00:04:47'),
(16, 'Baby Care', 'baby-care', NULL, NULL, 0, '2020-10-23 00:31:17', '2020-10-23 00:31:17'),
(17, 'Diapers & Wipes', 'diapers-wipes', NULL, NULL, 16, '2020-10-23 00:31:39', '2020-10-23 00:31:39'),
(18, 'Feeders', 'feeders', NULL, NULL, 16, '2020-10-23 00:32:00', '2020-10-23 00:32:00'),
(19, 'Fooding', 'fooding', NULL, NULL, 16, '2020-10-23 00:32:12', '2020-10-23 00:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 8, 2, NULL, NULL),
(2, 10, 3, NULL, NULL),
(3, 15, 4, NULL, NULL),
(4, 15, 5, NULL, NULL),
(5, 13, 6, NULL, NULL),
(6, 10, 7, NULL, NULL),
(7, 10, 8, NULL, NULL),
(8, 19, 9, NULL, NULL),
(9, 17, 10, NULL, NULL),
(10, 17, 11, NULL, NULL),
(11, 18, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_08_31_170536_create_products_table', 1),
(9, '2020_08_31_173546_create_reviews_table', 1),
(10, '2020_09_01_142702_create_categories_table', 1),
(11, '2020_09_01_164705_create_roles_table', 1),
(12, '2020_09_01_164706_create_users_table', 1),
(13, '2020_09_02_181417_create_category_product_table', 1),
(14, '2020_09_30_160204_add_unity_to_products_table', 1),
(15, '2020_10_07_175021_create_carts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4f4c3e0aa2465c48b3257db107ae40baf3049464e4d8e0f09e9bca122792412808895c02820c2277', 1, 3, NULL, '[\"view-category\",\"create-categories\",\"update-categories\",\"delete-categories\",\"view-products\",\"create-products\",\"update-products\",\"delete-products\"]', 0, '2020-10-23 00:00:10', '2020-10-23 00:00:10', '2020-11-07 06:00:10'),
('931c236f000763f3faabffa5101df2814159abe4d237adfb5c196f9f673f2e82219a22bd3c935590', 1, 3, NULL, '[\"view-category\",\"create-categories\",\"update-categories\",\"delete-categories\",\"view-products\",\"create-products\",\"update-products\",\"delete-products\"]', 0, '2020-10-05 11:25:45', '2020-10-05 11:25:45', '2020-10-20 17:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('58784a22cf76278ee4cd79c5123d23a1dfcea4151da5501baa4c756220eccb240c53bbf555556d73', 1, 3, '[\"view-category\",\"create-categories\",\"update-categories\",\"delete-categories\",\"view-products\",\"create-products\",\"update-products\",\"delete-products\"]', 1, '2020-10-05 17:35:42'),
('922c93bd194c21a4e6146b39422fb99556ed103a9ab8b4d5a442a1a746b8621737f77e405d064760', 1, 3, '[\"view-category\",\"create-categories\",\"update-categories\",\"delete-categories\",\"view-products\",\"create-products\",\"update-products\",\"delete-products\"]', 1, '2020-10-23 06:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'mcVdsPWEHyBfXlFAwCn7t9yE01tlYXnFadpELXYz', NULL, 'http://localhost', 1, 0, 0, '2020-10-05 11:24:00', '2020-10-05 11:24:00'),
(2, NULL, 'Laravel Password Grant Client', '1eirIPKPRmBsXoYoVHgvGTkaMNYEE5rhOE6Ilc7B', 'users', 'http://localhost', 0, 1, 0, '2020-10-05 11:24:00', '2020-10-05 11:24:00'),
(3, 1, 'Dhorun.com', 'pLtRWPGZeSHKgnaMsRDPLpcNuZZ03BqguYqUGzrs', NULL, 'http://dhorunecommerce.test/oauth/callback', 0, 0, 0, '2020-10-05 11:25:08', '2020-10-05 11:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-05 11:24:00', '2020-10-05 11:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('02079bf9b8e1bcf91ccdadd9d62ed7cfbb5730dbd0325b09290ba326a6578114fafa9f70f7db8b2e', '4f4c3e0aa2465c48b3257db107ae40baf3049464e4d8e0f09e9bca122792412808895c02820c2277', 0, '2021-10-23 06:00:10'),
('8ef20c0a284b0adf5b299bccd8ee23f68d1cafd339f47c2d963494df0500b41c046062ffa28722ad', '931c236f000763f3faabffa5101df2814159abe4d237adfb5c196f9f673f2e82219a22bd3c935590', 0, '2021-10-05 17:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `long_desc` text COLLATE utf8mb4_unicode_ci,
  `specs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `type`, `name`, `slug`, `price`, `stock`, `discount`, `sku`, `size`, `color`, `short_desc`, `long_desc`, `specs`, `featured_image`, `gallery_image`, `status`, `meta_title`, `meta_desc`, `created_at`, `updated_at`, `unity`) VALUES
(2, 'simple', 'Odonil Nature Air Freshner Jasmine Mist', 'odonil-nature-air-freshner-jasmine-mist', 45, 20, 7, '7864', NULL, NULL, NULL, NULL, NULL, 'http://dhorunapi.test/public/storage/products/odonil-nature-air-freshner-jasmine-mist-2020-10-065f7ca7612c8b2.jpeg', NULL, 'on', NULL, NULL, '2020-10-06 11:20:34', '2020-10-06 11:20:34', '50 gm'),
(3, 'simple', 'Malta (Net Weight ± 50 gm)', 'malta-net-weight-50-gm', 400, 50, 13, 'UGGBBC', NULL, NULL, NULL, NULL, NULL, 'http://dhorunapi.test/public/storage/products/malta-net-weight-50-gm-2020-10-065f7cc50f5e013.jpg', NULL, 'on', NULL, NULL, '2020-10-06 13:27:11', '2020-10-06 13:27:11', '2 kg'),
(4, 'simple', 'Mediker SafeLife Veggie Wash', 'mediker-safelife-veggie-wash', 150, 50, 7, 'UGGBDP', NULL, NULL, 'Fruits and vegetables are extremely important for a healthy diet and contain nutritional values. However, before reaching the end consumers it comes in contact with many hands and hence may get contaminated with germs, bacteria, pesticide and harmful chemicals which do not go away by washing with water alone. Hence Marico Bangladesh Limited has come with the solution of Mediker SafeLife Veggie Wash\r\n\r\nMediker SafeLife Veggie Wash is an International expert in protection\r\n\r\n100% Safe Ingredients\r\n\r\nMade with Halal Ingredients\r\n\r\nRemoves harmful germs, bacteria , pesticides and wax\r\n\r\nNo residue after taste or smell\r\n\r\nHow to use:\r\n\r\nPour 2 capful of the solution in 2 litres of water\r\n\r\nSoak the fruits and vegetables well in the water for 5 minutes.\r\n\r\nRub the fruits and vegetables individually.\r\n\r\nRinse well for at least 30 seconds in running water.', NULL, NULL, 'http://dhorunapi.test/public/storage/products/mediker-safelife-veggie-wash-2020-10-235f92757a197f7.png', NULL, 'on', NULL, NULL, '2020-10-23 00:17:32', '2020-10-23 00:17:32', '250 ml'),
(5, 'simple', 'Godrej New Hit Anti Roach Gel 45 Days', 'godrej-new-hit-anti-roach-gel-45-days', 199, 40, NULL, 'UGGBCP', NULL, NULL, NULL, NULL, NULL, 'http://dhorunapi.test/public/storage/products/godrej-new-hit-anti-roach-gel-45-days-2020-10-235f927604edb79.png', NULL, 'on', NULL, NULL, '2020-10-23 00:19:49', '2020-10-23 00:19:49', 'each'),
(6, 'simple', 'Dettol Original Bathing Bar Soap', 'dettol-original-bathing-bar-soap', 10, 30, 10, 'UDDBBP', NULL, NULL, 'Use 30 gm bar of Dettol Original Soap to get the most cost-effective germ protection every day. Dettol Original soap is antibacterial which gives you protection from up to 100 illness causing germs. Dettol Original is a Grade 1 bathing soap- providing the best value for your purchase. That’s why mothers rely on Dettol protection. Recommended by Doctors of Bangladesh Private Medical Practitioners Association (BPMPA). ,', NULL, NULL, 'http://dhorunapi.test/public/storage/products/dettol-original-bathing-bar-soap-2020-10-235f9276abf081c.png', NULL, 'on', NULL, NULL, '2020-10-23 00:22:36', '2020-10-23 00:22:36', '30 gm'),
(7, 'simple', 'Onion Red (Imported)', 'onion-red-imported', 89, 50, 34, 'UERBBP', NULL, NULL, NULL, NULL, NULL, 'http://dhorunapi.test/public/storage/products/onion-red-imported-2020-10-235f927762dd03e.png', NULL, 'on', NULL, NULL, '2020-10-23 00:25:39', '2020-10-23 00:25:39', '1kg'),
(8, 'simple', 'Red Tomato (Net Weight ± 10 gm)', 'red-tomato-net-weight-±-10-gm', 55, 10, NULL, 'UEGBBP', NULL, NULL, 'The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.', NULL, NULL, 'http://dhorunapi.test/public/storage/products/red-tomato-net-weight-±-10-gm-2020-10-235f9277cf775ca.png', NULL, 'on', NULL, NULL, '2020-10-23 00:27:28', '2020-10-23 00:27:28', '500 gm'),
(9, 'simple', 'Nestlé NAN OPTIPRO 2 Infant Formula Milk Powder Tin (6 Months+)', 'nestlé-nan-optipro-2-infant-formula-milk-powder-tin-6-months', 860, 60, NULL, 'BHGBBP', NULL, NULL, 'Origin: Philippines\r\n\r\nImportant Notice: There is no substitutes of or equivalent to breast-milk\r\n\r\nNestlé® NAN® OPTIPRO® 2 is an Follow-up Formula with OPTIPRO designed for infants after 6 months onwards as the liquid part of the diet during and after weaning, in addition to other foods. It is not to be used as a breast milk substitute during the first 6 months of life.\r\n\r\nNestlé® NAN® OPTIPRO® 2 contains:\r\n\r\n- OPTIPRO®, an optimized protein blend exclusively to NAN® that is unique in both quality and amount. It supplies the adequate amount of proteins needed for your baby’s optimal growth without overloading immature organs.\r\n\r\n- BIFIDUS BL is a probiotic culture that helps to reinforce baby’s defense system.\r\n\r\n- DHA and ARA, two special fatty acids found in breast milk, which are important for your baby’s immune defense system and contribute to the development of brain and vision.\r\n\r\nStorage instructions: Follow instructions on the pack', NULL, NULL, 'http://dhorunapi.test/public/storage/products/nestlé-nan-optipro-2-infant-formula-milk-powder-tin-6-months-2020-10-235f927a7541f36.png', NULL, 'on', NULL, NULL, '2020-10-23 00:38:46', '2020-10-23 00:38:46', '400 gm'),
(10, 'simple', 'NeoCare Baby Diaper Belt L 7-18 kg', 'neocare-baby-diaper-belt-l-7-18-kg', 1600, 60, 29, 'UDRBBP', NULL, NULL, 'Origin: Bangladesh\r\n\r\nNeoCare Baby Diaper made with non-woven material, pulp, super absorbent polymer, polyethylene, elastic material, adhesive. Neocare baby Diaper allows fresh air to circulate through the cover more quickly and easily, helping to prevent rashes, leeving baby fresh and dry.', NULL, NULL, 'http://dhorunapi.test/public/storage/products/neocare-baby-diaper-belt-l-7-18-kg-2020-10-235f927affd8680.png', NULL, 'on', NULL, NULL, '2020-10-23 00:41:04', '2020-10-23 00:41:04', '50 pcs'),
(11, 'simple', 'NeoCare Baby Wipes', 'neocare-baby-wipes', 200, 50, NULL, 'UCCBBC', NULL, NULL, 'Origin: Bangladesh', NULL, NULL, 'http://dhorunapi.test/public/storage/products/neocare-baby-wipes-2020-10-235f927b486422a.png', NULL, 'on', NULL, NULL, '2020-10-23 00:42:17', '2020-10-23 00:42:17', '120 pcs'),
(12, 'simple', 'Smartcare Spoon Food Feeder', 'smartcare-spoon-food-feeder', 500, 80, NULL, 'UEDBBP', NULL, NULL, NULL, NULL, NULL, 'http://dhorunapi.test/public/storage/products/smartcare-spoon-food-feeder-2020-10-235f927b9bbba79.png', NULL, 'on', NULL, NULL, '2020-10-23 00:43:40', '2020-10-23 00:43:40', '180 ml');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Shop Manager', 'shopmanager', NULL, NULL),
(3, 'Customer', 'customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT '4',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `number`, `email`, `email_verified_at`, `address`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mahbubar Rahman', '01813883707', 'redhatmahbub@gmail.com', NULL, 'Dhaka', '$2y$10$6iQHRqo5uKcB.6NmMGhkauGluqe3nk.8K2DWPDL0mUH2wzS5sbtpG', NULL, NULL, NULL, NULL),
(2, 2, 'Shop Manager', '01715885707', 'shopmanager@gmail.com', NULL, 'Rajshahi', '$2y$10$bYKpRZd7GSmcy7l3CtbxlOBN7eQTw8o9UvSubz1lVFKtRq28PEdNW', NULL, NULL, NULL, NULL),
(3, 3, 'Riya Roy', '01314886707', 'riyaroy@gmail.com', NULL, 'Dhaka', '$2y$10$RO3QIMNpMBypLAV5WXeq3.kaQGsmzHi/iXQZ8DyuugqAa4CV.aQFS', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
