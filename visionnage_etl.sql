--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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
-- Name: dim_contenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_contenu (
    contenu_id integer NOT NULL,
    titre character varying(18),
    type_contenu character varying(12),
    genre character varying(16),
    date_sortie timestamp without time zone,
    langue character varying(8)
);


ALTER TABLE public.dim_contenu OWNER TO postgres;

--
-- Name: dim_date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_date (
    date_id integer NOT NULL,
    jour integer,
    mois integer,
    annee integer,
    saison character varying(9)
);


ALTER TABLE public.dim_date OWNER TO postgres;

--
-- Name: dim_plateforme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_plateforme (
    plateforme_id integer NOT NULL,
    plateforme character varying(11)
);


ALTER TABLE public.dim_plateforme OWNER TO postgres;

--
-- Name: dim_utilisateur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_utilisateur (
    utilisateur_id integer NOT NULL,
    nom_utilisateur character varying(20),
    age integer,
    sexe character(1),
    pays character varying(13)
);


ALTER TABLE public.dim_utilisateur OWNER TO postgres;

--
-- Name: fait_visionnage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fait_visionnage (
    utilisateur_id integer NOT NULL,
    contenu_id integer NOT NULL,
    plateforme_id integer NOT NULL,
    date_id integer NOT NULL,
    duree_visonnage real,
    note real,
    visionnage_id integer NOT NULL
);


ALTER TABLE public.fait_visionnage OWNER TO postgres;

