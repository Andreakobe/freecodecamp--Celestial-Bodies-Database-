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
-- Name: contributors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.contributors (
    name character varying(30) NOT NULL,
    contributors_id integer NOT NULL,
    con_id integer
);


ALTER TABLE public.contributors OWNER TO freecodecamp;

--
-- Name: contributors_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.contributors_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contributors_no_seq OWNER TO freecodecamp;

--
-- Name: contributors_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.contributors_no_seq OWNED BY public.contributors.contributors_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    galaxy_types integer,
    galaxy_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(9,3),
    moon_id integer NOT NULL,
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    planet_id integer NOT NULL,
    star_id integer,
    is_spherical boolean,
    planet_type character varying(5)
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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    star_id integer NOT NULL,
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
-- Name: contributors contributors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contributors ALTER COLUMN contributors_id SET DEFAULT nextval('public.contributors_no_seq'::regclass);


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
-- Data for Name: contributors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.contributors VALUES ('Andre', 10001, 1);
INSERT INTO public.contributors VALUES ('Pierre', 10002, 2);
INSERT INTO public.contributors VALUES ('Jean', 10003, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy_A', NULL, 1.2, NULL, 1000001);
INSERT INTO public.galaxy VALUES ('galaxy_B', NULL, 2.3, NULL, 1000002);
INSERT INTO public.galaxy VALUES ('galaxy_C', NULL, 2.9, NULL, 1000003);
INSERT INTO public.galaxy VALUES ('galaxy_D', NULL, 3.8, NULL, 1000004);
INSERT INTO public.galaxy VALUES ('galaxy_E', NULL, 7.2, NULL, 1000005);
INSERT INTO public.galaxy VALUES ('galaxy_F', NULL, 2.6, NULL, 1000006);
INSERT INTO public.galaxy VALUES ('galaxy_G', NULL, 5.6, NULL, 1000007);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon_001', NULL, false, true, 0.662, 1000000001, 100000001);
INSERT INTO public.moon VALUES ('moon_002', NULL, false, true, 0.083, 1000000002, 100000002);
INSERT INTO public.moon VALUES ('moon_003', NULL, NULL, NULL, NULL, 1000000003, 100000003);
INSERT INTO public.moon VALUES ('moon_004', NULL, NULL, NULL, NULL, 1000000004, 100000004);
INSERT INTO public.moon VALUES ('moon_005', NULL, NULL, NULL, NULL, 1000000005, 100000005);
INSERT INTO public.moon VALUES ('moon_006', NULL, NULL, NULL, NULL, 1000000006, 100000006);
INSERT INTO public.moon VALUES ('moon_007', NULL, NULL, NULL, NULL, 1000000007, 100000007);
INSERT INTO public.moon VALUES ('moon_008', NULL, NULL, NULL, NULL, 1000000008, 100000008);
INSERT INTO public.moon VALUES ('moon_009', NULL, NULL, NULL, NULL, 1000000009, 100000009);
INSERT INTO public.moon VALUES ('moon_010', NULL, NULL, NULL, NULL, 1000000010, 100000010);
INSERT INTO public.moon VALUES ('moon_011', NULL, NULL, NULL, NULL, 1000000011, 100000011);
INSERT INTO public.moon VALUES ('moon_012', NULL, NULL, NULL, NULL, 1000000012, 100000012);
INSERT INTO public.moon VALUES ('moon_013', NULL, NULL, NULL, NULL, 1000000013, 100000001);
INSERT INTO public.moon VALUES ('moon_014', NULL, NULL, NULL, NULL, 1000000014, 100000002);
INSERT INTO public.moon VALUES ('moon_015', NULL, NULL, NULL, NULL, 1000000015, 100000003);
INSERT INTO public.moon VALUES ('moon_016', NULL, NULL, NULL, NULL, 1000000016, 100000004);
INSERT INTO public.moon VALUES ('moon_017', NULL, NULL, NULL, NULL, 1000000017, 100000005);
INSERT INTO public.moon VALUES ('moon_018', NULL, NULL, NULL, NULL, 1000000018, 100000006);
INSERT INTO public.moon VALUES ('moon_019', NULL, NULL, NULL, NULL, 1000000019, 100000007);
INSERT INTO public.moon VALUES ('moon_020', NULL, NULL, NULL, NULL, 1000000020, 100000008);
INSERT INTO public.moon VALUES ('moon_021', NULL, NULL, NULL, NULL, 1000000021, 100000009);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet_H', NULL, true, 0.11617, NULL, 100000001, 10000001, true, 'L');
INSERT INTO public.planet VALUES ('planet_I', NULL, true, 0.895037, NULL, 100000002, 10000002, true, 'S');
INSERT INTO public.planet VALUES ('planet_J', NULL, true, 0.415304, NULL, 100000003, 10000003, true, 'S');
INSERT INTO public.planet VALUES ('planet_K', NULL, true, 0.169187, NULL, 100000004, 10000004, true, 'L');
INSERT INTO public.planet VALUES ('planet_L', NULL, true, 0.922373, NULL, 100000005, 10000005, true, 'M');
INSERT INTO public.planet VALUES ('planet_M', NULL, true, 0.584197, NULL, 100000006, 10000006, true, 'M
');
INSERT INTO public.planet VALUES ('planet_N', NULL, false, 0.784283, NULL, 100000007, 10000007, false, 'S');
INSERT INTO public.planet VALUES ('planet_O', NULL, true, 0.217075, NULL, 100000008, 10000001, true, 'S');
INSERT INTO public.planet VALUES ('planet_P', NULL, true, 0.531283, NULL, 100000009, 10000002, true, 'S');
INSERT INTO public.planet VALUES ('planet_Q', NULL, false, 0.76632, NULL, 100000010, 10000003, false, 'S');
INSERT INTO public.planet VALUES ('planet_R', NULL, true, 0.263142, NULL, 100000011, 10000004, true, 'L');
INSERT INTO public.planet VALUES ('planet_S', NULL, false, 0.973692, NULL, 100000012, 10000005, false, 'L');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star_01', NULL, true, 10.9, 0.33519, 10000001, 1000001);
INSERT INTO public.star VALUES ('star_03', NULL, false, 15.6, 0.6472662, 10000003, 1000003);
INSERT INTO public.star VALUES ('star_02', NULL, true, 20.4, 0.7285639, 10000002, 1000002);
INSERT INTO public.star VALUES ('star_04', NULL, false, 12.5, 0.67554, 10000004, 1000004);
INSERT INTO public.star VALUES ('star_05', NULL, true, 18.3, 0.53891702, 10000005, 1000005);
INSERT INTO public.star VALUES ('star_06', NULL, false, 22.4, 0.380710424, 10000006, 1000006);
INSERT INTO public.star VALUES ('star_07', NULL, true, 21.6, 0.9732504, 10000007, 1000007);


--
-- Name: contributors_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.contributors_no_seq', 1, false);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: contributors contributors_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contributors
    ADD CONSTRAINT contributors_name_key UNIQUE (name);


--
-- Name: contributors contributors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contributors
    ADD CONSTRAINT contributors_pkey PRIMARY KEY (contributors_id);


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

