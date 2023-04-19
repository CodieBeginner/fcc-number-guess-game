--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 10);
INSERT INTO public.games VALUES (2, 7, 1);
INSERT INTO public.games VALUES (3, 7, 674);
INSERT INTO public.games VALUES (4, 8, 699);
INSERT INTO public.games VALUES (5, 8, 674);
INSERT INTO public.games VALUES (6, 7, 662);
INSERT INTO public.games VALUES (7, 7, 1);
INSERT INTO public.games VALUES (8, 7, 347);
INSERT INTO public.games VALUES (9, 9, 514);
INSERT INTO public.games VALUES (10, 9, 546);
INSERT INTO public.games VALUES (11, 10, 533);
INSERT INTO public.games VALUES (12, 10, 68);
INSERT INTO public.games VALUES (13, 9, 10);
INSERT INTO public.games VALUES (14, 9, 1);
INSERT INTO public.games VALUES (15, 9, 130);
INSERT INTO public.games VALUES (16, 11, 1);
INSERT INTO public.games VALUES (17, 11, 545);
INSERT INTO public.games VALUES (18, 12, 667);
INSERT INTO public.games VALUES (19, 12, 599);
INSERT INTO public.games VALUES (20, 11, 176);
INSERT INTO public.games VALUES (21, 11, 1);
INSERT INTO public.games VALUES (22, 11, 703);
INSERT INTO public.games VALUES (23, 13, 1);
INSERT INTO public.games VALUES (24, 13, 661);
INSERT INTO public.games VALUES (25, 14, 1);
INSERT INTO public.games VALUES (26, 14, 73);
INSERT INTO public.games VALUES (27, 13, 238);
INSERT INTO public.games VALUES (28, 13, 1);
INSERT INTO public.games VALUES (29, 13, 629);
INSERT INTO public.games VALUES (30, 2, 14);
INSERT INTO public.games VALUES (31, 15, 453);
INSERT INTO public.games VALUES (32, 15, 359);
INSERT INTO public.games VALUES (33, 16, 363);
INSERT INTO public.games VALUES (34, 15, 181);
INSERT INTO public.games VALUES (35, 15, 25);
INSERT INTO public.games VALUES (36, 17, 12);
INSERT INTO public.games VALUES (37, 18, 169);
INSERT INTO public.games VALUES (38, 18, 379);
INSERT INTO public.games VALUES (39, 19, 577);
INSERT INTO public.games VALUES (40, 19, 211);
INSERT INTO public.games VALUES (41, 18, 527);
INSERT INTO public.games VALUES (42, 20, 304);
INSERT INTO public.games VALUES (43, 20, 392);
INSERT INTO public.games VALUES (44, 21, 166);
INSERT INTO public.games VALUES (45, 22, 9);
INSERT INTO public.games VALUES (46, 23, 504);
INSERT INTO public.games VALUES (47, 24, 156);
INSERT INTO public.games VALUES (48, 23, 15);
INSERT INTO public.games VALUES (49, 2, 9);
INSERT INTO public.games VALUES (50, 25, 806);
INSERT INTO public.games VALUES (51, 25, 904);
INSERT INTO public.games VALUES (52, 26, 81);
INSERT INTO public.games VALUES (53, 26, 979);
INSERT INTO public.games VALUES (54, 25, 554);
INSERT INTO public.games VALUES (55, 25, 366);
INSERT INTO public.games VALUES (56, 25, 821);
INSERT INTO public.games VALUES (57, 27, 626);
INSERT INTO public.games VALUES (58, 28, 289);
INSERT INTO public.games VALUES (59, 28, 295);
INSERT INTO public.games VALUES (60, 27, 572);
INSERT INTO public.games VALUES (61, 27, 953);
INSERT INTO public.games VALUES (62, 27, 576);
INSERT INTO public.games VALUES (63, 29, 598);
INSERT INTO public.games VALUES (64, 30, 11);
INSERT INTO public.games VALUES (65, 30, 898);
INSERT INTO public.games VALUES (66, 29, 22);
INSERT INTO public.games VALUES (67, 29, 783);
INSERT INTO public.games VALUES (68, 29, 516);
INSERT INTO public.games VALUES (69, 31, 655);
INSERT INTO public.games VALUES (70, 31, 574);
INSERT INTO public.games VALUES (71, 32, 192);
INSERT INTO public.games VALUES (72, 32, 672);
INSERT INTO public.games VALUES (73, 31, 884);
INSERT INTO public.games VALUES (74, 31, 250);
INSERT INTO public.games VALUES (75, 31, 229);
INSERT INTO public.games VALUES (76, 33, 201);
INSERT INTO public.games VALUES (77, 33, 553);
INSERT INTO public.games VALUES (78, 34, 224);
INSERT INTO public.games VALUES (79, 34, 970);
INSERT INTO public.games VALUES (80, 33, 681);
INSERT INTO public.games VALUES (81, 33, 182);
INSERT INTO public.games VALUES (82, 33, 484);
INSERT INTO public.games VALUES (83, 35, 762);
INSERT INTO public.games VALUES (84, 35, 743);
INSERT INTO public.games VALUES (85, 36, 512);
INSERT INTO public.games VALUES (86, 36, 997);
INSERT INTO public.games VALUES (87, 35, 679);
INSERT INTO public.games VALUES (88, 35, 255);
INSERT INTO public.games VALUES (89, 35, 363);
INSERT INTO public.games VALUES (90, 37, 33);
INSERT INTO public.games VALUES (91, 38, 441);
INSERT INTO public.games VALUES (92, 38, 619);
INSERT INTO public.games VALUES (93, 37, 989);
INSERT INTO public.games VALUES (94, 37, 57);
INSERT INTO public.games VALUES (95, 37, 33);
INSERT INTO public.games VALUES (96, 39, 825);
INSERT INTO public.games VALUES (97, 39, 604);
INSERT INTO public.games VALUES (98, 40, 739);
INSERT INTO public.games VALUES (99, 40, 467);
INSERT INTO public.games VALUES (100, 39, 583);
INSERT INTO public.games VALUES (101, 39, 217);
INSERT INTO public.games VALUES (102, 39, 360);
INSERT INTO public.games VALUES (103, 2, 11);
INSERT INTO public.games VALUES (104, 41, 335);
INSERT INTO public.games VALUES (105, 41, 777);
INSERT INTO public.games VALUES (106, 42, 150);
INSERT INTO public.games VALUES (107, 42, 350);
INSERT INTO public.games VALUES (108, 41, 494);
INSERT INTO public.games VALUES (109, 41, 777);
INSERT INTO public.games VALUES (110, 41, 911);
INSERT INTO public.games VALUES (111, 43, 174);
INSERT INTO public.games VALUES (112, 44, 658);
INSERT INTO public.games VALUES (113, 44, 68);
INSERT INTO public.games VALUES (114, 43, 844);
INSERT INTO public.games VALUES (115, 43, 597);
INSERT INTO public.games VALUES (116, 43, 418);
INSERT INTO public.games VALUES (117, 45, 829);
INSERT INTO public.games VALUES (118, 46, 915);
INSERT INTO public.games VALUES (119, 46, 585);
INSERT INTO public.games VALUES (120, 45, 379);
INSERT INTO public.games VALUES (121, 45, 452);
INSERT INTO public.games VALUES (122, 45, 749);
INSERT INTO public.games VALUES (123, 47, 763);
INSERT INTO public.games VALUES (124, 47, 402);
INSERT INTO public.games VALUES (125, 48, 252);
INSERT INTO public.games VALUES (126, 48, 279);
INSERT INTO public.games VALUES (127, 47, 712);
INSERT INTO public.games VALUES (128, 47, 439);
INSERT INTO public.games VALUES (129, 47, 592);
INSERT INTO public.games VALUES (130, 49, 657);
INSERT INTO public.games VALUES (131, 49, 4);
INSERT INTO public.games VALUES (132, 50, 150);
INSERT INTO public.games VALUES (133, 50, 879);
INSERT INTO public.games VALUES (134, 49, 236);
INSERT INTO public.games VALUES (135, 49, 216);
INSERT INTO public.games VALUES (136, 49, 140);
INSERT INTO public.games VALUES (137, 51, 441);
INSERT INTO public.games VALUES (138, 52, 836);
INSERT INTO public.games VALUES (139, 52, 181);
INSERT INTO public.games VALUES (140, 51, 362);
INSERT INTO public.games VALUES (141, 51, 988);
INSERT INTO public.games VALUES (142, 51, 222);
INSERT INTO public.games VALUES (143, 53, 552);
INSERT INTO public.games VALUES (144, 53, 469);
INSERT INTO public.games VALUES (145, 54, 957);
INSERT INTO public.games VALUES (146, 54, 307);
INSERT INTO public.games VALUES (147, 53, 533);
INSERT INTO public.games VALUES (148, 53, 144);
INSERT INTO public.games VALUES (149, 53, 713);
INSERT INTO public.games VALUES (150, 55, 413);
INSERT INTO public.games VALUES (151, 55, 690);
INSERT INTO public.games VALUES (152, 56, 531);
INSERT INTO public.games VALUES (153, 56, 667);
INSERT INTO public.games VALUES (154, 55, 184);
INSERT INTO public.games VALUES (155, 55, 567);
INSERT INTO public.games VALUES (156, 55, 278);
INSERT INTO public.games VALUES (157, 57, 964);
INSERT INTO public.games VALUES (158, 57, 441);
INSERT INTO public.games VALUES (159, 58, 652);
INSERT INTO public.games VALUES (160, 57, 48);
INSERT INTO public.games VALUES (161, 57, 458);
INSERT INTO public.games VALUES (162, 57, 155);
INSERT INTO public.games VALUES (163, 59, 537);
INSERT INTO public.games VALUES (164, 60, 88);
INSERT INTO public.games VALUES (165, 60, 493);
INSERT INTO public.games VALUES (166, 59, 935);
INSERT INTO public.games VALUES (167, 59, 689);
INSERT INTO public.games VALUES (168, 59, 950);
INSERT INTO public.games VALUES (169, 61, 658);
INSERT INTO public.games VALUES (170, 61, 179);
INSERT INTO public.games VALUES (171, 62, 411);
INSERT INTO public.games VALUES (172, 62, 105);
INSERT INTO public.games VALUES (173, 61, 864);
INSERT INTO public.games VALUES (174, 61, 422);
INSERT INTO public.games VALUES (175, 61, 353);
INSERT INTO public.games VALUES (176, 63, 107);
INSERT INTO public.games VALUES (177, 64, 340);
INSERT INTO public.games VALUES (178, 64, 285);
INSERT INTO public.games VALUES (179, 63, 918);
INSERT INTO public.games VALUES (180, 63, 723);
INSERT INTO public.games VALUES (181, 63, 502);
INSERT INTO public.games VALUES (182, 65, 679);
INSERT INTO public.games VALUES (183, 66, 843);
INSERT INTO public.games VALUES (184, 66, 844);
INSERT INTO public.games VALUES (185, 65, 271);
INSERT INTO public.games VALUES (186, 65, 163);
INSERT INTO public.games VALUES (187, 65, 108);
INSERT INTO public.games VALUES (188, 67, 171);
INSERT INTO public.games VALUES (189, 68, 941);
INSERT INTO public.games VALUES (190, 68, 317);
INSERT INTO public.games VALUES (191, 67, 316);
INSERT INTO public.games VALUES (192, 67, 543);
INSERT INTO public.games VALUES (193, 67, 649);
INSERT INTO public.games VALUES (194, 69, 547);
INSERT INTO public.games VALUES (195, 69, 381);
INSERT INTO public.games VALUES (196, 70, 891);
INSERT INTO public.games VALUES (197, 70, 152);
INSERT INTO public.games VALUES (198, 69, 982);
INSERT INTO public.games VALUES (199, 69, 96);
INSERT INTO public.games VALUES (200, 69, 857);
INSERT INTO public.games VALUES (201, 71, 823);
INSERT INTO public.games VALUES (202, 71, 785);
INSERT INTO public.games VALUES (203, 72, 794);
INSERT INTO public.games VALUES (204, 72, 351);
INSERT INTO public.games VALUES (205, 71, 844);
INSERT INTO public.games VALUES (206, 71, 44);
INSERT INTO public.games VALUES (207, 71, 922);
INSERT INTO public.games VALUES (208, 73, 422);
INSERT INTO public.games VALUES (209, 74, 324);
INSERT INTO public.games VALUES (210, 74, 927);
INSERT INTO public.games VALUES (211, 73, 205);
INSERT INTO public.games VALUES (212, 73, 1001);
INSERT INTO public.games VALUES (213, 73, 834);
INSERT INTO public.games VALUES (214, 75, 16);
INSERT INTO public.games VALUES (215, 75, 409);
INSERT INTO public.games VALUES (216, 76, 233);
INSERT INTO public.games VALUES (217, 76, 148);
INSERT INTO public.games VALUES (218, 75, 884);
INSERT INTO public.games VALUES (219, 75, 564);
INSERT INTO public.games VALUES (220, 75, 513);
INSERT INTO public.games VALUES (221, 77, 708);
INSERT INTO public.games VALUES (222, 78, 16);
INSERT INTO public.games VALUES (223, 77, 945);
INSERT INTO public.games VALUES (224, 77, 582);
INSERT INTO public.games VALUES (225, 77, 410);
INSERT INTO public.games VALUES (226, 79, 162);
INSERT INTO public.games VALUES (227, 80, 251);
INSERT INTO public.games VALUES (228, 80, 540);
INSERT INTO public.games VALUES (229, 79, 304);
INSERT INTO public.games VALUES (230, 79, 795);
INSERT INTO public.games VALUES (231, 79, 113);
INSERT INTO public.games VALUES (232, 81, 37);
INSERT INTO public.games VALUES (233, 81, 323);
INSERT INTO public.games VALUES (234, 82, 257);
INSERT INTO public.games VALUES (235, 82, 913);
INSERT INTO public.games VALUES (236, 81, 260);
INSERT INTO public.games VALUES (237, 81, 67);
INSERT INTO public.games VALUES (238, 81, 633);
INSERT INTO public.games VALUES (239, 83, 169);
INSERT INTO public.games VALUES (240, 84, 748);
INSERT INTO public.games VALUES (241, 84, 844);
INSERT INTO public.games VALUES (242, 83, 748);
INSERT INTO public.games VALUES (243, 83, 932);
INSERT INTO public.games VALUES (244, 83, 492);
INSERT INTO public.games VALUES (245, 85, 818);
INSERT INTO public.games VALUES (246, 85, 92);
INSERT INTO public.games VALUES (247, 86, 4);
INSERT INTO public.games VALUES (248, 86, 924);
INSERT INTO public.games VALUES (249, 85, 474);
INSERT INTO public.games VALUES (250, 85, 114);
INSERT INTO public.games VALUES (251, 85, 102);
INSERT INTO public.games VALUES (252, 87, 744);
INSERT INTO public.games VALUES (253, 88, 670);
INSERT INTO public.games VALUES (254, 88, 875);
INSERT INTO public.games VALUES (255, 87, 772);
INSERT INTO public.games VALUES (256, 87, 470);
INSERT INTO public.games VALUES (257, 87, 915);
INSERT INTO public.games VALUES (258, 89, 308);
INSERT INTO public.games VALUES (259, 90, 399);
INSERT INTO public.games VALUES (260, 90, 468);
INSERT INTO public.games VALUES (261, 89, 375);
INSERT INTO public.games VALUES (262, 89, 955);
INSERT INTO public.games VALUES (263, 89, 158);
INSERT INTO public.games VALUES (264, 91, 556);
INSERT INTO public.games VALUES (265, 92, 112);
INSERT INTO public.games VALUES (266, 92, 943);
INSERT INTO public.games VALUES (267, 91, 723);
INSERT INTO public.games VALUES (268, 91, 939);
INSERT INTO public.games VALUES (269, 91, 493);
INSERT INTO public.games VALUES (270, 93, 275);
INSERT INTO public.games VALUES (271, 93, 46);
INSERT INTO public.games VALUES (272, 94, 366);
INSERT INTO public.games VALUES (273, 94, 786);
INSERT INTO public.games VALUES (274, 93, 987);
INSERT INTO public.games VALUES (275, 93, 809);
INSERT INTO public.games VALUES (276, 93, 536);
INSERT INTO public.games VALUES (277, 95, 22);
INSERT INTO public.games VALUES (278, 96, 284);
INSERT INTO public.games VALUES (279, 96, 724);
INSERT INTO public.games VALUES (280, 95, 780);
INSERT INTO public.games VALUES (281, 95, 557);
INSERT INTO public.games VALUES (282, 95, 859);
INSERT INTO public.games VALUES (283, 97, 854);
INSERT INTO public.games VALUES (284, 98, 354);
INSERT INTO public.games VALUES (285, 97, 382);
INSERT INTO public.games VALUES (286, 97, 591);
INSERT INTO public.games VALUES (287, 97, 258);
INSERT INTO public.games VALUES (288, 99, 939);
INSERT INTO public.games VALUES (289, 99, 380);
INSERT INTO public.games VALUES (290, 100, 699);
INSERT INTO public.games VALUES (291, 100, 352);
INSERT INTO public.games VALUES (292, 99, 736);
INSERT INTO public.games VALUES (293, 99, 565);
INSERT INTO public.games VALUES (294, 99, 640);
INSERT INTO public.games VALUES (295, 101, 318);
INSERT INTO public.games VALUES (296, 102, 633);
INSERT INTO public.games VALUES (297, 102, 275);
INSERT INTO public.games VALUES (298, 101, 479);
INSERT INTO public.games VALUES (299, 101, 67);
INSERT INTO public.games VALUES (300, 101, 12);
INSERT INTO public.games VALUES (301, 103, 195);
INSERT INTO public.games VALUES (302, 103, 655);
INSERT INTO public.games VALUES (303, 104, 142);
INSERT INTO public.games VALUES (304, 104, 884);
INSERT INTO public.games VALUES (305, 103, 933);
INSERT INTO public.games VALUES (306, 103, 25);
INSERT INTO public.games VALUES (307, 103, 257);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'swar');
INSERT INTO public.users VALUES (2, 'swaq');
INSERT INTO public.users VALUES (7, 'user_1681890991399');
INSERT INTO public.users VALUES (8, 'user_1681890991398');
INSERT INTO public.users VALUES (9, 'user_1681891093924');
INSERT INTO public.users VALUES (10, 'user_1681891093923');
INSERT INTO public.users VALUES (11, 'user_1681891146731');
INSERT INTO public.users VALUES (12, 'user_1681891146730');
INSERT INTO public.users VALUES (13, 'user_1681891659936');
INSERT INTO public.users VALUES (14, 'user_1681891659935');
INSERT INTO public.users VALUES (15, 'user_1681892995784');
INSERT INTO public.users VALUES (16, 'user_1681892995783');
INSERT INTO public.users VALUES (17, 'swae');
INSERT INTO public.users VALUES (18, 'user_1681893172729');
INSERT INTO public.users VALUES (19, 'user_1681893172728');
INSERT INTO public.users VALUES (20, 'user_1681893505135');
INSERT INTO public.users VALUES (21, 'user_1681893505134');
INSERT INTO public.users VALUES (22, 'swaqe');
INSERT INTO public.users VALUES (23, 'user_1681893614590');
INSERT INTO public.users VALUES (24, 'user_1681893614589');
INSERT INTO public.users VALUES (25, 'user_1681894151744');
INSERT INTO public.users VALUES (26, 'user_1681894151743');
INSERT INTO public.users VALUES (27, 'user_1681894215836');
INSERT INTO public.users VALUES (28, 'user_1681894215835');
INSERT INTO public.users VALUES (29, 'user_1681894262986');
INSERT INTO public.users VALUES (30, 'user_1681894262985');
INSERT INTO public.users VALUES (31, 'user_1681894335793');
INSERT INTO public.users VALUES (32, 'user_1681894335792');
INSERT INTO public.users VALUES (33, 'user_1681894429009');
INSERT INTO public.users VALUES (34, 'user_1681894429008');
INSERT INTO public.users VALUES (35, 'user_1681894486308');
INSERT INTO public.users VALUES (36, 'user_1681894486307');
INSERT INTO public.users VALUES (37, 'user_1681894522421');
INSERT INTO public.users VALUES (38, 'user_1681894522420');
INSERT INTO public.users VALUES (39, 'user_1681894582507');
INSERT INTO public.users VALUES (40, 'user_1681894582506');
INSERT INTO public.users VALUES (41, 'user_1681894878040');
INSERT INTO public.users VALUES (42, 'user_1681894878039');
INSERT INTO public.users VALUES (43, 'user_1681894937719');
INSERT INTO public.users VALUES (44, 'user_1681894937718');
INSERT INTO public.users VALUES (45, 'user_1681895043540');
INSERT INTO public.users VALUES (46, 'user_1681895043539');
INSERT INTO public.users VALUES (47, 'user_1681895081317');
INSERT INTO public.users VALUES (48, 'user_1681895081316');
INSERT INTO public.users VALUES (49, 'user_1681895109943');
INSERT INTO public.users VALUES (50, 'user_1681895109942');
INSERT INTO public.users VALUES (51, 'user_1681895133300');
INSERT INTO public.users VALUES (52, 'user_1681895133299');
INSERT INTO public.users VALUES (53, 'user_1681895190810');
INSERT INTO public.users VALUES (54, 'user_1681895190809');
INSERT INTO public.users VALUES (55, 'user_1681895219079');
INSERT INTO public.users VALUES (56, 'user_1681895219078');
INSERT INTO public.users VALUES (57, 'user_1681895249150');
INSERT INTO public.users VALUES (58, 'user_1681895249149');
INSERT INTO public.users VALUES (59, 'user_1681895278710');
INSERT INTO public.users VALUES (60, 'user_1681895278709');
INSERT INTO public.users VALUES (61, 'user_1681895308086');
INSERT INTO public.users VALUES (62, 'user_1681895308085');
INSERT INTO public.users VALUES (63, 'user_1681895328048');
INSERT INTO public.users VALUES (64, 'user_1681895328047');
INSERT INTO public.users VALUES (65, 'user_1681895340696');
INSERT INTO public.users VALUES (66, 'user_1681895340695');
INSERT INTO public.users VALUES (67, 'user_1681895353524');
INSERT INTO public.users VALUES (68, 'user_1681895353523');
INSERT INTO public.users VALUES (69, 'user_1681895373587');
INSERT INTO public.users VALUES (70, 'user_1681895373586');
INSERT INTO public.users VALUES (71, 'user_1681895424660');
INSERT INTO public.users VALUES (72, 'user_1681895424659');
INSERT INTO public.users VALUES (73, 'user_1681895442571');
INSERT INTO public.users VALUES (74, 'user_1681895442570');
INSERT INTO public.users VALUES (75, 'user_1681895475937');
INSERT INTO public.users VALUES (76, 'user_1681895475936');
INSERT INTO public.users VALUES (77, 'user_1681895501776');
INSERT INTO public.users VALUES (78, 'user_1681895501775');
INSERT INTO public.users VALUES (79, 'user_1681895513677');
INSERT INTO public.users VALUES (80, 'user_1681895513676');
INSERT INTO public.users VALUES (81, 'user_1681895531113');
INSERT INTO public.users VALUES (82, 'user_1681895531112');
INSERT INTO public.users VALUES (83, 'user_1681895556877');
INSERT INTO public.users VALUES (84, 'user_1681895556876');
INSERT INTO public.users VALUES (85, 'user_1681895566167');
INSERT INTO public.users VALUES (86, 'user_1681895566166');
INSERT INTO public.users VALUES (87, 'user_1681895617589');
INSERT INTO public.users VALUES (88, 'user_1681895617588');
INSERT INTO public.users VALUES (89, 'user_1681895655268');
INSERT INTO public.users VALUES (90, 'user_1681895655267');
INSERT INTO public.users VALUES (91, 'user_1681895738700');
INSERT INTO public.users VALUES (92, 'user_1681895738699');
INSERT INTO public.users VALUES (93, 'user_1681895780899');
INSERT INTO public.users VALUES (94, 'user_1681895780898');
INSERT INTO public.users VALUES (95, 'user_1681895802702');
INSERT INTO public.users VALUES (96, 'user_1681895802701');
INSERT INTO public.users VALUES (97, 'user_1681895817981');
INSERT INTO public.users VALUES (98, 'user_1681895817980');
INSERT INTO public.users VALUES (99, 'user_1681895840815');
INSERT INTO public.users VALUES (100, 'user_1681895840814');
INSERT INTO public.users VALUES (101, 'user_1681895858488');
INSERT INTO public.users VALUES (102, 'user_1681895858487');
INSERT INTO public.users VALUES (103, 'user_1681895867938');
INSERT INTO public.users VALUES (104, 'user_1681895867937');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 307, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 104, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

