--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(50) NOT NULL,
    number_of_stars integer NOT NULL
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellations_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellations_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(50) NOT NULL,
    discovered_by character varying(50)
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
    has_water boolean DEFAULT false NOT NULL,
    planet_id integer NOT NULL,
    description text
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
    has_life boolean DEFAULT false NOT NULL,
    position_in_solar_system numeric,
    galaxy_id integer,
    description text NOT NULL,
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
    radius integer NOT NULL,
    color character varying(255) NOT NULL,
    name character varying(50) NOT NULL,
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
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellations_id_seq'::regclass);


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

INSERT INTO public.constellations VALUES (1, 'Orion', 7);
INSERT INTO public.constellations VALUES (2, 'Andromeda', 6);
INSERT INTO public.constellations VALUES (3, 'Ursa Major', 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 200000, 'A spiral galaxy with a well-defined structure.', 'Andromeda', 'Edwin Hubble');
INSERT INTO public.galaxy VALUES (2, 240000, 'A barred spiral galaxy with a dense core.', 'Milky Way', 'Ancient Astronomers');
INSERT INTO public.galaxy VALUES (3, 300000, 'An elliptical galaxy with a large stellar population.', 'Sombrero', 'Pierre Méchain');
INSERT INTO public.galaxy VALUES (4, 180000, 'A lenticular galaxy with unique light emission.', 'Whirlpool', 'Charles Messier');
INSERT INTO public.galaxy VALUES (5, 260000, 'An irregular galaxy with high star formation activity.', 'Large Magellanic Cloud', 'Ferdinand Magellan');
INSERT INTO public.galaxy VALUES (6, 220000, 'A peculiar galaxy with tidal streams.', 'Antennae', 'William Herschel');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 3, 'The only natural satellite of Earth.');
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, 'One of the two moons of Mars, irregular in shape.');
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, 'The smaller and outermost moon of Mars.');
INSERT INTO public.moon VALUES (4, 'Europa', true, 5, 'A moon of Jupiter, covered with a thick ice crust.');
INSERT INTO public.moon VALUES (5, 'Io', false, 5, 'A volcanically active moon of Jupiter.');
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 5, 'The largest moon in the Solar System.');
INSERT INTO public.moon VALUES (7, 'Callisto', true, 5, 'A heavily cratered moon of Jupiter.');
INSERT INTO public.moon VALUES (8, 'Titan', true, 6, 'The largest moon of Saturn with a dense atmosphere.');
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 6, 'A moon of Saturn with geysers of water ice.');
INSERT INTO public.moon VALUES (10, 'Mimas', false, 6, 'A moon of Saturn, known for its large crater.');
INSERT INTO public.moon VALUES (11, 'Triton', true, 8, 'The largest moon of Neptune, with geysers of liquid nitrogen.');
INSERT INTO public.moon VALUES (12, 'Oberon', false, 7, 'The outermost major moon of Uranus.');
INSERT INTO public.moon VALUES (13, 'Titania', false, 7, 'The largest moon of Uranus.');
INSERT INTO public.moon VALUES (14, 'Umbriel', false, 7, 'A dark moon of Uranus with ancient craters.');
INSERT INTO public.moon VALUES (15, 'Miranda', false, 7, 'A moon of Uranus with a patchwork surface.');
INSERT INTO public.moon VALUES (16, 'Charon', false, 9, 'The largest moon of Pluto, almost a twin planet.');
INSERT INTO public.moon VALUES (17, 'Nix', false, 9, 'A small moon of Pluto with a reflective surface.');
INSERT INTO public.moon VALUES (18, 'Hydra', false, 9, 'Another small moon of Pluto, discovered in 2005.');
INSERT INTO public.moon VALUES (19, 'Dysnomia', false, 10, 'The moon of the dwarf planet Eris.');
INSERT INTO public.moon VALUES (20, 'Kepler Moon-1', false, 10, 'A moon orbiting the exoplanet Kepler-22b.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 1, 2, 'The smallest planet in the Solar System, closest to the Sun.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 2, 2, 'A terrestrial planet with a thick, toxic atmosphere.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 3, 2, 'The only known planet with life.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 4, 2, 'Known as the Red Planet due to its reddish appearance.', 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', true, 1, 1, 'An exoplanet in the Proxima Centauri system, potentially habitable.', 2);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', false, 1, 1, 'A potential Earth-like exoplanet orbiting Gliese 581.', 2);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', false, 1, 3, 'An exoplanet located in the habitable zone of its star.', 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', true, 2, 3, 'A rocky exoplanet in the TRAPPIST-1 system.', 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 5, 2, 'The largest planet in the Solar System.', 4);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 6, 2, 'Famous for its stunning ring system.', 4);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 7, 2, 'An ice giant with a bluish-green color.', 5);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 8, 2, 'The farthest planet from the Sun in the Solar System.', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 695700, 'Yellow', 'Sun', 2);
INSERT INTO public.star VALUES (2, 1200000, 'Blue', 'Sirius', 2);
INSERT INTO public.star VALUES (3, 950000, 'Red', 'Betelgeuse', 1);
INSERT INTO public.star VALUES (4, 1100000, 'White', 'Rigel', 1);
INSERT INTO public.star VALUES (5, 450000, 'Orange', 'Proxima Centauri', 2);
INSERT INTO public.star VALUES (6, 850000, 'Yellow-White', 'Vega', 3);


--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellations_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy galaxy_discovered_by_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_discovered_by_key UNIQUE (discovered_by);


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
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