--
-- Data for Name: dim_contenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_contenu (contenu_id, titre, type_contenu, genre, date_sortie, langue) FROM stdin;
1	Extraction	Film	Action	2021-05-11 00:00:00	Arabe
2	Baki	Anime	Action	2010-01-27 00:00:00	Arabe
3	Demon Slayer	Anime	Fantastique	2019-09-25 00:00:00	Espagnol
4	Aggretsuko	Anime	Comédie	2020-02-17 00:00:00	Anglais
5	Don't Look Up	Film	Comédie	2002-04-05 00:00:00	Arabe
6	Emily in Paris	Série	Comédie	2019-03-20 00:00:00	Japonais
7	Emily in Paris	Série	Comédie	2010-12-24 00:00:00	Espagnol
8	Extraction	Film	Action	2003-06-15 00:00:00	Espagnol
9	13 Reasons Why	Série	Drame	2001-07-21 00:00:00	Japonais
10	Jujutsu Kaisen	Anime	Action	2019-12-19 00:00:00	Anglais
11	Aggretsuko	Anime	Comédie	2008-07-03 00:00:00	Français
12	One Piece	Anime	Aventure	2024-03-18 00:00:00	Japonais
13	Marriage Story	Film	Drame	2023-12-22 00:00:00	Anglais
14	The Witcher	Série	Fantastique	2007-10-27 00:00:00	Français
15	Bird Box	Film	Thriller	2022-04-11 00:00:00	Arabe
16	The Social Dilemma	Documentaire	Technologie	2018-03-02 00:00:00	Arabe
17	Game of Thrones	Série	Fantastique	2004-12-22 00:00:00	Espagnol
18	Demon Slayer	Anime	Fantastique	2018-09-19 00:00:00	Arabe
19	Money Heist	Série	Action	2019-09-29 00:00:00	Français
20	Titanic	Film	Romance	2000-02-29 00:00:00	Anglais
21	One Piece	Anime	Aventure	2011-04-13 00:00:00	Anglais
22	13 Reasons Why	Série	Drame	2004-07-08 00:00:00	Japonais
23	Parasite	Film	Thriller	2011-08-13 00:00:00	Espagnol
24	Beastars	Anime	Drame	2000-10-27 00:00:00	Anglais
25	Black Mirror	Série	Science-Fiction	2015-08-27 00:00:00	Anglais
26	Marriage Story	Film	Drame	2008-07-16 00:00:00	Français
27	Emily in Paris	Série	Comédie	2012-04-30 00:00:00	Français
28	La La Land	Film	Comédie musicale	2003-02-21 00:00:00	Français
29	Marriage Story	Film	Drame	2003-03-25 00:00:00	Espagnol
30	Beastars	Anime	Drame	2004-01-05 00:00:00	Espagnol
31	Money Heist	Série	Action	2014-08-08 00:00:00	Français
32	Attack on Titan	Anime	Drame	2000-02-16 00:00:00	Français
33	Demon Slayer	Anime	Fantastique	2020-08-05 00:00:00	Anglais
34	The Irishman	Film	Crime	2024-04-29 00:00:00	Espagnol
35	American Factory	Documentaire	Société	2016-11-09 00:00:00	Espagnol
36	The Dark Knight	Film	Action	2020-06-14 00:00:00	Français
37	Game of Thrones	Série	Fantastique	2019-07-22 00:00:00	Japonais
38	Money Heist	Série	Action	2015-05-28 00:00:00	Français
39	The Office	Série	Comédie	2019-06-08 00:00:00	Anglais
40	Aggretsuko	Anime	Comédie	2003-08-23 00:00:00	Japonais
41	Breaking Bad	Série	Drame	2007-04-30 00:00:00	Français
42	Marriage Story	Film	Drame	2021-05-18 00:00:00	Anglais
43	Extraction	Film	Action	2011-07-20 00:00:00	Arabe
44	Naruto	Anime	Action	2009-04-12 00:00:00	Japonais
45	Castlevania	Anime	Fantastique	2021-01-04 00:00:00	Anglais
46	Aggretsuko	Anime	Comédie	2009-11-28 00:00:00	Arabe
47	Stranger Things	Série	Science-Fiction	2010-08-23 00:00:00	Anglais
48	American Factory	Documentaire	Société	2005-05-14 00:00:00	Anglais
49	Extraction	Film	Action	2016-08-24 00:00:00	Espagnol
50	Castlevania	Anime	Fantastique	2013-04-10 00:00:00	Français
51	Jujutsu Kaisen	Anime	Action	2000-03-26 00:00:00	Français
52	Don't Look Up	Film	Comédie	2010-12-11 00:00:00	Anglais
53	Stranger Things	Série	Science-Fiction	2008-05-20 00:00:00	Espagnol
54	13th	Documentaire	Politique	2001-06-26 00:00:00	Japonais
55	Aggretsuko	Anime	Comédie	2016-04-17 00:00:00	Arabe
56	Our Planet	Documentaire	Nature	2023-09-17 00:00:00	Espagnol
57	Titanic	Film	Romance	2012-12-23 00:00:00	Espagnol
58	Money Heist	Série	Action	2011-05-25 00:00:00	Anglais
59	Devilman Crybaby	Anime	Horreur	2019-04-21 00:00:00	Espagnol
60	Baki	Anime	Action	2015-12-17 00:00:00	Espagnol
61	The Irishman	Film	Crime	2016-10-26 00:00:00	Espagnol
62	Parasite	Film	Thriller	2022-10-30 00:00:00	Anglais
63	Parasite	Film	Thriller	2001-03-21 00:00:00	Anglais
64	Our Planet	Documentaire	Nature	2019-04-04 00:00:00	Anglais
65	The Office	Série	Comédie	2010-08-29 00:00:00	Français
66	One Piece	Anime	Aventure	2017-12-30 00:00:00	Arabe
67	One Piece	Anime	Aventure	2016-08-23 00:00:00	Français
68	Castlevania	Anime	Fantastique	2004-11-29 00:00:00	Arabe
69	Marriage Story	Film	Drame	2002-03-13 00:00:00	Anglais
70	Stranger Things	Série	Science-Fiction	2004-08-29 00:00:00	Japonais
71	Extraction	Film	Action	2004-09-13 00:00:00	Anglais
72	Breaking Bad	Série	Drame	2002-02-18 00:00:00	Japonais
73	Attack on Titan	Anime	Drame	2009-02-11 00:00:00	Anglais
74	The Social Dilemma	Documentaire	Technologie	2004-07-09 00:00:00	Japonais
75	Castlevania	Anime	Fantastique	2008-09-01 00:00:00	Anglais
76	Emily in Paris	Série	Comédie	2015-01-26 00:00:00	Japonais
77	The Social Dilemma	Documentaire	Technologie	2018-05-06 00:00:00	Espagnol
78	Titanic	Film	Romance	2003-06-25 00:00:00	Anglais
79	Attack on Titan	Anime	Drame	2001-10-19 00:00:00	Anglais
80	Baki	Anime	Action	2017-06-02 00:00:00	Espagnol
81	13th	Documentaire	Politique	2008-07-01 00:00:00	Arabe
82	The Office	Série	Comédie	2000-07-25 00:00:00	Japonais
83	13 Reasons Why	Série	Drame	2021-07-03 00:00:00	Espagnol
84	Beastars	Anime	Drame	2011-07-05 00:00:00	Anglais
85	Marriage Story	Film	Drame	2010-09-08 00:00:00	Arabe
86	Stranger Things	Série	Science-Fiction	2001-03-30 00:00:00	Arabe
87	Bird Box	Film	Thriller	2019-12-30 00:00:00	Anglais
88	The Irishman	Film	Crime	2001-09-10 00:00:00	Arabe
89	Beastars	Anime	Drame	2005-02-18 00:00:00	Arabe
90	La La Land	Film	Comédie musicale	2018-01-08 00:00:00	Anglais
91	13th	Documentaire	Politique	2004-10-24 00:00:00	Espagnol
92	Devilman Crybaby	Anime	Horreur	2018-07-24 00:00:00	Arabe
93	Breaking Bad	Série	Drame	2021-05-28 00:00:00	Espagnol
94	Breaking Bad	Série	Drame	2024-04-01 00:00:00	Français
95	Parasite	Film	Thriller	2019-08-15 00:00:00	Arabe
96	Game of Thrones	Série	Fantastique	2011-06-06 00:00:00	Français
97	Attack on Titan	Anime	Drame	2007-01-29 00:00:00	Français
98	Game of Thrones	Série	Fantastique	2019-01-02 00:00:00	Espagnol
99	Titanic	Film	Romance	2010-10-01 00:00:00	Japonais
100	Beastars	Anime	Drame	2011-06-25 00:00:00	Anglais
1001	The Witcher	Série	Fantastique	2023-07-15 00:00:00	Anglais
1002	Jack Ryan	Série	Action	2022-08-10 00:00:00	Anglais
1003	One Piece	Anime	Aventure	1999-10-20 00:00:00	Japonais
\.


