-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2015 at 06:36 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_app2`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_message`
--

CREATE TABLE IF NOT EXISTS `t_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(250) NOT NULL,
  `company` text,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `once_opened` tinyint(4) DEFAULT NULL,
  `already_read` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `t_message`
--

INSERT INTO `t_message` (`id`, `date`, `name`, `company`, `email`, `phone`, `content`, `once_opened`, `already_read`) VALUES
(31, '2015-09-20 14:05:44', 'name', 'vikitina&co', 'vikitina@gmail.com', '', '', 0, 1),
(32, '2015-09-20 14:10:15', '', 'asdasdasd', 'vikitina@gmail.com', '', '', 1, 1),
(33, '2015-09-20 14:49:33', 'name444', NULL, '', '', '', 1, 1),
(34, '2015-09-20 14:51:07', 'name555', 'vikitina&co', '', '', '', 0, 1),
(35, '2015-09-20 14:52:13', 'name666', 'vikitina&co666', 'vikitina666@gmail.com', '', '', 1, 1),
(36, '2015-09-20 14:53:12', 'name777', 'vikitina&co777', 'vikitin7777a@gmail.com', '123123123777', '', 1, 0),
(37, '2015-09-20 14:54:30', 'name888', 'vikitina&co8888', 'vikitina8888@gmail.com', '123123123888888', '8888  88888888888 888888888888', 1, 1),
(68, '2015-09-29 07:14:34', 'qqqqqqqqqqq', NULL, 'vikitina@gmail.com', 'vikitina@gmail.com', '<h3> The necessary work:</h3><ul><li>Website</li><li>Marketing</li><li>SEO</li><li>Development</li></ul><h3>Budget:</h3><p>$1000 - $4460</p><p>asdfasdfasdf</p>', 1, 1),
(69, '2015-09-29 07:27:39', 'Lorem Lorem ipsum dolor sit amet', NULL, 'vikitina@gmail.com', 'vikitina@gmail.com', '<h3> The necessary work:</h3><ul><li>Website</li><li>SEO</li><li>Ecommerce</li><li>Development</li></ul><h3>Budget:</h3><p>$1000 - $5000</p><p>Lorem ipsum dolor sit amet, mel ferri dicam inimicus ne. Ex deleniti partiendo conclusionemque pri, has eu amet facete. Quo ad eius congue meliore, mutat causae mandamus vel at. Graeci putent eum no, eam esse repudiandae ea. Cum summo delenit adversarium in, an qui augue tollit quaestio. Mea in assum cetero nominavi, eu eam dolorum voluptatum.\r\n\r\nEi molestie lobortis mei, an minim mundi appetere mei, pri paulo neglegentur eu. Eu iisque latine iracundia eam, idque latine virtute ea nam, minimum pericula elaboraret cu sea. Eum in altera latine reprimique. His malis dicam detraxit ne. Magna nulla eruditi pro te, an eum docendi assueverit. Cu inani feugait qui.\r\n\r\nVim quidam numquam ea, ad audire virtute qui. An malis congue patrioque qui, in mel quidam audire. Usu tempor scripta ut. In nullam nusquam erroribus vis, paulo numquam abhorreant te est.\r\n\r\nUt mutat putant delenit duo. Et exerci iuvaret mei, ut scripta deseruisse sit. Cum accusata platonem electram eu, choro tation electram te vix. Dicam postulant has eu, no dico munere tritani eos, erant decore ne nam. Enim nemore nec no, eum iusto option conceptam ex, ut ius accusam reprimique.</p>', 1, 1),
(70, '2015-09-29 15:01:20', 'sdfsdf', NULL, 'vikitina@gmail.com', 'vikitina@gmail.com', '<h3> The necessary work:</h3><ul><li>Marketing</li><li>SEO</li><li>Hosting</li><li>Development</li></ul><h3>Budget:</h3><p>$1000 - $4298</p><p>dfsdf</p>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_pages`
--

