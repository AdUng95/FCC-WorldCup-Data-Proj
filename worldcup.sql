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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(55) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(55) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (23, 2018, 'Final', 363, 364, 4, 2);
INSERT INTO public.games VALUES (24, 2018, 'Third Place', 365, 366, 2, 0);
INSERT INTO public.games VALUES (25, 2018, 'Semi-Final', 364, 366, 2, 1);
INSERT INTO public.games VALUES (26, 2018, 'Semi-Final', 363, 365, 1, 0);
INSERT INTO public.games VALUES (27, 2018, 'Quarter-Final', 364, 367, 3, 2);
INSERT INTO public.games VALUES (28, 2018, 'Quarter-Final', 366, 368, 2, 0);
INSERT INTO public.games VALUES (29, 2018, 'Quarter-Final', 365, 369, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Quarter-Final', 363, 370, 2, 0);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 366, 371, 2, 1);
INSERT INTO public.games VALUES (32, 2018, 'Eighth-Final', 368, 372, 1, 0);
INSERT INTO public.games VALUES (33, 2018, 'Eighth-Final', 365, 373, 3, 2);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 369, 374, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 364, 375, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 367, 376, 2, 1);
INSERT INTO public.games VALUES (37, 2018, 'Eighth-Final', 370, 377, 2, 1);
INSERT INTO public.games VALUES (38, 2018, 'Eighth-Final', 363, 378, 4, 3);
INSERT INTO public.games VALUES (39, 2014, 'Final', 379, 378, 1, 0);
INSERT INTO public.games VALUES (40, 2014, 'Third Place', 380, 369, 3, 0);
INSERT INTO public.games VALUES (41, 2014, 'Semi-Final', 378, 380, 1, 0);
INSERT INTO public.games VALUES (42, 2014, 'Semi-Final', 379, 369, 7, 1);
INSERT INTO public.games VALUES (43, 2014, 'Quarter-Final', 380, 381, 1, 0);
INSERT INTO public.games VALUES (44, 2014, 'Quarter-Final', 378, 365, 1, 0);
INSERT INTO public.games VALUES (45, 2014, 'Quarter-Final', 369, 371, 2, 1);
INSERT INTO public.games VALUES (46, 2014, 'Quarter-Final', 379, 363, 1, 0);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 369, 382, 2, 1);
INSERT INTO public.games VALUES (48, 2014, 'Eighth-Final', 371, 370, 2, 0);
INSERT INTO public.games VALUES (49, 2014, 'Eighth-Final', 363, 383, 2, 0);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 379, 384, 2, 1);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 380, 374, 2, 1);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 381, 385, 2, 1);
INSERT INTO public.games VALUES (53, 2014, 'Eighth-Final', 378, 372, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Eighth-Final', 365, 386, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (363, 'France');
INSERT INTO public.teams VALUES (364, 'Croatia');
INSERT INTO public.teams VALUES (365, 'Belgium');
INSERT INTO public.teams VALUES (366, 'England');
INSERT INTO public.teams VALUES (367, 'Russia');
INSERT INTO public.teams VALUES (368, 'Sweden');
INSERT INTO public.teams VALUES (369, 'Brazil');
INSERT INTO public.teams VALUES (370, 'Uruguay');
INSERT INTO public.teams VALUES (371, 'Colombia');
INSERT INTO public.teams VALUES (372, 'Switzerland');
INSERT INTO public.teams VALUES (373, 'Japan');
INSERT INTO public.teams VALUES (374, 'Mexico');
INSERT INTO public.teams VALUES (375, 'Denmark');
INSERT INTO public.teams VALUES (376, 'Spain');
INSERT INTO public.teams VALUES (377, 'Portugal');
INSERT INTO public.teams VALUES (378, 'Argentina');
INSERT INTO public.teams VALUES (379, 'Germany');
INSERT INTO public.teams VALUES (380, 'Netherlands');
INSERT INTO public.teams VALUES (381, 'Costa Rica');
INSERT INTO public.teams VALUES (382, 'Chile');
INSERT INTO public.teams VALUES (383, 'Nigeria');
INSERT INTO public.teams VALUES (384, 'Algeria');
INSERT INTO public.teams VALUES (385, 'Greece');
INSERT INTO public.teams VALUES (386, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 54, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 386, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

