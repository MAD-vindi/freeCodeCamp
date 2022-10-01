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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    dummy_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id numeric NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    description text,
    galaxy_star integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id numeric NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    description text,
    planet_moon integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id numeric NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_planet integer NOT NULL,
    planet_moon integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id numeric NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    description text,
    galaxy_star integer NOT NULL,
    star_planet integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES (1, 'a', 1);
INSERT INTO public.dummy VALUES (2, 'b', 2);
INSERT INTO public.dummy VALUES (3, 'c', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 1, 1, 'a', 1);
INSERT INTO public.galaxy VALUES (2, 'b', 2, 2, 'b', 2);
INSERT INTO public.galaxy VALUES (3, 'c', 3, 3, 'c', 3);
INSERT INTO public.galaxy VALUES (4, 'd', 4, 4, 'd', 4);
INSERT INTO public.galaxy VALUES (5, 'e', 5, 5, 'e', 5);
INSERT INTO public.galaxy VALUES (6, 'f', 6, 6, 'f', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 1, 1, 'a', 1);
INSERT INTO public.moon VALUES (2, 'b', 2, 2, 'b', 2);
INSERT INTO public.moon VALUES (3, 'c', 3, 3, 'c', 3);
INSERT INTO public.moon VALUES (4, 'd', 4, 4, 'd', 4);
INSERT INTO public.moon VALUES (5, 'e', 5, 5, 'e', 5);
INSERT INTO public.moon VALUES (6, 'f', 6, 6, 'f', 6);
INSERT INTO public.moon VALUES (7, 'g', 7, 7, 'g', 7);
INSERT INTO public.moon VALUES (8, 'h', 8, 8, 'h', 8);
INSERT INTO public.moon VALUES (9, 'i', 9, 9, 'i', 9);
INSERT INTO public.moon VALUES (10, 'j', 10, 10, 'j', 10);
INSERT INTO public.moon VALUES (11, 'k', 11, 11, 'k', 11);
INSERT INTO public.moon VALUES (12, 'l', 12, 12, 'l', 12);
INSERT INTO public.moon VALUES (13, 't', 13, 13, 't', 1);
INSERT INTO public.moon VALUES (14, 'm', 14, 14, 'm', 2);
INSERT INTO public.moon VALUES (15, 'n', 15, 15, 'n', 3);
INSERT INTO public.moon VALUES (16, 'o', 16, 16, 'o', 4);
INSERT INTO public.moon VALUES (17, 'p', 17, 17, 'p', 5);
INSERT INTO public.moon VALUES (18, 'q', 18, 18, 'q', 6);
INSERT INTO public.moon VALUES (19, 'r', 19, 19, 'r', 7);
INSERT INTO public.moon VALUES (20, 's', 20, 20, 's', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 1, 1, 'a', true, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'b', 2, 2, 'b', true, true, 2, 2);
INSERT INTO public.planet VALUES (3, 'c', 3, 3, 'c', true, true, 3, 3);
INSERT INTO public.planet VALUES (4, 'd', 4, 4, 'd', true, true, 4, 4);
INSERT INTO public.planet VALUES (5, 'e', 5, 5, 'e', true, true, 5, 5);
INSERT INTO public.planet VALUES (6, 'f', 6, 6, 'f', true, true, 6, 6);
INSERT INTO public.planet VALUES (7, 'g', 7, 7, 'g', true, true, 1, 7);
INSERT INTO public.planet VALUES (8, 'h', 8, 8, 'h', true, true, 2, 8);
INSERT INTO public.planet VALUES (9, 'i', 9, 9, 'i', true, true, 3, 9);
INSERT INTO public.planet VALUES (10, 'j', 10, 10, 'j', true, true, 4, 10);
INSERT INTO public.planet VALUES (11, 'k', 11, 11, 'k', true, true, 5, 11);
INSERT INTO public.planet VALUES (12, 'l', 12, 12, 'l', true, true, 6, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 1, 1, 'a', 1, 1);
INSERT INTO public.star VALUES (2, 'b', 2, 2, 'b', 2, 2);
INSERT INTO public.star VALUES (3, 'c', 3, 3, 'c', 3, 3);
INSERT INTO public.star VALUES (4, 'd', 4, 4, 'd', 4, 4);
INSERT INTO public.star VALUES (5, 'e', 5, 5, 'e', 5, 5);
INSERT INTO public.star VALUES (6, 'f', 6, 6, 'f', 6, 6);


--
-- Name: dummy dummy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_age_key UNIQUE (age);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_galaxy_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_star_key UNIQUE (galaxy_star);


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
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


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
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


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
-- Name: planet planet_planet_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_moon_key UNIQUE (planet_moon);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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
-- Name: star star_star_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_planet_key UNIQUE (star_planet);


--
-- Name: moon moon_planet_moon_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_moon_fkey FOREIGN KEY (planet_moon) REFERENCES public.planet(planet_moon);


--
-- Name: planet planet_star_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_planet_fkey FOREIGN KEY (star_planet) REFERENCES public.star(star_planet);


--
-- Name: star star_galaxy_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_star_fkey FOREIGN KEY (galaxy_star) REFERENCES public.galaxy(galaxy_star);


--
-- PostgreSQL database dump complete
--

