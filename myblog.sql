-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2021 lúc 10:58 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `myblog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Lieu Phuc Mai', 'mei@gmail.com', 'meimei'),
(2, 'Mai Phuoc Vinh', 'maiphuocvinh@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Web Development'),
(2, 'Graphic Design'),
(3, 'Video Editing'),
(4, 'Frontend'),
(5, 'Backend'),
(6, 'Machine Learning');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `post_id`, `created_at`) VALUES
(1, 'You’ve outdone yourself, dynamite.', 'Thomas', 12, '2021-05-08 17:46:05'),
(2, 'You just made my day, hurray for you.', 'Wilson', 2, '2021-05-08 17:46:05'),
(3, 'Outstanding performance, you are tops', 'Evans', 3, '2021-05-08 17:46:05'),
(4, 'You deserve a star, outstanding.', 'Davies', 3, '2021-05-08 17:46:05'),
(5, 'Out of sight! Two thumbs up.', 'Brown', 3, '2021-05-08 17:46:05'),
(6, 'You are an inspiration, gorgeous.\r\n', 'Taylor', 5, '2021-05-08 17:46:05'),
(7, 'You are very responsible, exceptional.', 'Williams', 9, '2021-05-08 17:46:05'),
(8, 'How thoughtful, you have got what it takes.', 'Jones', 8, '2021-05-08 17:46:05'),
(9, 'You are a great example of others.', 'Smith', 10, '2021-05-08 17:46:05'),
(10, 'You made the difference.', 'Abigail', 7, '2021-05-08 17:46:05'),
(11, 'What an imagination, nice work.', 'Susan', 12, '2021-05-15 14:54:51'),
(12, 'Keep up the good work.', 'Harris', 15, '2021-05-15 14:54:51'),
(13, 'How thoughtful of you.', 'Thomas', 18, '2021-05-15 14:54:51'),
(14, 'It’s everything I hoped for.', 'Vickie', 20, '2021-05-15 14:54:51'),
(15, 'Extra special work, superb.', 'Jennifer', 23, '2021-05-15 14:54:51'),
(16, 'The time you put in really shows.', 'Perry', 22, '2021-05-15 14:54:51'),
(17, 'You’ve earned my respect.', 'Nancie', 25, '2021-05-15 14:54:51'),
(18, 'I appreciate your work.', 'Clark', 28, '2021-05-15 14:54:51'),
(19, 'Very resourceful, thanks for sharing.', 'Howard', 28, '2021-05-15 14:54:51'),
(20, 'Very courageous, you are special.', 'Carol', 30, '2021-05-15 14:54:51'),
(21, 'Marvelous! Your help counts.', 'Carol', 24, '2021-05-15 15:29:24'),
(22, 'Cool and fantastic job.', 'Jason', 21, '2021-05-15 15:29:49'),
(23, 'Great! You are an inspiration.', 'Jason', 30, '2021-05-15 15:32:56'),
(24, 'Exceptional, you are getting better and better.', 'Austin', 27, '2021-05-15 15:32:56'),
(25, 'Fabulous! You are delightful.', 'Luis', 26, '2021-05-15 15:32:56'),
(26, 'Perfect! You are considerate.', 'Noah', 26, '2021-05-15 15:32:56'),
(27, 'Dynamite! You are on your way.', 'Joe', 29, '2021-05-15 15:32:56'),
(28, 'Outstanding! You make me delightful.', 'Ian', 30, '2021-05-15 15:32:56'),
(29, 'Amazing! You should be proud.', 'Nancy', 26, '2021-05-15 15:32:56'),
(30, 'Stupendous! First-rate work.', 'Emma', 25, '2021-05-15 15:32:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(1, 1, '19.jpg'),
(2, 2, '11.jpg'),
(3, 3, '3.jpg'),
(4, 4, '15.jpg'),
(5, 5, '5.jpg'),
(6, 6, '6.jpg'),
(7, 7, '7.jpg'),
(8, 8, '8.jpg'),
(9, 9, '9.jpg'),
(10, 10, '10.jpg'),
(11, 11, '11.jpg'),
(12, 12, '12.jpg'),
(13, 21, '4.jpg'),
(14, 20, '18.jpg'),
(15, 19, '16.jpg'),
(16, 18, '12.jpg'),
(17, 17, '10.jpg'),
(18, 16, '9.jpg'),
(19, 15, '7.jpg'),
(20, 13, '19.jpg'),
(21, 25, '16.jpg'),
(22, 26, '15.jpg'),
(23, 27, '14.jpg'),
(24, 28, '17.jpg'),
(25, 29, '5.jpg'),
(26, 30, '9.jpg'),
(27, 14, '4.jpg'),
(28, 24, '18.jpg'),
(29, 23, '7.jpg'),
(30, 22, '5.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `action`) VALUES
(1, 'Home', 'index.php'),
(2, 'Contact Us', '#');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `create_at`, `category_id`, `admin_id`) VALUES
(1, 'What is a Website Builder?', 'Whether you\'re just starting a business or want to move your existing brick and mortar business online, you\'ll need to locate a website builder to get you and your brand online. Website builders come with a variety of options, so it is important to find one that fits you and your website. So what is a website builder exactly? A website builder is software that allows you to create a website online. The software will reside on a web server at a hosting company or be part of a hosted SaaS (software as a service) platform.', '2021-05-04 21:17:36', 1, 1),
(2, 'Buying a Website is Like Buying a Car, But Worse', 'You walk into a car dealership with high hopes of purchasing a new vehicle. The dealership you picked is an amazing store that comes highly recommended and sells everything from economical Ford and GM cars, trucks, and minivans to luxury brands like Jaguar, Infiniti, and Ferrari. Everything under one roof! What could be better? As you walk through the door, you approach the salesperson and ask him or her to provide you a quick quote on a new vehicle. It’s a realistic request right?', '2021-05-04 21:17:36', 1, 2),
(3, 'The Value of Content Before Website Design', 'I’m a strong believer in preparing website content before initiating graphic design and this applies to both websites and blogs. Some will argue with me, but I’ll fight this battle and dig in because I know content before website design is the right approach. I believe: Strong website design extends past colors, fonts, and layout boxes. Strong design focuses on the user. Website design should be crafted around the user, their needs, and the desired outcome of a website visit.', '2021-05-04 21:17:36', 2, 1),
(4, '20 Website Design Requirements Every RFP Response Should Include', 'I’ve recently been talking a lot about website design requirements, proposals, and contracts. I’ve done so because I know a successful website design launch is more than software code, text, and images. Website design success is a direct result of a structured process and solid documentation. Executing a successful website design project begins and ends with a solid documentation. This documentation can be a proposal, contract, or statement of work.', '2021-05-05 02:29:19', 2, 1),
(5, 'Designing Lower Thirds Like a Pro', 'For video editors who find themselves working on a project that involves generating lower thirds graphics, here’s an article from Shutterstock that covers the basics. The article also covers color selection and typography and how those things impact the message you’re trying to convey. This is a great refresher for pro video editors and a great intro to lower thirds for new editors', '2021-05-05 02:29:19', 3, 1),
(6, 'Professional Video Editing Tips and Techniques', 'PremiumBeat’s very own Caleb Ward crafted this all-inclusive mega-article about video editing tips and techniques. This article covers just about every professional tip or technique you need to know as a video editor, starting with picking the right software and hardware. It also touches on editing for story, editing language, editing speed, shortcuts, and distribution. By the end of the article, you should have a basic understanding of video editing', '2021-05-05 02:29:20', 3, 2),
(7, 'What Every React Developer Should Know About State', 'One of the most important concepts for every React developer to understand is state – what it is, how to properly use it, and how to avoid common pitfalls as you build your applications', '2021-05-05 02:29:20', 4, 2),
(8, 'Real-time programming', 'Today, it has become possible for programmers to review all changes and modifications in the browser without the fear of losing the status of an app or site, as well as without the need for re-loading pages repetitively', '2021-05-05 02:29:20', 4, 2),
(9, 'Blockchain', 'Blockchain is about much more than cryptocurrency. It can be a valuable security solution to the aforementioned data breach problem.\r\n					Decentralizing your data makes it next to impossible for hackers to access it. Companies are increasingly turning to blockchain solutions for decentralized data. NASAimplemented blockchain security to prevent denial of service attacks to air traffic services. While blockchain can be too complex a solution for sites with a low volume of data, if you’re collecting a lot of sensitive user data, blockchain could be the answer to your security concerns.', '2021-05-05 02:29:20', 5, 1),
(10, 'Python: the most-loved programming language', 'To begin with, Python does exceptionally well in community popularity rankings. It was awarded (for the fourth time) the TIOBE programming language of 2020 title, having gained the highest growth in popularity in one year (2.01%). The TIOBE Index is a programming language chart based on the number of professional engineers worldwide and the number of courses available. As the Stack Overflow Developer Survey 2020 shows, Python also ranks third as the most loved programming language (66.7% of respondents declare it’s their most loved choice)', '2021-05-05 02:29:20', 5, 2),
(11, 'The popularity of JavaScript is still increasing', 'Let’s start with the elephant in the room. Of course, it’s not surprising, JavaScript still is one of the most widely used programming languages today. It offers the largest range of libraries and frameworks. It seems that every developer can find exactly what he or she is looking for there. React and Angular Js frameworks are the most popular from the list.', '2021-05-05 02:29:20', 4, 1),
(12, 'Serverless applications ', 'Applications of this kind don’t require a back end in its traditional sense where the application is implemented as the code that runs on a managed application server. Serverless applications are better described as the collection of functions that are executed and scaled by cloud computing services, like Google Cloud, Amazon Lambda, or Microsoft Azure. They are billed in response to the exact demand at the moment. Since resources get allocated exclusively for the exact load (1 request/hour, 10 000 requests/hour, etc.), money is charged based on the actual load, and not for a server’s operation time as it was before', '2021-05-05 02:29:20', 5, 1),
(13, 'Best Stock Music for Video Editors', 'Looking for affordable, royalty free music for your video project? These resources offer the quality tracks video editors need.\r\nOne of the realities of video editing is that you need music, and you can’t just take it from anywhere. You need legally licensed music to avoid lawsuits or other legal issues.\r\n\r\nThe problem for many video editors is cost. Most working filmmakers don’t have the money it takes to license well-known radio hits. If you fall into this category (like the overwhelming majority of us do), you might understand the challenges of finding licensing agreements for quality music you can afford. Let’s take a look at some of the best stock music resources for your next project.\r\n\r\nOne of the best resources for royalty free music online is PremiumBeat. With a curated library covering genres such as classical, ambient, jazz, and even lo-fi hip hop, this is a powerful resource for any type of project. Licenses range from $49 to $199, and in terms of quality, PremiumBeat is top dog — adding new tracks daily. Your purchase includes 15, 30, and 60-second cuts of the song to fit any video length.\r\n\r\nNew! As of October 2020, PremiumBeat also offers a new music subscription. For $64.95 you get 5 high-quality music tracks, which is $12.99 per track.  Check out their music licensing information here.\r\n\r\nSo, what’s makes PremiumBeat different from other sites? Well, for one, they have a collection of PRO-Free music that you can use in radio, television, or film without having to contact a PRO (Performance Rights Organization, such as ASCAP). If one of the tracks you select on the site isn’t PRO-free, they have a stress-free avenue for you to get that song authorized by the artist and their organization.', '2021-05-15 06:53:48', 3, 1),
(14, 'You Can Become the Editor of a Grimes Music Video', 'If you’ve got time on your hands and editing software on your computer, you can become the editor of a Grimes music video.\r\nIn this week’s edition of Quarantine News, we’ve got something that can make use of your free time and flex your creative muscles while you’re between projects: becoming an editor of a Grimes music video. Grimes, the electro-futuristic dream pop artist who’s famous for her wild outfits, outrageous songs, and her relationship with Elon Musk, released her music video “Delete Forever” this past February.\r\n\r\nIncorporating the use of green screens and space-gothic graphics, the video is a wild trip that has already surpassed 2 million views. She also recorded footage for her new song “You’ll Miss Me When I’m Gone” but released it on April 1st in an interesting fashion — with no motion graphics, just the original raw green screen footage.\r\n\r\n by Robbie Janney\r\nApril 10, 2020\r\n\r\nshare\r\n \r\n \r\n \r\nYou Can Become the Editor of a Grimes Music Video\r\nIf you’ve got time on your hands and editing software on your computer, you can become the editor of a Grimes music video.\r\nIn this week’s edition of Quarantine News, we’ve got something that can make use of your free time and flex your creative muscles while you’re between projects: becoming an editor of a Grimes music video. Grimes, the electro-futuristic dream pop artist who’s famous for her wild outfits, outrageous songs, and her relationship with Elon Musk, released her music video “Delete Forever” this past February.\r\n\r\n\r\nIncorporating the use of green screens and space-gothic graphics, the video is a wild trip that has already surpassed 2 million views. She also recorded footage for her new song “You’ll Miss Me When I’m Gone” but released it on April 1st in an interesting fashion — with no motion graphics, just the original raw green screen footage.\r\n\r\n\r\nAt first glance, this may seem like a fun April Fools’ Day prank, but it came with an interesting message on her Instagram and in the YouTube description:\r\n\r\n\r\nThat’s right, she’s releasing all of the assets of her music video and putting them in the hands of her fans to crowdsource different videos, and she’s sharing the projects that she likes the best on her social media pages. This Art Kit has everything you need as an editor to create a full-fledged professional project — the raw green screen files, audio files, and even some “Dragon Colors” to spice things up. The editing and directing of the project is entirely up to you, and i’m sure the weirder you make it, the more visibility it’s going to get (from what we’ve seen from Grimes’s previous music videos).\r\n\r\nCreators are already releasing projects using the footage, such as this one made entirely within the newest Nintendo hit, Animal Crossing: New Horizons.\r\n\r\nSo if you’re ready to make something that has the potential to get shared by an artist with around a million followers, now’s the time to get wild and flex your editing skills.', '2021-05-15 06:55:47', 3, 1),
(15, 'A Gentle Introduction to Ensemble Diversity for Machine Learning', 'Ensemble learning combines the predictions from machine learning models for classification and regression.\r\n\r\nWe pursue using ensemble methods to achieve improved predictive performance, and it is this improvement over any of the contributing models that defines whether an ensemble is good or not.\r\n\r\nA property that is present in a good ensemble is the diversity of the predictions made by contributing models. Diversity is a slippery concept as it has not been precisely defined; nevertheless, it provides a useful practical heuristic for designing good ensemble models.\r\n\r\nIn this post, you will discover ensemble diversity in machine learning.\r\n\r\nAfter reading this post, you will know:\r\n\r\nA good ensemble is one that has better performance than any contributing model.\r\nEnsemble diversity is a property of a good ensemble where contributing models make different errors for the same input.\r\nSeeking independent models and uncorrelated predictions provides a guide for thinking about and introducing diversity into ensemble models.\r\nKick-start your project with my new book Ensemble Learning Algorithms With Python, including step-by-step tutorials and the Python source code files for all examples.\r\n\r\nLet’s get started.\r\n\r\nWhat Makes a Good Ensemble\r\nAn ensemble is a machine learning model that combines the predictions from multiple other models.\r\n\r\nThis often has the effect of reducing prediction error and improving the generalization of the model. But this is not always the case.\r\n\r\nSometimes the ensemble performs no better than a well-performing contributing member to the ensemble. Even worse, sometimes an ensemble will perform worse than any contributing member.\r\n\r\nThis raises the question as to what makes a good ensemble.\r\n\r\nA good ensemble is an ensemble that performs better than any contributing member. That is, it is a model that has lower prediction error for regression or higher accuracy for classification.\r\n\r\nGood Ensemble: A model that performs better than any single contributing model.\r\nThis can be evaluated empirically using a train and test set or a resampling technique like k-fold cross-validation. The results can similarly be estimated for each contributing model and the results compared directly to see if the definition of a “good ensemble” is met.\r\n\r\nWhat properties of a good ensemble differentiate it from other ensembles that perform as good or worse than any contributing member?\r\n\r\nThis is a widely studied question with many ideas. The consistency is that a good ensemble has diversity.\r\n\r\n', '2021-05-15 07:05:05', 6, 1),
(16, 'How to Develop a Weighted Average Ensemble With Python', 'Weighted average ensembles assume that some models in the ensemble have more skill than others and give them more contribution when making predictions.\r\n\r\nThe weighted average or weighted sum ensemble is an extension over voting ensembles that assume all models are equally skillful and make the same proportional contribution to predictions made by the ensemble.\r\n\r\nEach model is assigned a fixed weight that is multiplied by the prediction made by the model and used in the sum or average prediction calculation. The challenge of this type of ensemble is how to calculate, assign, or search for model weights that result in performance that is better than any contributing model and an ensemble that uses equal model weights.\r\n\r\nIn this tutorial, you will discover how to develop Weighted Average Ensembles for classification and regression.\r\n\r\nAfter completing this tutorial, you will know:\r\n\r\nWeighted Average Ensembles are an extension to voting ensembles where model votes are proportional to model performance.\r\nHow to develop weighted average ensembles using the voting ensemble from scikit-learn.\r\nHow to evaluate the Weighted Average Ensembles for classification and regression and confirm the models are skillful.\r\nKick-start your project with my new book Ensemble Learning Algorithms With Python, including step-by-step tutorials and the Python source code files for all examples.\r\n\r\nWeighted average or weighted sum ensemble is an ensemble machine learning approach that combines the predictions from multiple models, where the contribution of each model is weighted proportionally to its capability or skill.\r\n\r\nThe weighted average ensemble is related to the voting ensemble.\r\n\r\nVoting ensembles are composed of multiple machine learning models where the predictions from each model are averaged directly. For regression, this involves calculating the arithmetic mean of the predictions made by ensemble members. For classification, this may involve calculating the statistical mode (most common class label) or similar voting scheme or summing the probabilities predicted for each class and selecting the class with the largest summed probability.\r\n\r\nA limitation of the voting ensemble technique is that it assumes that all models in the ensemble are equally effective. This may not be the case as some models may be better than others, especially if different machine learning algorithms are used to train each model ensemble member.\r\n\r\nAn alternative to voting is to assume that ensemble members are not all equally capable and instead some models are better than others and should be given more votes or more of a seat when making a prediction. This provides the motivation for the weighted sum or weighted average ensemble method.\r\n\r\nIn regression, an average prediction is calculated using the arithmetic mean, such as the sum of the predictions divided by the total predictions made.', '2021-05-15 07:08:20', 6, 1),
(17, 'Ten skills every web developer should know in 2021 and beyond', 'Gone are the days a web developer was a specialist or a standalone professional in a team. Today, web developers are gradually evolving to be multi-taskers with specializations in multiple domains and expertise. Web development has grown to become a niche where developers must be familiar with a minimum of 5 skill sets or competencies they could bring to the table.\r\n\r\nIf you have been paying attention to the job market or industry practices, specialists are gradually becoming replaceable and those who shine are the ones that can don multiple hats.\r\n\r\nSo if you are a web developer, looking to make it big in the domain in 2021, we have handpicked these 10 skills you should know.\r\n\r\nThese skills go beyond what experts and gurus would have taught you technically. From the attitude you carry to your work to your project management skills, every single aspect of your skillset is inevitable to fetch that project, that dream job, or that startup funding.\r\n\r\nSo, what are the skills?', '2021-05-15 07:23:28', 1, 2),
(18, 'What Does a Web Developer Do?', 'Web developers need a combination of graphic design skills and technical computer skills that will allow them to create particular designs on web pages. In addition to looking nice, websites need to be functional and secure. It is the responsibility of web developers to create such sites that meet the requirements of employers or clients.\r\n\r\nWeb developers often implement ideas from less tech-savvy colleagues who lack the know-how to turn their vision into an actual, functional website. They do this through the creation of page layouts (headings and paragraphs), website styling (colors and fonts), and page features (animations and pictures). Interactive features, such as submitting online payments securely, are a necessary feature of e-commerce sites.\r\n\r\nWeb developers work closely with project managers and designers to ensure that final products adhere to predetermined budgets, scope, and designs. Web developers sometimes need to be able to show employers or clients a prototype of a website to help them understand what the finished product will be.\r\n\r\nWebsite maintenance also is an important element of the job. As new features need to be added or old features need to be updated, web developers need to make sure these changes are implemented smoothly and that they do not disrupt the website’s features.', '2021-05-15 07:23:28', 1, 2),
(19, 'The Best Way to Learn Backend Web Development', 'My previous article described how you can get into frontend development. It also discussed how the front end can be a place filled with landmines – step in the wrong place and you\'ll be overwhelmed by the many frameworks of the JavaScript ecosystem.\r\n\r\nIn this blog article, let\'s see how you can get into back end development. Along the way, I\'ll answer some of the most common questions people ask me about it.\r\n\r\nWhat is Backend Development?\r\nFront end development involves what a user sees on the screen when they open a specific URL owned by you. Even in a completely static environment (with only HTML/CSS), when someone opens a website, some server on the planet needs to respond to you with those HTML and CSS files.\r\n\r\nThat server is just a computer, just like the one you use yourself to browse the internet. But it has been tuned for performance, and doesn\'t have unnecessary components like a mouse or keyboard attached. And it sits with tons of other computers probably in a data warehouse.\r\n\r\nProgramming those computers in some special way is called back end development.\r\n\r\nYou may think that backend development is called what it is because it runs behind the user\'s back. A visitor to your website never really \"accesses\" the back end completely. They just communicate with your server, either directly through ports for very limited access (like transferring HTML/CSS files) or not even that – buried deep under CDNs or firewalls (like Cloudflare).\r\n\r\nNow that we have a raw understanding of what back end development means, let\'s get into some real questions.\r\n\r\nIs front end programming knowledge required for the back end?\r\nTLDR; No.\r\n\r\nBack end development, as mentioned above, involves the programming of a computer sitting probably on the other side of the planet responsible for responding to what your users say from their own computers.\r\n\r\nIf you\'re a full-time backend developer, you do not really need to care about what goes on inside those HTML, CSS and JavaScript files you send to the user\'s browser. Instead, you\'ve to focus more on the performance of the server, the server code, and throughput.\r\n\r\nWhat goes into back end development?\r\nWell, going by the books, you may say that a person who codes an application that can respond to HTTP requests is a back end developer.\r\n\r\nBut in reality, sometimes back end developers are able to do much more than just writing server scripts. They have the knowledge to set up reverse proxy servers (NGiNX/HAProxy), enable compression and other ways to speed up the site, and set up a production docker environment.', '2021-05-15 07:23:28', 5, 2),
(20, 'Backend Software Architecture Checklist: How to Build a Product from Scratch', 'You wake up one morning to have your cup of coffee and voilà, the Eureka moment is here. You finally figured out your business model, and it all falls into place. You know investors will love it, and you just can\'t wait to start building the product. The first mover advantage is yours to take.\r\n\r\nThese moments are rare, but when they happen you need to jumpstart at the right time. All you need is the right guide to help you figure out what you should and shouldn\'t do. This isn\'t a time to experiment, it\'s the time to execute. It\'s YOUR time now!\r\n\r\nNOTE - The following is related to building software architectures from scratch. So if you are interested in knowing the nitty-gritty of the technologies involved, then proceed. Otherwise, please share with those who will definitely love this :P\r\n\r\nWhere this guide came from\r\nI have myself worked on a handful of early stage products, and to be honest, I did make mistakes. I always wished there was a checklist to follow while building a product from the ground up.\r\n\r\nThere are so many things involved in building an architecture from scratch that you will totally forget certain pieces. And they will come back to bite you in later stages of the product cycle.\r\n\r\nI finally decided to create this checklist of things that you should consider before hitting that deploy button for the first time.\r\n\r\nSo without further build-up, here\'s the checklist you should go through while building a Backend Architecture for a product from scratch.\r\n\r\nChoose the CORRECT language and framework (for your project)\r\n\r\nChoosing the correct language and framework for your product is tricky, and there\'s no particular silver bullet for this. My advice is to choose a language you are most comfortable with and know the intricacies of in and out.\r\n\r\nHaving said this, it\'s rare, because there are very few people who are Javascript Ninjas, or Python Panthers, or whatever funky names are out there.\r\n\r\nSo choose a language that has some real good support in the industry, like Javascript, Python, Java, or Go to name a few. You can choose any language, just pick which one is most comfortable for you.\r\n\r\nAnd remember – you are building an MVP (Minimum Viable Product), and will be in the process of creating a POC (Proof of Concept). So get your product out as soon as possible. You don\'t need to get stuck on issues that might come from the new language in town. To avoid those issues, choose a more widely used, well-documented language.\r\n\r\nLastly, you can scale at a later time. If you are in the phase of doing POCs, just build and get it done. But if you are building something really specific, and there\'s a language and a framework build especially for that, then you should definitely chose that tech.\r\n\r\nBut most of the time, the problems we are trying to solve can be easily taken care of with any of the above mentioned languages and their respective frameworks. So just choose one and kickstart your product.', '2021-05-15 07:23:28', 5, 2),
(21, 'The 2020 Web Developer Roadmap – A Visual Guide to Becoming a Front End, Back End, or DevOps Developer', 'There are many ways you can go about picking up the skills you need to become a developer.\r\n\r\nThere are linear curriculums that teach you a bit of everything - like freeCodeCamp\'s full stack development curriculum.\r\n\r\nAnd then there are massive lists of skills - and sometimes lists of resources - you can use to \"choose your own adventure\" through the learning process.\r\n\r\nOne of the best such list of skills is Kamran Ahmed\'s Developer Roadmap, which he regularly updates.\r\n\r\nThis is no ordinary list of resources. Kamran has painstakingly mapped out all the skills he feels are essential to breaking into different fields of development.\r\n\r\nI\'ve written about his roadmap in the past. And to celebrate us all being half way into 2020, I\'m going to share his entire roadmap here - all three of them.\r\n\r\nThat\'s right - he has lists of tools and resources that are required for the following paths:\r\n\r\nFront end web development\r\nBack end web development\r\nDevOps (also known as \"site reliability\" - this is sort of an evolution of the old System Administrator role) The skills all developers need regardless of their specialization\r\nIn addition to these paths, Kamran also recommends everyone who wants to work as a developer learn the following skills:\r\n\r\nGit - Version Control\r\nGit is a powerful version control system that as of 2020 is used almost universally. If you don\'t know it - yes it\'s related to GitHub and GitLab, and you can learn how to use those tools, too.\r\n\r\nBasic Terminal Usage - The Bash Command Line, SSH, and other skills\r\nThis could be the terminal on a Mac, a Windows DOS prompt, or Bash/ZSH. Note that regardless of which operating system you use, you should probably learn Linux. Even if you\'re not using it for your laptop/desktop environment, you\'ll almost certainly use it for servers.\r\n\r\nData Structures and Algorithms\r\nThe freeCodeCamp curriculum covers these in-depth. You\'ll probably want to learn these by solving lots of algorithm problems on freeCodeCamp, CodeWars, Project Euler, or another drilling website. I personally recommend doing this in either JavaScript or Python but if you\'re up for a challenge and have lots of time on your hands, doing it in C wouldn\'t hurt.', '2021-05-15 07:23:28', 1, 2),
(22, 'Everything You Need to Know About Cookies for Web Development', 'Have you ever wondered how you can sign in to a website once and remain signed in, even if you close your browser? Or added an item to your shopping cart without signing in at all?\r\n\r\nWhether you know it or not, cookies are everywhere, and for better or worse, they completely changed the way we use the web.\r\n\r\nIn this article, we\'ll go over the history of cookies, how they work, how to use them in JavaScript, and some security concerns to keep in mind.\r\n\r\nA brief history of cookies\r\nHTTP, or the Hypertext Transfer Protocol, is a stateless protocol. According to Wikipedia, its a stateless protocol because it \"does not require the HTTP server to retain information or status about each user for the duration of multiple requests.\"\r\n\r\nYou can still see this today with simple websites – you type in the URL to the browser, the browser makes a request to a server somewhere, and the server returns the files to render the page and the connection is closed.\r\n\r\nNow imagine that you need to sign in to a website to see certain content, like with LinkedIn. The process is largely the same as the one above, but you\'re presented with a form to enter in your email address and password.\r\n\r\nYou enter that information in and your browser sends it to the server. The server checks your login information, and if everything looks good, it sends the data needed to render the page back to your browser.\r\n\r\nBut if LinkedIn was truly stateless, once you navigate to a different page, the server would not remember that you just signed in. It would ask you to enter in your email address and password again, check them, then send over the data to render the new page.\r\n\r\nThat would be super frustrating, wouldn\'t it? A lot of developers thought so, too, and found different ways to create stateful sessions on the web.\r\n\r\nThe invention of the HTTP cookie\r\nLou Montoulli, a developer at Netscape in the early 90s, had a problem – he was developing an online store for another company, MCI, which would store the items in each customer\'s cart on its servers. This meant that people had to create an account first, it was slow, and it took up a lot of storage.\r\n\r\nMCI requested for all of this data to be stored on each customer\'s own computer instead. Also, they wanted everything to work without customers having to sign in first.\r\n\r\nTo solve this, Lou turned to an idea that was already pretty well known among programmers: the magic cookie.\r\n\r\nA magic cookie, or just cookie, is a bit of data that\'s passed between two computer programs. They\'re \"magic\" because the data in the cookie is often a random key or token, and is really just meant for the software using it.\r\n\r\nLou took the magic cookie concept and applied it to the online store, and later to browsers as a whole.\r\n\r\nNow that you know about their history, let\'s take a quick look at how cookies are used to create stateful sessions on the web.', '2021-05-15 07:23:28', 1, 2),
(23, 'How to Learn Web Development Using Free Resources', 'In this article, I will help you learn Web Development by following the shortest path possible. To get this most out of this guide, I urge you to leave all your distractions behind for 10 minutes and focus.\r\n\r\nTo help anyone and everyone get started, I\'ll provide you with a collection of excellent free resources to learn Web development.\r\n\r\nSo let’s get started.\r\n\r\nHow I Started Learning Web Development\r\nI was in my first year of Engineering, studying Electronics and Telecommunication Engineering. I wasn\'t at all interested in coding and all that tech stuff.\r\n\r\nUntil one day.\r\n\r\nAccidentally, one of my friends recommended a Udemy Course to me on Web Development. Before that, I didn\'t even know about Web Development since I didn\'t have a technical background, and I wasn\'t trying to learn new skills.\r\n\r\nSo I didn\'t know what HTML, CSS, and all that techy stuff was about. My friend let me watch the course on his own Udemy account.\r\n\r\nWell, I ended up watching the course two hours a day because I liked it. But at that time I wasn\'t practicing coding on my laptop like many of you.\r\n\r\nWithin days, I learned the basics of HTML and CSS. After that, I started up my laptop and tried to create websites based off what was taught in the course.\r\n\r\nAnd in this way I started to learn about Web Development. Here you can see a broad roadmap for front end Web Developers. If you haven\'t seen it before, read through it to get a sense of the overall path.\r\n\r\nThere\'s a lot to take in – but in this article, I am going to help you create a shorter path to learn Web Development.\r\n\r\nBefore we dive into the skills you need to learn to become a web developer, you should know that web development isn\'t a single concept or subject. It has numerous subfields in it.\r\n\r\nYou can focus on front end development, back end development, graphic design, and so on. We\'ll start with the front end now.\r\n\r\nFor Front-end development, you need to learn HTML, CSS, JavaScript, and a library or framework like React, Angular, or Vue.js.\r\n\r\nSo now let\'s talk in more detail about what front end development is and what you need to learn.', '2021-05-15 07:23:28', 1, 1),
(24, 'Machine Learning Systems Book Recommendations – Learn How to Build and Understand ML Systems', 'I hope you’re reading this blog in your pjs looking forward to a rejuvenating and healthy weekend.\r\n\r\nI have been working on multiple projects lately, from creating Machine Learing Engineering and Machine Learning Operations courses to developing end-to-end ML systems at scale. And I have realized that often times I am either revisiting a book that I’ve read or I’m referring to a book that I just skimmed through but never got the chance to really read.\r\n\r\nThis week, I want to share with you the books that I personally feel every ML enthusiast and practitioner should read to get a sense of the breadth of ideas and depth of this field.\r\n\r\nIt is a short and crisp list covering a majority of ML topics. It should be useful both for beginners getting started and intermediate-level professionals wanting to understand the intricacies of engineering successful ML systems.\r\n\r\nSo, here we go...\r\n\r\n#1 — Hands-On Machine Learning with Scikit-Learn, Keras and TensorFlow, 2nd Edition\r\nBy Aurélien Géron\r\n\r\nThis book is simply a work of art. I highly recommend not just reading this book but also coding along with the author.\r\n\r\nThe book is divided into two parts — the first part is focused on the fundamentals of machine learning and covers all the major classic ML algorithms. It has just the right amount of mathematical explanation and Python code to actually start developing models.\r\n\r\nThe the second part focuses on neural networks and deep learning.\r\n\r\nI have read through this complete book and have maybe read a few chapters two or three times in order to get the concepts right and do the exercises.\r\n\r\nReading tip for this one: Spend 2–3 days (or more if needed) with each chapter if you’re spending 2–3 hours learning actively.\r\n\r\n#2 — Machine Learning Engineering\r\nBy Andriy Burkov\r\n\r\nAndriy has done it again. This book explains each phase of the ML Systems Lifecycle and is a complete and concise resource for anyone who intends to build scalable ML-powered applications. #3 — Practical Deep Learning for Cloud, Mobile, and Edge\r\nBy Anirudh Koul, Siddha Ganju, and Meher Kasam\r\n\r\nThe book follows the practical advice that you should learn by doing. It\'s a hands-on guide to building Deep Learning applications for the cloud, mobile browsers, and edge devices. I am currently reading this book and I am surprised that I didn’t stumble upon it before.\r\n\r\nEvery chapter helps you build an application end-to-end. Each application targets a subdomain of deep learning, a different serving method, or techniques to optimize experimentation using TensorFlow.\r\n\r\nIt\'s a must-read for people already familiar with deep learning. This book helps you dive deeper and learn by building a set of cool projects.\r\n\r\n#4 — Building Machine Learning Pipelines\r\nBy Hannes Hapke and Catherine Nelson\r\n\r\nAfter reading a number of case studies on how organizations like Spotify and Airbnb are using TF Extended to improve their ML platforms, I started learning about TFX. It can really help you optimize the development of end-to-end pipelines.\r\n\r\nThe book explains techniques to set up ML pipelines right through from data ingestion to pipeline orchestration using Airflow or Kubeflow. TFX along with TF offers tools for every step of the process.\r\n\r\nThis is an advanced-level read, and you should indulge only after you are done reading the top two recommendations.', '2021-05-15 07:23:28', 6, 1),
(25, 'How to Build Better Machine Learning Models', 'Hello developers 👋. If you have built Deep Neural Networks before, you might know that it can involve a lot of experimentation.\r\n\r\nIn this article, I will share with you some useful tips and guidelines that you can use to better build better deep learning models. These tricks should make it a lot easier for you to develop a good network.\r\n\r\nYou can pick and choose which tips you use, as some will be more helpful for the projects you are working on. Not everything mentioned in this article will straight up improve your models’ performance.\r\n\r\nA high-level approach to Hyperparameter tuning🕹️\r\nOne of the more painful things about training Deep Neural Networks is the large number of hyperparameters you have to deal with.\r\n\r\nThese could be your learning rate α, the discounting factor ρ, and epsilon ε if you are using the RMSprop optimizer (Hinton et al.) or the exponential decay rates β₁ and β₂ if you are using the Adam optimizer (Kingma et al.).\r\n\r\nYou also need to choose the number of layers in the network or the number of hidden units for the layers. You might be using learning rate schedulers and would want to configure those features and a lot more 😩! We definitely need ways to better organize our hyperparameter tuning process.\r\n\r\nA common algorithm I tend to use to organize my hyperparameter search process is Random Search. Though there are other algorithms that might be better, I usually end up using it anyway.\r\n\r\nLet’s say for the purpose of this example you want to tune two hyperparameters and you suspect that the optimal values for both would be somewhere between one and five.\r\n\r\nThe idea here is that instead of picking twenty-five values to try out like (1, 1) (1, 2) and so on systematically, it would be more effective to select twenty-five points at random. Here I suspect that an optimal number of units in the first Dense layer would be somewhere between 32 and 512, and my learning rate would be one of 1e-2, 1e-3, or 1e-4.\r\n\r\nConsequently, as shown in this example, I set my minimum value for the number of units to be 32 and the maximum value to be 512 and have a step size of 32. Then, instead of hardcoding a value for the number of units, I specify a range to try out. Use Mixed Precision Training for large networks🎨\r\nThe bigger your neural network is, the more accurate your results (in general). As model sizes grow, the memory and compute requirements for training these models also increase.\r\n\r\nThe idea with using Mixed Precision Training (NVIDIA, Micikevicius et al.) is to train deep neural networks using half-precision floating-point numbers which let you train large neural networks a lot faster with no or negligible decrease in the performance of the networks.\r\n\r\nBut, I\'d like to point out that this technique should only be used for large models with more than 100 million parameters or so.\r\n\r\nWhile mixed-precision would run on most hardware, it will only speed up models on recent NVIDIA GPUs (for example Tesla V100 and Tesla T4) and Cloud TPUs.', '2021-05-15 07:23:28', 6, 1),
(26, 'Machine Learning Tutorial – Feature Engineering and Feature Selection For Beginners', ' They say data is the new oil, but we don\'t use oil directly from its source. It has to be processed and cleaned before we use it for different purposes.\r\n\r\nThe same applies to data, we don\'t use it directly from its source. It also has to be processed.\r\n\r\nWhat is Feature Engineering?\r\nFeature engineering refers to a process of selecting and transforming variables/features in your dataset when creating a predictive model using machine learning.\r\n\r\nTherefore you have to extract the features from the raw dataset you have collected before training your data in machine learning algorithms.\r\nOtherwise, it will be hard to gain good insights in your data.\r\n\r\nTorture the data, and it will confess to anything. — Ronald Coase\r\nFeature engineering has two goals:\r\n\r\nPreparing the proper input dataset, compatible with the machine learning algorithm requirements.\r\nImproving the performance of machine learning models. According to a survey of 80 Data Scientists conducted by CrowdFlower, Data Scientists spend 60% of their time cleaning and organizing data. This is why having skills in feature engineering and selection is very important.\r\n\r\n“ At the end of the day, some machine learning projects succeed, and some fail. What makes the difference? Easily the most important factor is the features used. ” — Prof. Pedro Domingos from the University of Washington\r\nYou can read his paper from the following link: \"A Few Useful Things to Know About Machine Learning\".\r\n\r\nNow that you know why you need to learn different techniques for feature engineering, let\'s start by learning different methods to handle missing data.\r\n\r\nHow to Handle Missing Data\r\nHandling missing data is very important as many machine learning algorithms do not support data with missing values. If you have missing values in the dataset, it can cause errors and poor performance with some machine learning algorithms.', '2021-05-15 07:23:28', 6, 1),
(27, 'Amazing Adobe Creative Cloud deal is still going!', 'Adobe Creative Cloud remains the absolute industry standard, and if you\'ve been thinking about signing up to a subscription, then you\'re in luck. Creatives in EMEA regions (that\'s Europe, the Middle East and Africa) can save up to 20 per cent off a Creative Cloud All Apps plan subscription between now and 18 May.\r\n\r\nAn All Apps subscription includes access to Adobe powerhouses like Photoshop, Premiere Pro and Illustrator for only €48.39 / £39.95 every month. And if you\'re looking to expand your skillset by trying out new programmes, then getting a CC subscription allows you to do just that. You could experiment with prototyping with Adobe XD, get into motion graphics with After Effects or make your own 3D images with Adobe Dimension.\r\n\r\nThis is the best Adobe Creative Cloud discount going right now, but you\'ll need to get it before 18 May. The price reduction applies to the complete creative suite, which encompasses over 20 different apps. That includes all the big players – photo editing favourite Photoshop, digital artists\' go-to Illustrator, the best video editing software Premiere Pro, web prototyping tool Adobe XD and motion effects creator, After Effects. Photoshop and Illustrator are now also available on the iPad, and Adobe Fresco is on the iPhone, so you\'ll also get these extra brand new iterations of the software bundled in. \r\n\r\nIf you need any extra encouragement, remember that when you buy Adobe\'s full All Apps package you\'re also getting 100GB of cloud storage (with the option to upgrade to 10TB) and premium features like Adobe Portfolio, Adobe Fonts, and Adobe Spark.\r\n\r\nThe programmes are fully integrated, so you can switch between them (and jump from one device to another) seamlessly – whether you’re out and about or in the studio. Built-in templates help you jump-start your designs, while step-by-step tutorials will help you get up to speed quickly.', '2021-05-15 07:23:28', 2, 2),
(28, 'The best digital art software for creatives in 2021', 'Choosing the best digital art software can be a little daunting. There are plenty of top-quality apps to choose from at all sorts of price points, but luckily we\'re here to help. We\'ve looked at all the leading options and picked out the best of the bunch so that you can find exactly what you\'re looking for.\r\n\r\nThere are two main considerations that you\'ll want to keep in mind: what sort of features you\'re after, and how much you want to pay. Some digital art software has absolutely everything you need for working with images, from painting through to advanced photo editing, while other apps have a more focused set of tools, and you\'ll need to decide whether you want a general-purpose or more specialised package.\r\n\r\nAs for price, some of our picks are completely free, some you have to pay once for and others require you to take out an ongoing subscription. And whether you\'re on Mac, Windows, iPad or even Linux you\'ll be able to find the best digital art software for you; read on to discover our top choices so that you can get creating straight away.', '2021-05-15 07:23:28', 2, 2),
(29, 'The lazy-loading property pattern in JavaScript', 'Traditionally, developers have created properties inside of JavaScript classes for any data that might be needed within an instance. This isn’t a problem for small pieces of data that are readily available inside of the constructor. However, if some data needs to be calculated before becoming available in the instance, you may not want to pay that cost upfront. For example, consider this class:\r\n\r\nHere, the data property is created as the result of performing some expensive computation. It may not be efficient to perform that calculation upfront if you aren’t sure the property will be used. Fortunately, there are several ways to defer these operations until later.\r\n\r\nThe on-demand property pattern. \r\nThe easiest way to optimize performing an expensive operation is to wait until the data is needed before doing the computation. For example, you could use an accessor property with a getter to do the computation on demand.\r\n\r\nIn this case, your expensive computation isn’t happening until the first time someone reads the data property, which is an improvement. However, that same expensive computation is performed every time the data property is read, which is worse than previous example where at least the computation was performed just once. This isn’t a good solution, but you can build upon it to create a better one.\r\n\r\nThe messy lazy-loading property pattern. \r\nOnly performing the computation when the property is accessed is a good start. What you really need is to cache the information after that point and just use the cached version. But where do you cache that information for easy access? The easiest approach is to define a property with the same name and set its value to the computed data.', '2021-05-15 07:19:29', 4, 1),
(30, 'How to Photoshop someone into a picture', 'The first step in conquering how to Photoshop someone into a picture is to find the perfect images. When picking your two images, it’s important to consider matching perspective and angles, ensuring that any inserted image has the best chance of looking natural and in situ. A key part of mastering how to Photoshop someone into a picture is to mimic the resolution and lighting conditions of the original image, since tiny differences can immediately spoil the credibility of a composition. The most accurate way to cut out an object in Photoshop is by drawing a path with the Pen tool. Select the Pen tool in the toolbar or with the shortcut P, then make the first point on your path by clicking onto the canvas, somewhere on the edge of your subject. Continue clicking around the whole body, until you connect the final point with the first (ignore the head and hair for now, just roughly draw around it).', '2021-05-15 07:23:28', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `parent_menu_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `submenu`
--

INSERT INTO `submenu` (`id`, `parent_menu_id`, `name`, `action`) VALUES
(1, 3, 'Web Development', '#'),
(2, 3, 'Graphic Design', '#'),
(3, 3, 'Video Editing', '#'),
(4, 3, 'Front-End', '#'),
(5, 3, 'Back-End', '#');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