--
-- Data for Name: dim_date; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_date (date_id, jour, mois, annee, saison) FROM stdin;
20210511	11	5	2021	Printemps
20100127	27	1	2010	Hiver
20190925	25	9	2019	Automne
20200217	17	2	2020	Hiver
20020405	5	4	2002	Printemps
20190320	20	3	2019	Printemps
20101224	24	12	2010	Hiver
20030615	15	6	2003	Été
20010721	21	7	2001	Été
20191219	19	12	2019	Hiver
20080703	3	7	2008	Été
20240318	18	3	2024	Printemps
20231222	22	12	2023	Hiver
20071027	27	10	2007	Automne
20220411	11	4	2022	Printemps
20180302	2	3	2018	Printemps
20041222	22	12	2004	Hiver
20180919	19	9	2018	Automne
20190929	29	9	2019	Automne
20000229	29	2	2000	Hiver
20110413	13	4	2011	Printemps
20040708	8	7	2004	Été
20110813	13	8	2011	Été
20001027	27	10	2000	Automne
20150827	27	8	2015	Été
20080716	16	7	2008	Été
20120430	30	4	2012	Printemps
20030221	21	2	2003	Hiver
20030325	25	3	2003	Printemps
20040105	5	1	2004	Hiver
20140808	8	8	2014	Été
20000216	16	2	2000	Hiver
20200805	5	8	2020	Été
20240429	29	4	2024	Printemps
20161109	9	11	2016	Automne
20200614	14	6	2020	Été
20190722	22	7	2019	Été
20150528	28	5	2015	Printemps
20190608	8	6	2019	Été
20030823	23	8	2003	Été
20070430	30	4	2007	Printemps
20210518	18	5	2021	Printemps
20110720	20	7	2011	Été
20090412	12	4	2009	Printemps
20210104	4	1	2021	Hiver
20091128	28	11	2009	Automne
20100823	23	8	2010	Été
20050514	14	5	2005	Printemps
20160824	24	8	2016	Été
20130410	10	4	2013	Printemps
20000326	26	3	2000	Printemps
20101211	11	12	2010	Hiver
20080520	20	5	2008	Printemps
20010626	26	6	2001	Été
20160417	17	4	2016	Printemps
20230917	17	9	2023	Automne
20121223	23	12	2012	Hiver
20110525	25	5	2011	Printemps
20190421	21	4	2019	Printemps
20151217	17	12	2015	Hiver
20161026	26	10	2016	Automne
20221030	30	10	2022	Automne
20010321	21	3	2001	Printemps
20190404	4	4	2019	Printemps
20100829	29	8	2010	Été
20171230	30	12	2017	Hiver
20160823	23	8	2016	Été
20041129	29	11	2004	Automne
20020313	13	3	2002	Printemps
20040829	29	8	2004	Été
20040913	13	9	2004	Automne
20020218	18	2	2002	Hiver
20090211	11	2	2009	Hiver
20040709	9	7	2004	Été
20080901	1	9	2008	Automne
20150126	26	1	2015	Hiver
20180506	6	5	2018	Printemps
20030625	25	6	2003	Été
20011019	19	10	2001	Automne
20170602	2	6	2017	Été
20080701	1	7	2008	Été
20000725	25	7	2000	Été
20210703	3	7	2021	Été
20110705	5	7	2011	Été
20100908	8	9	2010	Automne
20010330	30	3	2001	Printemps
20191230	30	12	2019	Hiver
20010910	10	9	2001	Automne
20050218	18	2	2005	Hiver
20180108	8	1	2018	Hiver
20041024	24	10	2004	Automne
20180724	24	7	2018	Été
20210528	28	5	2021	Printemps
20240401	1	4	2024	Printemps
20190815	15	8	2019	Été
20110606	6	6	2011	Été
20070129	29	1	2007	Hiver
20190102	2	1	2019	Hiver
20101001	1	10	2010	Automne
20110625	25	6	2011	Été
20230715	15	7	2023	Été
20220810	10	8	2022	Été
19991020	20	10	1999	Automne
\.


