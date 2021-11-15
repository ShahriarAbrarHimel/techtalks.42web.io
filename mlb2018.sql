-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 07:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlb2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(100) NOT NULL,
  `title_np` varchar(100) NOT NULL,
  `title_cn` varchar(100) NOT NULL,
  `is_active` varchar(5) NOT NULL,
  `include_in_menu` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `title_en`, `title_np`, `title_cn`, `is_active`, `include_in_menu`, `created_at`) VALUES
(12, 'Foods', 'खाना', '食品类', 'Yes', 'Yes', '2020-07-16 21:51:42'),
(13, 'Music', 'संगीत', '音乐', 'Yes', 'Yes', '2020-07-16 22:03:29'),
(14, 'Sports', 'खेलकुद', '体育', 'Yes', 'Yes', '2020-07-16 22:04:01'),
(15, 'Politics', 'राजनीति', '政治', 'Yes', 'No', '2020-07-16 22:04:57'),
(16, 'Technology', 'प्रबिधि', '技术', 'Yes', 'Yes', '2020-07-16 22:06:53'),
(17, 'Love', 'माया', '爱', 'Yes', 'Yes', '2020-07-16 22:07:34'),
(18, 'Culture', 'संस्कृति', '文化', 'Yes', 'Yes', '2020-07-16 22:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_np` varchar(255) NOT NULL,
  `title_cn` varchar(255) NOT NULL,
  `description_en` mediumtext NOT NULL,
  `description_np` mediumtext NOT NULL,
  `description_cn` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `category` int(10) UNSIGNED NOT NULL,
  `is_active` varchar(5) NOT NULL,
  `is_featured` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title_en`, `title_np`, `title_cn`, `description_en`, `description_np`, `description_cn`, `url`, `category`, `is_active`, `is_featured`, `created_at`) VALUES
(6, 'About Foods in Nepal', 'नेपालमा फूडहरूको बारेमा', '关于尼泊尔的食物', 'Once found only in health food stores, organic food is now a regular feature at most supermarkets. And that\'s created a bit of a dilemma in the produce aisle.\r\n\r\nOn one hand, you have a conventionally grown apple. On the other, you have one that\'s organic. Both apples are firm, shiny and red. Both provide vitamins and fiber, and both are free of fat, sodium and cholesterol. Which should you choose? Get the facts before you shop.', 'एकचोटि स्वास्थ्य खाद्य स्टोरहरूमा फेला पर्‍यो, जैविक खाना अब प्रायः सुपरमार्केटहरूमा नियमित सुविधा हुन्छ। र त्यसले उत्पादन आयलमा दुविधाको एक बिट सिर्जना गरेको छ।\r\n\r\nएकातिर, तपाईंसँग परम्परागत रूपमा बढेको स्याउ छ। अर्कोतर्फ, तपाईंसँग जैविक एउटा छ। दुबै स्याउ फर्म, चम्किलो र रातो छन्। दुबै भिटामिन र फाइबर प्रदान गर्दछ, र दुबै फ्याट, सोडियम र कोलेस्ट्रोलबाट मुक्त छन्। तपाईंले कुन छनौट गर्नु पर्छ? शपिंग गर्नु अघि तथ्यहरू पाउनुहोस्।', '一旦仅在保健食品商店中发现，有机食品现在已成为大多数超市的常规功能。 这在农产品过道中造成了一些难题。\r\n\r\n一方面，您有一个常规种植的苹果。 另一方面，您有一个有机的。 两个苹果都坚硬，有光泽和红色。 两者都提供维生素和纤维，并且都不含脂肪，钠和胆固醇。 您应该选择哪一个？ 购物前先了解事实。', 'about-foods-in-nepal', 12, 'Yes', 'Yes', '2020-07-16 22:15:56'),
(7, 'Music is Life', 'संगीत जीवन हो', '音乐就是生活', 'In the course of history, music is the greatest creation of mankind. Creativity in the pure and undiluted form is the true definition of Music. Music is an important part of our life as it is a way of expressing our feelings as well as emotions.\r\n\r\nSome people consider music as a way to escape from the pain of life. It gives you relief and allows you to reduce the stress. Music is a powerful therapy that will make you calm down and in the moment of joy, it will make you cheerful.\r\n\r\nFurthermore, it develops the mind and boosts your self confidence. Music plays a more important role in our life than just being a source of entertainment.', '\r\n639/5000\r\nइतिहासको क्रममा, संगीत मानवजातिको सबैभन्दा ठूलो रचना हो। शुद्ध र पूर्वनिर्धारित फारममा रचनात्मकता संगीतको सही परिभाषा हो। संगीत हाम्रो जीवनको महत्त्वपूर्ण हिस्सा हो किनकि यो हाम्रा भावनाहरू र भावनाहरू व्यक्त गर्ने एक तरिका हो।\r\n\r\nकेही व्यक्ति संगीतलाई जीवनको पीडाबाट बच्ने उपायको रूपमा लिन्छन्। यसले तपाईंलाई राहत दिन्छ र तनाव कम गर्न मद्दत गर्दछ। संगीत एक शक्तिशाली चिकित्सा हो जसले तपाईंलाई शान्त बनाउँदछ र खुशीको क्षणमा, यसले तपाईंलाई हंसमुख बनाउँछ।\r\n\r\nयसबाहेक, यसले दिमागलाई विकास गर्दछ र तपाईंको आत्मविश्वास बढाउँछ। मनोरञ्जनको स्रोत मात्र नभई संगीतले हाम्रो जीवनमा अझ महत्त्वपूर्ण भूमिका खेल्छ।', '在历史进程中，音乐是人类最伟大的创造。 纯粹而未经稀释的创造力是音乐的真正定义。 音乐是我们生活中重要的一部分，它是表达我们的情感和情感的一种方式。\r\n\r\n有些人认为音乐是逃避生活痛苦的一种方式。 它可以减轻压力，并减轻压力。 音乐是一种强大的疗法，可以使您镇定下来，在欢乐的时刻，它可以使您开朗。\r\n\r\n此外，它可以发展思想并增强您的自信心。 音乐在我们的生活中起着更为重要的作用，而不仅仅是娱乐。', 'music-is-life', 13, 'Yes', 'Yes', '2020-07-16 22:18:22'),
(8, 'Play Sports to be Fit', 'खेलकूद फिट हुन', '玩运动健身', 'It goes without saying that fantasy football has experienced unprecedented growth in the past few years. Only 75,000 people played Fantasy Football League in 2003, and the number rose to over six million by the end of 2019.\r\n\r\nThe reason for this is the growth of the premier league. The advent of online football betting and sports betting sites has also contributed to the increasing popularity of fantasy football, as many people think that betting is a good way to show support. Today, it’s possible for fans to place bets on fantasy football and their favourite players at different betting sites.\r\n\r\nIn fantasy football, there are some players who had stellar seasons a year ago but are bound to take a step back the following year.', 'यो भन्दै बिना नै जान्छ कि कल्पना फुटबलले विगत केही वर्षहरूमा अभूतपूर्व वृद्धि अनुभव गरेको छ। २०० 75 मा केवल 75 75,००० मानिसहरूले फ्यान्टेसी फुटबल लीग खेले, र २०१ 2019 को अन्त्यसम्म यो संख्या six० लाखभन्दा बढी पुगेको छ।\r\n\r\nयसको कारण प्रिमियर लिगको वृद्धि हो। अनलाइन फुटबल शर्त र खेल शर्त साइटहरूको आगमन पनि कल्पना फुटबल को बढ्दो लोकप्रियतामा योगदान गरेको छ, धेरै मानिसहरूले सोच्छन् कि समर्थन प्रदर्शन गर्ने राम्रो तरिका हो। आज, प्रशंसकहरूले फ्याट्यासी फुटबल र उनीहरूको मनपर्ने खेलाडीहरू विभिन्न बेटिंग साइटहरूमा बेट्स राख्न सम्भव छ।\r\n\r\nकाल्पनिक फुटबलमा, त्यहाँ केही खेलाडीहरू छन् जसले एक बर्ष पहिले तारांकित asonsतुहरू थिए तर अर्को बर्षमा एक कदम पछि लिन बाध्य छन्।', '毫无疑问，幻想足球在过去几年中经历了前所未有的增长。 2003年，只有75,000人参加了梦幻足球联赛，到2019年底，这个数字上升到600万以上。\r\n\r\n原因是英超联赛的发展。 在线足球博彩和体育博彩网站的出现也促进了幻想足球的日益普及，因为许多人认为博彩是表示支持的好方法。 如今，球迷可以在不同的投注站点对梦幻足球和他们最喜欢的球员进行投注。\r\n\r\n在梦幻足球比赛中，有些球员在一年前表现出色，但势必在第二年退后一步。', 'play-sports-to-be-fit', 14, 'Yes', 'Yes', '2020-07-16 22:19:54'),
(9, 'Technology Drives Future', 'प्रविधि भविष्य ड्राइव', '科技驱动未来', 'Tom Selleck was a notable actor back in the early 80s, but spent years receiving little interest from the entertainment industry, that is until he was cast in the lead role as Thomas Magnum in Magnum, P.I.. Unfortunately, the show’s producers would not release the actor for other projects, so Selleck had to pass on the role of Indiana Jones in Raiders of the Lost Ark. We all know what happened next, actor Harrison Ford took the role and ran with it. Read more to see how Selleck would have looked as Indiana Jones, thanks to deepfake technology.\r\nUFO researcher Scott C. Waring has spent years sifting through images and data in search of conclusive evidence of intelligent extraterrestrials visiting planets in our solar system. His latest find is a possible unidentified flying object that is 25-times the size of the Earth jetting out of the Sun, possibly after a refueling trip. Sure, based on our knowledge, no material on Earth can withstand such heat, but anything is possible with craft from other star systems made from unknown materials. Read more for a video and additional information.', 'टम सेल्लेक 80० को दशकको शुरुमा एक उल्लेखनीय अभिनेता थिए, तर उनले मनोरञ्जन उद्योगबाट कम रुचि लिन वर्षौं बिताए, जुन उनलाई म्याग्नम, पीआईमा थॉमस म्याग्नमको मुख्य भूमिकामा खेलाइएन। दुर्भाग्यवस, शोका निर्माताहरूले रिलीज गरेनन् अन्य प्रोजेक्टहरूका लागि अभिनेता, त्यसैले सेलेल्कले हराएको आर्कको रेडरमा इण्डियाना जोन्सको भूमिका पार गर्नुपर्‍यो। हामी सबैलाई थाहा छ यसपछि के भयो, अभिनेता ह्यारिसन फोर्डले यस भूमिका लिनुभयो र यससँगै दगुर्नुभयो। डेलफेक टेक्नोलोजीको लागि सेल्लेकले कसरी इण्डियाना जोन्सको रूपमा लिने थिए भनेर हेर्नको लागि थप पढ्नुहोस्।\r\nयूएफओका अनुसन्धानकर्ता स्कट सी। वारिंगले हाम्रो सौर प्रणालीमा ग्रहहरू भेट्टाउने बौद्धिक अलौकिक प्रमाणहरूको निर्णायक प्रमाणको खोजीमा छविहरू र डाटा मार्फत वर्षौं बितेका छन्। उसको पछिल्लो खोज एक सम्भावित अज्ञात उडान वस्तु हो जुन २ the गुणा आकारको हो जुन पृथ्वीबाट सूर्यबाट बाहिर निस्कन्छ, सम्भवतः एक ईन्धन यात्रा पछि। हो, हाम्रो ज्ञानको आधारमा, पृथ्वीमा कुनै पनि सामग्रीले यस्तो तापको सामना गर्न सक्दैन, तर केहि अज्ञात सामग्रीबाट बनेको अन्य तारा प्रणालीहरूबाट शिल्पको साथ सम्भव छ। एक भिडियो र अतिरिक्त जानकारी को लागी अधिक पढ्नुहोस्।', '汤姆·塞勒克（Tom Selleck）早在80年代初就曾是著名的演员，但在娱乐业却花了很少的时间，直到他被任命为马格南（Pinum）的托马斯·马格南姆（Thomas Magnum）的主角。不幸的是，该节目的制片人并没有发行塞克（Selleck）不得不继续扮演印第安纳·琼斯（Indiana Jones）在《夺宝奇兵》中的角色。阅读更多内容，了解利用Deepfake技术，Selleck看起来像印第安纳·琼斯。\r\nUFO研究员Scott C. Waring花费了数年时间筛选图像和数据，以寻找智能外星人访问太阳系行星的确凿证据。他的最新发现是一个可能的身份不明的飞行物体，它可能是加油旅行后从太阳喷出的地球大小的25倍。当然，根据我们的知识，地球上没有任何材料可以承受这种热量，但是其他由未知材料制成的恒星系统的飞船却可以做到这一点。阅读更多以获取视频和其他信息。', 'technology-drives-future', 16, 'Yes', 'Yes', '2020-07-16 22:21:44'),
(10, 'Love gives a new life sometimes', 'प्रेम कहिलेकाँही नयाँ जीवन दिन्छ', '爱情有时会赋予新生命', 'I am currently — like millions of other people — spending too much time at home, trying to get my head straight, and watching a lot of videos.\r\n\r\nI experienced a dramatic breakup just [before we went into lockdown]. It was a two-year relationship that was getting serious, with both of our families involved. He ended it, and it wasn’t the first time he expressed that our relationship was too much for him to handle.\r\n\r\nI was always empathetic with him, trying to pace things so as not to overwhelm him. There was a big part of me that felt like if I left him, I’d be abandoning him. He is the one who decided to leave, and it has left me devastated. I am really confused and sad. I feel like one day I was somewhere nice in life and finally achieving stability, and the next day everything was shattered.', 'म अहिले छु - लाखौं मानिसहरू जस्तै - घरमा धेरै समय खर्च गर्दै, मेरो टाउको सीधा पार्न कोशिस गर्दै, र धेरै भिडियोहरू हेरेर।\r\n\r\nमैले [नाटकमा जानु भन्दा पहिले] नाटकीय ब्रेकअप अनुभव गरें। यो दुई वर्षको सम्बन्ध हो जुन गम्भीर हुँदै गइरहेको थियो, हाम्रा दुवै परिवारहरू यसमा संलग्न थिए। उसले यो समाप्त गर्‍यो, र यो यो पहिलो पटक थिएन कि उनले व्यक्त गरे कि हाम्रो सम्बन्ध उहाँसँग सम्हाल्नको लागि धेरै बढी थियो।\r\n\r\nम ऊसँग सँधै सहानुभूतिशील थिएँ, चीजहरू वेगवान पार्ने कोशिस गर्दै थिएँ कि त्यसले उनलाई थाम्न नदिनुहोस्। त्यहाँ मेरो ठूलो अंश छ जस्तो लाग्यो यदि मैले उहाँलाई छोडें भने, म त्यसलाई त्याग्दैछु। उहाँ एक हुनुहुन्छ जसले छोड्ने निर्णय गर्नुभयो, र यसले मलाई विनाश गरेको छ। म वास्तवमै अलमल र दु: खी छु। मलाई लाग्छ एक दिन म जीवनमा कतै राम्रो थिएँ र अन्तमा स्थिरता प्राप्त गर्दै थिए, र भोलिपल्ट सबै कुरा चकनाचूर भयो।', '与其他数百万其他人一样，我目前在家里花费太多时间，试图使自己保持头脑清醒，并观看许多视频。\r\n\r\n在进入锁定之前，我经历了一次戏剧性的分手。 在我们两个家庭的参与下，这种为期两年的关系变得越来越严重。 他结束了这，这不是他第一次表示我们之间的关系对他来说太难处理了。\r\n\r\n我一直对他很同情，试图加快步伐，以免使他不知所措。 我有很大一部分人觉得如果我离开他，我会抛弃他。 他是决定离开的人，这使我感到震惊。 我真的很困惑和悲伤。 我觉得有一天我生活在一个美好的地方，终于实现了稳定，第二天一切都崩溃了。', 'love-gives-a-new-life-sometimes', 17, 'Yes', 'Yes', '2020-07-16 22:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `email`, `username`, `password`, `is_active`, `created_at`) VALUES
(2, 'Vijay Thapa', 'vijaythapa333@gmail.com', 'vijaythapa333', '71770cf84a4e6345b64667d170fc2f3f', 'Yes', '2018-06-02 21:56:28'),
(3, 'Administrator', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Yes', '2018-06-03 13:14:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
