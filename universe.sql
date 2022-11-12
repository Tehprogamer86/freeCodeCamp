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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    size numeric,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    size numeric,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    size numeric,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    size numeric,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    description text NOT NULL,
    has_life boolean,
    name character varying(100)
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 10, 5, 'Is a crazy place', 1000, true, true);
INSERT INTO public.galaxy VALUES (2, 'Dark Galaxy', 11, 6, 'Is a dark place', 2000, false, false);
INSERT INTO public.galaxy VALUES (3, 'Blue Galaxy', 12, 7, 'Is a great place', 3000, true, true);
INSERT INTO public.galaxy VALUES (4, 'Red Galaxy', 13, 8, 'Is a hot place', 3000, true, true);
INSERT INTO public.galaxy VALUES (5, 'Purple Galaxy', 11, 6, 'Is a dark place', 2000, false, false);
INSERT INTO public.galaxy VALUES (6, 'Orange Galaxy', 12, 7, 'Is a great place', 3000, true, true);
INSERT INTO public.galaxy VALUES (7, 'Silver Galaxy', 13, 8, 'Is a hot place', 3000, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Purple Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.moon VALUES (2, 'Orange Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (3, 'Silver Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (4, 'Black Galaxy', 12, 7, 'Is a dark place', 4000, false, false, NULL);
INSERT INTO public.moon VALUES (5, 'Grey Galaxy', 13, 9, 'Is a dull place', 5000, true, true, NULL);
INSERT INTO public.moon VALUES (6, 'Pantone Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.moon VALUES (7, 'Green Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (8, 'Azure Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (9, 'Test1 Galaxy', 12, 7, 'Is a dark place', 4000, false, false, NULL);
INSERT INTO public.moon VALUES (10, 'Test2 Galaxy', 13, 9, 'Is a dull place', 5000, true, true, NULL);
INSERT INTO public.moon VALUES (11, 'Test3 Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.moon VALUES (12, 'Test4 Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (13, 'Test5 Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (14, 'Test6 Galaxy', 12, 7, 'Is a dark place', 4000, false, false, NULL);
INSERT INTO public.moon VALUES (15, 'Test7 Galaxy', 13, 9, 'Is a dull place', 5000, true, true, NULL);
INSERT INTO public.moon VALUES (16, 'Test8 Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.moon VALUES (17, 'Test9 Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (18, 'Test10 Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (19, 'Test11 Galaxy', 12, 7, 'Is a dark place', 4000, false, false, NULL);
INSERT INTO public.moon VALUES (20, 'Test12 Galaxy', 13, 9, 'Is a dull place', 5000, true, true, NULL);
INSERT INTO public.moon VALUES (21, 'Test13 Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.moon VALUES (22, 'Test14 Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (23, 'Test15 Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.moon VALUES (24, 'Test16 Galaxy', 12, 7, 'Is a dark place', 4000, false, false, NULL);
INSERT INTO public.moon VALUES (25, 'Test17 Galaxy', 13, 9, 'Is a dull place', 5000, true, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Purple Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.planet VALUES (2, 'Orange Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.planet VALUES (3, 'Silver Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.planet VALUES (4, 'Black Galaxy', 12, 7, 'Is a dark place', 4000, false, false, NULL);
INSERT INTO public.planet VALUES (5, 'Grey Galaxy', 13, 9, 'Is a dull place', 5000, true, true, NULL);
INSERT INTO public.planet VALUES (6, 'Yellow Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.planet VALUES (7, 'Blue Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.planet VALUES (8, 'Green Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.planet VALUES (9, 'White Galaxy', 12, 7, 'Is a dark place', 4000, false, false, NULL);
INSERT INTO public.planet VALUES (10, 'Red Galaxy', 13, 9, 'Is a dull place', 5000, true, true, NULL);
INSERT INTO public.planet VALUES (11, 'Pink Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.planet VALUES (12, 'Sapphire Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.planet VALUES (13, 'Vermilion Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.planet VALUES (14, 'Azure Galaxy', 12, 7, 'Is a dark place', 4000, false, false, NULL);
INSERT INTO public.planet VALUES (15, 'Pantone Galaxy', 13, 9, 'Is a dull place', 5000, true, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Purple Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.star VALUES (2, 'Orange Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.star VALUES (3, 'Silver Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);
INSERT INTO public.star VALUES (4, 'Black Galaxy', 11, 6, 'Is a dark place', 2000, false, false, NULL);
INSERT INTO public.star VALUES (5, 'Yellow Galaxy', 12, 7, 'Is a great place', 3000, true, true, NULL);
INSERT INTO public.star VALUES (6, 'Brown Galaxy', 13, 8, 'Is a hot place', 3000, true, true, NULL);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'Purple Galaxy', true, NULL);
INSERT INTO public.universe VALUES (3, 'Test2 Galaxy', true, 'Test2 Galaxy');
INSERT INTO public.universe VALUES (2, 'Test1 Galaxy', true, 'Test1 Galaxy');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: universe description_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT description_constraint UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name1_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name1_constraint UNIQUE (name);


--
-- Name: planet name2_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name2_constraint UNIQUE (name);


--
-- Name: moon name3_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name3_constraint UNIQUE (name);


--
-- Name: galaxy name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_constraint UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