--
-- Data for Name: dim_plateforme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_plateforme (plateforme_id, plateforme) FROM stdin;
1	Netflix
2	Crunchyroll
3	Prime Video
\.


--
-- Data for Name: dim_utilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_utilisateur (utilisateur_id, nom_utilisateur, age, sexe, pays) FROM stdin;
1	Nabil	56	F	France
2	Walid	33	F	Sénégal
3	Sarah	60	M	Sénégal
4	Lina	46	F	Sénégal
5	Amine	20	F	Égypte
6	Reda	64	F	Maroc
7	Walid	61	M	Italie
8	Anis	60	F	Maroc
9	Reda	51	M	Maroc
10	Nora	46	F	Algérie
11	Lina	41	M	Canada
12	Lina	26	M	Belgique
13	Karim	63	F	Belgique
14	Yasmine	28	F	Sénégal
15	Bilal	34	M	Égypte
16	Fatima	11	F	France
17	Leïla	31	M	Italie
18	Leïla	52	M	Maroc
19	Kenza	37	M	Italie
20	Amine	49	M	Italie
21	Nabil	16	M	Maroc
22	Rania	41	M	Tunisie
23	Bilal	60	M	Canada
24	Sofiane	45	M	France
25	Fatima	59	M	Belgique
26	Walid	15	M	France
27	Nora	21	M	France
28	Amine	15	M	Italie
29	Walid	27	F	Sénégal
30	Walid	51	F	Algérie
31	Leïla	28	F	Belgique
32	Yasmine	32	F	Algérie
33	Leïla	41	F	Italie
34	Karim	38	M	Sénégal
35	Rania	40	F	Belgique
36	Walid	14	F	Tunisie
37	Karim	27	F	Sénégal
38	Sarah	35	M	Sénégal
39	Anis	31	F	Tunisie
40	Karim	20	M	Côte d'Ivoire
41	Rania	19	M	France
42	Sarah	33	M	Tunisie
43	Rania	52	M	France
44	Rania	47	F	Canada
45	Sofiane	33	F	Belgique
46	Karim	29	F	Italie
47	Kenza	11	M	France
48	Walid	58	F	Tunisie
49	Leïla	39	M	Tunisie
50	Mehdi	61	F	Tunisie
51	Kenza	50	M	Maroc
52	Rania	16	F	France
53	Leïla	29	M	Sénégal
54	Rania	18	M	Tunisie
55	Lina	52	F	Algérie
56	Yasmine	12	F	Algérie
57	Aya	45	F	Égypte
58	Karim	41	F	Tunisie
59	Imen	24	F	Sénégal
60	Nabil	52	F	Maroc
61	Nabil	42	M	Italie
62	Fatima	53	M	Côte d'Ivoire
63	Zinedine	41	M	France
64	Nabil	27	M	Côte d'Ivoire
65	Nora	27	M	Tunisie
66	Kenza	49	M	Côte d'Ivoire
67	Sarah	36	M	Égypte
68	Nabil	44	F	Égypte
69	Mehdi	62	F	Italie
70	Nabil	43	F	Algérie
71	Aya	48	F	France
72	Lina	56	M	Côte d'Ivoire
73	Reda	63	M	Égypte
74	Walid	35	M	Tunisie
75	Aya	48	M	Tunisie
76	Mehdi	35	F	Égypte
77	Lina	63	F	Belgique
78	Reda	38	M	Belgique
79	Lina	21	F	Côte d'Ivoire
80	Bilal	32	M	Côte d'Ivoire
81	Anis	56	F	Canada
82	Rania	44	M	Tunisie
83	Lina	20	F	Égypte
84	Nora	14	F	Côte d'Ivoire
85	Nora	49	F	Algérie
86	Lina	27	M	Canada
87	Aya	25	F	Italie
88	Anis	21	M	Tunisie
89	Amine	60	F	Côte d'Ivoire
90	Zinedine	43	M	Égypte
91	Sofiane	62	F	Algérie
92	Anis	37	M	Maroc
93	Walid	59	F	Belgique
94	Zinedine	26	M	Sénégal
95	Lina	29	M	Canada
96	Kenza	26	M	France
97	Sarah	49	F	Algérie
98	Reda	59	F	Maroc
99	Rania	50	M	Canada
100	Bilal	59	M	France
101	Yasmine	28	F	Maroc
102	Omar	35	M	Tunisie
103	Aiko	22	F	Japon
\.


