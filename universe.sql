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
    name character varying(20) NOT NULL,
    size numeric NOT NULL,
    type text,
    diameter_light_year numeric,
    has_polar_ring boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_2 (
    galaxy_2_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size numeric NOT NULL,
    type text,
    diameter_light_year numeric,
    has_polar_ring boolean
);


ALTER TABLE public.galaxy_2 OWNER TO freecodecamp;

--
-- Name: galaxy_2_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_2_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_2_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_2_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_2_galaxy_id_seq OWNED BY public.galaxy_2.galaxy_2_id;


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
    planet_id integer,
    name character varying(20) NOT NULL,
    diameter_in_km numeric NOT NULL,
    orbital_period_days numeric NOT NULL,
    noted_for text
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
    star_id integer,
    name character varying(20) NOT NULL,
    size numeric NOT NULL,
    is_terrestial boolean NOT NULL,
    distance_in_km integer
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
    galaxy_id integer,
    name character varying(20) NOT NULL,
    size numeric NOT NULL,
    age integer,
    spectral_type text
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_2 galaxy_2_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_2 ALTER COLUMN galaxy_2_id SET DEFAULT nextval('public.galaxy_2_galaxy_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'anyone', 234, 'astroidial', 23.5, true);
INSERT INTO public.galaxy VALUES (2, 'milky way', 10000, 'spiral', 5463, true);
INSERT INTO public.galaxy VALUES (3, 'Andromedia galaxy', 220000, 'spiral', 67263, false);
INSERT INTO public.galaxy VALUES (4, 'Messier', 12000, 'elliptical galaxy', 7839, true);
INSERT INTO public.galaxy VALUES (5, 'Magellanic cloud', 14000, 'irregular galaxy', 32637, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool galaxy', 60000, 'spiral', 23000000, true);
INSERT INTO public.galaxy VALUES (7, 'm94', 60000, 'lenticular galaxy', 6210, true);


--
-- Data for Name: galaxy_2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_2 VALUES (1, 'milky way', 63733, 'spiral', 73839, true);
INSERT INTO public.galaxy_2 VALUES (2, 'Messier', 637382, 'spiral', 67382, false);
INSERT INTO public.galaxy_2 VALUES (3, 'Andromeda', 73892, 'spiral', 5648, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 4, 'moon1', 63728, 562738, 'Great way');
INSERT INTO public.moon VALUES (2, 5, 'moon2', 78755, 6425263, 'Milky way');
INSERT INTO public.moon VALUES (3, 6, 'moon4', 74839, 53426, 'Sirusses');
INSERT INTO public.moon VALUES (4, 5, 'moon3', 7788, 63737, 'anything does');
INSERT INTO public.moon VALUES (5, 6, 'moon5', 6372, 67383, 'do not be null');
INSERT INTO public.moon VALUES (6, 7, 'moon6', 36374, 6378, 'hunt the bull');
INSERT INTO public.moon VALUES (7, 8, 'moon7', 73632, 89087, 'see through');
INSERT INTO public.moon VALUES (8, 8, 'moon9', 63738, 6728, 'compassion');
INSERT INTO public.moon VALUES (9, 7, 'moon10', 67728, 562789, 'Great way');
INSERT INTO public.moon VALUES (10, 6, 'moon11', 34755, 64263, 'Milky way');
INSERT INTO public.moon VALUES (11, 6, 'moon13', 74839, 53426, 'Sirusses');
INSERT INTO public.moon VALUES (12, 5, 'moon14', 7788, 63737, 'anything does');
INSERT INTO public.moon VALUES (13, 6, 'moon15', 6372, 67383, 'do not be null');
INSERT INTO public.moon VALUES (14, 7, 'moon16', 36374, 6378, 'hunt the bull');
INSERT INTO public.moon VALUES (15, 8, 'moon17', 73632, 89087, 'see through');
INSERT INTO public.moon VALUES (16, 8, 'moon19', 63738, 6728, 'compassion');
INSERT INTO public.moon VALUES (19, 7, 'moon22', 67728, 562789, 'Great way');
INSERT INTO public.moon VALUES (20, 6, 'moon25', 34755, 64263, 'Milky way');
INSERT INTO public.moon VALUES (21, 6, 'moon20', 74839, 53426, 'Sirusses');
INSERT INTO public.moon VALUES (22, 5, 'moon21', 7788, 63737, 'anything does');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 2, 'mercury', 546373, false, 903748485);
INSERT INTO public.planet VALUES (2, 1, 'venus', 456373, false, 903748485);
INSERT INTO public.planet VALUES (3, 3, 'earth', 756373, true, 123748485);
INSERT INTO public.planet VALUES (4, 2, 'mars', 674938, false, 343634);
INSERT INTO public.planet VALUES (5, 3, 'jupiter', 756373, false, 123748485);
INSERT INTO public.planet VALUES (6, 2, 'mars2', 674938, true, 343634);
INSERT INTO public.planet VALUES (7, 2, 'neptune', 56373, false, 748485);
INSERT INTO public.planet VALUES (8, 3, 'saturn', 754938, false, 563634);
INSERT INTO public.planet VALUES (9, 1, 'neptune2', 56373, false, 748485);
INSERT INTO public.planet VALUES (10, 3, 'saturn2', 754938, false, 563634);
INSERT INTO public.planet VALUES (11, 3, 'pluto', 5637367, false, 74848);
INSERT INTO public.planet VALUES (12, 3, 'saturn3', 754938, false, 563634);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2, 'sun', 1, 5, 'G2V');
INSERT INTO public.star VALUES (2, 1, 'Sirius', 2.02, 9, 'A1V');
INSERT INTO public.star VALUES (3, 2, 'Betelgeuse', 10, 642, 'M1-21');
INSERT INTO public.star VALUES (4, 2, 'Vega', 4, 675, 'm1-21a');
INSERT INTO public.star VALUES (5, 2, 'Polaris', 456, 6490, 'f71b');
INSERT INTO public.star VALUES (6, 2, 'crazy', 1, 5, 'G2V');


--
-- Name: galaxy_2_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_2_galaxy_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy_2 galaxy_2_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_2
    ADD CONSTRAINT galaxy_2_name_key UNIQUE (name);


--
-- Name: galaxy_2 galaxy_2_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_2
    ADD CONSTRAINT galaxy_2_pkey PRIMARY KEY (galaxy_2_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