CREATE TABLE IF NOT EXISTS `t_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `main_page` tinyint(4) DEFAULT NULL,
  `link` varchar(250) NOT NULL,
  `in_menu` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `etc` text NOT NULL,
  `sections_class` varchar(250) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `t_pages`
--

INSERT INTO `t_pages` (`id`, `main_page`, `link`, `in_menu`, `title`, `content`, `etc`, `sections_class`, `num`) VALUES
(31, 1, 'promo', 1, 'Promo', '\r\n        <div class="container text-center for_logo">\r\n            <div >\r\n\r\n                   <img src="assets/images/brand/logo.png" alt="TARA-WEBSTUDIO" class="img-responsive" />\r\n                   <img src="assets/images/brand/slog.png" alt="We''ll make your business wwwider!" class="img-responsive" />\r\n            </div>\r\n         </div><!--//container-->    \r\n           <!-- <img src="assets/images/1.jpg" alt="We''ll make your business wwwider!" style="position:absolute;left:100px;top:30px;" />-->\r\n         <div class="row"> <div class="container"> <h2 class="head_subtitle">Professional Web Studio, which creates high-quality websites at affordable prices in the short term.</h2></div></div>\r\n        <div class="promo_info row" >\r\n               <div class="container">\r\n                       <p class="col-lg-3 col-md-3 col-sm-6 col-xs-12"><span class="highlight">A team of specialists</span> in our web studio will help you and your business to increase recognizibility on the Internet. \r\n                        </p><p class="col-lg-3 col-md-3 col-sm-6 col-xs-12" ><span class="highlight">We will create for you</span>an online store that will encash thousands of products, and business site for commercial ogranizations at affordable prices.\r\n                        </p><p class="col-lg-3 col-md-3 col-sm-6 col-xs-12" ><span class="highlight">Creating&nbsp;websites</span> at the present time is an essential condition for those who want to outdo everyone in a competitive field, and for those who intend to start their new business.\r\n                        </p><p class="col-lg-3 col-md-3 col-sm-6 col-xs-12"  ><span class="highlight">We&nbsp;will&nbsp;certainly&nbsp;help&nbsp;you</span> to choose the most proper solution, taking into consideration your wishes in terms of functionality of the project, the cost and timing of the works.\r\n                        </p>\r\n                </div><!-- container  -->\r\n         </div><!-- promo_info  -->\r\n\r\n         \r\n           \r\n      \r\n\r\n     \r\n   \r\n    ', '', 'promo', 0),
(32, NULL, 'about', 1, 'About', '\r\n        <div class="container">\r\n            <h2 class="title text-center wow fadeInDown" >About us</h2>\r\n           \r\n            <div class="row">\r\n                <div class="item col-md-4 col-sm-6 col-xs-12  wow fadeInDown" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                    <div class="icon-holder">\r\n                        <i class="fa fa-heart"></i>\r\n                    </div>\r\n                    <div class="content">\r\n                        <h3 class="sub-title">Who are we?</h3>\r\n                        <p>\r\n                            We are a small studio of a little more than 10 people. Among us there are  web designers, programmers, marketers, copywriters and creative people. \r\n                        </p>\r\n                    </div><!--//content-->\r\n                </div><!--//item-->\r\n                <div class="item col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                    <div class="icon-holder">\r\n                        <i class="fa fa-clock-o"></i>\r\n                    </div>\r\n                    <div class="content">\r\n                        <h3 class="sub-title">Why are we?</h3>\r\n                        <p>\r\n                        We know the trend, we have the imagination, the strength and patience to work well even with the most demanding customers.\r\n                             \r\n                        </p>\r\n                    </div><!--//content-->\r\n                </div><!--//item-->\r\n                <div class="item col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                    <div class="icon-holder">\r\n                        <i class="fa fa-crosshairs"></i>\r\n                    </div>\r\n                    <div class="content">\r\n                        <h3 class="sub-title">Who are you?</h3>\r\n                        <p>\r\n Among our customers there are both small, medium and big business. We don''t dump as well as don''t raise the real value of our work\r\n </p>\r\n                    </div><!--//content-->\r\n                </div><!--//item-->           \r\n                <div class="clearfix visible-md"></div>    \r\n                <div class="item col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                    <div class="icon-holder">\r\n                        <i class="fa fa-tablet"></i>\r\n                    </div>\r\n                    <div class="content">\r\n                        <h3 class="sub-title">How we do?</h3>\r\n                        <p>\r\n                            All functionality is written by us, so we are able to easily and quickly expand and modify your website in the future, if the need arises. \r\n                        </p>\r\n                    </div><!--//content-->\r\n                </div><!--//item-->                \r\n                <div class="item col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                    <div class="icon-holder">\r\n                        <i class="fa fa-code"></i>\r\n                    </div>\r\n                    <div class="content">\r\n                        <h3 class="sub-title">Easy to customise</h3>\r\n                        <p>\r\n                             We convey to you all the source, ie, psd layout and the archive site, so every competent expert will be able to continue supporting your site, if the need arises.\r\n                        </p>\r\n                    </div><!--//content-->\r\n                </div><!--//item-->\r\n                <div class="item col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                    <div class="icon-holder">\r\n                        <i class="fa fa-coffee"></i>\r\n                    </div>\r\n                    <div class="content">\r\n                        <h3 class="sub-title">LESS files included</h3>\r\n                        <p>We work  with full life website development (design, layout, functional connectivity, testing, computation domain and hosting), ie, the output is a finished product that can be safely brought out.</p>\r\n                    </div><!--//content-->\r\n                </div><!--//item-->               \r\n            </div><!--//row-->            \r\n        </div><!--//container-->\r\n    ', '', 'about', 1),
(33, NULL, 'services', 1, 'Services', '        <div class="container text-center">\r\n            <h2 class="title wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">Services</h2>\r\n            <div class="row">\r\n                        <div class="col-sm-6 col-md-6">\r\n                                  <div class="services-wrap wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                                               <div class="pull-left"><i class="fa fa-check"></i> <h4> Web development</h4></div>\r\n                                               <div class="services-body">\r\n                                                     \r\n        \r\n                                                      <p>We develop innovative high-tech sites that are successfully meeting its objectives. From promotional sites to complex, multi-functional portals. Sites, that inform, advise, sell and meet the requirements of modern trends.</p>\r\n                                              </div>\r\n                                   </div>\r\n\r\n                                  <div class="services-wrap wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                                               <div class="pull-left"><i class="fa fa-check"></i><h4>e-Commerce</h4></div>\r\n                                               <div class="services-body">                         \r\n                                                       \r\n                                                         <p>We are creating full-featured online shopping to conduct online sales. We consider the online shop as a full-fledged business tool, which effectively combines design and technical solutions that will be best in your case. Even at the stage of development of the site we take into consideration the fact that it should be comfortable for visitors and it should generate profit for the owner.</p>\r\n                                              </div>\r\n                                   </div>\r\n      \r\n                                  <div class="services-wrap wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                                               <div class="pull-left"><i class="fa fa-check"></i><h4>Web design</h4></div>\r\n                                               <div class="services-body">  \r\n                                                 \r\n                        <p>The design of your future website will create professional designers with years of experience. These talented and gifted people will make your website attractive, beautiful and memorable. The appearance of your website it is your business card on the Internet, which should show the reliability and respectability of your company!\r\n                    \r\n                    </p>\r\n                                              </div>\r\n                                   </div>\r\n                        </div> <!--   -->\r\n                         <div class="col-sm-6 col-md-6 services-wrap-r">\r\n                                  <div class="services-wrap wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                                               <div class="pull-right"><i class="fa fa-check"></i> <h4> Custom CMS Development</h4></div>\r\n                                               <div class="services-body"> \r\n                                                              \r\n                                                                <p> Modern, comfortable and fast content management system allows you to manage a website of any complexity. The system is optimised for search engines.Management system provides intuitive interface, which is very convenient for the correction of the content of your website.\r\n                                                                  </p>\r\n                                              </div>\r\n                                   </div>\r\n      \r\n                                  <div class="services-wrap wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                                               <div class="pull-right"><i class="fa fa-check"></i><h4> SEO</h4></div>\r\n                                               <div class="services-body">                  \r\n                                               \r\n\r\n                                                <p>  Promotion of sites a necessary step in creating the site.The number of visitors of your website and, ultimately, profit, which brings the site to its owner depends on the quality of site promotion in search engines.</p>   \r\n\r\n                                              </div>\r\n                                   </div>\r\n\r\n                                  <div class="services-wrap wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n                                               <div class="pull-right"><i class="fa fa-check"></i> <h4> Logo</h4></div>\r\n                                               <div class="services-body">  \r\n                                              \r\n                                               <p>Design of each logo starts with an examination of the object itself, its kind of activity, the analysis of the market and its competitors.After passing phase of the study, in the studio we enter directly upon development synthesize of shapes and forms found in the course of the study. There are plenty of options to connect and disconnect part of the name, as well we are experimenting with the color scheme. Further, from this design-mass we choose an option that, after processing details, will be offered to the customer.  \r\n                                              </p>\r\n                                                  \r\n\r\n                                              </div>\r\n                                   </div>\r\n                         </div> <!--   -->\r\n                </div><!-- row  -->\r\n        </div><!--//container-->\r\n    ', '', 'features', 2),
(34, NULL, 'start', 1, 'Prices', '\r\n        <div class="container">\r\n<h2 class="title wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">Let''s get start!</h2>\r\n<div class="col-md-4 col-sm-4 col-xs-12 wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n            <div class="docs-inner"><div class="price">699$</div>\r\n            <h4 class="title text-center">Simple website </h4>            \r\n            <div class="block">\r\n                \r\n                \r\n                <ul class="list-unstyled">\r\n               <li> -custom designed website;</li>\r\n <li>-up to 5 pages (additional pages at 50$ per page);</li>\r\n <li>-two design consepts;</li>\r\n <li>-contact form to email;</li>\r\n <li>-logo;</li>\r\n <li>--store or dealer locator (Google maps)</li>\r\n\r\n                </ul>\r\n                \r\n            </div><!--//block-->\r\n            </div><!--//docs-inner-->  \r\n</div>\r\n <div class="col-md-4 col-sm-4 col-xs-12 wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n           <div class="docs-inner"><div class="price">1199$</div>\r\n            <h4 class="title text-center">Website with full backend control panel</h4>                 \r\n          \r\n            <div class="block">\r\n                \r\n                <ul class="list-unstyled">\r\n                <li>-custom designed website;</li>\r\n<li>-CMS (content management system)</li>\r\n<li>-up to 10 pages (additional pages at 50$ per page);</li>\r\n<li>-three design consepts;</li>\r\n<li>-page editor;</li>\r\n<li>-dynamic contact form –stores data in database;</li>\r\n<li>-logo;</li>\r\n<li>-store or dealer locator (Google maps)</li>\r\n                </ul>\r\n                \r\n            </div><!--//block-->\r\n            </div><!--//docs-inner-->  \r\n            </div>\r\n<div class="col-md-4 col-sm-4 col-xs-12  wow fadeInDown animated" data-wow-delay="600ms" data-wow-duration="1000ms">\r\n           <div class="docs-inner"><div class="price">3299$</div>\r\n            <h4 class="title text-center">Ecommerce System </h4>            \r\n            <div class="block">\r\n               \r\n                <ul class="list-unstyled">\r\n                <li>-custom designed website;</li>\r\n<li>-manages an unlimited number of products and categories;</li>\r\n<li>-CMS (content management system)</li>\r\n<li>-up to 10 pages (additional pages at 50$ per page);</li>\r\n<li>-three design consepts;</li>\r\n<li>-page editor;</li>\r\n<li>-view, edit, create and fulfill orders from admin panel-customer order tracking;</li>\r\n<li>-full reporting system (products, sales, orders, shipping etc;</li>\r\n<li>-SEO tools (Google APL’s);</li>\r\n<li>-logo; </li>\r\n<li>-store or dealer locator (Google maps)</li>\r\n\r\n                </ul>\r\n                \r\n            </div><!--//block-->\r\n            </div><!--//docs-inner-->              \r\n</div>\r\n        </div><!--//container-->\r\n    ', '', 'docs', 4),
(35, NULL, 'getwork', 1, 'Start', '        <div class="container">\r\n        \r\n                <h2 class="title  text-center wow fadeInDown">Let''s work together!</h2>\r\n                \r\n<div class="form_contact">\r\n  <!---   --> \r\n                          <form id="new_contact_form"  method="post">\r\n                                		<section class="form-section">\r\n                                      		\r\n			                                                 <h2>1. What service are you looking for?</h2>\r\n                                                         			<div class="checkbox">  \r\n                                                          				<ul>\r\n                                                                					<li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">\r\n	                                                                    			        <div class="custom-checkbox">\r\n                                                                                  						  <input name="services[]" value="Website" type="checkbox" />\r\n                                                                                  						  <span class="box"><span class="tick"></span></span>\r\n                                                                                   	</div>\r\n					\r\n				                                                                          <label>Website</label>  \r\n		        	                                                               </li>\r\n		                                                                        	<li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">\r\n    				                                                                       <div class="custom-checkbox">\r\n\r\n						                                                                                   <input name="services[]" value="Marketing" type="checkbox" />\r\n\r\n						                                                                                      <span class="box"><span class="tick"></span></span>\r\n					                                                                          	</div>\r\n				                                                                              <label>Marketing</label> \r\n			                                                                        </li>\r\n			                                                                           <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">\r\n				                                                                                 <div class="custom-checkbox">\r\n						                                                                                        <input name="services[]" value="SEO" type="checkbox" />\r\n						                                                                                          <span class="box"><span class="tick"></span></span>\r\n					                                                                                 	</div>\r\n				                                                                                  <label>SEO</label> \r\n			                                                                            </li>\r\n			                                                                            <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">\r\n				                                                                                    <div class="custom-checkbox">\r\n						                                                                                                     <input name="services[]" value="Hosting" type="checkbox" />\r\n						                                                                                                      <span class="box"><span class="tick"></span></span>\r\n					                                                                                	</div>\r\n				                                                                                     <label>Hosting</label> \r\n			                                                                                  </li>\r\n		                                                                      </ul> \r\n		                                                             	</div>\r\n		    <div class="clearfix"></div>\r\n                            </section>\r\n	                         <section class="form-section">\r\n			                                                 <h2>2. What type of website solution are you looking for?</h2>\r\n			                                                                  <div class="checkbox">  \r\n			                                                                         <ul>\r\n			                                                                                   <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">\r\n			                                                                                          <div class="custom-checkbox">\r\n			                                                                                                           <input name="solutions[]" value="CMS" type="checkbox" />\r\n			                                                                                                           <span class="box"><span class="tick"></span></span>\r\n			                                                                                          </div>\r\n			                                                                                                           <label>CMS</label>  \r\n			                                                                                    </li>\r\n			                                                                                    <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">\r\n			                                                                                           <div class="custom-checkbox">\r\n			                                                                                                        <input name="solutions[]" value="Ecommerce" type="checkbox">\r\n			                                                                                                        <span class="box"><span class="tick"></span></span>\r\n			                                                                                          </div>\r\n			                                                                                          <label>Ecommerce</label> \r\n			                                                                                    </li>\r\n			                                                                                    <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">\r\n			                                                                                    <div class="custom-checkbox">\r\n			                                                                                          <input name="solutions[]" value="Apps" type="checkbox">\r\n			                                                                                          <span class="box"><span class="tick"></span></span>\r\n			                                                                                    </div>\r\n			                                                                                          <label>Apps</label> \r\n                                                                                          </li>\r\n                                                                                         <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">\r\n                                                                                                 <div class="custom-checkbox">\r\n                                                                                                           <input name="solutions[]" value="Development" type="checkbox">\r\n                                                                                                           <span class="box"><span class="tick"></span></span>\r\n	                                                                                              </div>\r\n				                                                                                     <label>Development</label> \r\n                                                                                        </li>\r\n                                                                         </ul> \r\n		                                                                 </div>  \r\n\r\n		    		                 <div class="clearfix"></div>\r\n		               </section>\r\n		              <section class="form-section">\r\n                      <h2>3. What is your budget for the project?</h2>		\r\n                              <p>\r\n                                          <label for="amount">Price range:</label>\r\n                                         <input type="text" id="amount" name="amount" value="" readonly style="border:0; color:#f6931f; font-weight:bold;">\r\n                              </p>\r\n \r\n                              <div id="slider-range"></div>                                         \r\n                 \r\n					                   <div class="clearfix"></div>\r\n		               </section>\r\n                		<section class="form-section last_section">\r\n			                     			\r\n						                  	<h2>4. We just need a few details from you.</h2>\r\n		      \r\n\r\n                            \r\n \r\n<!--  -->  \r\n \r\n      \r\n      <div class="row form-group">\r\n        <div class="col-xs-12">\r\n          <input type="text" required="" placeholder="Your Name" name="firstName" id="firstName" class="form-control">\r\n\r\n        </div>\r\n      </div>\r\n        <div class="row form-group">\r\n        <div class="col-xs-12">\r\n          <input type="text" required="" placeholder="Company" name="firstName" id="firstName" class="form-control">\r\n\r\n        </div>  \r\n        </div>      \r\n   \r\n      <div class="row form-group">\r\n          <div class="col-xs-6">\r\n          <input type="email" required="" placeholder="Email" name="email" class="form-control">\r\n          </div>\r\n          <div class="col-xs-5 pull-right">\r\n          <input type="email" required="" placeholder="Phone" name="phone" class="form-control" />\r\n          </div>\r\n      </div>\r\n      <div class="row form-group">\r\n          <div class="col-xs-12">\r\n          <textarea style="width:100%" placeholder="Message" name="msg_text"></textarea>\r\n          </div>\r\n      </div>\r\n      <div class="row form-group">\r\n          <div class="col-xs-12">\r\n            <button class="btn btn-default pull-right">Contact Us</button>\r\n          </div>\r\n      </div>\r\n    \r\n\r\n</section> \r\n\r\n</form>\r\n</div><!-- form contact  -->\r\n\r\n</div><!-- container  -->\r\n\r\n', '', 'contact', 5),
(36, NULL, 'contact', 1, 'Contacts', ' \r\n            <div class="container">\r\n           <h2 class="title  text-center wow fadeInDown">Contacts</h2>\r\n            <div class="col-sm-9 container_addr">\r\n  \r\n                       <img src="assets/images/712.png" alt="" />\r\n                       <div>\r\n                                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3005.318407694331!2d-73.9457591!3d41.127574599999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2c22307900a73%3A0x357518aae8790b9c!2zNjE2IENvcnBvcmF0ZSBXYXkgIzIsIFZhbGxleSBDb3R0YWdlLCBOWSAxMDk4OSwg0KHQv9C-0LvRg9GH0LXQvdGWINCo0YLQsNGC0Lgg0JDQvNC10YDQuNC60Lg!5e0!3m2!1suk!2sua!4v1441617098291" width="1000" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n                      </div>\r\n            </div>\r\n  <div class="col-lg-3 col-sm-12 col-md-3 col-xs-12 pull-right">\r\n\r\n      <address id="address"></address>\r\n    \r\n      <address>\r\n        <strong>Email Us</strong><br>\r\n        <a id="email"></a>\r\n      </address>          \r\n  </div>\r\n  \r\n\r\n                <div class="clearfix"></div>\r\n                <div class="info text-center">\r\n                    <h4 class="sub-title">Get Connected</h4>\r\n                    <ul class="social-icons list-inline">\r\n                        <li><a href="https://twitter.com/3rdwave_themes" target="_blank"><i class="fa fa-twitter"></i></a></li>\r\n                        <li><a href="https://www.facebook.com/3rdwavethemes" target="_blank"><i class="fa fa-facebook"></i></a></li>\r\n                        <li><a href="https://www.linkedin.com/in/xiaoying"><i class="fa fa-linkedin"></i></a></li>\r\n                        <li><a href="http://instagram.com/xyriley"><i class="fa fa-instagram"></i></a></li>  \r\n                        <li><a href="https://dribbble.com/Xiaoying"><i class="fa fa-dribbble"></i></a></li>   \r\n                        <li class="last"><a href="mailto: hello@3rdwavemedia.com"><i class="fa fa-envelope"></i></a></li>              \r\n                    </ul>\r\n                </div><!--//info-->\r\n           \r\n        </div><!--//container-->\r\n    ', '', 'contact', 6);

-- --------------------------------------------------------

--
-- Table structure for table `t_system`
--

CREATE TABLE IF NOT EXISTS `t_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `t_system`
--

