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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    wormhole boolean DEFAULT false NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    decription text,
    name character varying(255) NOT NULL,
    rotation_speed integer DEFAULT 1000 NOT NULL
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
    name character varying(255) NOT NULL,
    name_code character varying(255) NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    amount_of_people numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
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
    name character varying(255) NOT NULL,
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, NULL, NULL, false, 'b1');
INSERT INTO public.blackhole VALUES (2, NULL, NULL, false, 'b2');
INSERT INTO public.blackhole VALUES (3, NULL, NULL, false, 'b3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'andromeda', 1000);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'galaxy2', 1000);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'galaxy3', 1000);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'galaxy4', 1000);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'galaxy5', 1000);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'galaxy6', 1000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 'm1', true, 2);
INSERT INTO public.moon VALUES (2, 'm2', 'm2', true, 3);
INSERT INTO public.moon VALUES (3, 'm3', 'm3', true, 4);
INSERT INTO public.moon VALUES (4, 'm3', 'm4', true, 4);
INSERT INTO public.moon VALUES (5, 'm3', 'm5', true, 4);
INSERT INTO public.moon VALUES (6, 'm3', 'm6', true, 4);
INSERT INTO public.moon VALUES (7, 'm3', 'm7', true, 4);
INSERT INTO public.moon VALUES (8, 'm3', 'm8', true, 4);
INSERT INTO public.moon VALUES (9, 'm3', 'm9', true, 4);
INSERT INTO public.moon VALUES (10, 'm3', 'm10', true, 4);
INSERT INTO public.moon VALUES (11, 'm3', 'm11', true, 4);
INSERT INTO public.moon VALUES (12, 'm3', 'm12', true, 4);
INSERT INTO public.moon VALUES (13, 'm3', 'm14', true, 4);
INSERT INTO public.moon VALUES (14, 'm3', 'm13', true, 4);
INSERT INTO public.moon VALUES (15, 'm3', 'm15', true, 4);
INSERT INTO public.moon VALUES (16, 'm3', 'm16', true, 4);
INSERT INTO public.moon VALUES (17, 'm3', 'm17', true, 4);
INSERT INTO public.moon VALUES (18, 'm3', 'm18', true, 4);
INSERT INTO public.moon VALUES (19, 'm3', 'm19', true, 4);
INSERT INTO public.moon VALUES (20, 'm3', 'm20', true, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'mars', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'neptune', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'jupiter', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'uranus', NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'venus', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'mercury', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'saturn', NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'pluto', NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'y1', NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'j1', NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'm1', NULL, false, 2);
INSERT INTO public.planet VALUES (13, 'k1', NULL, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1234, 'red', 'beetle', 1);
INSERT INTO public.star VALUES (2, 1234, 'yellow', 'beetle2', 1);
INSERT INTO public.star VALUES (3, 1234, 'yellow', 'beetle3', 1);
INSERT INTO public.star VALUES (4, 1234, 'yellow', 'beetle4', 1);
INSERT INTO public.star VALUES (5, 1234, 'orange', 'beetle5', 1);
INSERT INTO public.star VALUES (6, 1234, 'orange', 'beetle6', 2);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


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
-- Name: galaxy uni_decript; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni_decript UNIQUE (decription);


--
-- Name: star uni_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uni_name UNIQUE (name);


--
-- Name: planet uni_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uni_name_planet UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
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
