-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2022 at 07:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 16, 'naing htet ', 'nainghtet34@gmail.com', '15', 'I love Your Service!!!'),
(15, 16, 'aung gyi', 'agyi2@gmail.com', '16', 'Great Service!!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 16, 'naing htet ', '15', 'nainghtet34@gmail.com', 'cash on delivery', 'flat no. 234, rose(3)street, north dagon, Myanmar - 11234', ', Gamjatang (6) ', 102, '14-May-2022', 'completed'),
(20, 16, 'Mg Mg', '17', 'wp4930271@gmail.com', 'credit card', 'flat no. 345, ayer(9)street, sanchaung, Myanmar - 11567', ', Hobakjuk (4) ', 48, '14-May-2022', 'completed'),
(21, 16, 'aung gyi', '16', 'agyi2@gmail.com', 'paypal', 'flat no. 23, zizawah(2)street, Mandalay, Myanmar - 113456', ', Gopchang  (3) ', 54, '14-May-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(21, 'Bibimbap', 'Bibimbap is served as a bowl of warm white rice topped with namul (sautéed and seasoned vegetables) or kimchi (traditional fermented vegetables) and gochujang (chili pepper paste), soy sauce, or doenjang (a fermented soybean paste). A raw or fried egg and sliced meat (usually beef) are common additions.', 10, 'Bibimbap.jpg'),
(22, 'Gamjatang', 'Gamjatang is a spicy Korean pork bone soup. It is made by simmering pork bones for a long time then the strained milky bone broth is seasoned with Korean special condiments such as gochugaru (Korean chili flakes) and gochujang (Korean chili paste).', 17, 'gamjatang23.jpg'),
(23, 'Hobakjuk', 'Korean pumpkin porridge (Hobakjuk) is a popular snack / dessert, but some people even eat it for breakfast too. It\'s sweet, nutty and velvety. A perfect comfort food in fall and winter! The Korean word – Hobak  is a generic term for pumpkin, squash (US) and zucchini.May 13, 2019', 12, 'Hobakjuk.jpg'),
(24, 'Hoodadak Korean Fried Chicken ', 'Katy residents have a place to enjoy crispy, twice-fried, Korean-style chicken.\r\nOpen since December, Hoodadak serves fried chicken (available plain or with one of four souces), a couple of traditional \r\nKorean entrees like bulgogi, and food truck-style fries that are topped with bulgogi and kimchi.', 14, 'Hoodadak Korean Style Fried Chicken.jpg'),
(25, 'Gimbap', 'Gimbap, also romanized as kimbap, is a Korean dish made from cooked rice and ingredients such as vegetables, fish and meats that are rolled in gim—dried sheets of seaweed—and served in bite-sized slices. The origins of gimbap are debated.', 8, 'gimbap.jpg'),
(26, 'Gopchang ', 'Gopchang-gui is a Korean dish consisting of grilled beef tripe—traditionally small intestines (gopchang). It is usually found in specialized restaurants that finish the grilling tableside.', 18, 'gopchang56.jpg'),
(27, 'Japchae', 'Japchae  is a savory and slightly sweet dish of stir-fried glass noodles and vegetables that is popular in Korean cuisine.', 14, 'japchae.jpg'),
(28, 'Okonomiyaki', 'Okonomiyaki  is a popular pan-fried dish that consists of batter and cabbage. Selected toppings and ingredients are added which can vary greatly (anything from meat and seafood to wasabi and cheese). This variability is reflected in the dish\'s name; \"okonomi\" literally means \"to one\'s liking\".', 16, 'okonomiyaki.jpg'),
(29, 'Ramen', 'Broadly speaking, ramen is a bowl of wheat noodle soup made with a pungent broth and accompanied by various ingredients, added as toppings. The soup can be hot or cold, with meat and/or fish, or vegetarian, spicy, sweeter, and so on.', 14, 'ramen.jpg'),
(30, 'Soba', 'Soba is a variety of Japanese noodles made from buckwheat flour whose origins date back to the Middle Ages. “Soba is a powerful, high-vibration food,” says Inaoka. “Before going into deep meditations and long fasts, Zen Buddhist monks used to eat buckwheat flour and water mixed into a ball.', 12, 'soba-1.jpg'),
(31, 'Sundubujjigae', 'Sundubu jjigae is a Korean stew made with soft (uncurdled) tofu as a highlight ingredient. There are a few different ways to make sundubu jjigae using different ingredients (e.g. kimchi, minced pork and seafood) but by far my favorite version is the seafood version known as Haemul Sundubu Jjigae.', 16, 'Sundubu-Meal.jpg'),
(32, 'Takoyaki', 'Takoyaki - commonly known in English as Japanese octopus balls - is a quintessential Japanese street food that\'s found especially at summer festivals in Japan. Essentially they\'re round balls of fluffy dough that are smothered with a special savory takoyaki sauce and have a tasty piece of octopus meat at the center.', 7, 'tako.jpg'),
(33, 'Yakitori', 'Yakitori  are grilled chicken skewers made from bite sized pieces of meat from all different parts of the chicken, such as the breasts, thighs, skin, liver and other innards. Usually made to order and cooked over charcoal, yakitori is a popular, inexpensive dish commonly enjoyed together with a glass of beer.', 9, 'yakitori.jpg'),
(34, 'Tempura', 'Tempura is a popular Japanese dish in which food (most commonly seafood, vegetables, or sushi) is lightly battered and deep fried to create a light, crispy coating.', 10, 'tempura.jpg'),
(35, 'Pizza', 'Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, vegetables, meat, ham, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. A person who makes pizza is known as a pizzaiolo.', 11, 'pizza-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(16, 'Wai Zin Phyo Aung', 'waizinph23@gmail.com', '8cea2b3c3229cb93030a62aa92157030', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
