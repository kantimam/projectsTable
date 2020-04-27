--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id smallint NOT NULL,
    name character varying(64) NOT NULL,
    prio smallint
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    homepage character varying(64),
    repository character varying(64),
    priority smallint,
    images character varying(64)[],
    "packageLink" character varying(128),
    technologies character varying[]
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects_technologies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects_technologies (
    projects_id integer NOT NULL,
    technologies_id integer NOT NULL
);


ALTER TABLE public.projects_technologies OWNER TO postgres;

--
-- Name: technologies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.technologies (
    id integer NOT NULL,
    name character varying(16) NOT NULL,
    icon_path character varying(64) NOT NULL
);


ALTER TABLE public.technologies OWNER TO postgres;

--
-- Name: technology_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.technology_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technology_id_seq OWNER TO postgres;

--
-- Name: technology_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.technology_id_seq OWNED BY public.technologies.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    name character varying NOT NULL,
    password character varying NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: technologies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technologies ALTER COLUMN id SET DEFAULT nextval('public.technology_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, name, prio) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, name, description, homepage, repository, priority, images, "packageLink", technologies) FROM stdin;
6	Laravel Image Board	Basic image board using only laravel since writting react all day gets old. Create interesting and funny posts and interact with others. Please dont summon the third reich again or spamm it with dead animals.	https://github.com/kantimam/laravel-meme-board	https://github.com/kantimam/laravel-meme-board	9	{image_1.png,image_2.png,image_3.png,image_4.png}	\N	{JS,PHP,Laravel}
7	Actix Server	Back-End that hosts this portfolio. Written in Rust using Actix as main library.\r\nFull CRUD functionality and authentication.	https://www.kantimam.com/	https://github.com/kantimam/rust-actix-server	8	{port_1.png,port_2.png,port_3.png}	\N	{Rust,Actix}
8	React WebGL Metaballs	Bouncing Metaballs that you can use to make your react apps even more annoying. Not using any libraries only basic WebGL.	https://kantimam.github.io/webgl-metaballs-publish/	https://github.com/kantimam/webgl-metaballs-publish	7	{meta_1.png,meta_2.png,meta_3.png}	https://www.npmjs.com/package/react-webgl-metaballs	{JS,TS,React,WebGL}
4	Youtube Coon	Progressive web app that lets you search and download youtube videos. You can share your video straight from the mobile youtube app and convert it to mp3.	https://baizuo.online/	https://github.com/kantimam/nodeYoutubeDownload	9	{yt_1.png,yt_2.png,yt_3.png}	\N	{JS,Node,React,"Web Scraping"}
5	Monkey Benchmark	Collection of memory and reaction time games. Play and compare your score to others. Looking to expand it with more complex games.	https://baizuo.online/	https://github.com/kantimam/monkey-benchmark	9	{monkey_1.png,monkey_2.png,monkey_3.png}	\N	{JS,Node,MongoDB,React}
9	React Autosuggest	React package that generates and displays a suggestion list for your searches. Handles mouse and keyboard events nicely	https://kantimam.github.io/react-autosuggest-input/	https://github.com/kantimam/react-autosuggest-input	6	{auto_1.jpg}	https://www.npmjs.com/package/@kantimam/react-autosuggest	{JS,TS,React}
10	CoronaAid	React app that lets you search movies. Was a coding challenge for a company but i decided to extend it with my own autocomplete searchbar and dark mode toggle.	https://gracious-blackwell-26070b.netlify.app/	https://github.com/kantimam/react-movie-search	5	{movie_1.png,movie_2.png,movie_3.png,movie_4.png}	\N	{JS,React,API}
11	React A*	A* search visualization using React for rendering and setup.	https://kantimam.github.io/react-a-star-search/	https://github.com/kantimam/react-a-star-search	4	{A_star_1.png,A_star_2.png}	\N	{JS,TS,React}
12	React Switch	React package that lets you toggle a value. Got annoyed by all switch components beeing somewhat of a DIVsoup so created my own :)	https://kantimam.github.io/react-dark-mode-switches/	https://github.com/kantimam/react-dark-mode-switches	3	{switch_1.png}	https://www.npmjs.com/package/react-dark-mode-switch	{JS,TS,React}
13	Three.js Maze	Djikstra's Pathfinder generating a 3d maze.	https://kantimam.github.io/ThreeJsMaze/	https://github.com/kantimam/ThreeJsMaze	2	{maze_1.png}	\N	{JS,Three.js}
14	Three.js Rubik's Cube	Playable Rubik's Cube using Three.js	https://competent-minsky-42775c.netlify.app/	https://github.com/kantimam/Threejs_Rubix_Cube	2	{rubix_1.png}	\N	{JS,Three.js}
\.


--
-- Data for Name: projects_technologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects_technologies (projects_id, technologies_id) FROM stdin;
\.


--
-- Data for Name: technologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.technologies (id, name, icon_path) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (name, password, id) FROM stdin;
kantemir	test	1
\.


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 12, true);


--
-- Name: technology_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.technology_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: images id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: technologies technology_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT technology_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: projects_technologies projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT projects_id FOREIGN KEY (projects_id) REFERENCES public.projects(id) NOT VALID;


--
-- Name: projects_technologies technologies_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_technologies
    ADD CONSTRAINT technologies_id FOREIGN KEY (technologies_id) REFERENCES public.technologies(id) NOT VALID;


--
-- Name: TABLE images; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.images TO kantemir;


--
-- Name: SEQUENCE images_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.images_id_seq TO kantemir;


--
-- Name: TABLE projects; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.projects TO kantemir;


--
-- Name: SEQUENCE projects_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.projects_id_seq TO kantemir;


--
-- Name: TABLE projects_technologies; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.projects_technologies TO kantemir;


--
-- Name: TABLE technologies; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.technologies TO kantemir;


--
-- Name: SEQUENCE technology_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.technology_id_seq TO kantemir;


--
-- Name: TABLE users; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.users TO kantemir;


--
-- Name: SEQUENCE users_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.users_id_seq TO kantemir;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES  TO kantemir;


--
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES  TO kantemir WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS  TO kantemir WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO kantemir;


--
-- PostgreSQL database dump complete
--

