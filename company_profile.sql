/*
 Navicat Premium Data Transfer

 Source Server         : PostgreSQL Nusantara Digital
 Source Server Type    : PostgreSQL
 Source Server Version : 140012 (140012)
 Source Host           : 103.117.56.3:5432
 Source Catalog        : companyprofile
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140012 (140012)
 File Encoding         : 65001

 Date: 16/06/2024 15:39:21
*/


-- ----------------------------
-- Sequence structure for series_logs
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."series_logs";
CREATE SEQUENCE "public"."series_logs" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for big_numbers
-- ----------------------------
DROP TABLE IF EXISTS "public"."big_numbers";
CREATE TABLE "public"."big_numbers" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "number" varchar(255) COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of big_numbers
-- ----------------------------
INSERT INTO "public"."big_numbers" VALUES (1, 'Best Designer Award', '3', NULL, 1, '2024-03-24 22:10:34', '2024-03-24 22:10:37', 1, 1);
INSERT INTO "public"."big_numbers" VALUES (2, 'Loyal Clients', '50+', NULL, 1, '2024-03-24 22:10:51', '2024-03-24 22:10:55', 1, 1);
INSERT INTO "public"."big_numbers" VALUES (3, 'Nominee Awards', '158+', NULL, 1, '2024-03-24 22:11:13', '2024-03-24 22:11:15', 1, 1);
INSERT INTO "public"."big_numbers" VALUES (4, 'CSS Designs', '92+', NULL, 0, '2024-03-24 22:11:28', '2024-03-24 22:11:30', 1, 1);

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS "public"."blogs";
CREATE TABLE "public"."blogs" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default",
  "image" varchar(255) COLLATE "pg_catalog"."default",
  "datetime" timestamp(6) NOT NULL,
  "description_short" text COLLATE "pg_catalog"."default",
  "description_long" text COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO "public"."blogs" VALUES (1, '1 The Cheapest Destinations Of All Time, A List Of Beauty And Budget. 2', '1-the-cheapest-destinations-of-all-time-a-list-of-beauty-and-budget-2', 'uploads/xxx/20240414_183201-citiasia_background.jpg', '2024-03-21 15:12:43', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry’s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book.', '<h1>HTML Ipsum Presents</h1>
<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>
<h2>Header Level 2</h2>
<ol>
<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
<li>Aliquam tincidunt mauris eu risus.</li>
</ol>
<blockquote>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p>
</blockquote>
<h3>Header Level 3</h3>
<ul>
<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
<li>Aliquam tincidunt mauris eu risus.</li>
</ul>
<pre><code>
				#header h1 a {
				  display: block;
				  width: 300px;
				  height: 80px;
				}
				</code></pre>', NULL, 0, '2024-03-24 22:13:29', '2024-04-08 11:37:02', 1, 1);