INSERT INTO `t_system` (`id`, `name`, `data`) VALUES
(1, 'email', 'vikitina@gmail.com\n'),
(2, 'address', '616 Corporate Way<br>\n            Suite 2-5251<br>\n            Valley Cottage, NY 10989<br><br>\n             (845) 503-2379\n'),
(3, 'twitter', 'https://twitter.com/tarawebstudio'),
(4, 'facebook', 'tarawebstudio'),
(5, 'email_passw', 'vikabibika0987654321'),
(6, 'email_username', 'vikitina');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `state` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `display_name`, `password`, `state`) VALUES
(1, 'asdd', 'asd@gmail.com', 'Asdd', '$2y$14$wqcSzVbtj3ndHhAWefnxheOePTDLN528uSuEdjes/UU09QlpgYfIa', NULL),
(2, 'admin', 'admin@admin.com', 'Admin Adminovich', '$2y$14$wqcSzVbtj3ndHhAWefnxheOePTDLN528uSuEdjes/UU09QlpgYfIa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `roleId`, `is_default`, `parent_id`) VALUES
(1, 'guest', 1, NULL),
(2, 'user', 0, NULL),
(3, 'admin', 0, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_linker`
--

CREATE TABLE IF NOT EXISTS `user_role_linker` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_linker`
--

INSERT INTO `user_role_linker` (`user_id`, `role_id`) VALUES
(1, 2),
(2, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
