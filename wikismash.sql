--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Homebrew)
-- Dumped by pg_dump version 14.18 (Homebrew)

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
-- Name: air_moveset; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.air_moveset (
    id integer NOT NULL,
    neutral integer,
    forward integer,
    back integer,
    up integer,
    down integer
);


ALTER TABLE public.air_moveset OWNER TO gabosaurio;

--
-- Name: air_moveset_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.air_moveset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.air_moveset_id_seq OWNER TO gabosaurio;

--
-- Name: air_moveset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.air_moveset_id_seq OWNED BY public.air_moveset.id;


--
-- Name: attack; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.attack (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    description character varying(300),
    button character varying(30),
    frame_startup integer,
    end_lag integer,
    on_shield integer
);


ALTER TABLE public.attack OWNER TO gabosaurio;

--
-- Name: attack_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.attack_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attack_id_seq OWNER TO gabosaurio;

--
-- Name: attack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.attack_id_seq OWNED BY public.attack.id;


--
-- Name: character; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public."character" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    weight integer NOT NULL,
    out_of_shields integer,
    ground_moveset_id integer,
    air_moveset_id integer,
    special_moveset_id integer,
    smash_moveset_id integer,
    stages integer
);


ALTER TABLE public."character" OWNER TO gabosaurio;

--
-- Name: character_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.character_id_seq OWNER TO gabosaurio;

--
-- Name: character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.character_id_seq OWNED BY public."character".id;


--
-- Name: character_stages; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.character_stages (
    id integer NOT NULL,
    stage integer,
    state character varying(10)
);


ALTER TABLE public.character_stages OWNER TO gabosaurio;

--
-- Name: character_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.character_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.character_stages_id_seq OWNER TO gabosaurio;

--
-- Name: character_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.character_stages_id_seq OWNED BY public.character_stages.id;


--
-- Name: ground_moveset; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.ground_moveset (
    id integer NOT NULL,
    jab integer,
    forward_tilt integer,
    up_tilt integer,
    down_tilt integer
);


ALTER TABLE public.ground_moveset OWNER TO gabosaurio;

--
-- Name: ground_moveset_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.ground_moveset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ground_moveset_id_seq OWNER TO gabosaurio;

--
-- Name: ground_moveset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.ground_moveset_id_seq OWNED BY public.ground_moveset.id;


--
-- Name: out_of_shield_options; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.out_of_shield_options (
    id integer NOT NULL,
    attack integer
);


ALTER TABLE public.out_of_shield_options OWNER TO gabosaurio;

--
-- Name: out_of_shield_options_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.out_of_shield_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.out_of_shield_options_id_seq OWNER TO gabosaurio;

--
-- Name: out_of_shield_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.out_of_shield_options_id_seq OWNED BY public.out_of_shield_options.id;


--
-- Name: player; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.player (
    id integer NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(64) NOT NULL,
    main_id integer,
    secondary_id integer
);


ALTER TABLE public.player OWNER TO gabosaurio;

--
-- Name: player_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_id_seq OWNER TO gabosaurio;

--
-- Name: player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.player_id_seq OWNED BY public.player.id;


--
-- Name: smash_moveset; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.smash_moveset (
    id integer NOT NULL,
    forward integer,
    down integer,
    up integer
);


ALTER TABLE public.smash_moveset OWNER TO gabosaurio;

--
-- Name: smash_moveset_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.smash_moveset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.smash_moveset_id_seq OWNER TO gabosaurio;

--
-- Name: smash_moveset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.smash_moveset_id_seq OWNED BY public.smash_moveset.id;


--
-- Name: special_moveset; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.special_moveset (
    id integer NOT NULL,
    neutral integer,
    side integer,
    up integer,
    down integer
);


ALTER TABLE public.special_moveset OWNER TO gabosaurio;

--
-- Name: special_moveset_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.special_moveset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.special_moveset_id_seq OWNER TO gabosaurio;

--
-- Name: special_moveset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.special_moveset_id_seq OWNED BY public.special_moveset.id;


--
-- Name: stage; Type: TABLE; Schema: public; Owner: gabosaurio
--

