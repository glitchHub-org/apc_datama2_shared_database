--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-05 09:05:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 16745)
-- Name: ljlactaoen; Type: SCHEMA; Schema: -; Owner: datama2mi181
--

CREATE SCHEMA ljlactaoen;


ALTER SCHEMA ljlactaoen OWNER TO datama2mi181;

SET default_tablespace = '';

--
-- TOC entry 339 (class 1259 OID 18466)
-- Name: professional; Type: TABLE; Schema: ljlactaoen; Owner: datama2mi181
--

CREATE TABLE ljlactaoen.professional (
    prof_id integer NOT NULL,
    prof_fname character varying(45) DEFAULT NULL::character varying,
    prof_lname character varying(45) DEFAULT NULL::character varying,
    prof_address character varying(45) DEFAULT NULL::character varying,
    prof_email character varying(45) DEFAULT NULL::character varying,
    prof_date_of_birth date,
    prof_phone_number character varying(11) DEFAULT NULL::character varying,
    prof_type character varying(45) DEFAULT NULL::character varying
);


ALTER TABLE ljlactaoen.professional OWNER TO datama2mi181;

--
-- TOC entry 338 (class 1259 OID 18464)
-- Name: professional_prof_id_seq; Type: SEQUENCE; Schema: ljlactaoen; Owner: datama2mi181
--

CREATE SEQUENCE ljlactaoen.professional_prof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ljlactaoen.professional_prof_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 338
-- Name: professional_prof_id_seq; Type: SEQUENCE OWNED BY; Schema: ljlactaoen; Owner: datama2mi181
--

ALTER SEQUENCE ljlactaoen.professional_prof_id_seq OWNED BY ljlactaoen.professional.prof_id;


--
-- TOC entry 404 (class 1259 OID 25245)
-- Name: student; Type: TABLE; Schema: ljlactaoen; Owner: datama2mi181
--

CREATE TABLE ljlactaoen.student (
    stud_id integer NOT NULL,
    stud_fname character varying(50) NOT NULL,
    stud_lname character varying(50) NOT NULL,
    stud_phone character varying(11) NOT NULL,
    stud_email character varying(50) NOT NULL,
    stud_date_of_enrollment date NOT NULL,
    sutd_address character varying(50) NOT NULL,
    prof_id integer
);


ALTER TABLE ljlactaoen.student OWNER TO datama2mi181;

--
-- TOC entry 403 (class 1259 OID 25243)
-- Name: student_stud_id_seq; Type: SEQUENCE; Schema: ljlactaoen; Owner: datama2mi181
--

CREATE SEQUENCE ljlactaoen.student_stud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ljlactaoen.student_stud_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 403
-- Name: student_stud_id_seq; Type: SEQUENCE OWNED BY; Schema: ljlactaoen; Owner: datama2mi181
--

ALTER SEQUENCE ljlactaoen.student_stud_id_seq OWNED BY ljlactaoen.student.stud_id;


--
-- TOC entry 415 (class 1259 OID 25520)
-- Name: student_view; Type: VIEW; Schema: ljlactaoen; Owner: datama2mi181
--

CREATE VIEW ljlactaoen.student_view AS
 SELECT student.stud_id,
    student.stud_fname,
    student.stud_lname,
    student.stud_phone,
    student.stud_email
   FROM ljlactaoen.student
  WHERE (student.stud_id > 10);


ALTER TABLE ljlactaoen.student_view OWNER TO datama2mi181;

--
-- TOC entry 3289 (class 2604 OID 18469)
-- Name: professional prof_id; Type: DEFAULT; Schema: ljlactaoen; Owner: datama2mi181
--

ALTER TABLE ONLY ljlactaoen.professional ALTER COLUMN prof_id SET DEFAULT nextval('ljlactaoen.professional_prof_id_seq'::regclass);


--
-- TOC entry 3296 (class 2604 OID 25248)
-- Name: student stud_id; Type: DEFAULT; Schema: ljlactaoen; Owner: datama2mi181
--

ALTER TABLE ONLY ljlactaoen.student ALTER COLUMN stud_id SET DEFAULT nextval('ljlactaoen.student_stud_id_seq'::regclass);


--
-- TOC entry 3446 (class 0 OID 18466)
-- Dependencies: 339
-- Data for Name: professional; Type: TABLE DATA; Schema: ljlactaoen; Owner: datama2mi181
--

INSERT INTO ljlactaoen.professional VALUES (1, 'Michael', 'Mene', 'Makati City', 'michaellolicon@gmail.com', '1999-09-11', '9065132703', 'Professional');
INSERT INTO ljlactaoen.professional VALUES (2, 'Kelvin', 'Jarvina', 'Makati City', 'kelvinitim@gmail.com', '1998-09-11', '9457526616', 'Professional');
INSERT INTO ljlactaoen.professional VALUES (3, 'Angelo', 'Navarro', 'Makati City', 'angelosapakan@gmail.com', '1998-12-12', '9369213592', 'Professional');


--
-- TOC entry 3448 (class 0 OID 25245)
-- Dependencies: 404
-- Data for Name: student; Type: TABLE DATA; Schema: ljlactaoen; Owner: datama2mi181
--

INSERT INTO ljlactaoen.student VALUES (1, 'Marvin', 'Dimaano', '9456969696', 'pekswolf@gmail.com', '2019-09-11', 'Cavite City', 1);
INSERT INTO ljlactaoen.student VALUES (2, 'David', 'David', '9266936064', 'david@gmail.com', '2019-09-11', 'Taguig City', 1);
INSERT INTO ljlactaoen.student VALUES (3, 'Adolf', 'Hitler', '9062345678', 'ilovejews@gmail.com', '2019-09-11', 'Taguig City', 1);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 338
-- Name: professional_prof_id_seq; Type: SEQUENCE SET; Schema: ljlactaoen; Owner: datama2mi181
--

SELECT pg_catalog.setval('ljlactaoen.professional_prof_id_seq', 1, false);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 403
-- Name: student_stud_id_seq; Type: SEQUENCE SET; Schema: ljlactaoen; Owner: datama2mi181
--

SELECT pg_catalog.setval('ljlactaoen.student_stud_id_seq', 1, false);


--
-- TOC entry 3298 (class 2606 OID 18477)
-- Name: professional professional_pkey; Type: CONSTRAINT; Schema: ljlactaoen; Owner: datama2mi181
--

ALTER TABLE ONLY ljlactaoen.professional
    ADD CONSTRAINT professional_pkey PRIMARY KEY (prof_id);


--
-- TOC entry 3300 (class 2606 OID 25250)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: ljlactaoen; Owner: datama2mi181
--

ALTER TABLE ONLY ljlactaoen.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (stud_id);


--
-- TOC entry 3301 (class 2606 OID 25251)
-- Name: student student_prof_id_fkey; Type: FK CONSTRAINT; Schema: ljlactaoen; Owner: datama2mi181
--

ALTER TABLE ONLY ljlactaoen.student
    ADD CONSTRAINT student_prof_id_fkey FOREIGN KEY (prof_id) REFERENCES ljlactaoen.professional(prof_id) ON DELETE RESTRICT;


-- Completed on 2019-12-05 09:05:39

--
-- PostgreSQL database dump complete
--

