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
    username_id integer NOT NULL,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL,
    username_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_username_id_seq OWNER TO freecodecamp;

--
-- Name: users_username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_username_id_seq OWNED BY public.users.username_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users username_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN username_id SET DEFAULT nextval('public.users_username_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 4, 2);
INSERT INTO public.games VALUES (4, 5, 338);
INSERT INTO public.games VALUES (5, 5, 282);
INSERT INTO public.games VALUES (6, 6, 237);
INSERT INTO public.games VALUES (7, 6, 552);
INSERT INTO public.games VALUES (8, 5, 781);
INSERT INTO public.games VALUES (9, 5, 9);
INSERT INTO public.games VALUES (10, 5, 369);
INSERT INTO public.games VALUES (11, 7, 983);
INSERT INTO public.games VALUES (12, 7, 867);
INSERT INTO public.games VALUES (13, 8, 291);
INSERT INTO public.games VALUES (14, 8, 646);
INSERT INTO public.games VALUES (15, 7, 397);
INSERT INTO public.games VALUES (16, 7, 816);
INSERT INTO public.games VALUES (17, 7, 406);
INSERT INTO public.games VALUES (18, 9, 355);
INSERT INTO public.games VALUES (19, 9, 670);
INSERT INTO public.games VALUES (20, 10, 976);
INSERT INTO public.games VALUES (21, 10, 877);
INSERT INTO public.games VALUES (22, 9, 484);
INSERT INTO public.games VALUES (23, 9, 316);
INSERT INTO public.games VALUES (24, 9, 963);
INSERT INTO public.games VALUES (25, 11, 492);
INSERT INTO public.games VALUES (26, 11, 673);
INSERT INTO public.games VALUES (27, 12, 878);
INSERT INTO public.games VALUES (28, 12, 883);
INSERT INTO public.games VALUES (29, 11, 317);
INSERT INTO public.games VALUES (30, 11, 791);
INSERT INTO public.games VALUES (31, 11, 301);
INSERT INTO public.games VALUES (32, 13, 754);
INSERT INTO public.games VALUES (33, 13, 9);
INSERT INTO public.games VALUES (34, 14, 579);
INSERT INTO public.games VALUES (35, 14, 856);
INSERT INTO public.games VALUES (36, 13, 680);
INSERT INTO public.games VALUES (37, 13, 634);
INSERT INTO public.games VALUES (38, 13, 685);
INSERT INTO public.games VALUES (39, 15, 99);
INSERT INTO public.games VALUES (40, 15, 747);
INSERT INTO public.games VALUES (41, 16, 168);
INSERT INTO public.games VALUES (42, 16, 896);
INSERT INTO public.games VALUES (43, 15, 715);
INSERT INTO public.games VALUES (44, 15, 315);
INSERT INTO public.games VALUES (45, 15, 746);
INSERT INTO public.games VALUES (46, 17, 145);
INSERT INTO public.games VALUES (47, 17, 228);
INSERT INTO public.games VALUES (48, 18, 689);
INSERT INTO public.games VALUES (49, 18, 779);
INSERT INTO public.games VALUES (50, 17, 986);
INSERT INTO public.games VALUES (51, 17, 90);
INSERT INTO public.games VALUES (52, 17, 224);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Joan', 1);
INSERT INTO public.users VALUES ('Roberto', 3);
INSERT INTO public.users VALUES ('Julian', 4);
INSERT INTO public.users VALUES ('user_1673975888800', 5);
INSERT INTO public.users VALUES ('user_1673975888799', 6);
INSERT INTO public.users VALUES ('user_1673975913914', 7);
INSERT INTO public.users VALUES ('user_1673975913913', 8);
INSERT INTO public.users VALUES ('user_1673976168742', 9);
INSERT INTO public.users VALUES ('user_1673976168741', 10);
INSERT INTO public.users VALUES ('user_1673976198932', 11);
INSERT INTO public.users VALUES ('user_1673976198931', 12);
INSERT INTO public.users VALUES ('user_1673976247662', 13);
INSERT INTO public.users VALUES ('user_1673976247660', 14);
INSERT INTO public.users VALUES ('user_1673976260455', 15);
INSERT INTO public.users VALUES ('user_1673976260454', 16);
INSERT INTO public.users VALUES ('user_1673976382506', 17);
INSERT INTO public.users VALUES ('user_1673976382505', 18);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: users_username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_username_id_seq', 18, true);


--
-- Name: users users_username_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_id_key UNIQUE (username_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_username_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_id_fkey FOREIGN KEY (username_id) REFERENCES public.users(username_id);


--
-- PostgreSQL database dump complete
--

