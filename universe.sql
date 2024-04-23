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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(60) NOT NULL,
    no_of_countries integer,
    population_in_billions double precision,
    planet_id integer
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    distance_from_earth_in_mly numeric,
    no_of_stars character varying(60)
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
    name character varying(60) NOT NULL,
    description text,
    has_water boolean,
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
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
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
    name character varying(60) NOT NULL,
    description text,
    no_of_planets integer,
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Asia', 48, 4.75, 3);
INSERT INTO public.continent VALUES (2, 'Africa', 54, 1.39, 3);
INSERT INTO public.continent VALUES (3, 'Australia', 3, 0.26, 3);
INSERT INTO public.continent VALUES (4, 'Antartica', NULL, NULL, 3);
INSERT INTO public.continent VALUES (5, 'Europe', 44, 0.741, 3);
INSERT INTO public.continent VALUES (6, 'North America', 23, 0.38, 3);
INSERT INTO public.continent VALUES (7, 'South America', 12, 0.434, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda, which is shorted from "Andromeda Galaxy", gets its name from the area of sky in which it appears, the constellation of Andromeda.', 2.5, '1 Trillion');
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'It has a spectacular dark band of absorbing dust in front of the galaxy''s bright nucleus.', 17.3, '100 Billion');
INSERT INTO public.galaxy VALUES (3, 'Cartwheel Galaxy', 'Its visual appearance is similar to that of a spoked cartwheel', 500, '150 Billion');
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'Appears similar in shape to a cigar.', 11.4, '250 Million');
INSERT INTO public.galaxy VALUES (5, 'Eye of God Galaxy', 'Name after its structural appearance.', 600, '120 Billion');
INSERT INTO public.galaxy VALUES (6, 'Milky Way Galaxy', 'Home of Solar System and Planet Earth', 0, '400 Billion');
INSERT INTO public.galaxy VALUES (7, 'Pinwheel Galaxy', 'Similar appearance to a pinwheel', 20.9, '500 Million');
INSERT INTO public.galaxy VALUES (8, 'Sculptor Galaxy', 'Named after its location in Sculptor Constellation', 11.4, '300 Billion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The Moon is the Earth''s only natural satellite.', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos is the innermost and larger of the two natural satellites of Mars.', true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos is the smaller and outer of the two natural satellites of Mars.', false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Io is the innermost of the four Galilean moons of Jupiter; with a diameter of 3642 kilometers.', false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Europa is the second of the four Galilean moons, is the second closest to the Jupiter and the smallest at 3121.6 kilometers in diameter.', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Ganymede is the largest natural satellite in the Solar System at 5262.4 kilometer in diameter.', true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Callisto is the fourth and last Galilean moon, and is the second-largest of the four and is 4820.6 kilometers in diameter.', false, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Mimas is the seventh-largest natural satellite of Saturn.', true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn.', true, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 'Tethys is the fifth-largest moon of Saturn, measuring about 1060 km across.', true, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Dione is the fouth-largest moon of Saturn.', true, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Rhea is the second-largest moon of Saturn.', true, 6);
INSERT INTO public.moon VALUES (13, 'Titan', 'Titan is the largest moon of Saturn and the second-largest in the Solar System.', true, 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Iapetus is the outermost of Saturn''s large moons.', false, 6);
INSERT INTO public.moon VALUES (15, 'Cordelia', 'Cordelia is the innermost known moon of Uranus.', false, 7);
INSERT INTO public.moon VALUES (16, 'Ophelia', 'Ophelia is a moon of Uranus.', false, 7);
INSERT INTO public.moon VALUES (17, 'Bianca', 'Bianca is an inner satellite of Uranus.', false, 7);
INSERT INTO public.moon VALUES (18, 'Thalassa', 'Thalassa is the second-innermost satellite of Neptune. ', true, 8);
INSERT INTO public.moon VALUES (19, 'Larissa', 'Larissa is the fifth-closest inner satellite of Neptune.', false, 8);
INSERT INTO public.moon VALUES (20, 'Triton', 'Triton is the largest satellite of the planet Neptune.', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the first planet from the Sun and the smallest in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbor Earth.', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun. The surface of Mars is orange-red because it is covered in iron oxide.', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun. It is a gaseous cyan-colored ice giant.', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth and farthest known planet from the Sun.', false, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 'Ceres is a dwarf planet in the middle main asteroid belt between the orbits of Mars and Jupiter.', false, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune.', false, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Haumea is a dwarf planet located beyond Neptune''s orbit.', false, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Makemake is a dwarf planet and the second-largest of what is known as the classical population of Kuiper belt objects.', false, 1);
INSERT INTO public.planet VALUES (13, 'Eris', 'Eris is the most massive and second-largest known dwarf planet in the Solar System.', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System.', 8, 6);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Betelgeuse is a red supergiant star in the constellation of Orion.', 0, 6);
INSERT INTO public.star VALUES (3, 'Antares', 'Antares is the brightest star in the constellation of Scorpius.', 2, 6);
INSERT INTO public.star VALUES (4, 'Sirius', 'Sirius is the brightest star in the night sky.', 0, 6);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Proxima Centauri is a small, low mass star located 4.2465 light-years away from the Sun.', 3, 6);
INSERT INTO public.star VALUES (6, 'Vega', 'Vega is the brightest star in the nothern constellation of Lyra.', 0, 6);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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
-- Name: continent continent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

