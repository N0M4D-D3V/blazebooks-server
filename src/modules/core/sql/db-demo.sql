--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

-- Started on 2024-03-22 21:16:19 CET

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

-- DROP tables if exists

DROP TABLE IF EXISTS "Books";
DROP TABLE IF EXISTS "Pages";

--
-- TOC entry 210 (class 1259 OID 16598)
-- Name: Books; Type: TABLE; Schema: public; Owner: development
--

CREATE TABLE IF NOT EXISTS public."Books" (
    id integer NOT NULL,
    author character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    subtitle character varying(255),
    "imgUrl" character varying(255),
    description character varying(255),
    genres character varying(255)[],
    content character varying(255)[] NOT NULL,
    scss text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);


ALTER TABLE public."Books" OWNER TO development;

--
-- TOC entry 209 (class 1259 OID 16597)
-- Name: Books_id_seq; Type: SEQUENCE; Schema: public; Owner: development
--

CREATE SEQUENCE IF NOT EXISTS public."Books_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Books_id_seq" OWNER TO development;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 209
-- Name: Books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: development
--

ALTER SEQUENCE public."Books_id_seq" OWNED BY public."Books".id;


--
-- TOC entry 212 (class 1259 OID 16607)
-- Name: Pages; Type: TABLE; Schema: public; Owner: development
--

CREATE TABLE IF NOT EXISTS public."Pages" (
    id integer NOT NULL,
    reference character varying(255) NOT NULL,
    html text NOT NULL,
    options jsonb NOT NULL,
    scss text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);


ALTER TABLE public."Pages" OWNER TO development;

--
-- TOC entry 211 (class 1259 OID 16606)
-- Name: Pages_id_seq; Type: SEQUENCE; Schema: public; Owner: development
--

CREATE SEQUENCE IF NOT EXISTS public."Pages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pages_id_seq" OWNER TO development;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 211
-- Name: Pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: development
--

ALTER SEQUENCE public."Pages_id_seq" OWNED BY public."Pages".id;


--
-- TOC entry 3212 (class 2604 OID 16601)
-- Name: Books id; Type: DEFAULT; Schema: public; Owner: development
--

ALTER TABLE ONLY public."Books" ALTER COLUMN id SET DEFAULT nextval('public."Books_id_seq"'::regclass);


--
-- TOC entry 3213 (class 2604 OID 16610)
-- Name: Pages id; Type: DEFAULT; Schema: public; Owner: development
--

ALTER TABLE ONLY public."Pages" ALTER COLUMN id SET DEFAULT nextval('public."Pages_id_seq"'::regclass);


--
-- TOC entry 3358 (class 0 OID 16598)
-- Dependencies: 210
-- Data for Name: Books; Type: TABLE DATA; Schema: public; Owner: development
--

COPY public."Books" (id, author, title, subtitle, "imgUrl", description, genres, content, scss, "createdAt", "updatedAt") FROM stdin;

--
-- TOC entry 3360 (class 0 OID 16607)
-- Dependencies: 212
-- Data for Name: Pages; Type: TABLE DATA; Schema: public; Owner: development
--

COPY public."Pages" (id, reference, html, options, scss, "createdAt", "updatedAt") FROM stdin;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 209
-- Name: Books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('public."Books_id_seq"', 1, false);


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 211
-- Name: Pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('public."Pages_id_seq"', 1, false);


--
-- TOC entry 3215 (class 2606 OID 16605)
-- Name: Books Books_pkey; Type: CONSTRAINT; Schema: public; Owner: development
--

ALTER TABLE ONLY public."Books"
    ADD CONSTRAINT "Books_pkey" PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 16614)
-- Name: Pages Pages_pkey; Type: CONSTRAINT; Schema: public; Owner: development
--

ALTER TABLE ONLY public."Pages"
    ADD CONSTRAINT "Pages_pkey" PRIMARY KEY (id);


-- Completed on 2024-03-22 21:16:19 CET

--
-- PostgreSQL database dump complete
--

