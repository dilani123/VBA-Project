-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2020 at 07:37 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `floristapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `quantity`) VALUES
(5, 2, 3, 1),
(6, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Romantic', 'romantic'),
(2, 'New Year', 'new year'),
(3, 'Sympathy', 'sympathy'),
(4, 'Birthday', 'birthday');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(3, 3, 2, 1),
(4, 4, 3, 1),
(5, 4, 10, 1),
(6, 5, 1, 1),
(7, 6, 1, 1),
(8, 7, 10, 1),
(9, 8, 1, 1),
(10, 9, 2, 1),
(11, 10, 1, 2),
(12, 10, 17, 1),
(13, 11, 31, 1),
(14, 12, 31, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `product_item id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  `processing_time` double NOT NULL,
  `discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`, `processing_time`, `discount`) VALUES
(1, 1, 'Sunny days', 'Gift you mother with this cheery bouquet of 15 gerberas sure to brighten up her day', 'Sunny days', 19.5, 'Sunny days_1598227019.JPG', '2020-08-22', 1, 6, 0),
(2, 1, 'Sweet surprises', 'Celebrate the most important lady in your life with this bouquet of Lilies and Chrysanthemum as beautiful and unique as her.', 'Sweet surprises', 11, 'Sweet surprises_1598227043.JPG', '2020-08-05', 1, 6, 0),
(3, 1, 'Burgundy blooms', 'Make your mother\'s floral dreams come true with this beautiful bunch of 10 fragrant White Roses with Chrysanthemum and Baby\'s Breath.', 'Burgundy blooms', 35, 'Burgundy blooms_1598226825.JPG', '2020-08-22', 3, 6, 0),
(4, 1, 'Darling', 'Show her how much you love and care with this elegant bouquet of 5 fragrant white Lily stems, Baby\'s Breath and Chrysanthemums.', 'Darling', 39, 'Darling_1598226841.JPG', '0000-00-00', 2, 6, 0),
(5, 1, 'Red roses happiness', 'Red Roses: There is no flower that expresses true love as timelessly and as perfectly as the long. A Bouquet of 12 fresh red roses carefully wrapped and tied-up with a ribbon', 'Red roses happiness', 12.5, 'Red roses happiness_1598226975.JPG', '2020-08-22', 1, 6, 0),
(6, 1, 'Pretty in pink', 'Pink Rose Bouquet is the perfect way to say “I love you.” Whether you\'re sending this beauty to a friend, mother, colleague or love, each bursting pink bloom is a fun way to make your affection stand out! Consisting pink roses, arctic queen chrysanthemum and hypericum berries. (**Depending on the availability of flowers, sprayed Pink Roses might be used). ', 'Pretty in pink', 23, 'pretty pink.JPG', '2020-06-04', 2, 6, 0),
(7, 1, 'Sheaf of pink lilies - 5 stems', 'A pretty pink sheaf of fresh fragrant Sorbonne lilies straight from our farms.', 'Sheaf of pink lilies ', 15, 'Sheaf of pink lilies _1598226995.JPG', '2020-06-07', 1, 2, 0),
(8, 1, 'You\'re beautiful - Red & Pink roses', 'This sweet arrangement is a soft and feminine combination of roses in few stunning shades. Perfect for sending affection to a significant other or surprising a loved one with a gorgeous bouquet. Featuring 14 red & pink roses (approx.) with White Chrysanthemum.  **Depending on the availability of flowers, sprayed Pink Roses might be used.', 'You\'re beautiful', 28, 'You\'re beautiful_1598227083.JPG', '0000-00-00', 1, 6, 0),
(9, 1, 'Luxury rose bouquet - 20 red roses', 'Fascinating and captivating 20 red roses have created a classic display with a sophisticated wrapping format. When flowers are delivered, they create a special moment. ', 'Luxury rose bouquet', 39, 'Luxury rose bouquet_1598226919.JPG', '2020-06-07', 2, 6, 0),
(10, 1, 'Be my valentine', '<p>Celebrate life&#39;s most precious moments with sweet hues, stunning blooms and a brilliantly beautiful bouquet. This beautiful combination has red roses, pink lilies and bacardi white chrysanthemum tied up in black cloth wrapping.</p>\r\n', 'be-my-valentine', 40, 'be-my-valentine_1598226808.JPG', '2020-06-12', 1, 4, 5),
(11, 1, 'Bridal Smile', '<p>Make her day happy and romantic with baby pink roses and red roses.</p>\r\n', 'bridal-smile', 40.5, 'bridal-smile_1598083816.jpg', '0000-00-00', 0, 4, 0.5),
(12, 4, 'Happy Birth To You', '<p>Wish your loved ones birthday wishes with fresh pink roses.</p>\r\n', 'happy-birth-you', 20, 'happy-birth-you.jpg', '0000-00-00', 0, 5, 0),
(13, 4, 'Mother\'s birthday', '<p>Let&#39;s celebrate your mother&#39;s birthday with lovely red&nbsp;and pink roses. Show your love to her with this amazing bouquet.</p>\r\n', 'mother-s-birthday', 45.2, 'mother-s-birthday.jpeg', '0000-00-00', 0, 5, 0),
(14, 4, 'Sister\'s birthday', '<p>Show the love for your sister with purple flower bouquet. Celebrate her special day.</p>\r\n', 'sister-s-birthday', 30, 'sister-s-birthday.jpeg', '0000-00-00', 0, 4, 0),
(15, 4, 'For her birthday', '<p>Wow, it&#39;s specially for her with loving red roses and with a romantic birthday wish. Make her surprise with the RED flowers.</p>\r\n', 'her-birthday', 50.5, 'her-birthday.jpg', '0000-00-00', 0, 6, 0),
(16, 4, 'Office buddy birthday', '<p>It&#39;s for your office buddy&#39;s birthday, with fresh and colourful flowers.</p>\r\n', 'office-buddy-birthday', 45, 'office-buddy-birthday.jpg', '0000-00-00', 0, 6, 0),
(17, 4, 'Celebrate birthday', '<p>Celebtare the relations birthday party with this pink roses and make them happy.</p>\r\n', 'celebrate-birthday', 20, 'celebrate-birthday.jpeg', '2020-08-22', 1, 4, 0),
(18, 4, 'For his birhday', '<p>Surprise him with giving this amazing bouquet on his birthday and celebrate it with fresh RED ROSES.</p>\r\n', 'his-birhday', 50.25, 'his-birhday.jpg', '0000-00-00', 0, 6, 0),
(19, 4, 'For bestie', '<p>Bestie Bunny Love....Show your love with pink lilies and roses on her special day.</p>\r\n', 'bestie', 20, 'bestie.jpg', '0000-00-00', 0, 4, 0),
(20, 4, 'Birthday party time', '<p>For anyone who is special for your life and to celebrate that person&#39;s birthday with fresh chrishanthemum and carnesions.</p>\r\n', 'birthday-party-time', 20, 'birthday-party-time.jpg', '0000-00-00', 0, 4, 0),
(21, 4, 'Little girl turns to 10 ', '<p>She starts to count teen ages. So show the love and affection for her to add bless her journey.</p>\r\n', 'little-girl-turns-10', 30.5, 'little-girl-turns-10.jpg', '0000-00-00', 0, 5, 0),
(31, 2, 'Happy new year', '<p>Celebrate your new year celebrations with freh and cool flowers.</p>\r\n', 'happy-new-year', 20, 'happy-new-year.webp', '2020-08-24', 3, 4, 0),
(32, 2, 'New year with love', '<p>Celebrate new year with hand elegant rose bouquet.</p>\r\n', 'new-year-love', 50, 'new-year-love.png', '0000-00-00', 0, 5, 0),
(33, 2, 'New year blessings', '<p>Fresh lilies make new year happy and elegant.</p>\r\n', 'new-year-blessings', 30.5, 'new-year-blessings.jpg', '0000-00-00', 0, 5, 0),
(34, 2, 'Year begining with orchids', '<p>Pink orchids with new year begining and celebrate it with your loving ones.</p>\r\n', 'year-begining-orchids', 45, 'year-begining-orchids.jpg', '0000-00-00', 0, 6, 0),
(35, 2, 'Blessed year', '<p>Roses bouquet for celebrate the new year with the fullest happiness and freshness.</p>\r\n', 'blessed-year', 35, 'blessed-year_1598088900.jpg', '0000-00-00', 0, 5, 0),
(36, 3, 'Sorry madam', '<p>Show your sympathy with white flower bouquet.</p>\r\n', 'sorry-madam', 45, 'sorry-madam.jpg', '2020-08-22', 1, 4, 0),
(37, 3, 'Deepest condolance', '<p>Please accept the deepest condolance with these flowers.</p>\r\n', 'deepest-condolance', 40.5, 'deepest-condolance.jpg', '0000-00-00', 0, 5, 0),
(38, 3, 'Sadness', '<p>Express your sadness with white flowers and show them you are caring of them.</p>\r\n', 'sadness', 20, 'sadness.png', '0000-00-00', 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_item`
--

CREATE TABLE `product_item` (
  `id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `valid_period1` date NOT NULL,
  `valid_period2` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_item`
--

INSERT INTO `product_item` (`id`, `photo`, `type_id`, `name`, `description`, `slug`, `price`, `discount`, `valid_period1`, `valid_period2`, `quantity`, `counter`) VALUES
(1, 'pink rose.jpg', 1, 'Pink Roses', '<p>Single pure pink rose- one stick</p>\r\n', 'pink-roses', 2.5, 0, '2020-07-30', '2020-07-31', 45, 25),
(2, 'red rose.jpg', 1, 'Red Rose', 'Single pure red rose - one stick', 'Red Rose', 3, 0, '2020-07-26', '2020-07-27', 60, 10),
(3, 'white lily.jpg', 3, 'White Lily', 'Pure White Lily - one stick', 'White Lily', 2.5, 0, '2020-07-26', '2020-07-27', 40, 20),
(4, 'white rose.jpg', 1, 'White Rose', 'White Rose', 'White Rose', 30, 0, '2020-07-26', '2020-07-27', 300, 0),
(5, 'yello lily.jpg', 3, 'Yello Lily', 'Yello Lily', 'Yello Lily', 20, 0, '2020-07-26', '2020-07-27', 200, 0),
(6, 'yellow rose.jpg', 1, 'Yellow Roses', 'Yellow Roses', 'Yellow Roses', 30, 0, '2020-07-26', '2020-07-27', 100, 0),
(7, 'yellowchishanthunm.jpg', 2, 'Yellow Chishanthunm', 'Yellow Chishanthunm', 'Yellow Chishanthunm', 25, 0, '2020-07-26', '2020-07-27', 100, 0),
(10, 'pink-orchid.jpg', 5, 'Pink Orchid', '<p>Pink Orchids</p>\r\n', 'pink-orchid', 3.5, 0, '2020-08-22', '2020-08-27', 500, 0),
(11, 'pink-daisies.jpg', 4, 'Pink daisies', '<p>Pink daisies&nbsp;</p>\r\n', 'pink-daisies', 5.5, 0, '2020-08-22', '2020-08-25', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchasing`
--

CREATE TABLE `purchasing` (
  `id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasing`
--

INSERT INTO `purchasing` (`id`, `purchase_date`, `supplier_id`, `order_id`) VALUES
(1, '2020-08-09', 6, 'ORD202008090001'),
(2, '2020-08-20', 9, 'ORD202008090004');

-- --------------------------------------------------------

--
-- Table structure for table `p_details`
--

CREATE TABLE `p_details` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_details`
--

INSERT INTO `p_details` (`id`, `purchase_id`, `product_item_id`, `quantity`) VALUES
(1, 1, 1, 300),
(2, 2, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `sales_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sales_date`, `user_id`, `pay_id`) VALUES
(3, '2020-06-09', 3, 'PAYID-L3PZFXY5RE7860787023241W'),
(4, '2020-06-10', 3, 'PAYID-L3QRFLI2HV68905438669320'),
(5, '2020-06-11', 3, 'PAYID-L3RALII3K139774EJ893350P'),
(6, '2020-06-11', 3, 'PAYID-L3RAYRI2KE6849198906674R'),
(7, '2020-06-12', 3, 'PAYID-L3RMRNQ8V7594719M089931B'),
(8, '2020-06-12', 3, 'PAYID-L3RQAVQ3DP55589M9654704M'),
(9, '2020-08-05', 9, 'PAYID-L4VDLRQ9JB450644C8184259'),
(10, '2020-08-22', 9, 'PAYID-L5APO4Y68U7905909391410B'),
(11, '2020-08-24', 9, 'PAYID-L5B36ZA5K610620P2747374F'),
(12, '2020-08-24', 9, 'PAYID-L5B5HUQ6U279700UK443472V');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `type` int(1) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `activate_code` varchar(200) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  `average_lead_time` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `email`, `password`, `firstname`, `lastname`, `type`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`, `average_lead_time`, `description`) VALUES
(6, 'harry@den.com', '$2y$10$3j6gh4roXBuDszV9gIgTh.NzxoZpCLXyAzvpSa0kMjzvDX0Hri0pe', 'Harry', 'Potter', 0, 'No: 457/9, New Town, Embilipitiya', '0728399561', '', 1, '', '', '2020-08-04', '2 months', 'Pink Baby Roses, Pink Roses, Red Roses'),
(7, 'mery@den.com', '$2y$10$Ij.m1pWzCrbH4mSyzMv30.VUMFGv3AOVrJMAhqGJ5chIx9hYomVnq', 'Mery', 'Hellan', 0, 'No: 52, Kolabageara, Embilipitiya', '0710118757', '', 1, '', '', '2020-08-04', '6 months', 'Red Roses, Yellow Lilly'),
(8, 'amma@gmail.com', '$2y$10$KBouoqCKW4pJlUCOoYoeTOfd5j3O6BSwddvT2bR1zAzlITDDsKtIe', 'Ama', 'Nishani', 0, 'No:78, Panamura, Embilipitiya', '0780114757', '', 1, '', '', '2020-08-09', '2 months', 'Yellow Lilly, Red Roses'),
(9, 'isira@gmail.com', '$2y$10$omEyZwnZBnSie5Ilfh2LvOMkp2TYfXt0au/rBng4b2z1WG84KSAhG', 'Isira', 'Dilanka', 0, 'No 425/3, Kuttigala, Padalangala', '0718399567', 'IMG_20191127_202357.jpg', 1, '', '', '2020-08-18', '2 months', 'Pink roses, Red roses');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `type_slug`) VALUES
(1, 'Roses', 'Roses'),
(2, 'Chrysanthemum', 'Chrysanthemum'),
(3, 'Lily', 'Lily'),
(4, 'Daisies', 'Daisies'),
(5, 'Orchids', 'Orchids'),
(6, 'Tulip', 'Tulip');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstname`, `lastname`, `type`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(3, 'admin@gmail.com', '$2y$10$1RQa7LMUR8hlTeJOIOmjwOVczXgQM9Oe5hUxJngQkm9CyfZlqTv6S', 'Aruni', 'Sewwandhi', 0, 'No: 758/9, Panamura Road, Middeniya', '0718399561', 'female3.jpg', 1, '', '', '2020-06-04'),
(6, 'amal@gmail.com', '$2y$10$s5t6qV5DQg891pshpzvpDe5Wbc37V3VnBRPlZM0FDD05PkD9k1eue', 'Amal', 'Hirantha', 1, 'No:458, Panamura Road, Embilipitiya', '0714786547', 'male2.png', 1, '', 'kGhrRIPbCHayEMV', '2020-06-04'),
(7, 'isira@gmail.com', '$2y$10$CVV9vAsBTnVdA1uVdfRu.uHa4jhCb5aR2Y0GQ6kQJfFbjmFgwKf5u', 'Isira', 'Dilanka', 0, 'No: 78/9, Nonagama Road, Ambalanthota', '0710227465', 'hhjj.PNG', 1, '', '', '2020-06-10'),
(9, 'diltenisha995@gmail.com', '$2y$10$KscwslthzYZdXtL6UO8n2u91DO/I9DcgrRmh2eASZr8NqEcoTsEMe', 'Dilani', 'Tenisha', 0, 'Dickwella, Mathara', '0718399568', 'Annotation 2020-05-19 104802.jpg', 1, 'bUxCV7D46KdO', '', '2020-08-05'),
(10, 'rathnase@gmail.com', '$2y$10$I7w0xDD0Oky88FYF.GU1POpyVy/9f9/bgk9YeG5WxY1xyY6ncyrsq', 'Rathnasekara', 'Gamage', 0, 'No 456/5, Baddegama, Mathara', '0710114747', 'New Doc 2019-09-16_1.jpg', 1, '', '', '2020-08-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `sales_id` (`sales_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_item id` (`product_item id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_item`
--
ALTER TABLE `product_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `purchasing`
--
ALTER TABLE `purchasing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `p_details`
--
ALTER TABLE `p_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_item_id` (`product_item_id`),
  ADD KEY `purchase_id` (`purchase_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `product_item`
--
ALTER TABLE `product_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `purchasing`
--
ALTER TABLE `purchasing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `details_ibfk_2` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`product_item id`) REFERENCES `product_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `product_item`
--
ALTER TABLE `product_item`
  ADD CONSTRAINT `product_item_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchasing`
--
ALTER TABLE `purchasing`
  ADD CONSTRAINT `purchasing_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `p_details`
--
ALTER TABLE `p_details`
  ADD CONSTRAINT `p_details_ibfk_1` FOREIGN KEY (`product_item_id`) REFERENCES `product_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p_details_ibfk_2` FOREIGN KEY (`purchase_id`) REFERENCES `purchasing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