--
-- Data for Name: fait_visionnage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fait_visionnage (utilisateur_id, contenu_id, plateforme_id, date_id, duree_visonnage, note, visionnage_id) FROM stdin;
1	1	1	20210511	1.42	1.8	1
2	2	1	20100127	2.47	2.6	2
3	3	1	20190925	1.19	4.3	3
4	4	1	20200217	2.12	4.1	4
5	5	1	20020405	1.53	2.1	5
6	6	1	20190320	0.89	1.1	6
7	7	1	20101224	0.82	1.9	7
8	8	1	20030615	1.09	1.2	8
9	9	1	20010721	0.77	4.9	9
10	10	2	20191219	0.54	2.1	10
11	11	1	20080703	1.01	2.5	11
12	12	2	20240318	1.3	4.1	12
13	13	1	20231222	0.58	3.8	13
14	14	1	20071027	1.63	2	14
15	15	1	20220411	1.31	1.3	15
16	16	1	20180302	1.07	3.5	16
17	17	3	20041222	1.96	5	17
18	18	1	20180919	2.23	1	18
19	19	1	20190929	1.49	1.3	19
20	20	3	20000229	0.57	3.4	20
21	21	2	20110413	2.08	2.1	21
22	22	1	20040708	0.87	1.1	22
23	23	3	20110813	2.44	4.2	23
24	24	1	20001027	0.71	5	24
25	25	1	20150827	1.51	1.8	25
26	26	1	20080716	2.3	3.9	26
27	27	1	20120430	2.48	3.6	27
28	28	1	20030221	2.41	4.2	28
29	29	1	20030325	1.52	3.5	29
30	30	1	20040105	1.56	1.7	30
31	31	1	20140808	1.4	4.2	31
32	32	2	20000216	0.57	3.1	32
33	33	1	20200805	1.38	1.3	33
34	34	1	20240429	1.58	3.1	34
35	35	1	20161109	0.64	2.6	35
36	36	1	20200614	0.92	3.8	36
37	37	3	20190722	2.15	3.5	37
38	38	1	20150528	0.78	3.8	38
39	39	3	20190608	1.32	3.6	39
40	40	1	20030823	0.56	4.3	40
41	41	1	20070430	1.24	3	41
42	42	1	20210518	2.08	2.4	42
43	43	1	20110720	2.2	3.1	43
44	44	2	20090412	1.76	3.9	44
45	45	1	20210104	1.02	3.1	45
46	46	1	20091128	2.06	2.1	46
47	47	1	20100823	1.75	4.2	47
48	48	1	20050514	1.82	2.1	48
49	49	1	20160824	1.18	2.8	49
50	50	1	20130410	1.15	2.2	50
51	51	2	20000326	0.62	4.2	51
52	52	1	20101211	2.46	1.6	52
53	53	1	20080520	2.04	1.5	53
54	54	1	20010626	2.17	4.2	54
55	55	1	20160417	2.17	4.8	55
56	56	1	20230917	2.1	2.4	56
57	57	3	20121223	1.21	1.6	57
58	58	1	20110525	1.08	3.9	58
59	59	1	20190421	2.01	4.6	59
60	60	1	20151217	1.78	2.3	60
61	61	1	20161026	1.6	4.9	61
62	62	3	20221030	2.34	4.8	62
63	63	3	20010321	1.74	1.3	63
64	64	1	20190404	1.71	2.9	64
65	65	3	20100829	2.42	4.2	65
66	66	2	20171230	1.52	3	66
67	67	2	20160823	1.98	4.8	67
68	68	1	20041129	1.68	2	68
69	69	1	20020313	0.62	1.1	69
70	70	1	20040829	2.49	4.7	70
71	71	1	20040913	1.54	1.2	71
72	72	1	20020218	1.79	3.7	72
73	73	2	20090211	1.6	3.5	73
74	74	1	20040709	1.32	3.9	74
75	75	1	20080901	0.83	1.6	75
76	76	1	20150126	1.19	2.7	76
77	77	1	20180506	0.53	2.3	77
78	78	3	20030625	0.72	2.7	78
79	79	2	20011019	1.95	4.4	79
80	80	1	20170602	0.82	2.8	80
81	81	1	20080701	1.72	3.1	81
82	82	3	20000725	0.73	1.5	82
83	83	1	20210703	1.31	2	83
84	84	1	20110705	0.64	1.3	84
85	85	1	20100908	1.68	2.4	85
86	86	1	20010330	1.9	4.2	86
87	87	1	20191230	0.73	3.4	87
88	88	1	20010910	1.73	3.7	88
89	89	1	20050218	2.12	4.4	89
90	90	1	20180108	1.79	2.6	90
91	91	1	20041024	0.59	2.8	91
92	92	1	20180724	1.79	4.5	92
93	93	1	20210528	0.6	3.3	93
94	94	1	20240401	1.87	1.4	94
95	95	3	20190815	0.73	2.3	95
96	96	3	20110606	0.59	3.1	96
97	97	2	20070129	1.54	2.4	97
98	98	3	20190102	1.83	4.7	98
99	99	3	20101001	1.72	2	99
100	100	1	20110625	1.99	3.3	100
101	1001	1	20230715	3	4.5	111
102	1002	3	20220810	2.5	4	112
103	1003	2	19991020	3.5	4.8	113
\.


--
-- Name: dim_contenu dim_contenu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_contenu
    ADD CONSTRAINT dim_contenu_pkey PRIMARY KEY (contenu_id);


--
-- Name: dim_date dim_date_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_date
    ADD CONSTRAINT dim_date_pkey PRIMARY KEY (date_id);


--
-- Name: dim_plateforme dim_plateforme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_plateforme
    ADD CONSTRAINT dim_plateforme_pkey PRIMARY KEY (plateforme_id);


--
-- Name: dim_utilisateur dim_utilisateur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_utilisateur
    ADD CONSTRAINT dim_utilisateur_pkey PRIMARY KEY (utilisateur_id);


--
-- Name: fait_visionnage fait_visionnage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fait_visionnage
    ADD CONSTRAINT fait_visionnage_pkey PRIMARY KEY (utilisateur_id, contenu_id, plateforme_id, date_id, visionnage_id);


--
-- PostgreSQL database dump complete
--

