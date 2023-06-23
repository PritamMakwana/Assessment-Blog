-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 02:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `desc`, `slug`, `time`, `created_at`, `updated_at`, `img`) VALUES
(3, 'JetBrains announced a bundle for Laravel developers: PhpStorm + Laravel Idea plugin', 'JetBrains, the company behind PhpStorm, has exciting news for Laravel developers. They have introduced a special bundle offer that includes PhpStorm and the Laravel Idea plugin at a 50% discount.\r\n\r\nThe PhpStorm + Laravel Idea bundle provides an exceptional development environment tailored specifically for Laravel projects. Laravel Idea is a powerful commercial plugin developed by Adel, offering advanced support and enhanced features for Laravel development in PhpStorm.\r\n\r\nIf you\'re interested in this bundle, you can find more information and purchase it at the dedicated page.\r\n\r\n\"Laravel Idea is a must-have PhpStorm plugin!\" - Marcel Pociot\r\n\r\nPlease note that if you already have a PhpStorm license, you won\'t be eligible for this offer due to the loyalty discount you already receive. However, you can recommend the PhpStorm + Laravel Idea bundle to your colleagues or friends who haven\'t tried it yet, allowing them to benefit from the special discount offer.\r\n\r\nLaravel Idea Plugin\r\nThe Laravel Idea plugin, developed by Adel, enhances the Laravel development experience in PhpStorm. With this commercial plugin, you can access a range of advanced features and improved support for Laravel-specific functionality. Here are some highlights:\r\n\r\nAutocompletion for routes: Laravel Idea provides intelligent autocompletion for routes, making it faster and easier to work with routes in your Laravel projects.\r\nEloquent models support: Enjoy enhanced support for Eloquent models, including autocompletion, navigation, and code generation, to boost your productivity.\r\nValidation rule support: Laravel Idea offers comprehensive autocompletion for validation rules, ensuring accurate and efficient validation code.\r\nAdvanced code generation: The plugin streamlines your workflow by providing code generation capabilities, helping you write code more quickly and efficiently.\r\nFocus on what matters: By automating routine and repetitive tasks, Laravel Idea allows you to concentrate on the work that truly matters, saving you time and effort.\r\nTo learn more about the Laravel Idea plugin, visit laravel-idea.com. You can also follow @laravel_idea on Twitter for helpful tips and ideas Adel shares.\r\n\r\nAdditionally, Adel has developed a free .env support plugin for PhpStorm, providing improved support for .env files in your Laravel projects.', 'jetbrains-announced-a-bundle-for-laravel-developers', '23-06-2023 | 12:47:PM', '2023-06-23 07:17:36', '2023-06-23 07:17:36', 'uploads\\1687524456-laravel-news_featured-image-2200x1100-(2).png'),
(4, 'Laravel Tailwind Merge', 'Laravel Tailwind Merge is a package that automatically resolves Tailwind CSS class conflicts in Laravel. This allows you to merge multiple Tailwind classes and resolves conflicts.\r\n\r\nHere\'s a basic example from the README. Given the following code in a blade component:\r\n\r\n// circle.blade.php\r\n<div {{ $attributes->twMerge(\'w-10 h-10 rounded-full bg-red-500\') }}></div>\r\nHere\'s a usage example with the above circle component:\r\n\r\n{{-- your-view.blade.php --}}\r\n<x-circle class=\"bg-blue-500\" />\r\n \r\n{{-- Output --}}\r\n<div class=\"w-10 h-10 rounded-full bg-blue-500\"></div>\r\nHere are some more examples from the readme of the inner workings of the merge method. You can use the provided TailwindMerge facade:\r\n\r\nuse TailwindMerge\\Laravel\\Facades\\TailwindMerge;\r\n \r\n// block and inline are conflicting; The last rule wins.\r\nTailwindMerge::merge(\'block inline\'); // inline\r\n \r\n// px-6 overrides pl-4\r\nTailwindMerge::merge(\'pl-4 px-6\'); // px-6\r\n \r\n// with breakpoints\r\nTailwindMerge::merge(\'h-10 lg:h-12 lg:h-20\'); // h-10 lg:h-20\r\n \r\n// dark mode\r\nTailwindMerge::merge(\'text-black dark:text-white dark:text-gray-700\');\r\n// text-black dark:text-gray-700\r\n \r\n// etc.\r\nYou can also use the @twMerge Blade directive as well:\r\n\r\n@twMerge(\'w-10 h-10 rounded-full bg-red-500 bg-blue-500\')\r\n{{-- w-10 h-10 rounded-full bg-blue-500 --}}\r\nYou can learn more about this package, get full installation instructions, and view the source code on GitHub.', 'laravel-tailwind-merge', '23-06-2023 | 12:49:PM', '2023-06-23 07:19:26', '2023-06-23 07:19:26', 'uploads\\1687524566-tailwind-merge-featured.png');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_06_23_053534_create_blog_table', 1),
(5, '2023_06_23_062220_add_id_to_blog_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
