--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer NOT NULL,
    best_game integer NOT NULL
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '', 1, 142);
INSERT INTO public.users VALUES (2, '', 1, 520);
INSERT INTO public.users VALUES (3, '', 1, 358);
INSERT INTO public.users VALUES (4, '', 1, 990);
INSERT INTO public.users VALUES (5, '', 1, 636);
INSERT INTO public.users VALUES (6, '', 1, 692);
INSERT INTO public.users VALUES (7, '', 1, 345);
INSERT INTO public.users VALUES (8, '', 1, 954);
INSERT INTO public.users VALUES (9, '', 1, 836);
INSERT INTO public.users VALUES (10, '', 1, 375);
INSERT INTO public.users VALUES (11, '', 1, 442);
INSERT INTO public.users VALUES (12, '', 1, 148);
INSERT INTO public.users VALUES (13, '', 1, 221);
INSERT INTO public.users VALUES (14, '', 1, 959);
INSERT INTO public.users VALUES (15, '', 1, 11);
INSERT INTO public.users VALUES (16, '', 1, 625);
INSERT INTO public.users VALUES (17, '', 1, 668);
INSERT INTO public.users VALUES (18, '', 1, 875);
INSERT INTO public.users VALUES (19, '', 1, 528);
INSERT INTO public.users VALUES (20, '', 1, 500);
INSERT INTO public.users VALUES (21, '', 1, 583);
INSERT INTO public.users VALUES (22, '', 1, 915);
INSERT INTO public.users VALUES (23, '', 1, 910);
INSERT INTO public.users VALUES (24, '', 1, 737);
INSERT INTO public.users VALUES (25, '', 1, 396);
INSERT INTO public.users VALUES (26, '', 1, 374);
INSERT INTO public.users VALUES (27, '', 1, 123);
INSERT INTO public.users VALUES (28, '', 1, 769);
INSERT INTO public.users VALUES (29, '', 1, 294);
INSERT INTO public.users VALUES (30, '', 1, 811);
INSERT INTO public.users VALUES (31, '', 1, 667);
INSERT INTO public.users VALUES (32, '', 1, 84);
INSERT INTO public.users VALUES (33, '', 1, 316);
INSERT INTO public.users VALUES (34, '', 1, 590);
INSERT INTO public.users VALUES (35, '', 1, 333);
INSERT INTO public.users VALUES (36, '', 1, 849);
INSERT INTO public.users VALUES (38, 'user_1795083417769', 1, 187);
INSERT INTO public.users VALUES (37, 'user_1795083417770', 1, 82);
INSERT INTO public.users VALUES (40, 'user_1795083463215', 1, 99);
INSERT INTO public.users VALUES (39, 'user_1795083463216', 1, 119);
INSERT INTO public.users VALUES (42, 'user_1795083516788', 1, 51);
INSERT INTO public.users VALUES (41, 'user_1795083516789', 1, 39);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 42, true);


--
-- PostgreSQL database dump complete
--

