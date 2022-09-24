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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(60),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_costellations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_costellations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_costellations_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_costellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_costellations_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    galaxy_types character varying(60),
    description text,
    size_in_million_lightyears numeric(10,3) NOT NULL
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
    name character varying(60),
    planet_id integer NOT NULL,
    discoverer character varying(60),
    discovery_year integer
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
    name character varying(60),
    star_id integer NOT NULL,
    age_in_billion_years numeric(5,3),
    has_life boolean,
    has_rings boolean,
    planet_types character varying(60),
    number_of_moons integer
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
    name character varying(60),
    galaxy_id integer NOT NULL,
    age_in_million_years integer,
    distance_from_earth_lightyears numeric(20,8)
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
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_costellations_id_seq'::regclass);


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
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 'Sagittarius', 1);
INSERT INTO public.constellations VALUES (2, 'Andromeda', 2);
INSERT INTO public.constellations VALUES (4, 'Corvus', 4);
INSERT INTO public.constellations VALUES (3, 'Cygnus', 3);
INSERT INTO public.constellations VALUES (5, 'Centaurus', 5);
INSERT INTO public.constellations VALUES (6, 'Canis Major', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MilkyWay', 'spiral', 'luminous band of stars', 0.100);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 'nearest large galaxy', 0.200);
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', 'irregular', 'contains few billion stars', 0.025);
INSERT INTO public.galaxy VALUES (4, 'Antennae', 'irregular', 'looks like insects antennae', 45.000);
INSERT INTO public.galaxy VALUES (5, 'Backward', 'spiral', 'appears to rotate backwards', 0.123);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 'elliptical', 'looks like double galaxy', 760.000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Metis', 5, 'Synnott', 1979);
INSERT INTO public.moon VALUES (2, 'Adrastea', 5, 'Jewitt', 1979);
INSERT INTO public.moon VALUES (3, 'Amalthea', 5, 'Barnard', 1892);
INSERT INTO public.moon VALUES (4, 'Thebe', 5, 'Synnott', 1979);
INSERT INTO public.moon VALUES (5, 'lo', 5, 'Galileo', 1610);
INSERT INTO public.moon VALUES (6, 'Europa', 5, 'Galileo', 1610);
INSERT INTO public.moon VALUES (7, 'Ganymede', 5, 'Galileo', 1610);
INSERT INTO public.moon VALUES (8, 'Callisto', 5, 'Galileo', 1610);
INSERT INTO public.moon VALUES (9, 'Themisto', 5, 'Kowal', 1975);
INSERT INTO public.moon VALUES (10, 'Leda', 5, 'Kowal', 1974);
INSERT INTO public.moon VALUES (11, 'Ersa', 5, 'Shepard', 2018);
INSERT INTO public.moon VALUES (12, 'Himalia', 5, 'Perrine', 1904);
INSERT INTO public.moon VALUES (14, 'Lysithea', 5, 'Nicholson', 1938);
INSERT INTO public.moon VALUES (15, 'Elara', 5, 'Perrine', 1905);
INSERT INTO public.moon VALUES (16, 'Dia', 5, 'Sheppard', 2000);
INSERT INTO public.moon VALUES (17, 'Carpo', 5, 'Sheppard', 2003);
INSERT INTO public.moon VALUES (18, 'Valetudo', 5, 'Sheppard', 2016);
INSERT INTO public.moon VALUES (19, 'Euporie', 5, 'Sheppard', 2001);
INSERT INTO public.moon VALUES (20, 'Eupheme', 5, 'Sheppard', 2003);
INSERT INTO public.moon VALUES (13, 'Pandia', 5, 'Sheppard', 2017);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4.503, false, false, 'Terrestrial', 0);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4.503, false, false, 'Terrestrial', 0);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 4.543, true, false, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 4.603, false, false, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 4.603, false, true, 'Gas Giant', 79);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 4.503, false, false, 'Gas Giant', 82);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 4.503, false, true, 'Ice Giant', 27);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 4.503, false, true, 'Ice Giant', 14);
INSERT INTO public.planet VALUES (13, 'Ceres', 1, 4.573, false, false, 'Dwarf Planet', 0);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 4.603, false, false, 'Dwarf Planet', 5);
INSERT INTO public.planet VALUES (10, 'Eris', 1, 4.503, false, false, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 1, 4.503, false, false, 'Dwarf Planet', 2);
INSERT INTO public.planet VALUES (12, 'Makemake', 1, 4.503, false, false, 'Dwarf Planet', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4603, 0.00001581);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 230, 8.61100000);
INSERT INTO public.star VALUES (3, 'Canopus', 1, 25, 309.80000000);
INSERT INTO public.star VALUES (4, 'Vega', 1, 455, 25.05000000);
INSERT INTO public.star VALUES (5, 'Capella', 1, 620, 42.92000000);
INSERT INTO public.star VALUES (6, 'Rigel', 1, 8, 864.30000000);


--
-- Name: constellations_costellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_costellations_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: constellations constellations_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