CREATE TABLE public.stage (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.stage OWNER TO gabosaurio;

--
-- Name: stage_id_seq; Type: SEQUENCE; Schema: public; Owner: gabosaurio
--

CREATE SEQUENCE public.stage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stage_id_seq OWNER TO gabosaurio;

--
-- Name: stage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gabosaurio
--

ALTER SEQUENCE public.stage_id_seq OWNED BY public.stage.id;


--
-- Name: air_moveset id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.air_moveset ALTER COLUMN id SET DEFAULT nextval('public.air_moveset_id_seq'::regclass);


--
-- Name: attack id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.attack ALTER COLUMN id SET DEFAULT nextval('public.attack_id_seq'::regclass);


--
-- Name: character id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public."character" ALTER COLUMN id SET DEFAULT nextval('public.character_id_seq'::regclass);


--
-- Name: character_stages id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.character_stages ALTER COLUMN id SET DEFAULT nextval('public.character_stages_id_seq'::regclass);


--
-- Name: ground_moveset id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.ground_moveset ALTER COLUMN id SET DEFAULT nextval('public.ground_moveset_id_seq'::regclass);


--
-- Name: out_of_shield_options id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.out_of_shield_options ALTER COLUMN id SET DEFAULT nextval('public.out_of_shield_options_id_seq'::regclass);


--
-- Name: player id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.player ALTER COLUMN id SET DEFAULT nextval('public.player_id_seq'::regclass);


--
-- Name: smash_moveset id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.smash_moveset ALTER COLUMN id SET DEFAULT nextval('public.smash_moveset_id_seq'::regclass);


--
-- Name: special_moveset id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.special_moveset ALTER COLUMN id SET DEFAULT nextval('public.special_moveset_id_seq'::regclass);


--
-- Name: stage id; Type: DEFAULT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.stage ALTER COLUMN id SET DEFAULT nextval('public.stage_id_seq'::regclass);


--
-- Data for Name: air_moveset; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.air_moveset (id, neutral, forward, back, up, down) FROM stdin;
\.


--
-- Data for Name: attack; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.attack (id, name, description, button, frame_startup, end_lag, on_shield) FROM stdin;
\.


--
-- Data for Name: character; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public."character" (id, name, weight, out_of_shields, ground_moveset_id, air_moveset_id, special_moveset_id, smash_moveset_id, stages) FROM stdin;
\.


--
-- Data for Name: character_stages; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.character_stages (id, stage, state) FROM stdin;
\.


--
-- Data for Name: ground_moveset; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.ground_moveset (id, jab, forward_tilt, up_tilt, down_tilt) FROM stdin;
\.


--
-- Data for Name: out_of_shield_options; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.out_of_shield_options (id, attack) FROM stdin;
\.


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.player (id, username, password, main_id, secondary_id) FROM stdin;
\.


--
-- Data for Name: smash_moveset; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.smash_moveset (id, forward, down, up) FROM stdin;
\.


--
-- Data for Name: special_moveset; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.special_moveset (id, neutral, side, up, down) FROM stdin;
\.


--
-- Data for Name: stage; Type: TABLE DATA; Schema: public; Owner: gabosaurio
--

COPY public.stage (id, name) FROM stdin;
\.


--
-- Name: air_moveset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.air_moveset_id_seq', 1, false);


--
-- Name: attack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.attack_id_seq', 1, false);


--
-- Name: character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.character_id_seq', 1, false);


--
-- Name: character_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.character_stages_id_seq', 1, false);


--
-- Name: ground_moveset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.ground_moveset_id_seq', 1, false);


--
-- Name: out_of_shield_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.out_of_shield_options_id_seq', 1, false);


--
-- Name: player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.player_id_seq', 70, true);


--
-- Name: smash_moveset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.smash_moveset_id_seq', 1, false);


--
-- Name: special_moveset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.special_moveset_id_seq', 1, false);


--
-- Name: stage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gabosaurio
--

SELECT pg_catalog.setval('public.stage_id_seq', 1, false);


--
-- Name: air_moveset air_moveset_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.air_moveset
    ADD CONSTRAINT air_moveset_pkey PRIMARY KEY (id);


--
-- Name: attack attack_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.attack
    ADD CONSTRAINT attack_pkey PRIMARY KEY (id);


--
-- Name: character character_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_pkey PRIMARY KEY (id);


--
-- Name: character_stages character_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.character_stages
    ADD CONSTRAINT character_stages_pkey PRIMARY KEY (id);


--
-- Name: ground_moveset ground_moveset_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.ground_moveset
    ADD CONSTRAINT ground_moveset_pkey PRIMARY KEY (id);


--
-- Name: out_of_shield_options out_of_shield_options_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.out_of_shield_options
    ADD CONSTRAINT out_of_shield_options_pkey PRIMARY KEY (id);


--
-- Name: player player_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (id);


--
-- Name: smash_moveset smash_moveset_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.smash_moveset
    ADD CONSTRAINT smash_moveset_pkey PRIMARY KEY (id);


--
-- Name: special_moveset special_moveset_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.special_moveset
    ADD CONSTRAINT special_moveset_pkey PRIMARY KEY (id);


--
-- Name: stage stage_pkey; Type: CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.stage
    ADD CONSTRAINT stage_pkey PRIMARY KEY (id);


--
-- Name: air_moveset air_moveset_back_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.air_moveset
    ADD CONSTRAINT air_moveset_back_fkey FOREIGN KEY (back) REFERENCES public.attack(id);


--
-- Name: air_moveset air_moveset_down_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.air_moveset
    ADD CONSTRAINT air_moveset_down_fkey FOREIGN KEY (down) REFERENCES public.attack(id);


--
-- Name: air_moveset air_moveset_forward_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.air_moveset
    ADD CONSTRAINT air_moveset_forward_fkey FOREIGN KEY (forward) REFERENCES public.attack(id);


--
-- Name: air_moveset air_moveset_neutral_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.air_moveset
    ADD CONSTRAINT air_moveset_neutral_fkey FOREIGN KEY (neutral) REFERENCES public.attack(id);


--
-- Name: air_moveset air_moveset_up_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.air_moveset
    ADD CONSTRAINT air_moveset_up_fkey FOREIGN KEY (up) REFERENCES public.attack(id);


--
-- Name: character character_air_moveset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_air_moveset_id_fkey FOREIGN KEY (air_moveset_id) REFERENCES public.air_moveset(id);


--
-- Name: character character_ground_moveset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_ground_moveset_id_fkey FOREIGN KEY (ground_moveset_id) REFERENCES public.ground_moveset(id);


--
-- Name: character character_out_of_shields_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_out_of_shields_fkey FOREIGN KEY (out_of_shields) REFERENCES public.out_of_shield_options(id);


--
-- Name: character character_smash_moveset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_smash_moveset_id_fkey FOREIGN KEY (smash_moveset_id) REFERENCES public.smash_moveset(id);


--
-- Name: character character_special_moveset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_special_moveset_id_fkey FOREIGN KEY (special_moveset_id) REFERENCES public.special_moveset(id);


--
-- Name: character character_stages_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_stages_fkey FOREIGN KEY (stages) REFERENCES public.character_stages(id);


--
-- Name: character_stages character_stages_stage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.character_stages
    ADD CONSTRAINT character_stages_stage_fkey FOREIGN KEY (stage) REFERENCES public.stage(id);


--
-- Name: ground_moveset ground_moveset_down_tilt_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.ground_moveset
    ADD CONSTRAINT ground_moveset_down_tilt_fkey FOREIGN KEY (down_tilt) REFERENCES public.attack(id);


--
-- Name: ground_moveset ground_moveset_forward_tilt_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.ground_moveset
    ADD CONSTRAINT ground_moveset_forward_tilt_fkey FOREIGN KEY (forward_tilt) REFERENCES public.attack(id);


--
-- Name: ground_moveset ground_moveset_jab_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.ground_moveset
    ADD CONSTRAINT ground_moveset_jab_fkey FOREIGN KEY (jab) REFERENCES public.attack(id);


--
-- Name: ground_moveset ground_moveset_up_tilt_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.ground_moveset
    ADD CONSTRAINT ground_moveset_up_tilt_fkey FOREIGN KEY (up_tilt) REFERENCES public.attack(id);


--
-- Name: out_of_shield_options out_of_shield_options_attack_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.out_of_shield_options
    ADD CONSTRAINT out_of_shield_options_attack_fkey FOREIGN KEY (attack) REFERENCES public.attack(id);


--
-- Name: player player_main_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_main_id_fkey FOREIGN KEY (main_id) REFERENCES public."character"(id);


--
-- Name: player player_secondary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_secondary_id_fkey FOREIGN KEY (secondary_id) REFERENCES public."character"(id);


--
-- Name: smash_moveset smash_moveset_down_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.smash_moveset
    ADD CONSTRAINT smash_moveset_down_fkey FOREIGN KEY (down) REFERENCES public.attack(id);


--
-- Name: smash_moveset smash_moveset_forward_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.smash_moveset
    ADD CONSTRAINT smash_moveset_forward_fkey FOREIGN KEY (forward) REFERENCES public.attack(id);


--
-- Name: smash_moveset smash_moveset_up_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.smash_moveset
    ADD CONSTRAINT smash_moveset_up_fkey FOREIGN KEY (up) REFERENCES public.attack(id);


--
-- Name: special_moveset special_moveset_down_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.special_moveset
    ADD CONSTRAINT special_moveset_down_fkey FOREIGN KEY (down) REFERENCES public.attack(id);


--
-- Name: special_moveset special_moveset_neutral_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.special_moveset
    ADD CONSTRAINT special_moveset_neutral_fkey FOREIGN KEY (neutral) REFERENCES public.attack(id);


--
-- Name: special_moveset special_moveset_side_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.special_moveset
    ADD CONSTRAINT special_moveset_side_fkey FOREIGN KEY (side) REFERENCES public.attack(id);


--
-- Name: special_moveset special_moveset_up_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gabosaurio
--

ALTER TABLE ONLY public.special_moveset
    ADD CONSTRAINT special_moveset_up_fkey FOREIGN KEY (up) REFERENCES public.attack(id);


--
-- PostgreSQL database dump complete
--

