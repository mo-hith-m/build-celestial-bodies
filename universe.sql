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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types text,
    galaxy_types text,
    no_of_sun integer,
    distance_from_earth numeric
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types text,
    galaxy_types text,
    no_of_sun integer,
    distance_from_earth numeric
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types text,
    galaxy_types text,
    no_of_sun integer,
    distance_from_earth numeric
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types text,
    galaxy_types text,
    no_of_sun integer,
    distance_from_earth numeric
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric(6,2)
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1361000, true, true, NULL, NULL, 8, 26000.00);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 1363000, true, true, NULL, NULL, 7, 26100.02);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 1360000, true, true, NULL, NULL, 6, 26200.04);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 1359000, false, false, NULL, NULL, 5, 26300.05);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 1358000, true, false, NULL, NULL, 4, 26300.96);
INSERT INTO public.galaxy VALUES (6, 'gala6', 1200000, false, true, NULL, NULL, 3, 90900.09);
INSERT INTO public.galaxy VALUES (7, 'ga2', 1300000, true, false, NULL, NULL, 2, 88800.98);
INSERT INTO public.galaxy VALUES (8, 'yxalag9', 1000000, false, false, NULL, NULL, 0, 87473.09);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (2, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (3, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (4, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (5, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (6, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (7, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (8, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (9, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (10, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (11, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (12, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (13, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (14, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (15, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (16, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (17, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (18, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (19, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (20, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (21, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (22, 'moona', 1, false, true, NULL, NULL, 1, 10000);
INSERT INTO public.moon VALUES (23, 'moona', 1, false, true, NULL, NULL, 1, 10000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (2, 'venus', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (3, 'earth', 1, true, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (4, 'mars', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (6, 'saturn', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (9, 'mordor', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (10, 'vormir', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (11, '8webber', 1, false, true, NULL, 'milky way galaxy', 1, 1);
INSERT INTO public.planet VALUES (12, 'pluto', 1, false, true, NULL, 'milky way galaxy', 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, false, false, NULL, NULL, 1, 10);
INSERT INTO public.star VALUES (2, 'star1', 1, false, false, NULL, NULL, 1, 10);
INSERT INTO public.star VALUES (3, 'star1', 1, false, false, NULL, NULL, 1, 10);
INSERT INTO public.star VALUES (4, 'star1', 1, false, false, NULL, NULL, 1, 10);
INSERT INTO public.star VALUES (5, 'star1', 1, false, false, NULL, NULL, 1, 10);
INSERT INTO public.star VALUES (6, 'star1', 1, false, false, NULL, NULL, 1, 10);
INSERT INTO public.star VALUES (7, 'star1', 1, false, false, NULL, NULL, 1, 10);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sun A', 4600, true, NULL, NULL, 147.14);
INSERT INTO public.sun VALUES (2, 'Sun B', 4550, true, NULL, NULL, 146.86);
INSERT INTO public.sun VALUES (3, 'Sun C', 4630, true, NULL, NULL, 148.00);
INSERT INTO public.sun VALUES (4, 'Sun C', 4650, true, NULL, NULL, 147.88);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 4, true);


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
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: sun unique_sun_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT unique_sun_id UNIQUE (sun_id);


--
-- Name: galaxy galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: sun sun_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_id_fkey FOREIGN KEY (sun_id) REFERENCES public.sun(sun_id);


--
-- PostgreSQL database dump complete
--