INSERT INTO "public"."blogs" VALUES (2, '2 A Year From Now You May Wish You Had Started Today.', 'a-year-from-now-you-may-wish-you-had-started-today', 'uploads/xxx/20240414_183201-citiasia_background.jpg', '2024-03-23 15:12:43', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry’s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book.', 'What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


Where does it come from?
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

Where can I get some?
There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, 1, NULL, NULL, 1, NULL);
INSERT INTO "public"."blogs" VALUES (4, '3 The Cheapest Destinations Of All Time, A List Of Beauty And Budget 2', 'the-cheapest-destinations-of-all-time-2', 'uploads/xxx/20240414_183201-citiasia_background.jpg', '2024-03-24 15:12:43', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry’s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book.', 'What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


Where does it come from?
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

Where can I get some?
There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, 0, '2024-03-24 22:13:29', '2024-03-24 22:13:31', 1, 1);
INSERT INTO "public"."blogs" VALUES (7, 'ini judul artikel', 'ini-judul-artikel', 'uploads/xxx/20240414_183201-citiasia_background.jpg', '2024-04-04 11:28:00', 'ini deskrpsi pendek', '<p>ini desskripsi panjang&nbsp;</p>
<p>dengan <strong>style</strong>&nbsp;</p>', NULL, 1, '2024-04-04 11:29:23', '2024-04-08 11:47:56', 1, 1);

-- ----------------------------
-- Table structure for faqs
-- ----------------------------
DROP TABLE IF EXISTS "public"."faqs";
CREATE TABLE "public"."faqs" (
  "id" numeric(20,0) NOT NULL,
  "question" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "answer" text COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO "public"."faqs" VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit?', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat.', NULL, 1, '2024-03-24 22:19:24', '2024-03-24 22:19:26', 1, 1);
INSERT INTO "public"."faqs" VALUES (2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit?', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat.', NULL, 1, '2024-03-24 22:19:36', '2024-03-24 22:19:37', 1, 1);

-- ----------------------------
-- Table structure for features
-- ----------------------------
DROP TABLE IF EXISTS "public"."features";
CREATE TABLE "public"."features" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description_short" text COLLATE "pg_catalog"."default",
  "description_long" text COLLATE "pg_catalog"."default",
  "image" varchar(255) COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of features
-- ----------------------------
INSERT INTO "public"."features" VALUES (1, 'Funtionality', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 'uploads/xxx/funtionality.png', NULL, 1, '2024-03-24 22:22:40', '2024-03-24 22:22:44', 1, 1);
INSERT INTO "public"."features" VALUES (2, 'User Friendly', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 'uploads/xxx/user-friendly.png', NULL, 1, '2024-03-24 22:22:42', '2024-03-24 22:22:46', 1, 1);
INSERT INTO "public"."features" VALUES (3, 'contoh', NULL, NULL, NULL, NULL, 0, '2024-04-17 10:41:03', '2024-04-17 10:41:03', 1, 1);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS "public"."logs";
CREATE TABLE "public"."logs" (
  "id" numeric(20,0) NOT NULL DEFAULT nextval('series_logs'::regclass),
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "fingerprint" varchar(191) COLLATE "pg_catalog"."default",
  "method" varchar(191) COLLATE "pg_catalog"."default",
  "fullurl" varchar(191) COLLATE "pg_catalog"."default",
  "path" varchar(191) COLLATE "pg_catalog"."default",
  "user_agent" text COLLATE "pg_catalog"."default",
  "os" varchar(191) COLLATE "pg_catalog"."default",
  "os_version" varchar(191) COLLATE "pg_catalog"."default",
  "browser" varchar(191) COLLATE "pg_catalog"."default",
  "browser_version" varchar(191) COLLATE "pg_catalog"."default",
  "device" varchar(191) COLLATE "pg_catalog"."default",
  "is_desktop" int2 NOT NULL,
  "is_mobile" int2 NOT NULL,
  "is_tablet" int2 NOT NULL,
  "ip" varchar(191) COLLATE "pg_catalog"."default",
  "country_code" varchar(191) COLLATE "pg_catalog"."default",
  "country_name" varchar(191) COLLATE "pg_catalog"."default",
  "region_code" varchar(191) COLLATE "pg_catalog"."default",
  "region_name" varchar(191) COLLATE "pg_catalog"."default",
  "city_code" varchar(191) COLLATE "pg_catalog"."default",
  "city_name" varchar(191) COLLATE "pg_catalog"."default",
  "zip_code" varchar(191) COLLATE "pg_catalog"."default",
  "latitude" varchar(191) COLLATE "pg_catalog"."default",
  "longitude" varchar(191) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO "public"."logs" VALUES (1, '2024-04-14 19:34:24', '2024-04-14 19:34:24', '2cdd721c801a7b3ebb6ca7e7e007013d022b21fb', 'GET', 'http://127.0.0.1:8000/admin/profile', 'admin/profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (2, '2024-04-14 19:34:24', '2024-04-14 19:34:24', '1f1891509c5e281da7d868f704c9b1f51fa68e06', 'GET', 'http://127.0.0.1:8000/admin/auth/login', 'admin/auth/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (3, '2024-04-14 19:34:29', '2024-04-14 19:34:29', '68e8be2802d05de27f1e4bc5f2b3e222dbf6d605', 'POST', 'http://127.0.0.1:8000/admin/auth/action_login', 'admin/auth/action_login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (4, '2024-04-14 19:34:29', '2024-04-14 19:34:29', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://127.0.0.1:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (5, '2024-04-14 19:34:34', '2024-04-14 19:34:34', '7db5218fc537e4016143b5e6d58f1e76a0ac190c', 'GET', 'http://127.0.0.1:8000/admin/slider', 'admin/slider', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (6, '2024-04-14 19:34:35', '2024-04-14 19:34:35', 'fdfc52a1c61e1919d37a750db3eed22006370ff8', 'GET', 'http://127.0.0.1:8000/admin/bignumber', 'admin/bignumber', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (7, '2024-04-14 19:34:37', '2024-04-14 19:34:37', '07695f05ee37b4e5b00d7f8ce0e26aec63b58206', 'GET', 'http://127.0.0.1:8000/admin/team', 'admin/team', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (8, '2024-04-14 19:34:38', '2024-04-14 19:34:38', '74f82bd34eee4ce75d9668017317dad7afdca53d', 'GET', 'http://127.0.0.1:8000/admin/partner', 'admin/partner', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (9, '2024-04-14 19:34:39', '2024-04-14 19:34:39', '4c292e5740a102e18222b56c9002e4ca4ae6b20c', 'GET', 'http://127.0.0.1:8000/admin/testimony', 'admin/testimony', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (10, '2024-04-14 19:34:42', '2024-04-14 19:34:42', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://127.0.0.1:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '123.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (12, '2024-06-16 15:36:39', '2024-06-16 15:36:39', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://127.0.0.1:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '125.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (13, '2024-06-16 15:36:43', '2024-06-16 15:36:43', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://127.0.0.1:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '125.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (14, '2024-06-16 15:37:57', '2024-06-16 15:37:57', 'd1e76eaafd8a2c3fdf5458b3e9cb7eb469ab95ec', 'GET', 'http://127.0.0.1:8000/home', 'home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '125.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (15, '2024-06-16 15:38:03', '2024-06-16 15:38:03', '75b6170362b50fe596260ed709be0b079991fcb2', 'GET', 'http://127.0.0.1:8000/page/page-one', 'page/page-one', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '125.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (16, '2024-06-16 15:38:19', '2024-06-16 15:38:19', '06ab492676a7d047a992da52e92ae9d8c450e975', 'GET', 'http://127.0.0.1:8000/admin', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '125.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (17, '2024-06-16 15:38:23', '2024-06-16 15:38:23', '68e8be2802d05de27f1e4bc5f2b3e222dbf6d605', 'POST', 'http://127.0.0.1:8000/admin/auth/action_login', 'admin/auth/action_login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '125.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."logs" VALUES (18, '2024-06-16 15:38:24', '2024-06-16 15:38:24', 'ec4b89e1b2c6fccc77b4cf2e2d008fd481f0a80b', 'GET', 'http://127.0.0.1:8000/admin/dashboard', 'admin/dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'Windows', '10.0', 'Chrome', '125.0.0.0', 'WebKit', 1, 0, 0, '127.0.0.1', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS "public"."messages";
CREATE TABLE "public"."messages" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "subject" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "message" text COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO "public"."messages" VALUES (1, 'Gelar', 'gelar@gmail.com', 'Subject', 'Message', NULL, 1, '2024-03-24 22:24:35', '2024-03-24 22:24:37', 1, 1);
INSERT INTO "public"."messages" VALUES (2, 'Aditya', 'aditya@email.com', 'Subject', 'Message', NULL, 0, '2024-03-24 22:25:01', '2024-03-24 22:25:04', 1, 1);
INSERT INTO "public"."messages" VALUES (37, 'Gelar Aditya Pratama', 'akatgelar@gmail.com', 'asda', 'Your Message', NULL, 0, '2024-03-28 11:27:30', '2024-03-28 11:27:30', NULL, NULL);
INSERT INTO "public"."messages" VALUES (38, 'Gelar Aditya Pratama', 'akatgelar@gmail.com', 'asda', 'Your Message', NULL, 0, '2024-03-28 11:40:21', '2024-03-28 11:40:21', NULL, NULL);
INSERT INTO "public"."messages" VALUES (39, 'f', 'g', 'h', 'j', NULL, 0, '2024-03-28 11:40:51', '2024-03-28 11:40:51', NULL, NULL);
INSERT INTO "public"."messages" VALUES (40, 'f', 'g', 'h', 'j', NULL, 0, '2024-03-28 11:43:04', '2024-03-28 11:43:04', NULL, NULL);
INSERT INTO "public"."messages" VALUES (41, 'f', 'g', 'h', 'j', NULL, 0, '2024-03-28 11:43:48', '2024-03-28 11:43:48', NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int8 NOT NULL,
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (2, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (3, '2024_03_16_043823_create_user_levels_table', 1);
INSERT INTO "public"."migrations" VALUES (4, '2024_03_17_044652_create_settings_table', 1);
INSERT INTO "public"."migrations" VALUES (5, '2024_03_22_044048_create_sliders_table', 1);
INSERT INTO "public"."migrations" VALUES (6, '2024_03_22_044401_create_features_table', 1);
INSERT INTO "public"."migrations" VALUES (7, '2024_03_22_044422_create_pricings_table', 1);
INSERT INTO "public"."migrations" VALUES (8, '2024_03_22_044433_create_blogs_table', 1);
INSERT INTO "public"."migrations" VALUES (9, '2024_03_22_044442_create_faqs_table', 1);
INSERT INTO "public"."migrations" VALUES (10, '2024_03_22_044522_create_messages_table', 1);
INSERT INTO "public"."migrations" VALUES (11, '2024_03_22_044549_create_teams_table', 1);
INSERT INTO "public"."migrations" VALUES (12, '2024_03_22_044607_create_big_numbers_table', 1);
INSERT INTO "public"."migrations" VALUES (13, '2024_03_22_044656_create_partners_table', 1);
INSERT INTO "public"."migrations" VALUES (14, '2024_03_22_044713_create_testimonies_table', 1);
INSERT INTO "public"."migrations" VALUES (15, '2024_03_22_044823_create_pages_table', 1);
INSERT INTO "public"."migrations" VALUES (16, '2024_03_24_152919_update_blog_table', 2);
INSERT INTO "public"."migrations" VALUES (17, '2024_03_24_153033_update_page_table', 3);
INSERT INTO "public"."migrations" VALUES (18, '2024_03_31_165519_create_sessions_table', 4);
INSERT INTO "public"."migrations" VALUES (20, '2024_04_01_090100_update_settings_table', 5);
INSERT INTO "public"."migrations" VALUES (21, '2024_04_01_120310_create_uploads_table', 6);
INSERT INTO "public"."migrations" VALUES (22, '2019_02_08_105647_create_blocks_contents_tables', 7);
INSERT INTO "public"."migrations" VALUES (23, '2021_11_12_153947_remove_blocks_contents_tables', 7);
INSERT INTO "public"."migrations" VALUES (24, '2024_04_13_105020_create_logs_table', 7);

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS "public"."pages";
CREATE TABLE "public"."pages" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default",
  "image" varchar(255) COLLATE "pg_catalog"."default",
  "datetime" timestamp(6) NOT NULL,
  "description_short" text COLLATE "pg_catalog"."default",
  "description_long" text COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO "public"."pages" VALUES (1, 'Page One', 'page-one', 'uploads/xxx/noimage.jpg', '2024-03-24 15:31:24', '', '<h1>HTML Ipsum Presents</h1>

				<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>

				<h2>Header Level 2</h2>

				<ol>
				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
				   <li>Aliquam tincidunt mauris eu risus.</li>
				</ol>

				<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>

				<h3>Header Level 3</h3>

				<ul>
				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
				   <li>Aliquam tincidunt mauris eu risus.</li>
				</ul>

				<pre><code>
				#header h1 a {
				  display: block;
				  width: 300px;
				  height: 80px;
				}
				</code></pre>', NULL, 1, '2024-03-24 22:31:34', '2024-03-24 22:31:40', 1, 1);
INSERT INTO "public"."pages" VALUES (2, 'Page Two', 'page-two', 'uploads/xxx/noimage.jpg', '2024-03-24 15:31:24', '', '<h1>HTML Ipsum Presents</h1>

				<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>

				<h2>Header Level 2</h2>

				<ol>
				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
				   <li>Aliquam tincidunt mauris eu risus.</li>
				</ol>

				<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>

				<h3>Header Level 3</h3>

				<ul>
				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
				   <li>Aliquam tincidunt mauris eu risus.</li>
				</ul>

				<pre><code>
				#header h1 a {
				  display: block;
				  width: 300px;
				  height: 80px;
				}
				</code></pre>', NULL, 1, '2024-03-24 22:31:34', '2024-03-24 22:31:40', 1, NULL);

-- ----------------------------
-- Table structure for partners
-- ----------------------------
DROP TABLE IF EXISTS "public"."partners";
CREATE TABLE "public"."partners" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "image" varchar(255) COLLATE "pg_catalog"."default",
  "link" varchar(255) COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of partners
-- ----------------------------
INSERT INTO "public"."partners" VALUES (1, 'Partner 1', 'uploads/xxx/07.webp', 'http://google.com', NULL, 1, '2024-03-24 22:33:03', '2024-03-24 22:33:05', 1, 1);
INSERT INTO "public"."partners" VALUES (2, 'Partner 2', 'uploads/xxx/07.webp', 'http://google.com', NULL, 0, '2024-03-24 22:33:33', '2024-03-24 22:33:36', NULL, NULL);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."personal_access_tokens";
CREATE TABLE "public"."personal_access_tokens" (
  "id" numeric(20,0) NOT NULL,
  "tokenable_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "tokenable_id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "abilities" text COLLATE "pg_catalog"."default",
  "last_used_at" timestamp(6),
  "expires_at" timestamp(6),
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for pricings
-- ----------------------------
DROP TABLE IF EXISTS "public"."pricings";
CREATE TABLE "public"."pricings" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "price" float8,
  "description_short" text COLLATE "pg_catalog"."default",
  "description_long" text COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of pricings
-- ----------------------------
INSERT INTO "public"."pricings" VALUES (1, 'Basic', 25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 1, '2024-03-24 22:34:44', '2024-03-24 22:34:46', 1, 1);
INSERT INTO "public"."pricings" VALUES (2, 'Professional', 40, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 1, '2024-04-09 14:24:23', NULL, NULL, NULL);
INSERT INTO "public"."pricings" VALUES (3, 'Startup', 99, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 1, '2024-04-09 14:24:25', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS "public"."sessions";
CREATE TABLE "public"."sessions" (
  "id" varchar(191) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" numeric(20,0),
  "ip_address" varchar(45) COLLATE "pg_catalog"."default",
  "user_agent" text COLLATE "pg_catalog"."default",
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "last_activity" int4 NOT NULL
)
;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO "public"."sessions" VALUES ('di5EHn2y8QuLhPH8AQx46jVj9cOt3SqeJV8DbkrZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YToxMDp7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoibnowUHVEQzN1YTJZZ0djTmxjbFkwUjNkdW0zN0R4S3IwZHR4dk5kUyI7czo3OiJ1c2VyX2lkIjtpOjE7czoxMzoidXNlcl9sZXZlbF9pZCI7aToxO3M6MTU6InVzZXJfbGV2ZWxfbmFtZSI7czoxMToiU3VwZXIgQWRtaW4iO3M6OToidXNlcl9uYW1lIjtzOjU6IkFkbWluIjtzOjEwOiJ1c2VyX2VtYWlsIjtzOjE1OiJhZG1pbkBlbWFpbC5jb20iO3M6MTI6InVzZXJfcGljdHVyZSI7czoyMzoidXBsb2Fkcy94eHgvYXZ0YXJfMS5wbmciO3M6NToidG9rZW4iO3M6MzM1OiJleUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd09pOHZiRzlqWVd4b2IzTjBPamd3TURBdllXUnRhVzR2WVhWMGFDOWhZM1JwYjI1ZmJHOW5hVzRpTENKcFlYUWlPakUzTVRNd09UUTVNelVzSW1WNGNDSTZNVGN4TXpFNE1UTXpOU3dpYm1KbUlqb3hOekV6TURrME9UTTFMQ0pxZEdraU9pSjVUVGt3WlZsQ2RVTXphalZOWWxkMElpd2ljM1ZpSWpvaU1TSXNJbkJ5ZGlJNklqSXpZbVExWXpnNU5EbG1OakF3WVdSaU16bGxOekF4WXpRd01EZzNNbVJpTjJFMU9UYzJaamNpZlEuRzdFNk56anBSSFBMcjljN2dJalRFandRMFRKSHROa2I5dGlITGszYnVxSSI7fQ==', 1713097064);
INSERT INTO "public"."sessions" VALUES ('gRRFC5C5U8Z5wwIw1ZR1AaeafLB8BrZzdhlD39jp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IlhUQlJ2ZDJDN3BCbFFWRGMzdWFJckg5OEVZZmdSN0RINDhYUXhRRnYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vbG9jYWxob3N0OjgwODEvYWRtaW4vcGFnZXMvMS9lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo3OiJ1c2VyX2lkIjtpOjE7czoxMzoidXNlcl9sZXZlbF9pZCI7aToxO3M6MTU6InVzZXJfbGV2ZWxfbmFtZSI7czoxMToiU3VwZXIgQWRtaW4iO3M6OToidXNlcl9uYW1lIjtzOjU6IkFkbWluIjtzOjEwOiJ1c2VyX2VtYWlsIjtzOjE1OiJhZG1pbkBlbWFpbC5jb20iO3M6MTI6InVzZXJfcGljdHVyZSI7czoyMzoidXBsb2Fkcy94eHgvYXZ0YXJfMS5wbmciO3M6NToidG9rZW4iO3M6MzM1OiJleUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd09pOHZiRzlqWVd4b2IzTjBPamd3T0RFdllXUnRhVzR2WVhWMGFDOWhZM1JwYjI1ZmJHOW5hVzRpTENKcFlYUWlPakUzTVRNek5EQXhNVGtzSW1WNGNDSTZNVGN4TXpReU5qVXhPU3dpYm1KbUlqb3hOekV6TXpRd01URTVMQ0pxZEdraU9pSXlOekZpZW5kcU0wMWxhMEpMUkhwcklpd2ljM1ZpSWpvaU1TSXNJbkJ5ZGlJNklqSXpZbVExWXpnNU5EbG1OakF3WVdSaU16bGxOekF4WXpRd01EZzNNbVJpTjJFMU9UYzJaamNpZlEuQ2hWbUxTT3ZXSG1QUk1PZjV1WDBKLTdUSXNZQ04wSmk2aDRaNGdSZnBGMCI7fQ==', 1713340129);
INSERT INTO "public"."sessions" VALUES ('heVbOrcfrOSdozEzFqC6XnIJud53PfZPe3tm0zVc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IjhXN0tuN05XUUZsWnFwa1BzSzdBdlNmZU9XZXFRUmp1MWtQQWRhTlUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo3OiJ1c2VyX2lkIjtpOjE7czoxMzoidXNlcl9sZXZlbF9pZCI7aToxO3M6MTU6InVzZXJfbGV2ZWxfbmFtZSI7czoxMToiU3VwZXIgQWRtaW4iO3M6OToidXNlcl9uYW1lIjtzOjU6IkFkbWluIjtzOjEwOiJ1c2VyX2VtYWlsIjtzOjE1OiJhZG1pbkBlbWFpbC5jb20iO3M6MTI6InVzZXJfcGljdHVyZSI7czoyMzoidXBsb2Fkcy94eHgvYXZ0YXJfMS5wbmciO3M6NToidG9rZW4iO3M6MzM1OiJleUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd09pOHZNVEkzTGpBdU1DNHhPamd3TURBdllXUnRhVzR2WVhWMGFDOWhZM1JwYjI1ZmJHOW5hVzRpTENKcFlYUWlPakUzTVRnMU1qY3hNRFFzSW1WNGNDSTZNVGN4T0RZeE16VXdOQ3dpYm1KbUlqb3hOekU0TlRJM01UQTBMQ0pxZEdraU9pSlpWRmc1YTNvMFNEaHhSV3B6V0hvNUlpd2ljM1ZpSWpvaU1TSXNJbkJ5ZGlJNklqSXpZbVExWXpnNU5EbG1OakF3WVdSaU16bGxOekF4WXpRd01EZzNNbVJpTjJFMU9UYzJaamNpZlEuVlo5TTF1R3J0QzBjT3FYblM5TzRkcHJIY1RLMERXcWxtWGZ2Wks0UmJ0cyI7fQ==', 1718527105);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS "public"."settings";
CREATE TABLE "public"."settings" (
  "id" numeric(20,0) NOT NULL,
  "key" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "value" text COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4,
  "type" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO "public"."settings" VALUES (1, 'name', 'Company Profile', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (2, 'copyright', 'Copyright @2024 Citiasia', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (3, 'footer-about', 'Lorem Ipsum', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'longtext');
INSERT INTO "public"."settings" VALUES (4, 'address', 'Bandung', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (5, 'phone', '085', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (6, 'email', 'compro@email.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (7, 'socmed-twitter', 'http://google.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (8, 'socmed-instagram', 'http://google.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (9, 'socmed-linkedin', 'http://google.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (10, 'socmed-facebook', 'http://google.com', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (11, 'faq-description', 'Lorem Ipsum', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'wysiwyg');
INSERT INTO "public"."settings" VALUES (12, 'contact-map', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d123505.75790910245!2d121.05573800000002!3d14.681181!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397ba0942ef7375%3A0x4a9a32d9fe083d40!2sQuezon%20City%2C%20Metro%20Manila%2C%20Philippines!5e0!3m2!1sen!2sus!4v1676356596840!5m2!1sen!2sus', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'longtext');
INSERT INTO "public"."settings" VALUES (13, 'about-content', '<h1>HTML Ipsum Presents</h1>

				<p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>

				<h2>Header Level 2</h2>

				<ol>
				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
				   <li>Aliquam tincidunt mauris eu risus.</li>
				</ol>

				<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>

				<h3>Header Level 3</h3>

				<ul>
				   <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
				   <li>Aliquam tincidunt mauris eu risus.</li>
				</ul>

				<pre><code>
				#header h1 a {
				  display: block;
				  width: 300px;
				  height: 80px;
				}
				</code></pre>', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'wysiwyg');
INSERT INTO "public"."settings" VALUES (14, 'favicon', 'uploads/xxx/favicon.ico', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'image');
INSERT INTO "public"."settings" VALUES (15, 'name-short', 'ComPro', NULL, 1, '2024-04-09 14:53:29', NULL, NULL, NULL, 'text');
INSERT INTO "public"."settings" VALUES (17, 'seo-description', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO "public"."settings" VALUES (18, 'seo-keywords', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO "public"."settings" VALUES (19, 'seo-author', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO "public"."settings" VALUES (20, 'seo-keyphrases', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO "public"."settings" VALUES (21, 'seo-mytopic', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO "public"."settings" VALUES (22, 'seo-classification', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');
INSERT INTO "public"."settings" VALUES (23, 'seo-robots', NULL, NULL, 1, '2024-04-09 17:02:32', NULL, NULL, NULL, 'longtext');

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS "public"."sliders";
CREATE TABLE "public"."sliders" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "image" varchar(255) COLLATE "pg_catalog"."default",
  "link" varchar(255) COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO "public"."sliders" VALUES (1, 'The Joy Of Right Health', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
                                ', 'uploads/xxx/banner-top.webp', 'http://google.com', NULL, 1, '2024-04-08 13:48:59', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS "public"."teams";
CREATE TABLE "public"."teams" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "role" varchar(255) COLLATE "pg_catalog"."default",
  "image" varchar(255) COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO "public"."teams" VALUES (1, 'Darlene Robertson', 'Founder', 'uploads/xxx/team1.webp', NULL, 1, '2024-04-09 10:28:08', NULL, NULL, NULL);
INSERT INTO "public"."teams" VALUES (2, 'Floyd Miles', 'UI designer', 'uploads/xxx/team2.webp', NULL, 1, '2024-04-09 10:28:11', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for testimonies
-- ----------------------------
DROP TABLE IF EXISTS "public"."testimonies";
CREATE TABLE "public"."testimonies" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "role" varchar(255) COLLATE "pg_catalog"."default",
  "testimony" text COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of testimonies
-- ----------------------------
INSERT INTO "public"."testimonies" VALUES (1, 'Elsa Schmidt 1', 'Spa', 'Torquatos nec eu, detr periculis ex, nihil expetendis in mei. Mei an pericula euripidis.hinc partem ei est. Eos ei nisl graecis, vixaperiri consequat an. Eius lorem tincidunt vix at, vel pertinax sensibus id, error epicurei mea. Mea facilisis urbanitas.Torquatos nec eu, detr periculis ex, nihil expetendis in mei.', NULL, 1, '2024-04-09 10:41:52', NULL, NULL, NULL);
INSERT INTO "public"."testimonies" VALUES (2, 'Elsa Schmidt 2', 'Spa', 'Torquatos nec eu, detr periculis ex, nihil expetendis in mei. Mei an pericula euripidis.hinc partem ei est. Eos ei nisl graecis, vixaperiri consequat an. Eius lorem tincidunt vix at, vel pertinax sensibus id, error epicurei mea. Mea facilisis urbanitas.Torquatos nec eu, detr periculis ex, nihil expetendis in mei.', NULL, 1, '2024-04-09 10:41:54', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS "public"."uploads";
CREATE TABLE "public"."uploads" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(191) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(191) COLLATE "pg_catalog"."default",
  "ext" varchar(191) COLLATE "pg_catalog"."default",
  "size" varchar(191) COLLATE "pg_catalog"."default",
  "hash" varchar(191) COLLATE "pg_catalog"."default",
  "url" varchar(191) COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO "public"."uploads" VALUES (11, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240401_123500_google-cloud-icon-400w.png', 'uploads/xxx/20240401_123500_google-cloud-icon-400w.png', NULL, 0, '2024-04-01 12:35:00', '2024-04-01 12:35:00', 1, 1);
INSERT INTO "public"."uploads" VALUES (12, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240402_160324_google-cloud-icon-400w.png', 'uploads//20240402_160324_google-cloud-icon-400w.png', NULL, 0, '2024-04-02 16:03:25', '2024-04-02 16:03:25', 1, 1);
INSERT INTO "public"."uploads" VALUES (13, '2024-03-28', 'png', '.png', '131397', '20240402_160627_2024-03-28.png', 'uploads//20240402_160627_2024-03-28.png', NULL, 0, '2024-04-02 16:06:27', '2024-04-02 16:06:27', 1, 1);
INSERT INTO "public"."uploads" VALUES (14, '2024-03-28', 'png', '.png', '131397', '20240402_161604_2024-03-28.png', 'uploads/20240402_161604_2024-03-28.png', NULL, 0, '2024-04-02 16:16:04', '2024-04-02 16:16:04', 1, 1);
INSERT INTO "public"."uploads" VALUES (15, '2024-03-28', 'png', '.png', '131397', '20240402_161630_2024-03-28.png', 'uploads/20240402_161630_2024-03-28.png', NULL, 0, '2024-04-02 16:16:30', '2024-04-02 16:16:30', 1, 1);
INSERT INTO "public"."uploads" VALUES (16, '2024-03-28', 'png', '.png', '131397', '20240402_161758_2024-03-28.png', 'uploads/20240402_161758_2024-03-28.png', NULL, 0, '2024-04-02 16:17:58', '2024-04-02 16:17:58', 1, 1);
INSERT INTO "public"."uploads" VALUES (17, '2024-04-01', 'png', '.png', '2122438', '20240402_161908_2024-04-01.png', 'uploads/20240402_161908_2024-04-01.png', NULL, 0, '2024-04-02 16:19:08', '2024-04-02 16:19:08', 1, 1);
INSERT INTO "public"."uploads" VALUES (18, '2024-03-28', 'png', '.png', '131397', '20240402_162229_2024-03-28.png', 'uploads/20240402_162229_2024-03-28.png', NULL, 0, '2024-04-02 16:22:29', '2024-04-02 16:22:29', 1, 1);
INSERT INTO "public"."uploads" VALUES (19, '2024-04-01', 'png', '.png', '2122438', '20240402_162434_2024-04-01.png', 'uploads/20240402_162434_2024-04-01.png', NULL, 0, '2024-04-02 16:24:34', '2024-04-02 16:24:34', 1, 1);
INSERT INTO "public"."uploads" VALUES (20, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_095243_google-cloud-icon-400w.png', 'uploads/20240404_095243_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 09:52:43', '2024-04-04 09:52:43', 1, 1);
INSERT INTO "public"."uploads" VALUES (21, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_095742_google-cloud-icon-400w.png', 'uploads/20240404_095742_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 09:57:42', '2024-04-04 09:57:42', 1, 1);
INSERT INTO "public"."uploads" VALUES (22, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_104931_google-cloud-icon-400w.png', 'uploads/20240404_104931_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 10:49:32', '2024-04-04 10:49:32', 1, 1);
INSERT INTO "public"."uploads" VALUES (23, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_110149_google-cloud-icon-400w.png', 'uploads/20240404_110149_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:01:49', '2024-04-04 11:01:49', 1, 1);
INSERT INTO "public"."uploads" VALUES (24, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_112114_google-cloud-icon-400w.png', 'uploads/20240404_112114_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:21:14', '2024-04-04 11:21:14', 1, 1);
INSERT INTO "public"."uploads" VALUES (25, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_112240_google-cloud-icon-400w.png', 'uploads/20240404_112240_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:22:40', '2024-04-04 11:22:40', 1, 1);
INSERT INTO "public"."uploads" VALUES (26, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_112503_google-cloud-icon-400w.png', 'uploads/20240404_112503_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:25:03', '2024-04-04 11:25:03', 1, 1);
INSERT INTO "public"."uploads" VALUES (27, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240404_112605_google-cloud-icon-400w.png', 'uploads/20240404_112605_google-cloud-icon-400w.png', NULL, 0, '2024-04-04 11:26:05', '2024-04-04 11:26:05', 1, 1);
INSERT INTO "public"."uploads" VALUES (28, 'citiasia background', 'jpg', '.jpg', '54426', '20240404_112903_citiasia_background.jpg', 'uploads/20240404_112903_citiasia_background.jpg', NULL, 0, '2024-04-04 11:29:03', '2024-04-04 11:29:03', 1, 1);
INSERT INTO "public"."uploads" VALUES (29, 'citiasia background', 'jpg', '.jpg', '54426', '20240404_115215_citiasia_background.jpg', 'uploads/20240404_115215_citiasia_background.jpg', NULL, 0, '2024-04-04 11:52:15', '2024-04-04 11:52:15', 1, 1);
INSERT INTO "public"."uploads" VALUES (30, 'citiasia background', 'jpg', '.jpg', '54426', '20240408_113457_citiasia_background.jpg', 'uploads/20240408_113457_citiasia_background.jpg', NULL, 0, '2024-04-08 11:34:57', '2024-04-08 11:34:57', 1, 1);
INSERT INTO "public"."uploads" VALUES (31, 'citiasia background', 'jpg', '.jpg', '54426', '20240408_113648_citiasia_background.jpg', 'uploads/20240408_113648_citiasia_background.jpg', NULL, 0, '2024-04-08 11:36:48', '2024-04-08 11:36:48', 1, 1);
INSERT INTO "public"."uploads" VALUES (32, 'citiasia background', 'jpg', '.jpg', '54426', '20240408_115427-citiasia_background.jpg', 'uploads/20240408_115427-citiasia_background.jpg', NULL, 0, '2024-04-08 11:54:27', '2024-04-08 11:54:27', 1, 1);
INSERT INTO "public"."uploads" VALUES (33, 'citiasia background', 'jpg', '.jpg', '54426', '20240408_140001-citiasia_background.jpg', 'uploads/20240408_140001-citiasia_background.jpg', NULL, 0, '2024-04-08 14:00:01', '2024-04-08 14:00:01', 1, 1);
INSERT INTO "public"."uploads" VALUES (34, 'citiasia background', 'jpg', '.jpg', '54426', '20240409_103049-citiasia_background.jpg', 'uploads/20240409_103049-citiasia_background.jpg', NULL, 0, '2024-04-09 10:30:49', '2024-04-09 10:30:49', 1, 1);
INSERT INTO "public"."uploads" VALUES (35, 'citiasia background', 'jpg', '.jpg', '54426', '20240409_103713-citiasia_background.jpg', 'uploads/20240409_103713-citiasia_background.jpg', NULL, 0, '2024-04-09 10:37:13', '2024-04-09 10:37:13', 1, 1);
INSERT INTO "public"."uploads" VALUES (36, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_103749-google-cloud-icon-400w.png', 'uploads/20240409_103749-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 10:37:49', '2024-04-09 10:37:49', 1, 1);
INSERT INTO "public"."uploads" VALUES (37, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_120037-google-cloud-icon-400w.png', 'uploads/20240409_120037-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 12:00:37', '2024-04-09 12:00:37', 1, 1);
INSERT INTO "public"."uploads" VALUES (38, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_141857-google-cloud-icon-400w.png', 'uploads/20240409_141857-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 14:18:57', '2024-04-09 14:18:57', 1, 1);
INSERT INTO "public"."uploads" VALUES (39, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_151538-google-cloud-icon-400w.png', 'uploads/20240409_151538-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 15:15:38', '2024-04-09 15:15:38', 1, 1);
INSERT INTO "public"."uploads" VALUES (40, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_153420-google-cloud-icon-400w.png', 'uploads/20240409_153420-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 15:34:20', '2024-04-09 15:34:20', 1, 1);
INSERT INTO "public"."uploads" VALUES (41, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_155723-google-cloud-icon-400w.png', 'uploads/20240409_155723-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 15:57:23', '2024-04-09 15:57:23', 1, 1);
INSERT INTO "public"."uploads" VALUES (42, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_160609-google-cloud-icon-400w.png', 'uploads/20240409_160609-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 16:06:09', '2024-04-09 16:06:09', 1, 1);
INSERT INTO "public"."uploads" VALUES (43, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_160647-google-cloud-icon-400w.png', 'uploads/20240409_160647-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 16:06:47', '2024-04-09 16:06:47', 1, 1);
INSERT INTO "public"."uploads" VALUES (44, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240409_163856-google-cloud-icon-400w.png', 'uploads/20240409_163856-google-cloud-icon-400w.png', NULL, 0, '2024-04-09 16:38:56', '2024-04-09 16:38:56', 2, 2);
INSERT INTO "public"."uploads" VALUES (45, 'google-cloud-icon-400w', 'png', '.png', '10024', '20240414_174743-google-cloud-icon-400w.png', 'uploads/temp/20240414_174743-google-cloud-icon-400w.png', NULL, 0, '2024-04-14 17:47:43', '2024-04-14 17:47:43', 1, 1);
INSERT INTO "public"."uploads" VALUES (46, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_180844-citiasia_background.jpg', '20240414_180844-citiasia_background.jpg', NULL, 0, '2024-04-14 18:08:44', '2024-04-14 18:08:44', 1, 1);
INSERT INTO "public"."uploads" VALUES (47, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181014-citiasia_background.jpg', '20240414_181014-citiasia_background.jpg', NULL, 0, '2024-04-14 18:10:14', '2024-04-14 18:10:14', 1, 1);
INSERT INTO "public"."uploads" VALUES (48, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181128-citiasia_background.jpg', 'uploads/xxx/20240414_181128-citiasia_background.jpg', NULL, 0, '2024-04-14 18:11:28', '2024-04-14 18:11:28', 1, 1);
INSERT INTO "public"."uploads" VALUES (49, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181238-citiasia_background.jpg', 'uploads/xxx/20240414_181238-citiasia_background.jpg', NULL, 0, '2024-04-14 18:12:38', '2024-04-14 18:12:38', 1, 1);
INSERT INTO "public"."uploads" VALUES (50, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181416-citiasia_background.jpg', 'uploads/xxx/20240414_181416-citiasia_background.jpg', NULL, 0, '2024-04-14 18:14:16', '2024-04-14 18:14:16', 1, 1);
INSERT INTO "public"."uploads" VALUES (51, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_181609-citiasia_background.jpg', 'uploads/xxx/20240414_181609-citiasia_background.jpg', NULL, 0, '2024-04-14 18:16:09', '2024-04-14 18:16:09', 1, 1);
INSERT INTO "public"."uploads" VALUES (52, 'citiasia background', 'jpg', '.jpg', '54426', '20240414_183201-citiasia_background.jpg', 'uploads/xxx/20240414_183201-citiasia_background.jpg', NULL, 0, '2024-04-14 18:32:01', '2024-04-14 18:32:01', 1, 1);
INSERT INTO "public"."uploads" VALUES (53, 'wallpaperflare.com_wallpaper', 'jpg', '.jpg', '160368', '20240414_190624-wallpaperflare.com_wallpaper.jpg', 'uploads/xxx/20240414_190624-wallpaperflare.com_wallpaper.jpg', NULL, 0, '2024-04-14 19:06:24', '2024-04-14 19:06:24', 1, 1);

-- ----------------------------
-- Table structure for user_levels
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_levels";
CREATE TABLE "public"."user_levels" (
  "id" numeric(20,0) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of user_levels
-- ----------------------------
INSERT INTO "public"."user_levels" VALUES (1, 'Super Admin', NULL, 0, '2024-03-24 15:01:31', '2024-03-24 15:01:31', NULL, NULL);
INSERT INTO "public"."user_levels" VALUES (2, 'User', NULL, 0, '2024-03-24 15:01:31', '2024-03-24 15:01:31', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" numeric(20,0) NOT NULL,
  "level_id" int4 NOT NULL,
  "username" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "picture" varchar(255) COLLATE "pg_catalog"."default",
  "last_login" timestamp(6),
  "email_verified_at" timestamp(6),
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "notes" text COLLATE "pg_catalog"."default",
  "is_active" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by" int4,
  "updated_by" int4
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (2, 2, 'user', '$2y$12$WTVmRtLIzR9elCQ0bjfyXujeS0zaXJNsZDqpk5E284w8T0qeQHb.a', 'User', 'user@email.com', 'uploads/xxx/avtar_1.png', '2024-04-09 16:39:51', NULL, NULL, 'catatan', 0, '2024-03-24 15:03:37', '2024-04-09 16:39:51', 1, NULL);
INSERT INTO "public"."users" VALUES (1, 1, 'admin', '$2y$12$JD.z1jzpQYS2PXtgqnVsouNG..teuPeTzgTx5DR4cXC57T6Vy77yu', 'Admin', 'admin@email.com', 'uploads/xxx/avtar_1.png', '2024-06-16 15:38:24', '2024-03-24 15:01:30', '0KnBuAvJmp', NULL, 0, '2024-03-24 15:01:31', '2024-06-16 15:38:24', NULL, NULL);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."series_logs"
OWNED BY "public"."logs"."id";
SELECT setval('"public"."series_logs"', 18, true);

-- ----------------------------
-- Primary Key structure for table big_numbers
-- ----------------------------
ALTER TABLE "public"."big_numbers" ADD CONSTRAINT "big_numbers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blogs
-- ----------------------------
ALTER TABLE "public"."blogs" ADD CONSTRAINT "blogs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table faqs
-- ----------------------------
ALTER TABLE "public"."faqs" ADD CONSTRAINT "faqs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table features
-- ----------------------------
ALTER TABLE "public"."features" ADD CONSTRAINT "features_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table logs
-- ----------------------------
ALTER TABLE "public"."logs" ADD CONSTRAINT "logs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table messages
-- ----------------------------
ALTER TABLE "public"."messages" ADD CONSTRAINT "messages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pages
-- ----------------------------
ALTER TABLE "public"."pages" ADD CONSTRAINT "pages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table partners
-- ----------------------------
ALTER TABLE "public"."partners" ADD CONSTRAINT "partners_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table personal_access_tokens
-- ----------------------------
CREATE UNIQUE INDEX "personal_access_tokens_token_unique" ON "public"."personal_access_tokens" USING btree (
  "token" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" ON "public"."personal_access_tokens" USING btree (
  "tokenable_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tokenable_id" "pg_catalog"."numeric_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table personal_access_tokens
-- ----------------------------
ALTER TABLE "public"."personal_access_tokens" ADD CONSTRAINT "personal_access_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pricings
-- ----------------------------
ALTER TABLE "public"."pricings" ADD CONSTRAINT "pricings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sessions
-- ----------------------------
CREATE INDEX "sessions_last_activity_index" ON "public"."sessions" USING btree (
  "last_activity" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "sessions_user_id_index" ON "public"."sessions" USING btree (
  "user_id" "pg_catalog"."numeric_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sessions
-- ----------------------------
ALTER TABLE "public"."sessions" ADD CONSTRAINT "sessions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table settings
-- ----------------------------
CREATE UNIQUE INDEX "settings_key_unique" ON "public"."settings" USING btree (
  "key" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table settings
-- ----------------------------
ALTER TABLE "public"."settings" ADD CONSTRAINT "settings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sliders
-- ----------------------------
ALTER TABLE "public"."sliders" ADD CONSTRAINT "sliders_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table teams
-- ----------------------------
ALTER TABLE "public"."teams" ADD CONSTRAINT "teams_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testimonies
-- ----------------------------
ALTER TABLE "public"."testimonies" ADD CONSTRAINT "testimonies_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table uploads
-- ----------------------------
ALTER TABLE "public"."uploads" ADD CONSTRAINT "uploads_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user_levels
-- ----------------------------
ALTER TABLE "public"."user_levels" ADD CONSTRAINT "user_levels_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE UNIQUE INDEX "users_email_unique" ON "public"."users" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "users_username_unique" ON "public"."users" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
