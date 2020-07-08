--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: artist_album; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_album (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    cover_photo character varying(100) NOT NULL,
    group_id integer,
    release_year integer NOT NULL
);


ALTER TABLE public.artist_album OWNER TO musicuser;

--
-- Name: artist_album_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_album_id_seq OWNER TO musicuser;

--
-- Name: artist_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_album_id_seq OWNED BY public.artist_album.id;


--
-- Name: artist_genre; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_genre (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    about character varying(300) NOT NULL,
    photo character varying(100) NOT NULL
);


ALTER TABLE public.artist_genre OWNER TO musicuser;

--
-- Name: artist_genre_groups; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_genre_groups (
    id integer NOT NULL,
    genre_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.artist_genre_groups OWNER TO musicuser;

--
-- Name: artist_genre_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_genre_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_genre_groups_id_seq OWNER TO musicuser;

--
-- Name: artist_genre_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_genre_groups_id_seq OWNED BY public.artist_genre_groups.id;


--
-- Name: artist_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_genre_id_seq OWNER TO musicuser;

--
-- Name: artist_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_genre_id_seq OWNED BY public.artist_genre.id;


--
-- Name: artist_group; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_group (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    origin character varying(100) NOT NULL,
    photo character varying(100) NOT NULL,
    bio character varying(2000) NOT NULL,
    genre_id integer,
    year_formed integer NOT NULL,
    logo character varying(100) NOT NULL
);


ALTER TABLE public.artist_group OWNER TO musicuser;

--
-- Name: artist_group_albums; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_group_albums (
    id integer NOT NULL,
    group_id integer NOT NULL,
    album_id integer NOT NULL
);


ALTER TABLE public.artist_group_albums OWNER TO musicuser;

--
-- Name: artist_group_albums_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_group_albums_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_group_albums_id_seq OWNER TO musicuser;

--
-- Name: artist_group_albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_group_albums_id_seq OWNED BY public.artist_group_albums.id;


--
-- Name: artist_group_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_group_id_seq OWNER TO musicuser;

--
-- Name: artist_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_group_id_seq OWNED BY public.artist_group.id;


--
-- Name: artist_group_members; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_group_members (
    id integer NOT NULL,
    group_id integer NOT NULL,
    musician_id integer NOT NULL
);


ALTER TABLE public.artist_group_members OWNER TO musicuser;

--
-- Name: artist_group_members_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_group_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_group_members_id_seq OWNER TO musicuser;

--
-- Name: artist_group_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_group_members_id_seq OWNED BY public.artist_group_members.id;


--
-- Name: artist_instrument; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_instrument (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.artist_instrument OWNER TO musicuser;

--
-- Name: artist_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_instrument_id_seq OWNER TO musicuser;

--
-- Name: artist_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_instrument_id_seq OWNED BY public.artist_instrument.id;


--
-- Name: artist_musician; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_musician (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    hometown character varying(100) NOT NULL,
    photo character varying(100) NOT NULL,
    group_id integer,
    alias character varying(100) NOT NULL,
    bio character varying(2000) NOT NULL
);


ALTER TABLE public.artist_musician OWNER TO musicuser;

--
-- Name: artist_musician_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_musician_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_musician_id_seq OWNER TO musicuser;

--
-- Name: artist_musician_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_musician_id_seq OWNED BY public.artist_musician.id;


--
-- Name: artist_musician_instrument; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.artist_musician_instrument (
    id integer NOT NULL,
    musician_id integer NOT NULL,
    instrument_id integer NOT NULL
);


ALTER TABLE public.artist_musician_instrument OWNER TO musicuser;

--
-- Name: artist_musician_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.artist_musician_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_musician_instrument_id_seq OWNER TO musicuser;

--
-- Name: artist_musician_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.artist_musician_instrument_id_seq OWNED BY public.artist_musician_instrument.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO musicuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO musicuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO musicuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO musicuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO musicuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO musicuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO musicuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO musicuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO musicuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO musicuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO musicuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO musicuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO musicuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO musicuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO musicuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO musicuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO musicuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: musicuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO musicuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: musicuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: musicuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO musicuser;

--
-- Name: artist_album id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_album ALTER COLUMN id SET DEFAULT nextval('public.artist_album_id_seq'::regclass);


--
-- Name: artist_genre id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_genre ALTER COLUMN id SET DEFAULT nextval('public.artist_genre_id_seq'::regclass);


--
-- Name: artist_genre_groups id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_genre_groups ALTER COLUMN id SET DEFAULT nextval('public.artist_genre_groups_id_seq'::regclass);


--
-- Name: artist_group id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group ALTER COLUMN id SET DEFAULT nextval('public.artist_group_id_seq'::regclass);


--
-- Name: artist_group_albums id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_albums ALTER COLUMN id SET DEFAULT nextval('public.artist_group_albums_id_seq'::regclass);


--
-- Name: artist_group_members id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_members ALTER COLUMN id SET DEFAULT nextval('public.artist_group_members_id_seq'::regclass);


--
-- Name: artist_instrument id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_instrument ALTER COLUMN id SET DEFAULT nextval('public.artist_instrument_id_seq'::regclass);


--
-- Name: artist_musician id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_musician ALTER COLUMN id SET DEFAULT nextval('public.artist_musician_id_seq'::regclass);


--
-- Name: artist_musician_instrument id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_musician_instrument ALTER COLUMN id SET DEFAULT nextval('public.artist_musician_instrument_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: artist_album; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_album (id, name, cover_photo, group_id, release_year) FROM stdin;
12	Rage Against the Machine	albums/220px-RageAgainsttheMachineRageAgainsttheMachine.jpg	9	1992
13	Evil Empire	albums/Rage_Against_the_Machine_-_Evil_Empire.png	9	1996
14	The Battle of Los Angeles	albums/220px-RAtM-BattleofLosAngeles.jpeg	9	1999
9	Are You Experienced	albums/220px-Are_You_Experienced_-_US_cover-edit.jpg	10	1967
10	Axis: Bold as Love	albums/220px-Axiscover.jpg	10	1967
11	Electric Ladyland	albums/220px-Jimi_Hendrix_-_Electric_Ladyland.jpg	10	1968
1	Enter the Wu-Tang (36 Chambers)	albums/220px-Wu-TangClanEntertheWu-Tangalbumcover.jpg	11	1992
2	Wu-Tang Forever	albums/220px-Wu-Tang_Forever.png	11	1997
3	The W	albums/Wu-Tang_Clan_-_The_W.png	11	2000
4	Iron Flag	albums/220px-Ironflagcover.jpg	11	2001
5	8 Diagrams	albums/220px-WuTang8Diagrams.jpg	11	2007
6	A Better Tomorrow	albums/Wu-Tang_Clan_A_Better_Tomorrow.jpg	11	2014
7	Once Upon a Time in Shaolin	albums/220px-Once_Upon_A_Time_In_Shaolin_cover.jpg	11	2015
8	The Saga Continues	albums/220px-Wu-Tang_The_Saga_Continues.jpg	11	2017
\.


--
-- Data for Name: artist_genre; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_genre (id, name, about, photo) FROM stdin;
7	Jazz	The genre's description goes here. The genre's description goes here. The genre's description goes here. The genre's description goes here. The genre's description goes here.	https://upload.wikimedia.org/wikipedia/commons/f/f9/Rage_Against_The_Machine.jpg
3	metal	The genre's description goes here.	https://images.app.goo.gl/ivoQGPgXPHC79EBKA
2	rock	The genre's description goes here.	https://images.app.goo.gl/ivoQGPgXPHC79EBKA
1	hip hop	The genre's description goes here.	https://images.app.goo.gl/ivoQGPgXPHC79EBKA
5	prog metal	The genre's description goes here.	https://images.app.goo.gl/ivoQGPgXPHC79EBKA
6	Blues	The genre's description goes here. The genre's description goes here. The genre's description goes here. The genre's description goes here. The genre's description goes here.	https://images.app.goo.gl/ivoQGPgXPHC79EBKA
4	funk metal	The genre's description goes here.	https://images.app.goo.gl/ivoQGPgXPHC79EBKA
\.


--
-- Data for Name: artist_genre_groups; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_genre_groups (id, genre_id, group_id) FROM stdin;
\.


--
-- Data for Name: artist_group; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_group (id, name, origin, photo, bio, genre_id, year_formed, logo) FROM stdin;
9	Rage Against the Machine	Los Angeles, CA	groups/ratm_group.jpg	Rage is an American rock band formed in Los Angeles in 1991. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.	2	1991	groups/ratm_live.jpg
10	The Jimi Hendrix Experience	London, England	groups/220px-Jimi_Hendrix_Experience_in_Fenklup.png	The Jimi Hendrix Experience was an American-English band formed in London in 1966. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.	2	1966	groups/jimihendrixexperience_logo.jpg
11	Wu-Tang Clan	New York City, NY	groups/wu_tang_logo.png	Wu-Tang Clan is a hip-hop group formed in Staten Island in 1992. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.	1	1992	groups/wu_tang_logo_FVCFaUs.png
\.


--
-- Data for Name: artist_group_albums; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_group_albums (id, group_id, album_id) FROM stdin;
1	11	1
2	11	2
3	11	3
4	11	4
5	11	5
6	11	6
7	11	7
8	11	8
10	10	9
11	10	10
12	10	11
14	9	12
15	9	13
16	9	14
\.


--
-- Data for Name: artist_group_members; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_group_members (id, group_id, musician_id) FROM stdin;
16	10	13
17	10	14
18	10	15
20	11	8
21	11	9
23	11	16
24	11	17
25	11	18
26	11	19
27	11	20
28	11	21
29	11	22
31	9	11
32	9	12
33	9	7
34	9	4
\.


--
-- Data for Name: artist_instrument; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_instrument (id, name) FROM stdin;
1	vocals
2	guitar
3	synth
4	bass
5	drums
6	turntables
\.


--
-- Data for Name: artist_musician; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_musician (id, first_name, last_name, hometown, photo, group_id, alias, bio) FROM stdin;
6	Danny	Carey	Paola, KS	musicians/testimage.jpg	\N	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
13	Jimi	Hendrix	Seattle, WA	musicians/220px-Jimi_Hendrix_1967_uncropped.jpg	10	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
5	Justin	Chancellor	London, UK	undefined	\N	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
3	Kirk	Hammet	undefined	undefined	\N	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
2	Kendrick	Lamar	undefined	undefined	\N	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
23	Maynard James	Keenan	somewhere, OH	/media/bc1.jpg	\N	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
15	Mitch	Mitchell	Ealing, Middlesex, England	musicians/220px-Mitch_Mitchell.png	10	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
14	Noel	Redding	Folkestone, Kent, England	musicians/250px-Noel_Redding.png	10	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
12	Brad	Wilk	Chicago, IL	musicians/300px-Brad_Wilk.jpg	9	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
11	Tim	Commerford	Irvine, CA	musicians/220px-Tim_Commerford_rage.jpg	9	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
4	Tom	Morello	Libertyville, IL	musicians/220px-Tom-morello.jpg	9	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
7	Zack	De La Rocha	Long Beach, CA	musicians/220px-Zach_de_la_Rocha_at_2007_Coachella_Valley_Music_and_Arts_Festival.webp	9	None	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
22	Darryl	Hill	New York City, NY	musicians/Cappadonna2.jpg	11	Cappadonna	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
17	Gary	Grice	New York City, NY	musicians/220px-Gza-01-mika.jpg	11	GZA	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
9	Dennis	Coles	New York City, NY	musicians/Ghostface_Killah_in_Norway_2010.jpg	11	Ghostface Killah	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
18	Jason	Hunter	New York City, NY	musicians/Inspectah_Deck_in_Paris_2013.jpg	11	Inspectah Deck	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
21	Jamel	Irief	Brooklyn, NY	musicians/Masta_Killa_in_Paris_2013.jpg	11	Masta Killa	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
8	Clifford	Smith	Staten Island, NY	musicians/220px-Method_Man_at_Shattuck_Down_Low.jpg	11	Method Man	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
16	Robert	Diggs	Brooklyn, NY	musicians/220px-RZA_speaking_at_the_2018_San_Diego_Comic_Con_International_cropped.jpg	11	RZA	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
20	Corey	Woods	Brooklyn, NY	musicians/220px-Raekwon_at_the_Pitchfork_Music_Festival.jpg	11	Raekwon	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
19	Lamont	Hawkins	New York City, NY	musicians/U-God_in_Paris_2013.jpg	11	U-God	The musician's bio goes here. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.
\.


--
-- Data for Name: artist_musician_instrument; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.artist_musician_instrument (id, musician_id, instrument_id) FROM stdin;
2	2	1
3	3	2
4	4	2
5	5	4
6	6	5
7	7	1
8	8	1
9	9	1
12	11	4
13	12	5
14	13	1
15	13	2
16	14	4
17	15	5
18	16	1
19	17	1
20	18	1
21	19	1
22	20	1
23	21	1
24	22	1
25	23	1
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add genre	1	add_genre
2	Can change genre	1	change_genre
3	Can delete genre	1	delete_genre
4	Can view genre	1	view_genre
5	Can add instrument	2	add_instrument
6	Can change instrument	2	change_instrument
7	Can delete instrument	2	delete_instrument
8	Can view instrument	2	view_instrument
9	Can add musician	3	add_musician
10	Can change musician	3	change_musician
11	Can delete musician	3	delete_musician
12	Can view musician	3	view_musician
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	6	add_permission
22	Can change permission	6	change_permission
23	Can delete permission	6	delete_permission
24	Can view permission	6	view_permission
25	Can add group	7	add_group
26	Can change group	7	change_group
27	Can delete group	7	delete_group
28	Can view group	7	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
41	Can add album	11	add_album
42	Can change album	11	change_album
43	Can delete album	11	delete_album
44	Can view album	11	view_album
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$wEwmqspt6muJ$nKxaGIEJiQdFHeiDBrP5ap55N6ki0JRp55zk1qHHj4s=	2020-06-24 15:07:03.85574-04	t	admin			admin@email.com	t	t	2020-06-03 17:45:52.938921-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-06-03 18:00:33.138306-04	1	hip hop	1	[{"added": {}}]	1	1
2	2020-06-03 18:00:37.129076-04	2	rock	1	[{"added": {}}]	1	1
3	2020-06-03 18:00:44.503084-04	3	metal	1	[{"added": {}}]	1	1
4	2020-06-03 18:01:16.458779-04	1	Group object (1)	1	[{"added": {}}]	4	1
5	2020-06-03 18:01:22.719895-04	1	Group object (1)	2	[]	4	1
6	2020-06-03 18:01:29.999584-04	2	Group object (2)	1	[{"added": {}}]	4	1
7	2020-06-03 18:01:32.996519-04	2	Group object (2)	2	[]	4	1
8	2020-06-03 18:01:42.628023-04	3	Group object (3)	1	[{"added": {}}]	4	1
9	2020-06-03 18:01:57.36829-04	1	vocals	1	[{"added": {}}]	2	1
10	2020-06-03 18:02:01.009343-04	2	guitar	1	[{"added": {}}]	2	1
11	2020-06-03 18:02:03.911417-04	3	synth	1	[{"added": {}}]	2	1
12	2020-06-03 18:02:06.346918-04	4	bass	1	[{"added": {}}]	2	1
13	2020-06-03 18:02:08.940701-04	5	drums	1	[{"added": {}}]	2	1
14	2020-06-03 18:02:13.068634-04	6	turntables	1	[{"added": {}}]	2	1
15	2020-06-03 18:03:14.907255-04	2	Lamar	1	[{"added": {}}]	3	1
16	2020-06-03 18:03:22.085414-04	3	Hammet	1	[{"added": {}}]	3	1
17	2020-06-03 18:03:31.067422-04	4	Morello	1	[{"added": {}}]	3	1
18	2020-06-03 18:03:37.917902-04	5	Chancellor	1	[{"added": {}}]	3	1
19	2020-06-03 18:03:47.609194-04	6	Carey	1	[{"added": {}}]	3	1
20	2020-06-04 12:01:51.617276-04	7	Zack De La Rocha	1	[{"added": {}}]	3	1
21	2020-06-04 12:02:43.574846-04	4	Tom Morello	2	[{"changed": {"fields": ["Group", "Photo", "Hometown"]}}]	3	1
22	2020-06-04 12:10:56.752631-04	4	funk metal	1	[{"added": {}}]	1	1
23	2020-06-04 12:12:50.331586-04	1	Rage Against the Machine	2	[{"changed": {"fields": ["Genre", "Origin"]}}]	4	1
24	2020-06-04 12:15:08.800378-04	1	Rage Against the Machine	2	[{"changed": {"fields": ["Photo"]}}]	4	1
25	2020-06-04 13:15:58.410023-04	1	Rage Against the Machine	2	[{"changed": {"fields": ["Members"]}}]	4	1
26	2020-06-04 13:16:07.968523-04	1	Rage Against the Machine	2	[]	4	1
27	2020-06-04 13:32:51.103972-04	2	Pantera	3		4	1
28	2020-06-04 13:32:56.137085-04	3	Kendrick Lamar	3		4	1
29	2020-06-04 13:33:02.126674-04	1	Rage Against the Machine	2	[]	4	1
30	2020-06-04 13:33:20.843231-04	7	Zack De La Rocha	2	[{"changed": {"fields": ["Group"]}}]	3	1
31	2020-06-04 13:33:31.280479-04	4	Tom Morello	2	[{"changed": {"fields": ["Group"]}}]	3	1
32	2020-06-04 14:14:13.003533-04	4	Wu Tang Clan	1	[{"added": {}}]	4	1
33	2020-06-04 14:15:21.164275-04	8	Method Man	1	[{"added": {}}]	3	1
34	2020-06-04 14:16:03.267716-04	9	Ghostface Killah	1	[{"added": {}}]	3	1
35	2020-06-04 14:22:25.295265-04	4	Wu Tang Clan	2	[{"changed": {"fields": ["Members"]}}]	4	1
36	2020-06-05 12:14:18.338653-04	4	Wu Tang Clan	2	[]	4	1
37	2020-06-05 12:21:22.234448-04	4	Wu Tang Clan	2	[{"changed": {"fields": ["Photo"]}}]	4	1
38	2020-06-05 12:22:13.833313-04	4	Wu Tang Clan	2	[{"changed": {"fields": ["Photo"]}}]	4	1
39	2020-06-05 12:26:14.018336-04	5	prog metal	1	[{"added": {}}]	1	1
40	2020-06-05 12:27:05.160883-04	5	Tool	1	[{"added": {}}]	4	1
41	2020-06-05 12:34:58.701586-04	5	Tool	2	[{"changed": {"fields": ["Photo"]}}]	4	1
42	2020-06-05 12:35:23.981924-04	5	Tool	2	[{"changed": {"fields": ["Photo"]}}]	4	1
43	2020-06-05 12:36:10.36715-04	5	Tool	2	[{"changed": {"fields": ["Photo"]}}]	4	1
44	2020-06-05 12:36:52.756481-04	5	Tool	2	[{"changed": {"fields": ["Photo"]}}]	4	1
45	2020-06-05 12:38:12.54821-04	4	Wu Tang Clan	2	[{"changed": {"fields": ["Photo"]}}]	4	1
46	2020-06-05 12:38:29.528902-04	4	Wu Tang Clan	2	[]	4	1
47	2020-06-05 12:39:24.236078-04	4	Wu Tang Clan	2	[{"changed": {"fields": ["Photo"]}}]	4	1
48	2020-06-05 12:40:45.778909-04	4	Wu Tang Clan	2	[]	4	1
49	2020-06-05 13:24:38.988533-04	4	Tom Morello	2	[]	3	1
50	2020-06-05 13:29:03.261649-04	4	Tom Morello	2	[]	3	1
51	2020-06-05 13:29:49.98251-04	4	Tom Morello	2	[{"changed": {"fields": ["Photo"]}}]	3	1
52	2020-06-05 13:30:16.48532-04	4	Tom Morello	2	[]	3	1
53	2020-06-05 13:47:24.42058-04	6	Danny Carey	2	[{"changed": {"fields": ["Group", "Hometown"]}}]	3	1
54	2020-06-05 13:47:40.968687-04	5	Justin Chancellor	2	[{"changed": {"fields": ["Group", "Hometown"]}}]	3	1
55	2020-06-06 14:43:33.740671-04	4	Wu-Tang Clan	2	[{"changed": {"fields": ["Name"]}}]	4	1
56	2020-06-08 11:19:06.886931-04	6	Justin Bieber	1	[{"added": {}}]	4	1
57	2020-06-08 11:24:04.210378-04	6	Justin Bieber	2	[]	4	1
58	2020-06-08 11:24:07.71425-04	5	Tool	2	[]	4	1
59	2020-06-08 11:26:36.409117-04	7	Motley Crue	1	[{"added": {}}]	4	1
60	2020-06-08 12:28:21.770477-04	6	Blues	1	[{"added": {}}]	1	1
61	2020-06-08 12:33:10.91863-04	7	Jazz	1	[{"added": {}}]	1	1
62	2020-06-09 12:01:09.62872-04	5	prog metal	2	[{"changed": {"fields": ["Groups"]}}]	1	1
63	2020-06-09 12:01:13.879376-04	7	Jazz	2	[{"changed": {"fields": ["Groups"]}}]	1	1
64	2020-06-09 12:01:17.758536-04	6	Blues	2	[{"changed": {"fields": ["Groups"]}}]	1	1
65	2020-06-09 12:01:22.39393-04	3	metal	2	[{"changed": {"fields": ["Groups"]}}]	1	1
66	2020-06-09 12:01:26.61139-04	2	rock	2	[{"changed": {"fields": ["Groups"]}}]	1	1
67	2020-06-09 12:01:32.011843-04	1	hip hop	2	[{"changed": {"fields": ["Groups"]}}]	1	1
68	2020-06-09 12:02:16.687164-04	5	prog metal	2	[]	1	1
69	2020-06-09 12:04:22.858474-04	7	Motley Crue	2	[{"changed": {"fields": ["Genre"]}}]	4	1
70	2020-06-09 12:04:30.443801-04	6	Justin Bieber	2	[{"changed": {"fields": ["Genre"]}}]	4	1
71	2020-06-09 12:05:02.817905-04	1	Rage Against the Machine	2	[{"changed": {"fields": ["Genre"]}}]	4	1
72	2020-06-09 12:05:15.527677-04	6	Blues	2	[]	1	1
73	2020-06-09 12:05:26.768992-04	7	Motley Crue	2	[{"changed": {"fields": ["Genre"]}}]	4	1
74	2020-06-09 12:05:51.697181-04	4	funk metal	2	[{"changed": {"fields": ["Groups"]}}]	1	1
75	2020-06-09 13:21:45.345983-04	8	The Jimi Hendrix Experien	1	[{"added": {}}]	4	1
76	2020-06-09 13:23:14.564615-04	8	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Name"]}}]	4	1
77	2020-06-09 13:23:47.36979-04	10	Jimi Henxdrix	1	[{"added": {}}]	3	1
78	2020-06-09 13:23:54.622711-04	10	Jimi Hendrix	2	[{"changed": {"fields": ["Last name"]}}]	3	1
79	2020-06-09 13:26:05.899236-04	8	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Photo"]}}]	4	1
80	2020-06-10 14:25:02.531187-04	7	Motley Crue	2	[{"changed": {"fields": ["Photo2"]}}]	4	1
81	2020-06-10 14:30:25.082975-04	6	Justin Bieber	2	[{"changed": {"fields": ["Photo2"]}}]	4	1
82	2020-06-10 17:39:01.7662-04	7	Motley Crue	2	[{"changed": {"fields": ["Photo2"]}}]	4	1
83	2020-06-10 17:46:17.414466-04	7	Motley Crue	2	[{"changed": {"fields": ["Photo2"]}}]	4	1
84	2020-06-10 17:47:50.019513-04	7	Motley Crue	2	[{"changed": {"fields": ["Photo2"]}}]	4	1
85	2020-06-10 18:04:13.714339-04	8	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Photo2"]}}]	4	1
86	2020-06-10 18:14:53.032426-04	8	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Photo2"]}}]	4	1
87	2020-06-10 18:22:10.36138-04	6	Justin Bieber	2	[{"changed": {"fields": ["Photo2"]}}]	4	1
88	2020-06-11 11:04:20.481051-04	8	The Jimi Hendrix Experience	3		4	1
89	2020-06-11 11:04:24.238066-04	7	Motley Crue	3		4	1
90	2020-06-11 11:04:28.107903-04	6	Justin Bieber	3		4	1
91	2020-06-11 11:04:32.077639-04	5	Tool	3		4	1
92	2020-06-11 11:04:35.857501-04	4	Wu-Tang Clan	3		4	1
93	2020-06-11 11:04:39.097216-04	1	Rage Against the Machine	3		4	1
94	2020-06-11 11:07:29.064598-04	9	Rage	1	[{"added": {}}]	4	1
95	2020-06-11 12:38:42.659311-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
96	2020-06-11 12:39:08.074341-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
97	2020-06-11 12:40:23.385269-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
98	2020-06-11 12:47:49.724334-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
99	2020-06-11 13:03:56.57147-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
100	2020-06-11 13:04:42.445151-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
101	2020-06-11 13:09:45.192895-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
102	2020-06-11 14:31:29.373772-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
103	2020-06-11 14:36:50.211305-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
104	2020-06-11 14:40:40.019006-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
105	2020-06-12 11:24:40.682591-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
106	2020-06-12 12:26:36.282284-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
107	2020-06-12 12:27:57.916523-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
108	2020-06-12 12:28:53.354839-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
109	2020-06-12 12:30:37.66966-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
110	2020-06-12 12:34:02.605132-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
111	2020-06-12 12:36:14.653662-04	9	Rage	2	[{"changed": {"fields": ["Photo"]}}]	4	1
112	2020-06-15 13:59:54.734477-04	1	Album object (1)	1	[{"added": {}}]	11	1
113	2020-06-15 14:04:38.209098-04	1	Evil Empire	2	[{"changed": {"fields": ["Cover photo"]}}]	11	1
114	2020-06-15 14:05:06.476331-04	2	Rage Against the Machine	1	[{"added": {}}]	11	1
115	2020-06-15 14:05:15.92435-04	1	Evil Empire	2	[{"changed": {"fields": ["Release date"]}}]	11	1
116	2020-06-15 15:45:26.207881-04	9	Rage	2	[{"changed": {"fields": ["Albums"]}}]	4	1
117	2020-06-15 15:50:45.283335-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Name", "Date formed", "Photo"]}}]	4	1
118	2020-06-15 15:58:15.210672-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Year formed"]}}]	4	1
119	2020-06-15 15:58:30.413546-04	1	Evil Empire	2	[{"changed": {"fields": ["Release year"]}}]	11	1
120	2020-06-15 15:58:36.195212-04	2	Rage Against the Machine	2	[{"changed": {"fields": ["Release year"]}}]	11	1
121	2020-06-15 16:19:24.479028-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Bio"]}}]	4	1
122	2020-06-16 13:43:24.432661-04	11	Tim Commerford	1	[{"added": {}}]	3	1
123	2020-06-16 13:47:34.923606-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Genre", "Members"]}}]	4	1
124	2020-06-16 13:48:21.337528-04	11	Tim Commerford	2	[{"changed": {"fields": ["Photo"]}}]	3	1
125	2020-06-16 13:48:44.248864-04	4	Tom Morello	2	[{"changed": {"fields": ["Photo"]}}]	3	1
126	2020-06-16 13:49:32.237282-04	9	Ghostface Killah	2	[{"changed": {"fields": ["Photo"]}}]	3	1
127	2020-06-16 13:49:43.132865-04	7	Zack De La Rocha	2	[{"changed": {"fields": ["Photo"]}}]	3	1
128	2020-06-16 13:55:52.175376-04	11	Tim Commerford	2	[]	3	1
129	2020-06-16 13:57:50.614415-04	12	Brad Wilk	1	[{"added": {}}]	3	1
130	2020-06-16 13:58:11.44123-04	12	Brad Wilk	2	[]	3	1
131	2020-06-16 13:58:47.056421-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Members"]}}]	4	1
132	2020-06-16 14:00:00.168315-04	7	Zack De La Rocha	2	[{"changed": {"fields": ["Photo"]}}]	3	1
133	2020-06-16 14:00:42.431337-04	4	Tom Morello	2	[{"changed": {"fields": ["Group", "Photo"]}}]	3	1
134	2020-06-16 14:00:52.060369-04	7	Zack De La Rocha	2	[{"changed": {"fields": ["Group"]}}]	3	1
135	2020-06-16 17:41:11.801861-04	9	Rage Against the Machine	2	[]	4	1
136	2020-06-16 17:49:00.048719-04	3	The Battle of Los Angeles	1	[{"added": {}}]	11	1
137	2020-06-16 17:49:15.621535-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Albums"]}}]	4	1
138	2020-06-16 17:50:26.731586-04	9	Rage Against the Machine	2	[{"changed": {"name": "album", "object": "Evil Empire", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Rage Against the Machine", "fields": ["Cover photo"]}}]	4	1
139	2020-06-16 17:50:36.288343-04	9	Rage Against the Machine	2	[]	4	1
140	2020-06-17 08:19:27.469925-04	10	The Jimi Hendrix Experience	1	[{"added": {}}, {"added": {"name": "musician", "object": "Jimi Hendrix"}}, {"added": {"name": "musician", "object": "Noel Redding"}}, {"added": {"name": "musician", "object": "Mitch Mitchell"}}, {"added": {"name": "album", "object": "Are You Experienced"}}, {"added": {"name": "album", "object": "Axis: Bold as Love"}}, {"added": {"name": "album", "object": "Electric Ladyland"}}]	4	1
141	2020-06-17 08:20:17.663714-04	10	Jimi Hendrix	3		3	1
142	2020-06-17 08:20:33.870261-04	13	Jimi Hendrix	2	[]	3	1
143	2020-06-17 08:21:45.066604-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Members", "Albums"]}}, {"changed": {"name": "musician", "object": "Jimi Hendrix", "fields": ["Photo"]}}]	4	1
144	2020-06-17 08:22:50.398797-04	10	The Jimi Hendrix Experience	2	[{"changed": {"name": "musician", "object": "Noel Redding", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Mitch Mitchell", "fields": ["Photo"]}}, {"changed": {"name": "album", "object": "Are You Experienced", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Axis: Bold as Love", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Electric Ladyland", "fields": ["Cover photo"]}}]	4	1
145	2020-06-17 08:23:18.025589-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Photo"]}}]	4	1
146	2020-06-17 08:37:20.17333-04	11	Wu-Tang Clan	1	[{"added": {}}]	4	1
147	2020-06-17 08:40:34.338907-04	15	None	2	[{"changed": {"fields": ["Alias"]}}]	3	1
148	2020-06-17 08:41:09.108978-04	14	Noel Redding	2	[{"changed": {"fields": ["Alias"]}}]	3	1
149	2020-06-17 08:41:16.622491-04	13	Jimi Hendrix	2	[{"changed": {"fields": ["Alias"]}}]	3	1
150	2020-06-17 08:41:21.282656-04	12	Brad Wilk	2	[{"changed": {"fields": ["Alias"]}}]	3	1
151	2020-06-17 08:41:25.950169-04	11	Tim Commerford	2	[{"changed": {"fields": ["Alias"]}}]	3	1
152	2020-06-17 08:41:32.156966-04	9	Ghostface Killah	2	[{"changed": {"fields": ["Alias"]}}]	3	1
153	2020-06-17 08:41:37.309005-04	8	Method Man	2	[{"changed": {"fields": ["Alias"]}}]	3	1
154	2020-06-17 08:41:43.87114-04	7	Zack De La Rocha	2	[{"changed": {"fields": ["Alias"]}}]	3	1
155	2020-06-17 08:41:49.009079-04	6	Danny Carey	2	[{"changed": {"fields": ["Alias"]}}]	3	1
156	2020-06-17 08:41:55.479253-04	5	Justin Chancellor	2	[{"changed": {"fields": ["Alias"]}}]	3	1
157	2020-06-17 08:42:00.332565-04	4	Tom Morello	2	[{"changed": {"fields": ["Alias"]}}]	3	1
158	2020-06-17 08:42:05.04173-04	3	Kirk Hammet	2	[{"changed": {"fields": ["Alias"]}}]	3	1
159	2020-06-17 08:42:12.003517-04	2	Kendrick Lamar	2	[{"changed": {"fields": ["Alias"]}}]	3	1
160	2020-06-17 08:43:51.641414-04	9	Ghostface Killah	2	[{"changed": {"fields": ["First name", "Last name", "Alias", "Group", "Photo"]}}]	3	1
161	2020-06-17 08:45:01.992547-04	8	Method Man	2	[{"changed": {"fields": ["First name", "Last name", "Alias", "Group", "Photo", "Hometown"]}}]	3	1
162	2020-06-17 08:47:03.96166-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Members"]}}, {"added": {"name": "musician", "object": "RZA"}}]	4	1
163	2020-06-17 08:52:26.822289-04	11	Wu-Tang Clan	2	[{"added": {"name": "musician", "object": "GZA"}}, {"added": {"name": "musician", "object": "Inspectah Deck"}}, {"added": {"name": "musician", "object": "U-God"}}, {"added": {"name": "musician", "object": "Raekwon"}}, {"added": {"name": "musician", "object": "Masta Killa"}}, {"added": {"name": "musician", "object": "Cappadonna"}}]	4	1
164	2020-06-17 08:54:25.106797-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Members"]}}, {"added": {"name": "album", "object": "Enter the Wu-Tang"}}, {"added": {"name": "album", "object": "Wu-Tang Forever"}}, {"added": {"name": "album", "object": "The W"}}, {"added": {"name": "album", "object": "Iron Flag"}}, {"added": {"name": "album", "object": "8 Diagrams"}}, {"added": {"name": "album", "object": "A Better Tomorrow"}}, {"added": {"name": "album", "object": "Once Upon a Time in Shaolin"}}, {"added": {"name": "album", "object": "The Saga Continues"}}]	4	1
165	2020-06-17 08:56:19.792699-04	11	Wu-Tang Clan	2	[{"changed": {"name": "album", "object": "Enter the Wu-Tang", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Wu-Tang Forever", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "The W", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Iron Flag", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "8 Diagrams", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "A Better Tomorrow", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Once Upon a Time in Shaolin", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "The Saga Continues", "fields": ["Cover photo"]}}]	4	1
166	2020-06-17 08:57:55.446513-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Photo", "Members", "Albums"]}}]	4	1
167	2020-06-17 11:45:11.337307-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Bio"]}}]	4	1
168	2020-06-19 14:25:12.875246-04	1	Wu Tang Forever	1	[{"added": {}}]	11	1
169	2020-06-19 14:25:29.587252-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Albums"]}}]	4	1
170	2020-06-19 14:29:57.110971-04	11	Wu-Tang Clan	2	[{"added": {"name": "album", "object": "Wu-Tang Forever"}}, {"added": {"name": "album", "object": "The W"}}, {"added": {"name": "album", "object": "Iron Flag"}}, {"added": {"name": "album", "object": "8 Diagrams"}}, {"added": {"name": "album", "object": "A Better Tomorrow"}}, {"added": {"name": "album", "object": "Once Upon a Time in Shaolin"}}, {"added": {"name": "album", "object": "The Saga Continues"}}, {"changed": {"name": "album", "object": "Enter the Wu-Tang (36 Chambers)", "fields": ["Name", "Release year", "Cover photo"]}}]	4	1
171	2020-06-19 14:31:44.774651-04	8	The Saga Continues	2	[]	11	1
172	2020-06-19 14:31:48.757453-04	7	Once Upon a Time in Shaolin	2	[]	11	1
173	2020-06-19 14:31:52.784496-04	6	A Better Tomorrow	2	[]	11	1
174	2020-06-19 14:31:56.238801-04	5	8 Diagrams	2	[]	11	1
175	2020-06-19 14:32:00.545995-04	3	The W	2	[]	11	1
176	2020-06-19 14:33:11.389581-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Albums"]}}]	4	1
177	2020-06-19 14:36:14.58078-04	11	Wu-Tang Clan	2	[{"changed": {"name": "musician", "object": "Method Man", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Ghostface Killah", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "RZA", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "GZA", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Inspectah Deck", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "U-God", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Raekwon", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Masta Killa", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Cappadonna", "fields": ["Alias"]}}]	4	1
178	2020-06-19 14:37:58.83763-04	11	Wu-Tang Clan	2	[{"changed": {"name": "musician", "object": "Ghostface Killah", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "RZA", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "GZA", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Inspectah Deck", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "U-God", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Raekwon", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Masta Killa", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Cappadonna", "fields": ["Photo"]}}]	4	1
179	2020-06-19 14:39:16.191213-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Albums"]}}, {"changed": {"name": "musician", "object": "Jimi Hendrix", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Noel Redding", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Mitch Mitchell", "fields": ["Alias"]}}]	4	1
180	2020-06-19 14:41:33.672563-04	10	The Jimi Hendrix Experience	2	[{"changed": {"name": "musician", "object": "Jimi Hendrix", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Noel Redding", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Mitch Mitchell", "fields": ["Photo"]}}, {"added": {"name": "album", "object": "Are You Experienced"}}, {"added": {"name": "album", "object": "Axis: Bold as Love"}}, {"added": {"name": "album", "object": "Electric Ladyland"}}]	4	1
181	2020-06-19 14:41:42.939521-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Albums"]}}]	4	1
182	2020-06-19 14:42:46.472063-04	4	Iron Flag	2	[{"changed": {"fields": ["Cover photo"]}}]	11	1
183	2020-06-19 14:46:46.559628-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Year formed", "Members", "Albums"]}}, {"changed": {"name": "musician", "object": "Zack De La Rocha", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Tim Commerford", "fields": ["Alias"]}}, {"changed": {"name": "musician", "object": "Brad Wilk", "fields": ["Alias"]}}, {"added": {"name": "album", "object": "Rage Against the Machine"}}, {"added": {"name": "album", "object": "Evil Empire"}}, {"added": {"name": "album", "object": "The Battle of Los Angeles"}}]	4	1
184	2020-06-19 14:47:24.122301-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Photo", "Members", "Albums"]}}, {"changed": {"name": "musician", "object": "Tom Morello", "fields": ["Alias"]}}]	4	1
185	2020-06-19 14:47:36.030225-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Members"]}}]	4	1
186	2020-06-19 14:48:00.393192-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Year formed"]}}]	4	1
187	2020-06-19 14:48:10.320019-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Year formed"]}}]	4	1
188	2020-06-19 14:49:23.92433-04	9	Rage Against the Machine	2	[{"changed": {"name": "album", "object": "Rage Against the Machine", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Evil Empire", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "The Battle of Los Angeles", "fields": ["Cover photo"]}}]	4	1
189	2020-06-19 14:50:28.89606-04	9	Rage Against the Machine	2	[{"changed": {"name": "musician", "object": "Tom Morello", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Zack De La Rocha", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Tim Commerford", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Brad Wilk", "fields": ["Photo"]}}]	4	1
190	2020-06-20 08:53:12.675727-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Photo"]}}]	4	1
191	2020-06-20 08:55:13.522196-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Photo"]}}]	4	1
192	2020-06-20 09:12:58.197536-04	11	Wu-Tang Clan	2	[{"changed": {"name": "musician", "object": "Method Man", "fields": ["Photo"]}}]	4	1
193	2020-06-20 09:30:52.668387-04	6	Danny Carey	2	[{"changed": {"fields": ["Alias"]}}]	3	1
194	2020-06-20 09:31:01.036037-04	5	Justin Chancellor	2	[{"changed": {"fields": ["Alias"]}}]	3	1
195	2020-06-20 09:31:08.853646-04	3	Kirk Hammet	2	[{"changed": {"fields": ["Alias"]}}]	3	1
196	2020-06-20 09:31:15.666449-04	2	Kendrick Lamar	2	[{"changed": {"fields": ["Alias"]}}]	3	1
197	2020-06-20 09:33:04.252982-04	23	Maynard James Keenan	1	[{"added": {}}]	3	1
198	2020-06-20 09:33:25.456203-04	9	Rage Against the Machine	2	[]	4	1
199	2020-06-20 13:35:17.158842-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Bio"]}}]	4	1
200	2020-06-20 13:36:24.778232-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Bio"]}}]	4	1
201	2020-06-20 13:37:21.797653-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Bio"]}}]	4	1
202	2020-06-20 13:38:16.41745-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Bio"]}}]	4	1
203	2020-06-21 09:29:13.944735-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Logo"]}}]	4	1
204	2020-06-21 09:29:26.527001-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Logo"]}}]	4	1
205	2020-06-21 09:29:43.092944-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Logo"]}}]	4	1
206	2020-06-21 09:32:07.465848-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Logo"]}}]	4	1
207	2020-06-24 08:51:04.805678-04	6	Danny Carey	2	[{"changed": {"fields": ["Photo"]}}]	3	1
208	2020-06-24 11:44:09.704204-04	6	Danny Carey	2	[{"changed": {"fields": ["Photo"]}}]	3	1
209	2020-06-24 11:50:09.832979-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Photo"]}}]	4	1
210	2020-06-24 11:50:48.885776-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Logo"]}}]	4	1
211	2020-06-24 11:52:23.409847-04	10	The Jimi Hendrix Experience	2	[{"changed": {"fields": ["Photo", "Logo"]}}, {"changed": {"name": "musician", "object": "Jimi Hendrix", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Mitch Mitchell", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Noel Redding", "fields": ["Photo"]}}]	4	1
212	2020-06-24 11:54:23.980786-04	9	Rage Against the Machine	2	[{"changed": {"name": "musician", "object": "Brad Wilk", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Tim Commerford", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Tom Morello", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Zack De La Rocha", "fields": ["Photo"]}}, {"changed": {"name": "album", "object": "Rage Against the Machine", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Evil Empire", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "The Battle of Los Angeles", "fields": ["Cover photo"]}}]	4	1
213	2020-06-24 11:55:22.986109-04	10	The Jimi Hendrix Experience	2	[{"changed": {"name": "album", "object": "Are You Experienced", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Axis: Bold as Love", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Electric Ladyland", "fields": ["Cover photo"]}}]	4	1
214	2020-06-24 11:59:04.321876-04	11	Wu-Tang Clan	2	[{"changed": {"fields": ["Photo", "Logo"]}}, {"changed": {"name": "musician", "object": "Cappadonna", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "GZA", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Ghostface Killah", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Inspectah Deck", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Masta Killa", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Method Man", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "RZA", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Raekwon", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "U-God", "fields": ["Photo"]}}, {"changed": {"name": "album", "object": "Enter the Wu-Tang (36 Chambers)", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Wu-Tang Forever", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "The W", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Iron Flag", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "8 Diagrams", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "A Better Tomorrow", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "Once Upon a Time in Shaolin", "fields": ["Cover photo"]}}, {"changed": {"name": "album", "object": "The Saga Continues", "fields": ["Cover photo"]}}]	4	1
215	2020-06-24 12:04:15.636015-04	10	The Jimi Hendrix Experience	2	[{"changed": {"name": "musician", "object": "Jimi Hendrix", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Mitch Mitchell", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Noel Redding", "fields": ["Photo"]}}]	4	1
216	2020-06-24 12:09:32.844332-04	9	Rage Against the Machine	2	[{"changed": {"name": "musician", "object": "Brad Wilk", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Tim Commerford", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Tom Morello", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Zack De La Rocha", "fields": ["Photo"]}}]	4	1
217	2020-06-24 12:11:33.063824-04	11	Wu-Tang Clan	2	[{"changed": {"name": "musician", "object": "Cappadonna", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "GZA", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Ghostface Killah", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Inspectah Deck", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Masta Killa", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Method Man", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "RZA", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "Raekwon", "fields": ["Photo"]}}, {"changed": {"name": "musician", "object": "U-God", "fields": ["Photo"]}}]	4	1
218	2020-06-24 12:16:49.715305-04	6	Danny Carey	2	[{"changed": {"fields": ["Photo"]}}]	3	1
219	2020-06-24 12:18:00.030264-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Photo"]}}]	4	1
220	2020-06-24 12:35:19.056567-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Photo"]}}]	4	1
221	2020-06-24 15:08:34.487235-04	9	Rage Against the Machine	2	[{"changed": {"fields": ["Photo"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	artist	genre
2	artist	instrument
3	artist	musician
4	artist	group
5	admin	logentry
6	auth	permission
7	auth	group
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	artist	album
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-06-03 17:40:09.757641-04
2	auth	0001_initial	2020-06-03 17:40:09.803365-04
3	admin	0001_initial	2020-06-03 17:40:09.848113-04
4	admin	0002_logentry_remove_auto_add	2020-06-03 17:40:09.864785-04
5	admin	0003_logentry_add_action_flag_choices	2020-06-03 17:40:09.875905-04
6	artist	0001_initial	2020-06-03 17:40:09.90494-04
7	contenttypes	0002_remove_content_type_name	2020-06-03 17:40:09.947457-04
8	auth	0002_alter_permission_name_max_length	2020-06-03 17:40:09.953431-04
9	auth	0003_alter_user_email_max_length	2020-06-03 17:40:09.964196-04
10	auth	0004_alter_user_username_opts	2020-06-03 17:40:09.975029-04
11	auth	0005_alter_user_last_login_null	2020-06-03 17:40:09.987932-04
12	auth	0006_require_contenttypes_0002	2020-06-03 17:40:09.990037-04
13	auth	0007_alter_validators_add_error_messages	2020-06-03 17:40:10.002272-04
14	auth	0008_alter_user_username_max_length	2020-06-03 17:40:10.015792-04
15	auth	0009_alter_user_last_name_max_length	2020-06-03 17:40:10.026059-04
16	auth	0010_alter_group_name_max_length	2020-06-03 17:40:10.036036-04
17	auth	0011_update_proxy_permissions	2020-06-03 17:40:10.049502-04
18	sessions	0001_initial	2020-06-03 17:40:10.055604-04
19	artist	0002_auto_20200604_1537	2020-06-04 11:37:38.454139-04
20	artist	0003_musician_group	2020-06-04 11:58:31.808502-04
21	artist	0004_auto_20200604_1612	2020-06-04 12:12:15.190339-04
22	artist	0005_auto_20200604_1614	2020-06-04 12:14:06.391141-04
23	artist	0006_auto_20200604_1641	2020-06-04 12:41:42.247445-04
24	artist	0007_auto_20200604_1715	2020-06-04 13:15:36.918594-04
25	artist	0008_group_bio	2020-06-08 11:16:43.182464-04
26	artist	0009_auto_20200608_1523	2020-06-08 11:23:44.071611-04
27	artist	0010_auto_20200608_1525	2020-06-08 11:25:56.141919-04
28	artist	0011_auto_20200608_1550	2020-06-08 12:02:41.736156-04
29	artist	0012_auto_20200608_1552	2020-06-08 12:02:41.754213-04
30	artist	0013_auto_20200608_1552	2020-06-08 12:02:41.762378-04
31	artist	0014_auto_20200608_1553	2020-06-08 12:02:41.772434-04
32	artist	0015_auto_20200608_1556	2020-06-08 12:02:41.786394-04
33	artist	0016_auto_20200608_1558	2020-06-08 12:02:41.817679-04
34	artist	0017_remove_genre_about	2020-06-08 12:02:41.832447-04
35	artist	0018_remove_group_bio	2020-06-08 12:02:41.841279-04
36	artist	0019_auto_20200608_1609	2020-06-08 12:09:59.083022-04
37	artist	0020_auto_20200608_1611	2020-06-08 12:11:26.692759-04
38	artist	0021_auto_20200608_1627	2020-06-08 12:27:30.554172-04
39	artist	0022_auto_20200608_1632	2020-06-08 12:32:37.946167-04
40	artist	0023_auto_20200609_1722	2020-06-09 13:23:01.803811-04
61	artist	0024_group_photo2	2020-06-19 13:33:56.45966-04
62	artist	0025_auto_20200610_1829	2020-06-19 13:33:56.472226-04
63	artist	0026_auto_20200610_2145	2020-06-19 13:33:56.482359-04
64	artist	0027_auto_20200610_2159	2020-06-19 13:33:56.491819-04
65	artist	0028_auto_20200611_1506	2020-06-19 13:33:56.516489-04
66	artist	0029_auto_20200611_1709	2020-06-19 13:33:56.528138-04
67	artist	0030_auto_20200611_1836	2020-06-19 13:33:56.537543-04
68	artist	0031_auto_20200612_1524	2020-06-19 13:33:56.54661-04
69	artist	0032_auto_20200612_1526	2020-06-19 13:33:56.555326-04
70	artist	0033_auto_20200612_1527	2020-06-19 13:33:56.56407-04
71	artist	0034_auto_20200612_1527	2020-06-19 13:33:56.573389-04
72	artist	0035_auto_20200614_1347	2020-06-19 13:33:56.583439-04
73	artist	0036_auto_20200615_1641	2020-06-19 13:33:56.61166-04
74	artist	0037_auto_20200615_1759	2020-06-19 13:33:56.658854-04
75	artist	0038_auto_20200615_1956	2020-06-19 13:33:56.685971-04
76	artist	0039_auto_20200615_1957	2020-06-19 13:33:56.707023-04
77	artist	0040_auto_20200615_2018	2020-06-19 13:33:56.722656-04
78	artist	0041_auto_20200616_1744	2020-06-19 13:33:56.737897-04
79	artist	0042_musician_alias	2020-06-19 13:33:56.755812-04
80	artist	0043_auto_20200618_2123	2020-06-19 13:33:56.768681-04
81	artist	0001_squashed_0043_auto_20200618_2123	2020-06-19 14:01:22.255036-04
82	artist	0044_auto_20200620_1332	2020-06-20 09:32:26.496706-04
83	artist	0045_auto_20200620_1817	2020-06-20 14:17:21.577246-04
84	artist	0046_auto_20200621_1328	2020-06-21 09:28:47.551684-04
85	artist	0047_musician_bio	2020-06-21 09:53:18.435044-04
86	artist	0048_auto_20200624_1246	2020-06-24 08:49:56.749042-04
88	artist	0049_auto_20200624_1526	2020-06-24 11:42:14.46006-04
89	artist	0050_auto_20200624_1602	2020-06-24 12:02:52.266829-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: musicuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ebodqn6v4musiqq4c4aafr38e43omwcv	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-06-17 17:53:16.713087-04
uq1dd31ihw5zzs08do7y6ha344b3zdf5	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-06-22 11:17:11.864062-04
6b2is2af07g1feq1nyy0q8swd7awdhfu	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-06-29 15:45:12.526754-04
52n8qphw9sfcm89o2pon9xlrsamp5naq	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-07-03 13:32:31.50938-04
f2he8r5lkadtkd6t9l8wjx9c575vzcr4	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-07-04 08:52:51.875922-04
bn7j4ovc4zxps63vgdkmti4rw7vlzkug	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-07-04 13:34:59.831425-04
ekd35ay5zkfp1g0jul0x60n32cjmf927	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-07-08 12:07:15.602727-04
xuhqa8uyhlbtg6u5cxk4d5aevrat7vkb	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-07-08 12:21:49.502337-04
bslgjjh287c059mez29ndo3k80854j28	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-07-08 12:23:27.810583-04
31w18u4449lci3sdy9vq7s51yf5wzj40	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-07-08 12:37:24.238079-04
1hjoj5urej85ziue99b85ydgloa7ak7e	ODI1NWYyOWIzZWJhNTlhZWE5MDFkNGRmZmIzNDlmMTM1OWJkZDc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyM2FjZDU1NjcwN2IwZTkwYWVlMGRmMmRkNDQzMWYwNWI0YzM4YzFjIn0=	2020-07-08 15:07:03.857874-04
\.


--
-- Name: artist_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_album_id_seq', 14, true);


--
-- Name: artist_genre_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_genre_groups_id_seq', 9, true);


--
-- Name: artist_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_genre_id_seq', 7, true);


--
-- Name: artist_group_albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_group_albums_id_seq', 16, true);


--
-- Name: artist_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_group_id_seq', 11, true);


--
-- Name: artist_group_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_group_members_id_seq', 34, true);


--
-- Name: artist_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_instrument_id_seq', 6, true);


--
-- Name: artist_musician_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_musician_id_seq', 23, true);


--
-- Name: artist_musician_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.artist_musician_instrument_id_seq', 25, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 221, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: musicuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 89, true);


--
-- Name: artist_album artist_album_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_album
    ADD CONSTRAINT artist_album_pkey PRIMARY KEY (id);


--
-- Name: artist_genre_groups artist_genre_groups_genre_id_group_id_9b4c4c4d_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_genre_groups
    ADD CONSTRAINT artist_genre_groups_genre_id_group_id_9b4c4c4d_uniq UNIQUE (genre_id, group_id);


--
-- Name: artist_genre_groups artist_genre_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_genre_groups
    ADD CONSTRAINT artist_genre_groups_pkey PRIMARY KEY (id);


--
-- Name: artist_genre artist_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_genre
    ADD CONSTRAINT artist_genre_pkey PRIMARY KEY (id);


--
-- Name: artist_group_albums artist_group_albums_group_id_album_id_0fc04438_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_albums
    ADD CONSTRAINT artist_group_albums_group_id_album_id_0fc04438_uniq UNIQUE (group_id, album_id);


--
-- Name: artist_group_albums artist_group_albums_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_albums
    ADD CONSTRAINT artist_group_albums_pkey PRIMARY KEY (id);


--
-- Name: artist_group_members artist_group_members_group_id_musician_id_639c7ac1_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_members
    ADD CONSTRAINT artist_group_members_group_id_musician_id_639c7ac1_uniq UNIQUE (group_id, musician_id);


--
-- Name: artist_group_members artist_group_members_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_members
    ADD CONSTRAINT artist_group_members_pkey PRIMARY KEY (id);


--
-- Name: artist_group artist_group_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group
    ADD CONSTRAINT artist_group_pkey PRIMARY KEY (id);


--
-- Name: artist_instrument artist_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_instrument
    ADD CONSTRAINT artist_instrument_pkey PRIMARY KEY (id);


--
-- Name: artist_musician_instrument artist_musician_instrume_musician_id_instrument_i_ebcbb089_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_musician_instrument
    ADD CONSTRAINT artist_musician_instrume_musician_id_instrument_i_ebcbb089_uniq UNIQUE (musician_id, instrument_id);


--
-- Name: artist_musician_instrument artist_musician_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_musician_instrument
    ADD CONSTRAINT artist_musician_instrument_pkey PRIMARY KEY (id);


--
-- Name: artist_musician artist_musician_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_musician
    ADD CONSTRAINT artist_musician_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: artist_album_group_id_eeb37955; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_album_group_id_eeb37955 ON public.artist_album USING btree (group_id);


--
-- Name: artist_genre_groups_genre_id_4cfc4eee; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_genre_groups_genre_id_4cfc4eee ON public.artist_genre_groups USING btree (genre_id);


--
-- Name: artist_genre_groups_group_id_78946db8; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_genre_groups_group_id_78946db8 ON public.artist_genre_groups USING btree (group_id);


--
-- Name: artist_group_albums_album_id_18acce3a; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_group_albums_album_id_18acce3a ON public.artist_group_albums USING btree (album_id);


--
-- Name: artist_group_albums_group_id_ddbdd27d; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_group_albums_group_id_ddbdd27d ON public.artist_group_albums USING btree (group_id);


--
-- Name: artist_group_genre_id_2b76e94f; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_group_genre_id_2b76e94f ON public.artist_group USING btree (genre_id);


--
-- Name: artist_group_members_group_id_6052ad8b; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_group_members_group_id_6052ad8b ON public.artist_group_members USING btree (group_id);


--
-- Name: artist_group_members_musician_id_4d604306; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_group_members_musician_id_4d604306 ON public.artist_group_members USING btree (musician_id);


--
-- Name: artist_musician_group_id_e1db25b8; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_musician_group_id_e1db25b8 ON public.artist_musician USING btree (group_id);


--
-- Name: artist_musician_instrument_instrument_id_b70d559d; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_musician_instrument_instrument_id_b70d559d ON public.artist_musician_instrument USING btree (instrument_id);


--
-- Name: artist_musician_instrument_musician_id_56e237f8; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX artist_musician_instrument_musician_id_56e237f8 ON public.artist_musician_instrument USING btree (musician_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: musicuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: artist_album artist_album_group_id_eeb37955_fk_artist_group_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_album
    ADD CONSTRAINT artist_album_group_id_eeb37955_fk_artist_group_id FOREIGN KEY (group_id) REFERENCES public.artist_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_genre_groups artist_genre_groups_genre_id_4cfc4eee_fk_artist_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_genre_groups
    ADD CONSTRAINT artist_genre_groups_genre_id_4cfc4eee_fk_artist_genre_id FOREIGN KEY (genre_id) REFERENCES public.artist_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_genre_groups artist_genre_groups_group_id_78946db8_fk_artist_group_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_genre_groups
    ADD CONSTRAINT artist_genre_groups_group_id_78946db8_fk_artist_group_id FOREIGN KEY (group_id) REFERENCES public.artist_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_group_albums artist_group_albums_album_id_18acce3a_fk_artist_album_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_albums
    ADD CONSTRAINT artist_group_albums_album_id_18acce3a_fk_artist_album_id FOREIGN KEY (album_id) REFERENCES public.artist_album(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_group_albums artist_group_albums_group_id_ddbdd27d_fk_artist_group_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_albums
    ADD CONSTRAINT artist_group_albums_group_id_ddbdd27d_fk_artist_group_id FOREIGN KEY (group_id) REFERENCES public.artist_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_group artist_group_genre_id_2b76e94f_fk_artist_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group
    ADD CONSTRAINT artist_group_genre_id_2b76e94f_fk_artist_genre_id FOREIGN KEY (genre_id) REFERENCES public.artist_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_group_members artist_group_members_group_id_6052ad8b_fk_artist_group_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_members
    ADD CONSTRAINT artist_group_members_group_id_6052ad8b_fk_artist_group_id FOREIGN KEY (group_id) REFERENCES public.artist_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_group_members artist_group_members_musician_id_4d604306_fk_artist_musician_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_group_members
    ADD CONSTRAINT artist_group_members_musician_id_4d604306_fk_artist_musician_id FOREIGN KEY (musician_id) REFERENCES public.artist_musician(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_musician artist_musician_group_id_e1db25b8_fk_artist_group_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_musician
    ADD CONSTRAINT artist_musician_group_id_e1db25b8_fk_artist_group_id FOREIGN KEY (group_id) REFERENCES public.artist_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_musician_instrument artist_musician_inst_instrument_id_b70d559d_fk_artist_in; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_musician_instrument
    ADD CONSTRAINT artist_musician_inst_instrument_id_b70d559d_fk_artist_in FOREIGN KEY (instrument_id) REFERENCES public.artist_instrument(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artist_musician_instrument artist_musician_inst_musician_id_56e237f8_fk_artist_mu; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.artist_musician_instrument
    ADD CONSTRAINT artist_musician_inst_musician_id_56e237f8_fk_artist_mu FOREIGN KEY (musician_id) REFERENCES public.artist_musician(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: musicuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

