--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: captcha_captchastore; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.captcha_captchastore (
    id bigint NOT NULL,
    challenge character varying(32) NOT NULL,
    response character varying(32) NOT NULL,
    hashkey character varying(40) NOT NULL,
    expiration timestamp with time zone NOT NULL
);


ALTER TABLE public.captcha_captchastore OWNER TO django;

--
-- Name: captcha_captchastore_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.captcha_captchastore_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captcha_captchastore_id_seq OWNER TO django;

--
-- Name: captcha_captchastore_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.captcha_captchastore_id_seq OWNED BY public.captcha_captchastore.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
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


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: home_category; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.home_category (
    id bigint NOT NULL,
    title character varying(150) NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(225)
);


ALTER TABLE public.home_category OWNER TO django;

--
-- Name: home_category_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.home_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_category_id_seq OWNER TO django;

--
-- Name: home_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.home_category_id_seq OWNED BY public.home_category.id;


--
-- Name: home_subcategory; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.home_subcategory (
    id bigint NOT NULL,
    title character varying(150) NOT NULL,
    slug character varying(225),
    "order" integer,
    category_id bigint
);


ALTER TABLE public.home_subcategory OWNER TO django;

--
-- Name: home_subcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.home_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_subcategory_id_seq OWNER TO django;

--
-- Name: home_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.home_subcategory_id_seq OWNED BY public.home_subcategory.id;


--
-- Name: home_topic; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.home_topic (
    id bigint NOT NULL,
    title character varying(150) NOT NULL,
    description text NOT NULL,
    content text NOT NULL,
    html_content text NOT NULL,
    data timestamp with time zone NOT NULL,
    update_data timestamp with time zone NOT NULL,
    is_published boolean NOT NULL,
    image character varying(100) NOT NULL,
    slug character varying(225),
    author_id integer,
    category_id bigint NOT NULL,
    subcategory_id bigint
);


ALTER TABLE public.home_topic OWNER TO django;

--
-- Name: home_topic_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.home_topic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_topic_id_seq OWNER TO django;

--
-- Name: home_topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.home_topic_id_seq OWNED BY public.home_topic.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: captcha_captchastore id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.captcha_captchastore ALTER COLUMN id SET DEFAULT nextval('public.captcha_captchastore_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_category id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_category ALTER COLUMN id SET DEFAULT nextval('public.home_category_id_seq'::regclass);


--
-- Name: home_subcategory id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_subcategory ALTER COLUMN id SET DEFAULT nextval('public.home_subcategory_id_seq'::regclass);


--
-- Name: home_topic id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_topic ALTER COLUMN id SET DEFAULT nextval('public.home_topic_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
1	admin
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add captcha store	7	add_captchastore
26	Can change captcha store	7	change_captchastore
27	Can delete captcha store	7	delete_captchastore
28	Can view captcha store	7	view_captchastore
29	Can add sub category	8	add_subcategory
30	Can change sub category	8	change_subcategory
31	Can delete sub category	8	delete_subcategory
32	Can view sub category	8	view_subcategory
33	Can add topic	9	add_topic
34	Can change topic	9	change_topic
35	Can delete topic	9	delete_topic
36	Can view topic	9	view_topic
37	Can add category	10	add_category
38	Can change category	10	change_category
39	Can delete category	10	delete_category
40	Can view category	10	view_category
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$OI3wPXKFhbK4KCXm4oNu3f$N519MJaJFn/o2AgIIeRhKcTA9GJC9XgY6EXbvKrnM4I=	2021-12-13 08:21:16.334+01	t	diana			dianamatkava@gmail.com	t	t	2021-11-09 13:19:26+01
2	pbkdf2_sha256$260000$YLxtmkEPERJ4CPlDKddmBs$mwMjST3QXeV8NoMPfVKyWtklRfuJXxiFwkngYp/XXhQ=	2021-12-12 18:47:35.357+01	f	user1				f	t	2021-12-06 10:54:36.824+01
3	pbkdf2_sha256$260000$Lxta1Dd8b6YUg3nTQ92Aoq$PBNZaDrgoeQ6pv3szqg1GKQfpbwJTPvYuG96bGEamhg=	2021-12-06 18:33:44.918+01	f	user2				f	t	2021-12-06 10:59:48.218+01
4	pbkdf2_sha256$260000$zr2Nnmx86OSut1wzgphpNb$fCGkbHOvmZzG5d4QUJbrszGAtmbhL7yPjHYUtdLKWDw=	\N	f	user3				f	t	2021-12-06 11:26:44.621+01
5	pbkdf2_sha256$260000$fjCrZbsOwNTpFbzozcy8uJ$CuHvGRnaR2vKDRfwvM4tESnBCmrUTk+zWK1BrkXFqrk=	\N	f	user4				f	t	2021-12-06 11:27:56.915+01
6	pbkdf2_sha256$260000$dhLXbvudxq68ZGer9QQYbp$3PwDT1IgF9p7HJLc6RQLhuvQrlM7j76n4fo03wMbWfo=	\N	f	user5				f	t	2021-12-06 11:49:19.381+01
7	pbkdf2_sha256$260000$7Hoduum3bK2QLI7dLgtKTF$vcr8hmCKBWwzC5IKL9JkrKP4ip5MQ9+75dGrav3ShxU=	\N	f	user6				f	t	2021-12-06 11:52:31.194+01
8	pbkdf2_sha256$260000$h33sbzyxs39Vh2NdhWsfjn$HLueBsIiLMqCx/MkcLiYsh1cM5kSSQDppgWNz5Yc58E=	\N	f	user7				f	t	2021-12-06 11:54:09.953+01
9	pbkdf2_sha256$260000$2GD4TaN6i7CPtdTE20OsiW$U522+bWpS+/781hW6bX2/9Y2C7Vmlrhc7vxLuWJYb04=	\N	f	user8				f	t	2021-12-06 12:08:05.246+01
10	pbkdf2_sha256$260000$BXx7FnXA3tjlM047Mmlx4v$GhpUBCgCdW5AkofnfQWYSQWwK0fW/7bVE56g7APmkHA=	\N	f	user9				f	t	2021-12-06 12:09:33.711+01
11	pbkdf2_sha256$260000$pTaFxjecKBrhBWYoYljrqC$yBC3k/dxDWa2uOlIwyiHPNFbp5tTqJIunIpkT0WN1ZU=	\N	f	user10				f	t	2021-12-06 12:10:24.655+01
12	pbkdf2_sha256$260000$MV6JpkPpTBVk9gyp6uigxi$hRIywoKugKXLxZKfBGPoVfSDknRQQuZxr8Xnq5Pai34=	\N	f	user11				f	t	2021-12-06 12:49:44.946+01
13	pbkdf2_sha256$260000$PgsPpQrbP3VupfqSHixqJi$5rlNNeLB8HCA41UYqjTHZAgtc0aEg0nWPjOyDHUoRi0=	\N	f	user13				f	t	2021-12-06 12:51:03.067+01
14	pbkdf2_sha256$260000$7jOev5ChN2QHDpsvgUIGGy$prXm//N5WbSnKEuqw+RJ6gjhjn9syMUpbGqxzAWQtGs=	\N	f	user15			user15@mail.ru	f	t	2021-12-06 13:22:15.213+01
15	pbkdf2_sha256$260000$dKiV4w1hVWNYdKHRbCNNPL$bqXAR2/XeNA2sWBxxfpniuudflVuhnOpHNNPjsIFiRA=	\N	f	user16			user16@mail.com	f	t	2021-12-06 13:27:54.446+01
16	pbkdf2_sha256$260000$cBH3aIkPC2y1PEdYtlA0JV$njKwR3u5+O4s7lS9WJY5Gs7OLVJCeBVX2QkMkpq5K5w=	\N	f	user18			user18@gmail.com	f	t	2021-12-06 19:07:26.414+01
17	pbkdf2_sha256$260000$hF1Z2KNy7efWHI3lkgXDbq$9Spu3PqNPMoPN3JdlQP9pi2fUL9Eklg/OmHs8S3aFA4=	\N	f	user19			user18@gmail.com	f	t	2021-12-06 19:12:18.029+01
18	pbkdf2_sha256$260000$f6rPRy1UrXY74iyCjTOLuj$1pdW3twLtmYulNRRFrHDSADG0U14lABXo6xgHCqVs8Y=	\N	f	user21			user18@gmail.com	f	t	2021-12-06 19:14:23.499+01
19	pbkdf2_sha256$260000$K0am3aypruYioddPbSWHvP$NsMdiQqkNLUY9yxTouNs+B9cEjnbFiyNrqmRwG+ogzM=	2021-12-08 22:15:16.054+01	f	user20				f	t	2021-12-08 22:15:15.048+01
20	pbkdf2_sha256$260000$vmU0GRPkrWqETg0QD9AkkM$RDeCtQt2BPYuJf1ocIgSr0MSxKazkFkpM/hqz8urFLA=	2021-12-08 22:16:39.745+01	f	user22				f	t	2021-12-08 22:16:39.109+01
21	pbkdf2_sha256$260000$1RaiUZn2y7JOf52nS5wktp$9UFGkXjyGnEBwBpYun62f1KSs2wiF8DkhDWPHZEBEyg=	2021-12-08 22:21:15.392+01	f	user23			user23@gmail.com	f	t	2021-12-08 22:21:14.958+01
22	pbkdf2_sha256$260000$sK9A6zeS6HFiYT9yfhHRhU$99+ZBAIBkcAQZdSxWpdSWG057sgjzSIymtzLWaewHOI=	2021-12-08 22:22:02.755+01	f	user25				f	t	2021-12-08 22:22:02.334+01
23	pbkdf2_sha256$260000$UeIk0JFjs3RFWEmfExy97S$x5nuq3fCRopK0edrcA3WQx3HyWy1Deaoq9LoLvQZIgU=	2021-12-09 08:01:07.627+01	f	user26			user26@gmail.com	f	t	2021-12-09 08:01:06.809+01
24	pbkdf2_sha256$260000$uPh0aHcwSMWV9ZFTCFK3ou$GR8hV3fNhbvvW9x8oYSLX7z2CpGt2Ccr25HfGG6V2HA=	2021-12-10 10:57:00.738+01	f	user27			user27@mail.ru	f	t	2021-12-10 10:57:00.471+01
25	pbkdf2_sha256$260000$0geGQlB4yuHCw4GAHgEDW1$NWRYOkXzvVnPaaNnsfQLbJ2ntrt2yPN/GnYpLWqTwko=	2021-12-12 11:16:39.728+01	f	miranda			scodemiro@gmail.com	f	t	2021-12-12 11:16:39.474+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
2	1	1
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: captcha_captchastore; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.captcha_captchastore (id, challenge, response, hashkey, expiration) FROM stdin;
53	UMXK	umxk	024cf712f8d7182d79d7498c8e07d306e5fd39b3	2022-08-29 20:45:12.640806+02
54	PIKT	pikt	1a6c67d20ef019b6add0c07c556b132067558620	2022-08-29 20:52:47.7465+02
55	PJZH	pjzh	0b151b7bbbef86ec8ebaf2a91c3685eda90e19f9	2022-08-29 20:53:41.689704+02
56	EKVV	ekvv	5d0e22a0452d3fb4d5f3887f8d6819b705058c6c	2022-08-29 20:54:53.506373+02
57	QGFU	qgfu	cf67806b292e8f05b389830ae55262cd985b14f5	2022-08-29 20:55:03.619596+02
58	TWFB	twfb	3e4ed43f1f4cfbd1cab6f6793c333baf1726461e	2022-08-29 20:55:39.31255+02
59	THSV	thsv	0a42b34cb6d39ce63d26a5c4af3e7bac5e936c65	2022-08-29 20:57:09.774709+02
60	RZDI	rzdi	96c5c8ffdde9b951f008b692e9d6f5cdfcd5f11e	2022-08-29 20:58:04.437864+02
61	HKWB	hkwb	34a88af9c52c437d36ba7c3ab90a5171789391b4	2022-08-29 21:00:55.415963+02
62	VMGH	vmgh	b80827a024dd5f7ab55920c8fb8ba5e92f1c7b8f	2022-08-29 21:01:58.026335+02
63	PMPM	pmpm	5829bd79d3a39451e2592ea43f51291fbcabe1d4	2022-08-29 21:02:08.817814+02
64	NNWO	nnwo	e470f8810a87de86a238313bc3eb985498ca7270	2022-08-29 21:02:54.292756+02
65	DXQZ	dxqz	f6f01c661a6dd4835831f341d7d74ed54b3d6389	2022-08-29 21:03:05.86394+02
66	ZKOM	zkom	b00abb102a02a5160385e28d21f2bd08f5ad6bcd	2022-08-29 21:05:41.435871+02
67	CWJC	cwjc	9883c93ab23b37fa90fd480bac21d7bd14c205c1	2022-08-29 21:06:31.655942+02
68	WBSU	wbsu	1b5dbc5399e9eb3b65902834a86a09288a06d241	2022-08-29 21:07:09.691102+02
69	PHFF	phff	a34537b3abb51d6e0542170bb187461fb2d63da9	2022-08-29 21:07:32.094917+02
70	BKDZ	bkdz	c20e6041bf59fde85942c2baf7e02d1bfc43768d	2022-08-29 21:08:08.215258+02
71	CPFA	cpfa	87acae322e30dbd5d308d1d5de3ac63d5c5619f6	2022-08-29 21:09:19.132079+02
72	HUPP	hupp	1f455eb164f1a08cc0a81556fe31f7b83f101e7c	2022-08-29 21:10:36.018682+02
73	YNIQ	yniq	efd23bdd89d695c75f37975e859d54516323eba0	2022-08-29 21:11:18.883281+02
74	JWFN	jwfn	5ab8f152fa1020f220db96ee2d9f745467006370	2022-08-29 21:11:35.697764+02
75	FYPE	fype	5401194769c0fef583f7f55f5baa868f80044b14	2022-08-29 21:12:38.55368+02
76	QWBJ	qwbj	8e37d7cfb82642576a75fd3bc555593f124ddc78	2022-09-03 16:00:45.698447+02
77	TSSD	tssd	ae79afce4c1922e2d2ed8a9db3f0887e4c58198f	2022-09-10 17:50:29.313338+02
78	SYZB	syzb	a974cb99d484974e820778beb9e77a3636de0829	2022-09-11 10:54:26.128796+02
36	CXIB	cxi	577fbb8c270768dc9de1457435e982901356ad58	2021-12-08 21:02:10.732+01
37	VHSS	vhss	8ffbf20126dbf20dc2f26c89ba44bf2af6ccf602	2021-12-09 07:54:44.468+01
38	NKAK	nkak	25f5ef2820880ac608e9da5125f67cd571f36b41	2021-12-10 12:04:46.512+01
39	JVAT	jvat	876f317f1f6bee72ae961a371b54cf1266ebc896	2021-12-12 13:59:50.203+01
40	TGSO	tgso	58fa2ec1ec5cc7025286bbbca2625a3e1e76e96f	2021-12-12 15:00:22.57+01
41	IQIS	iqis	92958091439e9e64e69f968104e3194594a5651e	2021-12-12 15:09:40.287+01
42	NHMC	nhmc	29eeab1d647373945e126c69c92f42608541df6e	2021-12-12 15:17:21.105+01
43	FQOC	fqoc	cc5c7c2ba5819e0b02e482c9470e1d1391761368	2021-12-12 15:18:21.386+01
44	WSNC	wsnc	1d43f645b36ca227d669ee1ca5e2cdebc1e8d5a8	2021-12-12 19:58:34.564+01
45	QLOH	qloh	769faafc22e17d481d9a18735e8ff5b7d6b06185	2021-12-12 20:35:44.826+01
46	PPMU	ppmu	b83912b0e068a54287d88c5ec457fd35cbc9aef4	2021-12-12 20:50:38.371+01
47	DIVC	divc	7f3cacabcc9275bc586740216371a0a9e5e9c161	2021-12-12 21:55:05.709+01
48	OEHA	oeha	f9bc58c2e0c796c77cf5bd5807e0e42935cb40fc	2021-12-12 21:55:20.491+01
49	QPLA	qpla	df9853536695c1515cd5e48f63454161b63bb81c	2021-12-12 22:04:57.215+01
50	ERQU	erqu	35a48b17b997c297045d77db304203baa16f21a7	2021-12-12 22:05:33.767+01
51	PEPT	pept	93668ab984dcf4427224ce860c42e0f627a1affc	2021-12-13 07:56:41.555+01
52	JIUP	jiup	36a832a7828323b190d0cd9235f35ce6032cf7e4	2021-12-13 11:45:18.353+01
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
341	2021-12-05 14:19:08.619+01	7	Другое	2	[]	7	1
396	2021-12-08 09:49:34.504+01	52	Блоки	2	[]	8	1
1	2021-11-09 13:39:31.211+01	1	HTML	1	[{"added": {}}]	7	1
2	2021-11-09 13:39:42.245+01	2	CSS	1	[{"added": {}}]	7	1
3	2021-11-09 13:39:56.858+01	3	Django	1	[{"added": {}}]	7	1
4	2021-11-09 13:52:10.553+01	1	Start Django Project	1	[{"added": {}}]	8	1
5	2021-11-09 17:08:02.007+01	4	Python	1	[{"added": {}}]	7	1
6	2021-11-09 17:08:29.177+01	5	GIT	1	[{"added": {}}]	7	1
7	2021-11-09 17:08:41.056+01	6	OOP	1	[{"added": {}}]	7	1
8	2021-11-09 17:17:25.904+01	3	Django	2	[{"changed": {"fields": ["image"]}}]	7	1
9	2021-12-02 10:18:31.039+01	1	tart Django Projec	1	[{"added": {}}]	9	1
10	2021-12-02 10:18:35.723+01	1	tart Django Projec	2	[{"changed": {"fields": ["HTML Content", "Subcategory"]}}]	8	1
11	2021-12-02 10:20:20.438+01	2	URL-связи	1	[{"added": {}}]	8	1
12	2021-12-02 10:20:28.372+01	2	URL-связи	2	[]	8	1
13	2021-12-02 10:22:17.645+01	3	Список вложенных маршрутов	1	[{"added": {}}]	8	1
14	2021-12-02 10:22:35.598+01	2	URL-связи	1	[{"added": {}}]	9	1
15	2021-12-02 10:22:47.579+01	2	URL-связи	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
439	2021-12-11 16:09:23.561+01	14	Static	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
16	2021-12-02 10:22:52.327+01	3	Список вложенных маршрутов	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
17	2021-12-02 10:23:49.975+01	3	Models	1	[{"added": {}}]	9	1
18	2021-12-02 10:24:03.796+01	3	Модели	2	[{"changed": {"fields": ["Title"]}}]	9	1
19	2021-12-02 10:24:10.145+01	4	Модели	1	[{"added": {}}]	8	1
20	2021-12-02 10:25:05.853+01	5	Типы полей модели	1	[{"added": {}}]	8	1
21	2021-12-02 10:25:30.595+01	6	Миграции	1	[{"added": {}}]	8	1
22	2021-12-02 10:26:11.326+01	6	Создание связей между моделями	2	[{"changed": {"fields": ["Title", "HTML Content"]}}]	8	1
23	2021-12-02 10:26:28.084+01	7	Миграции	1	[{"added": {}}]	8	1
24	2021-12-02 10:27:14.752+01	8	Регистрация модели в админке	1	[{"added": {}}]	8	1
25	2021-12-02 10:27:27.607+01	4	Админка	1	[{"added": {}}]	9	1
26	2021-12-02 10:27:46.756+01	4	Админка	3		9	1
27	2021-12-02 10:27:56.338+01	9	Админка	1	[{"added": {}}]	8	1
28	2021-12-02 10:33:07.815+01	5	Views & Templates	1	[{"added": {}}]	9	1
29	2021-12-02 10:33:10.442+01	10	Функции представления	1	[{"added": {}}]	8	1
30	2021-12-02 10:33:44.879+01	11	Создание шаблона (Jinja2	1	[{"added": {}}]	8	1
31	2021-12-02 10:34:09.855+01	12	Наследование шаблонов	1	[{"added": {}}]	8	1
32	2021-12-02 10:34:29.452+01	13	Фильтры	1	[{"added": {}}]	8	1
33	2021-12-02 10:35:39.349+01	14	tatic	1	[{"added": {}}]	8	1
34	2021-12-02 10:36:24.981+01	15	Формирование URL-адресов в шаблонах	1	[{"added": {}}]	8	1
35	2021-12-02 10:36:49.39+01	16	Использование слагов в URL-адресах	1	[{"added": {}}]	8	1
36	2021-12-02 10:36:58.541+01	17	Использование слагов в URL-адресах	1	[{"added": {}}]	8	1
37	2021-12-02 10:37:16.487+01	14	tatic	2	[{"changed": {"fields": ["Title"]}}]	8	1
38	2021-12-02 10:37:28.483+01	11	Создание шаблона (Jinja2	2	[{"changed": {"fields": ["Title"]}}]	8	1
39	2021-12-02 10:37:57.58+01	18	Пользовательские теги шаблонов	1	[{"added": {}}]	8	1
40	2021-12-02 10:39:21.063+01	17	Пользовательские теги шаблонов	2	[{"changed": {"fields": ["Title", "HTML Content"]}}]	8	1
41	2021-12-02 10:40:19.292+01	6	Формы	1	[{"added": {}}]	9	1
42	2021-12-02 10:40:27.054+01	18	Формы	2	[{"changed": {"fields": ["Title", "HTML Content", "Subcategory"]}}]	8	1
43	2021-12-02 10:40:56.062+01	19	Аргументы для полей формы	1	[{"added": {}}]	8	1
44	2021-12-02 10:41:52.032+01	20	Стилизация формы	1	[{"added": {}}]	8	1
45	2021-12-02 10:42:18.44+01	21	Формы связанные с моделью	1	[{"added": {}}]	8	1
46	2021-12-02 10:42:36.102+01	22	Кастомные валидаторы	1	[{"added": {}}]	8	1
47	2021-12-02 10:43:40.08+01	7	Контролеры класса CBVs	1	[{"added": {}}]	9	1
48	2021-12-02 10:44:15.608+01	23	ListView	1	[{"added": {}}]	8	1
49	2021-12-02 10:44:36.227+01	24	DetailView	1	[{"added": {}}]	8	1
50	2021-12-02 10:44:52.926+01	24	DetailView	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
51	2021-12-02 10:45:10.886+01	25	CreateView	1	[{"added": {}}]	8	1
52	2021-12-02 10:45:29.883+01	26	Миксины	1	[{"added": {}}]	8	1
53	2021-12-02 10:46:15.892+01	27	MySQL	1	[{"added": {}}]	8	1
54	2021-12-02 10:47:01.215+01	28	hell	1	[{"added": {}}]	8	1
55	2021-12-02 10:47:33.555+01	8	ORM	1	[{"added": {}}]	9	1
56	2021-12-02 10:47:36.155+01	29	ORM	1	[{"added": {}}]	8	1
57	2021-12-02 10:47:54.14+01	29	ORM (Object-Relational Mapping	2	[{"changed": {"fields": ["Title"]}}]	8	1
58	2021-12-02 10:48:16.262+01	30	Базовые методы ОРМ	1	[{"added": {}}]	8	1
59	2021-12-02 10:48:40.078+01	31	Операторы фильтрации	1	[{"added": {}}]	8	1
60	2021-12-02 10:49:02.893+01	32	Логическое <b>and, or, not</b> в запросах, класс <b>Q</b>	1	[{"added": {}}]	8	1
61	2021-12-02 10:49:24.011+01	33	Агрегатные функции	1	[{"added": {}}]	8	1
62	2021-12-02 10:49:56.037+01	34	Класс <b>F</b>	1	[{"added": {}}]	8	1
63	2021-12-02 10:50:57.531+01	34	Класс F, функции СУБД и Raw SQL	2	[{"changed": {"fields": ["Title", "HTML Content"]}}]	8	1
64	2021-12-02 10:51:20.147+01	35	Django DEBUG Toolbar	1	[{"added": {}}]	8	1
65	2021-12-02 10:51:41.862+01	36	Постраничная навигация (pagination	1	[{"added": {}}]	8	1
66	2021-12-02 10:52:23.688+01	9	Регистрация и Авторизация	1	[{"added": {}}]	9	1
67	2021-12-02 10:52:26.01+01	37	Регистрация и Авторизация	1	[{"added": {}}]	8	1
68	2021-12-02 10:53:02.766+01	38	lash-сообщения	1	[{"added": {}}]	8	1
69	2021-12-02 10:53:23.833+01	39	Кастомизация формы регистрации	1	[{"added": {}}]	8	1
70	2021-12-02 10:54:03.568+01	40	Авторизация	1	[{"added": {}}]	8	1
71	2021-12-02 10:54:23.152+01	37	Регистрация	2	[{"changed": {"fields": ["Title"]}}]	8	1
72	2021-12-02 10:54:48.167+01	28	hell	2	[{"changed": {"fields": ["Title"]}}]	8	1
73	2021-12-02 10:54:53.408+01	38	lash-сообщения	2	[{"changed": {"fields": ["Title"]}}]	8	1
74	2021-12-02 10:55:36.977+01	41	Отправка писем на Email	1	[{"added": {}}]	8	1
75	2021-12-02 10:55:56.753+01	42	Капча	1	[{"added": {}}]	8	1
76	2021-12-02 10:56:18.596+01	43	Визуальный редактор CKEditor	1	[{"added": {}}]	8	1
77	2021-12-02 10:56:43.508+01	44	Система кеширование Django	1	[{"added": {}}]	8	1
78	2021-12-02 10:57:22.748+01	45	Тонкая настройка (кастомизация) админки	1	[{"added": {}}]	8	1
79	2021-12-02 10:57:46.757+01	46	Развёртывание сайта на хостинге	1	[{"added": {}}]	8	1
80	2021-12-02 19:36:20.836+01	1	Что такое Django	2	[{"changed": {"fields": ["Title", "Description", "HTML Content"]}}]	8	1
81	2021-12-02 19:36:33.621+01	1	tart Django Projec	3		9	1
82	2021-12-02 19:36:44.879+01	2	URL-связи	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
83	2021-12-02 20:32:06.429+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
84	2021-12-02 20:43:08.454+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
85	2021-12-02 20:57:11.936+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
86	2021-12-02 21:27:27.24+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
87	2021-12-02 21:37:47.06+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
88	2021-12-02 21:41:36.764+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
89	2021-12-02 21:47:59.068+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
90	2021-12-02 21:49:19.361+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
91	2021-12-02 21:51:00.299+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
92	2021-12-03 09:31:12.302+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
93	2021-12-03 09:31:49.573+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
94	2021-12-03 09:47:29.649+01	2	URL-связи	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
95	2021-12-03 09:48:37.131+01	2	URL-связи	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
96	2021-12-03 09:49:29.728+01	3	Список вложенных маршрутов	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
97	2021-12-03 10:08:40.369+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
98	2021-12-03 10:18:35.359+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
99	2021-12-03 10:21:15.799+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
100	2021-12-03 10:51:37.924+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
101	2021-12-03 10:53:46.05+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
102	2021-12-03 10:58:32.669+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
103	2021-12-03 10:59:03.621+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
104	2021-12-03 11:00:29.776+01	5	Типы полей модели	2	[]	8	1
105	2021-12-03 11:02:39.773+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
106	2021-12-03 11:03:50.491+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
107	2021-12-03 11:04:40.061+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
108	2021-12-03 11:06:31.293+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
109	2021-12-03 11:06:58.508+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
110	2021-12-03 11:07:48.895+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
111	2021-12-03 11:08:10.286+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
112	2021-12-03 11:10:14.371+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
113	2021-12-03 11:11:09.503+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
114	2021-12-03 11:11:57.359+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
115	2021-12-03 11:13:38.893+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
116	2021-12-03 11:15:19.506+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
117	2021-12-03 11:15:33.381+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
118	2021-12-03 11:15:53.995+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
119	2021-12-03 11:17:41.149+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
120	2021-12-03 11:19:25.457+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
121	2021-12-03 11:20:35.566+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
122	2021-12-03 11:21:39.63+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
123	2021-12-03 11:23:01.15+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
124	2021-12-03 14:54:01.554+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
125	2021-12-03 14:54:20.649+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
126	2021-12-03 14:57:56.118+01	6	Создание связей между моделями	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
127	2021-12-03 14:59:19.14+01	6	Создание связей между моделями	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
128	2021-12-03 15:05:43.022+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
129	2021-12-03 15:06:19.397+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
130	2021-12-03 15:06:48.43+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
131	2021-12-03 15:07:50.286+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
132	2021-12-03 15:09:58.871+01	5	Типы полей модели	2	[]	8	1
133	2021-12-03 15:11:30.985+01	6	Создание связей между моделями	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
134	2021-12-03 15:12:15.603+01	6	Создание связей между моделями	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
135	2021-12-03 15:13:37.538+01	6	Создание связей между моделями	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
136	2021-12-03 15:15:05.532+01	7	Миграции	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
137	2021-12-03 15:17:59.767+01	9	Админка	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
138	2021-12-03 15:20:14.982+01	10	Функции представления	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
139	2021-12-03 15:21:38.762+01	11	Создание шаблона (Jinja2	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
140	2021-12-03 15:22:26.813+01	11	Создание шаблона (Jinja2	2	[]	8	1
141	2021-12-03 15:22:42.297+01	9	Админка	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
142	2021-12-03 15:23:24.594+01	11	Создание шаблона (Jinja2	2	[]	8	1
143	2021-12-03 15:24:07.424+01	10	Функции представления	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
144	2021-12-03 15:33:03.978+01	10	Что такое Django	1	[{"added": {}}]	9	1
145	2021-12-03 15:33:17.951+01	1	Что такое Django	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
452	2021-12-11 22:53:45.895+01	5	Model type fields	2	[]	10	1
146	2021-12-03 16:33:28.064+01	10	Что такое Django	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
147	2021-12-03 16:33:46.811+01	9	Регистрация и Авторизация	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
148	2021-12-03 16:33:51.946+01	8	ORM	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
149	2021-12-03 16:35:07.824+01	7	Контролеры класса CBVs	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
150	2021-12-03 16:35:08.177+01	6	Формы	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
151	2021-12-03 16:35:08.667+01	5	Views & Templates	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
152	2021-12-03 16:35:09.151+01	3	Модели	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
153	2021-12-03 16:35:09.422+01	2	URL-связи	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
154	2021-12-03 20:03:48.592+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
155	2021-12-03 20:04:49.152+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
156	2021-12-03 20:05:44.677+01	1	Что такое Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
157	2021-12-03 20:11:23.425+01	2	URL-связи	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
158	2021-12-03 20:17:21.584+01	5	Типы полей модели	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
159	2021-12-03 20:25:57.15+01	9	Админка	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
160	2021-12-03 20:31:33.205+01	10	Функции представления	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
161	2021-12-03 20:33:22.555+01	11	Создание шаблона (Jinja2	2	[]	8	1
162	2021-12-03 20:34:47.115+01	12	Наследование шаблонов	2	[]	8	1
163	2021-12-03 20:36:17.309+01	13	Фильтры	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
164	2021-12-03 20:36:56.04+01	13	Фильтры	2	[]	8	1
165	2021-12-03 20:40:34.546+01	14	tatic	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
166	2021-12-03 20:47:35.428+01	15	Формирование URL-адресов в шаблонах	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
167	2021-12-03 20:50:15.233+01	16	Использование слагов в URL-адресах	2	[]	8	1
168	2021-12-03 20:52:54.312+01	17	Пользовательские теги шаблонов	2	[]	8	1
169	2021-12-03 20:54:52.433+01	18	Формы	2	[]	8	1
170	2021-12-03 20:55:42+01	20	Стилизация формы	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
171	2021-12-03 20:58:14.217+01	21	Формы связанные с моделью	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
172	2021-12-03 20:59:32.701+01	23	Контролеры класса CBVs	2	[{"changed": {"fields": ["Title"]}}]	8	1
173	2021-12-03 21:00:21.737+01	23	Контролеры класса CBVs, ListView	2	[{"changed": {"fields": ["Title"]}}]	8	1
174	2021-12-03 21:14:37.666+01	1	Что такое Django	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
175	2021-12-03 21:14:50.046+01	2	URL-связи	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
176	2021-12-03 21:15:03.301+01	3	Список вложенных маршрутов	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
177	2021-12-04 10:19:55.378+01	10	Что такое Django	2	[{"changed": {"fields": ["Slug"]}}]	9	1
178	2021-12-04 10:20:01.829+01	9	Регистрация и Авторизация	2	[{"changed": {"fields": ["Slug"]}}]	9	1
179	2021-12-04 10:20:06.893+01	8	ORM	2	[{"changed": {"fields": ["Slug"]}}]	9	1
180	2021-12-04 10:20:11.835+01	7	Контролеры класса CBVs	2	[{"changed": {"fields": ["Slug"]}}]	9	1
181	2021-12-04 10:20:17.801+01	6	Формы	2	[{"changed": {"fields": ["Slug"]}}]	9	1
182	2021-12-04 10:20:23.395+01	5	Views & Templates	2	[{"changed": {"fields": ["Slug"]}}]	9	1
183	2021-12-04 10:20:28.128+01	3	Модели	2	[{"changed": {"fields": ["Slug"]}}]	9	1
184	2021-12-04 10:20:33.83+01	2	URL-связи	2	[{"changed": {"fields": ["Slug"]}}]	9	1
185	2021-12-04 10:41:28.209+01	6	OOP	2	[{"changed": {"fields": ["Slug"]}}]	7	1
186	2021-12-04 10:41:33.564+01	5	IT	2	[{"changed": {"fields": ["Slug"]}}]	7	1
187	2021-12-04 10:41:38.995+01	4	Python	2	[{"changed": {"fields": ["Slug"]}}]	7	1
188	2021-12-04 10:41:44.43+01	3	Django	2	[{"changed": {"fields": ["Slug"]}}]	7	1
189	2021-12-04 10:41:48.747+01	2	CSS	2	[{"changed": {"fields": ["Slug"]}}]	7	1
190	2021-12-04 10:41:52.805+01	1	HTML	2	[{"changed": {"fields": ["Slug"]}}]	7	1
191	2021-12-04 10:43:28.102+01	4	Модели	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
192	2021-12-04 10:43:36.778+01	5	Типы полей модели	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
193	2021-12-04 10:43:46.18+01	6	Создание связей между моделями	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
194	2021-12-04 10:44:13.87+01	7	Миграции	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
195	2021-12-04 10:44:27.726+01	8	Регистрация модели в админке	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
196	2021-12-04 10:44:55.321+01	9	Админка	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
197	2021-12-04 10:47:39.779+01	10	Функции представления	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
198	2021-12-04 10:47:54.109+01	11	Создание шаблона (Jinja2	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
199	2021-12-04 10:48:03.574+01	12	Наследование шаблонов	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
200	2021-12-04 10:48:11.869+01	13	Фильтры	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
201	2021-12-04 10:48:20.549+01	14	tatic	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
202	2021-12-04 10:48:29.728+01	15	Формирование URL-адресов в шаблонах	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
203	2021-12-04 10:48:38.291+01	16	Использование слагов в URL-адресах	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
204	2021-12-04 10:48:47.487+01	17	Пользовательские теги шаблонов	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
205	2021-12-04 10:49:20.793+01	24	DetailView	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
206	2021-12-04 10:49:24.225+01	23	Контролеры класса CBVs, ListView	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
207	2021-12-04 10:49:27.903+01	22	Кастомные валидаторы	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
208	2021-12-04 10:49:31.228+01	21	Формы связанные с моделью	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
209	2021-12-04 10:49:34.799+01	20	Стилизация формы	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
210	2021-12-04 10:49:37.274+01	19	Аргументы для полей формы	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
211	2021-12-04 10:49:40.35+01	18	Формы	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
212	2021-12-04 10:49:43.313+01	25	CreateView	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
213	2021-12-04 10:50:15.549+01	37	Регистрация	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
214	2021-12-04 10:50:18.865+01	36	Постраничная навигация (pagination	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
215	2021-12-04 10:50:22.434+01	35	Django DEBUG Toolbar	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
216	2021-12-04 10:50:26.02+01	34	Класс F, функции СУБД и Raw SQL	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
217	2021-12-04 10:50:28.428+01	33	Агрегатные функции	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
218	2021-12-04 10:50:44.685+01	32	Логическое and, or, not в запросах, класс Q	2	[{"changed": {"fields": ["Title", "URL-slug"]}}]	8	1
219	2021-12-04 10:50:48.015+01	31	Операторы фильтрации	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
220	2021-12-04 10:50:51.511+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
221	2021-12-04 10:50:54.942+01	29	ORM (Object-Relational Mapping	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
222	2021-12-04 10:50:58.112+01	28	hell	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
223	2021-12-04 10:51:02.363+01	27	MySQL	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
224	2021-12-04 10:51:05.811+01	26	Миксины	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
225	2021-12-04 10:51:35.583+01	45	Тонкая настройка (кастомизация) админки	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
226	2021-12-04 10:51:38.881+01	44	Система кеширование Django	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
227	2021-12-04 10:51:42.416+01	43	Визуальный редактор CKEditor	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
228	2021-12-04 10:51:44.32+01	42	Капча	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
229	2021-12-04 10:51:46.913+01	41	Отправка писем на Email	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
230	2021-12-04 10:51:50.159+01	40	Авторизация	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
231	2021-12-04 10:51:53.808+01	39	Кастомизация формы регистрации	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
232	2021-12-04 10:51:57.191+01	38	lash-сообщения	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
233	2021-12-04 10:52:00.599+01	46	Развёртывание сайта на хостинге	2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
234	2021-12-04 13:12:01.809+01	11	Админка	1	[{"added": {}}]	9	1
235	2021-12-04 13:12:11.742+01	9	Админка	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
236	2021-12-04 13:14:06.324+01	11	Админка	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
237	2021-12-04 13:19:44.212+01	12	QL	1	[{"added": {}}]	9	1
238	2021-12-04 13:19:55.52+01	13	hell	1	[{"added": {}}]	9	1
239	2021-12-04 13:20:10.566+01	14	Django DEBUG Toolbar	1	[{"added": {}}]	9	1
240	2021-12-04 13:20:34.685+01	15	Постраничная навигация (pagination	1	[{"added": {}}]	9	1
241	2021-12-04 13:20:48.65+01	16	Отправка писем на Email	1	[{"added": {}}]	9	1
242	2021-12-04 13:20:57.682+01	17	Капча	1	[{"added": {}}]	9	1
243	2021-12-04 13:21:09.892+01	18	Визуальный редактор CKEditor	1	[{"added": {}}]	9	1
244	2021-12-04 13:21:21.359+01	19	Система кеширование Django	1	[{"added": {}}]	9	1
245	2021-12-04 13:21:31.534+01	20	Тонкая настройка (кастомизация) админки	1	[{"added": {}}]	9	1
246	2021-12-04 13:21:40.183+01	21	Развёртывание сайта на хостинге	1	[{"added": {}}]	9	1
247	2021-12-04 13:21:44.972+01	27	MySQL	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
248	2021-12-04 13:21:45.391+01	28	hell	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
249	2021-12-04 13:21:46.12+01	35	Django DEBUG Toolbar	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
250	2021-12-04 13:21:46.698+01	36	Постраничная навигация (pagination	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
251	2021-12-04 13:21:47.479+01	41	Отправка писем на Email	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
252	2021-12-04 13:21:48.204+01	42	Капча	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
253	2021-12-04 13:21:48.778+01	43	Визуальный редактор CKEditor	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
254	2021-12-04 13:21:49.292+01	44	Система кеширование Django	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
255	2021-12-04 13:21:49.767+01	45	Тонкая настройка (кастомизация) админки	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
256	2021-12-04 13:21:50.603+01	46	Развёртывание сайта на хостинге	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
257	2021-12-04 13:33:10.018+01	10	Что такое Django	2	[{"changed": {"fields": ["Order"]}}]	9	1
258	2021-12-04 13:33:13.728+01	2	URL-связи	2	[{"changed": {"fields": ["Order"]}}]	9	1
259	2021-12-04 13:33:17.383+01	3	Модели	2	[{"changed": {"fields": ["Order"]}}]	9	1
260	2021-12-04 13:33:20.777+01	11	Админка	2	[{"changed": {"fields": ["Order"]}}]	9	1
261	2021-12-04 13:33:24.175+01	5	Views & Templates	2	[{"changed": {"fields": ["Order"]}}]	9	1
262	2021-12-04 13:33:27.504+01	6	Формы	2	[{"changed": {"fields": ["Order"]}}]	9	1
263	2021-12-04 13:33:31.617+01	7	Контролеры класса CBVs	2	[{"changed": {"fields": ["Order"]}}]	9	1
264	2021-12-04 13:33:37.373+01	12	QL	2	[{"changed": {"fields": ["Title", "Order"]}}]	9	1
265	2021-12-04 13:33:45.318+01	13	hell	2	[{"changed": {"fields": ["Title", "Order"]}}]	9	1
266	2021-12-04 13:33:50.657+01	8	ORM	2	[{"changed": {"fields": ["Order"]}}]	9	1
267	2021-12-04 13:33:55.133+01	14	Django DEBUG Toolbar	2	[{"changed": {"fields": ["Order"]}}]	9	1
268	2021-12-04 13:34:04.349+01	15	Постраничная навигация (pagination	2	[{"changed": {"fields": ["Title", "Order"]}}]	9	1
269	2021-12-04 13:34:08.077+01	9	Регистрация и Авторизация	2	[{"changed": {"fields": ["Order"]}}]	9	1
270	2021-12-04 13:34:13.554+01	16	Отправка писем на Email	2	[{"changed": {"fields": ["Order"]}}]	9	1
271	2021-12-04 13:34:16.977+01	17	Капча	2	[{"changed": {"fields": ["Order"]}}]	9	1
272	2021-12-04 13:34:20.488+01	18	Визуальный редактор CKEditor	2	[{"changed": {"fields": ["Order"]}}]	9	1
273	2021-12-04 13:34:24.177+01	19	Система кеширование Django	2	[{"changed": {"fields": ["Order"]}}]	9	1
274	2021-12-04 13:34:28.742+01	20	Тонкая настройка (кастомизация) админки	2	[{"changed": {"fields": ["Order"]}}]	9	1
275	2021-12-04 13:34:32.948+01	21	Развёртывание сайта на хостинге	2	[{"changed": {"fields": ["Order"]}}]	9	1
276	2021-12-04 14:55:23.909+01	23	Контролеры класса CBVs, ListView	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
277	2021-12-04 14:59:34.262+01	25	CreateView	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
278	2021-12-04 15:01:19.698+01	27	MySQL	2	[]	8	1
279	2021-12-04 15:05:14.434+01	28	hell	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
280	2021-12-04 15:06:08.676+01	28	hell	2	[]	8	1
281	2021-12-04 15:17:34.393+01	29	ORM (Object-Relational Mapping	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
282	2021-12-04 15:20:16.313+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
283	2021-12-04 15:20:54.118+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
284	2021-12-04 15:21:45.215+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
285	2021-12-04 15:23:06.446+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
286	2021-12-04 15:24:57.999+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
287	2021-12-04 15:26:52.53+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
288	2021-12-04 15:29:09.177+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
289	2021-12-04 15:30:04.595+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
290	2021-12-04 15:35:26.771+01	30	Базовые методы ОРМ	2	[]	8	1
291	2021-12-04 15:37:10.381+01	31	Операторы фильтрации	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
292	2021-12-04 15:37:34.628+01	31	Операторы фильтрации	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
293	2021-12-04 15:44:36.231+01	31	Операторы фильтрации	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
294	2021-12-04 15:46:10.27+01	32	Логическое and, or, not в запросах, класс Q	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
295	2021-12-04 15:47:29.609+01	32	Логическое and, or, not в запросах, класс Q	2	[]	8	1
296	2021-12-04 15:53:26.623+01	33	Агрегатные функции	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
297	2021-12-04 15:54:03.351+01	33	Агрегатные функции	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
298	2021-12-04 15:54:28.684+01	33	Агрегатные функции	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
299	2021-12-04 15:58:15.026+01	33	Агрегатные функции	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
300	2021-12-04 16:01:09.884+01	33	Агрегатные функции	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
301	2021-12-04 16:02:21.846+01	33	Агрегатные функции	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
302	2021-12-04 16:03:02.701+01	33	Агрегатные функции	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
303	2021-12-04 16:03:27.283+01	33	Агрегатные функции	2	[]	8	1
304	2021-12-04 16:04:32.265+01	34	Класс F, функции СУБД и Raw SQL	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
305	2021-12-04 16:04:52.442+01	34	Класс F, функции СУБД и Raw SQL	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
306	2021-12-04 16:05:48.994+01	34	Класс F, функции СУБД и Raw SQL	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
307	2021-12-04 16:07:59.072+01	34	Класс F, функции СУБД и Raw SQL	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
308	2021-12-04 17:21:37.802+01	30	Базовые методы ОРМ	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
309	2021-12-04 17:28:22.146+01	30	Базовые методы ОРМ	2	[]	8	1
310	2021-12-04 20:15:09.494+01	24	DetailView	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
311	2021-12-04 22:29:08.711+01	24	DetailView	2	[]	8	1
312	2021-12-05 13:45:23.602+01	22	Другое	1	[{"added": {}}]	9	1
313	2021-12-05 13:46:23.899+01	48	aaa1	2	[{"changed": {"fields": ["Title", "URL-slug"]}}]	8	1
314	2021-12-05 13:48:22.522+01	47		2	[{"changed": {"fields": ["Subcategory", "URL-slug"]}}]	8	1
315	2021-12-05 13:48:23.098+01	48	aaa1	2	[{"changed": {"fields": ["Subcategory", "URL-slug"]}}]	8	1
316	2021-12-05 13:48:23.635+01	49	jkjkj	2	[{"changed": {"fields": ["Subcategory", "URL-slug"]}}]	8	1
317	2021-12-05 13:48:24.037+01	50	jkjkjfg	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
318	2021-12-05 13:48:24.366+01	51		2	[{"changed": {"fields": ["Subcategory", "URL-slug"]}}]	8	1
319	2021-12-05 13:48:24.683+01	52		2	[{"changed": {"fields": ["Subcategory", "URL-slug"]}}]	8	1
320	2021-12-05 14:11:55.338+01	18	Визуальный редактор CKEditor	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
321	2021-12-05 14:11:55.68+01	19	Система кеширование Django	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
322	2021-12-05 14:11:55.964+01	20	Тонкая настройка (кастомизация) админки	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
323	2021-12-05 14:11:56.262+01	21	Развёртывание сайта на хостинге	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
324	2021-12-05 14:12:53.215+01	22	Другое	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
325	2021-12-05 14:12:53.487+01	10	Что такое Django	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
326	2021-12-05 14:12:53.758+01	2	URL-связи	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
327	2021-12-05 14:12:54.074+01	3	Модели	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
328	2021-12-05 14:12:54.358+01	11	Админка	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
453	2021-12-11 22:54:14.365+01	5	Model type fields	2	[]	10	1
329	2021-12-05 14:12:54.642+01	5	Views & Templates	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
330	2021-12-05 14:12:54.912+01	6	Формы	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
331	2021-12-05 14:12:55.195+01	7	Контролеры класса CBVs	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
332	2021-12-05 14:12:55.688+01	12	QL	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
333	2021-12-05 14:12:56.125+01	13	hell	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
334	2021-12-05 14:12:56.606+01	8	ORM	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
335	2021-12-05 14:12:57.143+01	14	Django DEBUG Toolbar	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
336	2021-12-05 14:12:57.597+01	15	Постраничная навигация (pagination	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
337	2021-12-05 14:12:57.881+01	9	Регистрация и Авторизация	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
338	2021-12-05 14:12:58.163+01	16	Отправка писем на Email	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
339	2021-12-05 14:12:58.434+01	17	Капча	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
340	2021-12-05 14:19:02.495+01	7	Другое	1	[{"added": {}}]	7	1
342	2021-12-05 14:19:20.699+01	22	Другое	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
343	2021-12-05 14:26:34.176+01	7	Другое	2	[{"changed": {"fields": ["Image"]}}]	7	1
344	2021-12-05 14:40:56.872+01	53		2	[{"changed": {"fields": ["URL-slug"]}}]	8	1
345	2021-12-05 14:45:14.745+01	23	Другое (HTML	1	[{"added": {}}]	9	1
346	2021-12-05 14:45:55.305+01	47		2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
347	2021-12-05 14:46:15.163+01	51		2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
348	2021-12-05 14:47:13.95+01	23	Другое (HTML	2	[{"changed": {"fields": ["Title"]}}]	9	1
349	2021-12-05 17:16:37.76+01	36	Постраничная навигация (pagination	2	[{"changed": {"fields": ["Title"]}}]	8	1
350	2021-12-05 17:18:10.026+01	36	Постраничная навигация (pagination	2	[]	8	1
351	2021-12-05 17:21:48.692+01	36	Постраничная навигация (pagination	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
352	2021-12-05 17:27:07.768+01	36	Постраничная навигация (pagination	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
353	2021-12-05 21:27:36.783+01	36	Постраничная навигация (pagination	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
354	2021-12-05 21:29:31.717+01	36	Постраничная навигация (pagination	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
355	2021-12-05 21:29:45.963+01	36	Постраничная навигация (pagination	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
356	2021-12-06 10:53:21.267+01	37	Регистрация	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
357	2021-12-06 10:56:25.693+01	37	Регистрация	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
358	2021-12-06 12:52:05.122+01	38	lash-сообщения	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
359	2021-12-06 13:10:30.686+01	37	Регистрация	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
360	2021-12-06 13:10:50.297+01	37	Регистрация	2	[]	8	1
361	2021-12-06 13:29:55.446+01	39	Кастомизация формы регистрации	2	[]	8	1
362	2021-12-06 13:31:25.044+01	38	lash-сообщения	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
363	2021-12-06 15:56:05.844+01	38	lash-сообщения	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
364	2021-12-06 15:56:53.91+01	39	Кастомизация формы регистрации	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
365	2021-12-06 19:17:06.426+01	40	Авторизация	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
366	2021-12-06 19:23:04.178+01	1	admin	1	[{"added": {}}]	3	1
367	2021-12-06 19:23:18.036+01	1	dian	2	[{"changed": {"fields": ["Groups"]}}]	4	1
368	2021-12-07 17:38:49.406+01	41	Отправка писем на Email	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
369	2021-12-07 17:49:31.371+01	41	Отправка писем на Email	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
370	2021-12-07 18:54:04.326+01	41	Отправка писем на Email	2	[]	8	1
371	2021-12-07 18:59:10.511+01	42	Капча	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
372	2021-12-07 19:55:12.552+01	42	Капча	2	[]	8	1
373	2021-12-07 20:04:44.077+01	43	Визуальный редактор CKEditor	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
374	2021-12-07 21:21:24.171+01	44	Система кеширование Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
375	2021-12-07 21:22:33.115+01	44	Система кеширование Django	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
376	2021-12-07 21:30:03.305+01	54	ffffffffff	2	[{"changed": {"fields": ["Category"]}}]	8	1
377	2021-12-07 21:36:34.037+01	54	ffffffffff	2	[{"changed": {"fields": ["Subcategory"]}}]	8	1
378	2021-12-08 09:10:57.664+01	24	HTML синтаксис	1	[{"added": {}}]	9	1
379	2021-12-08 09:11:52.301+01	47	HTML синтаксис	2	[{"changed": {"fields": ["Title", "HTML Content"]}}]	8	1
380	2021-12-08 09:13:53.261+01	25	Теги HTML	1	[{"added": {}}]	9	1
381	2021-12-08 09:13:55.412+01	48	Базовые теги	2	[{"changed": {"fields": ["Title", "HTML Content", "Subcategory"]}}]	8	1
382	2021-12-08 09:15:41.379+01	49	HTML формы	2	[{"changed": {"fields": ["Title", "HTML Content", "Category", "Subcategory", "URL-name"]}}]	8	1
383	2021-12-08 09:16:27.208+01	47	HTML синтаксис	2	[{"changed": {"fields": ["Subcategory", "URL-name"]}}]	8	1
384	2021-12-08 09:16:27.795+01	48	Базовые теги	2	[{"changed": {"fields": ["Category", "Subcategory", "URL-name"]}}]	8	1
385	2021-12-08 09:16:34.895+01	47	HTML синтаксис	2	[{"changed": {"fields": ["Subcategory", "URL-name"]}}]	8	1
386	2021-12-08 09:16:35.466+01	48	Базовые теги	2	[{"changed": {"fields": ["Category", "Subcategory", "URL-name"]}}]	8	1
387	2021-12-08 09:31:19.397+01	50	CSS синтаксис	2	[{"changed": {"fields": ["Title", "HTML Content", "Category", "Subcategory", "URL-name"]}}]	8	1
388	2021-12-08 09:32:05.252+01	25	CSS синтаксис	2	[{"changed": {"fields": ["Title", "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "Slug"]}}]	9	1
389	2021-12-08 09:33:57.439+01	51	Псевдо-классы	2	[{"changed": {"fields": ["Title", "HTML Content", "Category", "Subcategory", "URL-name"]}}]	8	1
390	2021-12-08 09:39:52.789+01	51	Псевдо-классы	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
391	2021-12-08 09:44:06.772+01	52	Блоки	2	[{"changed": {"fields": ["Title", "HTML Content", "Category", "Subcategory", "URL-name"]}}]	8	1
392	2021-12-08 09:47:22.636+01	51	Псевдо-классы	2	[{"changed": {"fields": ["HTML Content", "URL-name"]}}]	8	1
393	2021-12-08 09:47:25.603+01	53	Псевдо-классы	2	[{"changed": {"fields": ["Title", "HTML Content", "Category", "Subcategory", "URL-name"]}}]	8	1
394	2021-12-08 09:48:44.409+01	51	Работа с текстом	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	8	1
395	2021-12-08 09:49:25.475+01	52	Блоки	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
397	2021-12-08 09:50:33.952+01	54	Обнуление	2	[{"changed": {"fields": ["Title", "Description", "HTML Content", "Category", "Subcategory", "URL-name"]}}]	8	1
398	2021-12-08 10:04:32.309+01	47	HTML синтаксис	2	[{"changed": {"fields": ["Publish"]}}]	8	1
399	2021-12-08 10:04:32.842+01	48	Базовые теги	2	[{"changed": {"fields": ["Publish"]}}]	8	1
400	2021-12-08 10:04:33.396+01	49	HTML формы	2	[{"changed": {"fields": ["Publish"]}}]	8	1
401	2021-12-08 10:04:33.9+01	50	CSS синтаксис	2	[{"changed": {"fields": ["Publish"]}}]	8	1
402	2021-12-08 10:04:34.251+01	51	Работа с текстом	2	[{"changed": {"fields": ["Publish"]}}]	8	1
403	2021-12-08 10:04:34.753+01	52	Блоки	2	[{"changed": {"fields": ["Publish"]}}]	8	1
404	2021-12-08 10:04:35.103+01	53	Псевдо-классы	2	[{"changed": {"fields": ["Publish"]}}]	8	1
405	2021-12-08 10:04:35.443+01	54	Обнуление	2	[{"changed": {"fields": ["Publish"]}}]	8	1
406	2021-12-08 10:04:35.793+01	55	dddddd	2	[{"changed": {"fields": ["Publish"]}}]	8	1
407	2021-12-09 09:47:18.144+01	46	Развёртывание сайта на хостинге	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
408	2021-12-09 09:48:12.093+01	46	Развёртывание сайта на хостинге	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
409	2021-12-09 10:06:34.979+01	46	Развёртывание сайта на хостинге	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
410	2021-12-09 10:41:35.139+01	46	Развёртывание сайта на хостинге	2	[{"changed": {"fields": ["HTML Content"]}}]	8	1
411	2021-12-09 11:27:58.213+01	46	Развёртывание сайта на хостинге	2	[]	8	1
412	2021-12-11 15:46:21.865+01	10	What is Django	2	[{"changed": {"fields": ["Title"]}}]	9	1
413	2021-12-11 15:46:50.59+01	1	What is Django	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
414	2021-12-11 15:48:33.686+01	2	URL links	2	[{"changed": {"fields": ["Title", "Slug"]}}]	9	1
415	2021-12-11 15:48:45.154+01	2	URL-links	2	[{"changed": {"fields": ["Title"]}}]	9	1
416	2021-12-11 15:48:49.121+01	2	URL links	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
417	2021-12-11 15:50:51.018+01	3	List of nested routes	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
418	2021-12-11 15:52:17.388+01	3	Models	2	[{"changed": {"fields": ["Title", "Slug"]}}]	9	1
419	2021-12-11 15:52:24.438+01	4	Models	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
420	2021-12-11 15:52:40.298+01	5	Model field types	2	[{"changed": {"fields": ["Title"]}}]	10	1
421	2021-12-11 15:53:09.957+01	5	Model field types	2	[{"changed": {"fields": ["HTML Content", "URL-name"]}}]	10	1
422	2021-12-11 15:53:45.584+01	6	Creating links between models	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
423	2021-12-11 15:54:16.032+01	7	Migrations	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
424	2021-12-11 15:54:53.856+01	8	Registering a model in the admin panel	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
425	2021-12-11 15:57:53.423+01	5	Model type fields	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
426	2021-12-11 15:58:45.928+01	6	Creating links between models	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
427	2021-12-11 15:59:16.746+01	6	Creating links between models	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
428	2021-12-11 15:59:47.991+01	6	Creating links between models	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
429	2021-12-11 16:01:23.03+01	9	Admin panel	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
430	2021-12-11 16:02:42.869+01	10	View functions	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
431	2021-12-11 16:03:08.29+01	10	View functions	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
432	2021-12-11 16:04:08.491+01	11	Templates (Jinja2)	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
433	2021-12-11 16:05:01.574+01	12	Template inheritance	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
434	2021-12-11 16:05:34.406+01	13	Filters	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
435	2021-12-11 16:06:11.27+01	14	Static	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
436	2021-12-11 16:06:52.207+01	15	Shaping URLs in templates	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
437	2021-12-11 16:07:35.798+01	16	Slug	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
438	2021-12-11 16:08:08.675+01	17	Custom template tags	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
440	2021-12-11 16:09:27.016+01	14	Static	2	[]	10	1
441	2021-12-11 16:10:37.103+01	15	Shaping URLs in templates	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
442	2021-12-11 16:11:43.95+01	16	Slug	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
443	2021-12-11 16:12:38.067+01	16	Slug	2	[]	10	1
444	2021-12-11 16:13:03.665+01	7	Migrations	2	[]	10	1
445	2021-12-11 16:13:22.464+01	8	Registering a model in the admin panel	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
446	2021-12-11 22:46:26.231+01	18	Forms	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
447	2021-12-11 22:47:16.188+01	19	Arguments for form fields	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
448	2021-12-11 22:47:52.61+01	20	Styling the form	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
449	2021-12-11 22:48:25.104+01	21	Model-related forms	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
450	2021-12-11 22:48:49.701+01	22	Custom validators	2	[{"changed": {"fields": ["Title", "HTML Content", "URL-name"]}}]	10	1
451	2021-12-11 22:51:44.149+01	4	Models	2	[]	10	1
454	2021-12-11 22:54:59.219+01	5	Model type fields	2	[]	10	1
455	2021-12-11 22:57:09.42+01	5	Model type fields	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
456	2021-12-11 22:57:30.02+01	5	Model type fields	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
457	2021-12-11 22:58:02.83+01	5	Model type fields	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
458	2021-12-11 22:58:18.24+01	5	Model type fields	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
459	2021-12-11 22:59:22.216+01	4	Models	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
460	2021-12-11 22:59:40.615+01	4	Models	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
461	2021-12-11 23:00:07.003+01	5	Model type fields	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
462	2021-12-11 23:00:43.103+01	5	Model type fields	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
463	2021-12-11 23:02:39.759+01	5	Model type fields	2	[]	10	1
464	2021-12-11 23:03:07.804+01	18	Forms	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
465	2021-12-11 23:03:27.65+01	18	Forms	2	[]	10	1
466	2021-12-11 23:04:01.511+01	18	Forms	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
467	2021-12-11 23:04:36.563+01	18	Forms	2	[]	10	1
468	2021-12-11 23:05:25.912+01	18	Forms	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
469	2021-12-11 23:05:48.624+01	18	Forms	2	[]	10	1
470	2021-12-11 23:06:49.616+01	21	Model-related forms	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
471	2021-12-12 09:57:39.903+01	22	Custom validators	2	[{"changed": {"fields": ["HTML Content", "Publish"]}}]	10	1
472	2021-12-12 10:35:46.137+01	22	Custom validators	2	[{"changed": {"fields": ["Publish"]}}]	10	1
473	2021-12-12 12:22:21.332+01	1	What is Django	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
474	2021-12-12 12:23:03.996+01	1	What is Django	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
475	2021-12-12 12:32:52.606+01	1	What is Django	2	[]	10	1
476	2021-12-12 14:05:10.974+01	18	Forms	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
477	2021-12-12 14:06:32.733+01	18	Forms	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
478	2021-12-12 14:06:57.249+01	18	Forms	2	[]	10	1
479	2021-12-12 14:08:25.925+01	20	Styling the form	2	[{"changed": {"fields": ["HTML Content"]}}]	10	1
480	2021-12-12 14:42:39.81+01	56	aaa	2	[{"changed": {"fields": ["Publish"]}}]	10	1
481	2021-12-12 14:52:35.044+01	10	What is Django	3		9	1
482	2021-12-12 14:52:56.688+01	56	aaa	3		10	1
483	2021-12-12 14:53:42.28+01	22	Другое	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
484	2021-12-12 14:54:44.08+01	22	User's post	2	[{"changed": {"fields": ["Title"]}}]	9	1
485	2021-12-12 15:02:51.755+01	57	ww	2	[{"changed": {"fields": ["Subcategory"]}}]	10	1
486	2021-12-12 15:03:08.74+01	57	ww	2	[{"changed": {"fields": ["Publish"]}}]	10	1
487	2021-12-12 15:04:13.123+01	20	Styling the form	2	[]	10	1
488	2021-12-12 18:18:26.532+01	23	What is Django	2	[{"changed": {"fields": ["Title", "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "Slug", "Order"]}}]	9	1
489	2021-12-12 18:18:34.148+01	22	User's post	2	[{"changed": {"fields": ["Order"]}}]	9	1
490	2021-12-12 18:18:38.696+01	23	What is Django	2	[{"changed": {"fields": ["Order"]}}]	9	1
491	2021-12-12 19:16:54.388+01	1	What is Django	2	[{"changed": {"fields": ["Author"]}}]	10	1
492	2021-12-12 19:21:57.606+01	1	What is Django	2	[{"changed": {"fields": ["Subcategory"]}}]	10	1
493	2021-12-12 19:40:33.601+01	55	Test 1	2	[{"changed": {"fields": ["Title", "Category", "Subcategory", "URL-name", "Author"]}}]	10	1
494	2021-12-12 19:40:44.606+01	57	ww	3		10	1
495	2021-12-12 19:40:46.221+01	58	sss	3		10	1
496	2021-12-12 19:40:53.79+01	60	dd	3		10	1
497	2021-12-12 19:40:55.021+01	59	dddd	3		10	1
498	2021-12-12 19:43:58.498+01	1	What is Django	2	[{"changed": {"fields": ["Author"]}}]	10	1
499	2021-12-12 19:43:58.501+01	55	Test 1	2	[{"changed": {"fields": ["Author", "Publish"]}}]	10	1
500	2021-12-12 19:47:59.521+01	55	Test 1	2	[{"changed": {"fields": ["Author"]}}]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	captcha	captchastore
8	home	subcategory
9	home	topic
10	home	category
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-08-28 20:01:41.004733+02
2	auth	0001_initial	2022-08-28 20:01:41.132163+02
3	admin	0001_initial	2022-08-28 20:01:41.166148+02
4	admin	0002_logentry_remove_auto_add	2022-08-28 20:01:41.178153+02
5	admin	0003_logentry_add_action_flag_choices	2022-08-28 20:01:41.189147+02
6	contenttypes	0002_remove_content_type_name	2022-08-28 20:01:41.213145+02
7	auth	0002_alter_permission_name_max_length	2022-08-28 20:01:41.22515+02
8	auth	0003_alter_user_email_max_length	2022-08-28 20:01:41.236147+02
9	auth	0004_alter_user_username_opts	2022-08-28 20:01:41.24815+02
10	auth	0005_alter_user_last_login_null	2022-08-28 20:01:41.257147+02
11	auth	0006_require_contenttypes_0002	2022-08-28 20:01:41.260148+02
12	auth	0007_alter_validators_add_error_messages	2022-08-28 20:01:41.271161+02
13	auth	0008_alter_user_username_max_length	2022-08-28 20:01:41.289146+02
14	auth	0009_alter_user_last_name_max_length	2022-08-28 20:01:41.300148+02
15	auth	0010_alter_group_name_max_length	2022-08-28 20:01:41.311147+02
16	auth	0011_update_proxy_permissions	2022-08-28 20:01:41.322149+02
17	auth	0012_alter_user_first_name_max_length	2022-08-28 20:01:41.33215+02
18	captcha	0001_initial	2022-08-28 20:01:41.351146+02
19	captcha	0002_alter_captchastore_id	2022-08-28 20:01:41.380148+02
20	sessions	0001_initial	2022-08-28 20:01:41.416149+02
21	home	0001_initial	2022-08-28 20:02:34.298012+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5bqf76fzdc580z2ng9xpe0klfpvsd6nf	e30:1mv4M3:2AUifkZ-uBe2666moS0ikhxuo1oeC_OkutzchqOehCU	2021-12-22 22:19:59.859+01
04l1q3o1vy1o9depg173mii94spusu2x	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1mt3xc:IX9YC4USvm9oYNR3YD2tGcpaaldbpMehBAOXZBoVwF8	2021-12-17 09:30:28.423+01
18gvj6exj4d9ngatvyd4cice36v3chth	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1mvDUj:wpFXRJgmQACEvYwjcSgo29YZKc-85kJPCo9xygqwVVg	2021-12-23 08:05:33.159+01
3w22iwctkv3n38j6pkllduqarbscae1i	.eJxVjEEOwiAQRe_C2hA6hQIu3fcMZIYBWzWQlHZlvLtt0oVu_3vvv0XAbZ3C1tISZhZXAUZcfkfC-EzlIPzAcq8y1rIuM8lDkSdtcqycXrfT_TuYsE173YPxhj2brLRnna0ml4xzRDlGbbUCIBwU70IeEliNg7Vdn8hjhk6B-HwBCRI4Ew:1mwLuJ:Jd_RnR4JIwZw7ZcESWHErwLoxAMWoWUqq13PC2XRC1c	2021-12-26 11:16:39.783+01
489869r9nomfkmclrnqijv2h9ioggpjj	.eJxVjEEOwiAQRe_C2hCgDh1duvcMZBgGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhSuqsrDr8bpH4IXUD6U711jS3usxT1Juid9r1tSV5Xnb376BQL9_aCAt7FIQ0mijsHCADk0OxAmIyeXHeWsgDpOzACY7eD4hgE5_oqN4f_QE4Dg:1mvces:PiKPNIGJ7vgKRE0zE4yYscuu33E7iHJ8pDPKi9gs5bs	2021-12-24 10:57:42.461+01
5mozs21bzfo5852744y0fxpk5illjoky	.eJxVjEEOwiAQRe_C2hCgDh1duvcMZBgGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhSuqsrDr8bpH4IXUD6U711jS3usxT1Juid9r1tSV5Xnb376BQL9_aCAt7FIQ0mijsHCADk0OxAmIyeXHeWsgDpOzACY7eD4hgE5_oqN4f_QE4Dg:1mvh8z:UGA64GZKiVulq9Q3mbZWQ5JAD-M_M2UyZl-ZPbj0myw	2021-12-24 15:45:05.909+01
7q9dfokwi2dcbg9shodwktbst7rbbn13	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1mqjge:SEftd6zOh4eoK0xsNbRvWi1gVOUB_t3hIZZOS49-HAU	2021-12-10 23:27:20.829+01
9mi6lpssvmh4vmfs9o6mt94s9drx1tej	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1msrxG:3U_V7wG7onQyurxfBuyh-gaiK4MU7OeVfZynqotAwv0	2021-12-16 20:41:18.594+01
acr5t5qxk1akvkkxms0t925hdt03dtz4	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1msrnO:kgERH_A8MTowDxhXyTtqvrFP1ShrRduaB-9o77SDUMo	2021-12-16 20:31:06.054+01
e0pyga8bmwif1ud0vfx5bex0sk05smb1	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1mus1u:7ZsbrpqWKdUYai9hvoWHA_xPTsoWzhuiw1T_cC4eLjI	2021-12-22 09:10:22.789+01
ecicxhfw4p4kx9lei0s856gkrx4mgsku	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1mus4E:4z4gcIKy-Ig817Lr_oX7-x5LSim4U0YG6ukcSwRNyZ8	2021-12-22 09:12:46.899+01
fvxl5cfscc7ol8agibovm506lvoh8niq	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1muftx:aACTbAtkL2zAh57xRDiMYyTf5TmNoyj0LoVc7pQHOko	2021-12-21 20:13:21.027+01
gbzhmn9l0c04835rd60ecrihi00crbhr	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1msqvr:LCVA0p09n__JyshznP8DWGeTqDFUmoWWVYQJElNzO-U	2021-12-16 19:35:47.31+01
mg10lscg2hnhm0c0gbgjj19kmc5g0j13	e30:1mv369:j_qv30vhsIn2GDqrI1lfKbeDKhfLein4xLyB9aU7w4M	2021-12-22 20:59:29.451+01
oey6xv0k8bom5edstkgxutwzj9ftebti	e30:1mv4HT:0ADIXgl5GbfewjO6V0HQ0kJ4hGfu0qtH9Ut0_NllUNw	2021-12-22 22:15:15.581+01
sv2qjua5nimzsup6weqrq1djslgru54b	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1mt4X6:34E_wXzg_gLGsKN2foxmqDH9atscfZqvZm-r3lkVL9E	2021-12-17 10:07:08.945+01
ug4g3d24hvenvrckxpz7g6gab3shugat	MjEyZTZhNWUxYzQ0M2M2MmVlMzYyNzVlODcyNTUzM2UzZjA5NjVjZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjNjZDg1OTgxNTRjMmNmNGY3NDdlOTAxNjg0YjhlNTUwMDg2ODU1In0=	2021-11-23 13:19:37.488+01
vgx2sd31o3n21l64xhevw53ic0fvb4x5	e30:1mv35I:yRvpC5FLiI6oVHKTT28FE3uK-NBHaqTxjF5Qlh8WYRs	2021-12-22 20:58:36.325+01
vw4etagd2optge8rneqb23zhhoa9a8hm	.eJxVjEEOwiAQRe_C2hCgDh1duvcMZBgGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhSuqsrDr8bpH4IXUD6U711jS3usxT1Juid9r1tSV5Xnb376BQL9_aCAt7FIQ0mijsHCADk0OxAmIyeXHeWsgDpOzACY7eD4hgE5_oqN4f_QE4Dg:1mvjcA:TB2xhVHv_l4LVfFTrgKykvKrMCoR3xrjIwH5dmASt9Y	2021-12-24 18:23:22.585+01
wa01ncn9bmnyreesg6i9oastlsywzq1k	.eJxVjEEOwiAQRe_C2hAGqAwu3XsGMgyjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqkQB1-t0z8kLaBcqd2mzRPbZnHrDdF77Try1Tked7dv4NKvX5rhGzjgAHEQ_AQmb03DoNBEk9cJBCYK3K02dtAgwNTmARNxqMLLqr3B71sNw8:1mt4U6:YIjHW_-S0CTrX47P3B0Cj9phpZRcg-2Q7a88jdEDYFE	2021-12-17 10:04:02.553+01
\.


--
-- Data for Name: home_category; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.home_category (id, title, image, slug) FROM stdin;
1	HTML	image/2021/11/html_logo.png	html
2	CSS	image/2021/11/css_logo.png	css
3	Django	image/2021/11/django_rG8fiLQ_MsxNBI0.png	django
4	Python	image/2021/11/html_logo_Lmx802F.png	python
5	GIT	image/2021/11/css_logo_X2QrGkq.png	git
6	OOP	image/2021/11/django_rG8fiLQ.png	oop
7	Другое	image/2021/12/Yoshida_Hiroshi_artwork_Japanese_painting_mountains_Grand_Canyon-16165_lA3SFV4.jpg	drugo
\.


--
-- Data for Name: home_subcategory; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.home_subcategory (id, title, slug, "order", category_id) FROM stdin;
2	URL-links	url-links	2	3
3	Models	models	3	3
5	Views & Templates	views-templates	5	3
6	Формы	formy	6	3
7	Контролеры класса CBVs	kontrolery-klassa-cbvs	7	3
8	ORM	orm	10	3
9	Регистрация и Авторизация	registraciya-i-avtorizaciya	13	3
11	Админка	admink	4	3
12	SQL	sql	8	3
13	Shell	shell	9	3
14	Django DEBUG Toolbar	django-debug-toolbar	11	3
15	Постраничная навигация (pagination)	postranichnaya-navigaciya-pagination	12	3
16	Отправка писем на Email	tpravka-pisem-na-email	14	3
17	Капча	kapch	15	3
18	Визуальный редактор CKEditor	vizualnyj-redaktor-ckeditor	16	3
19	Система кеширование Django	sistema-keshirovanie-django	17	3
20	Тонкая настройка (кастомизация) админки	tonkaya-nastrojka-kastomizaciya-adminki	18	3
21	Развёртывание сайта на хостинге	azvyortyvanie-sajta-na-hosting	19	3
22	User's post	drugo	-2	3
23	What is Django	django	-1	3
24	HTML синтаксис	html-sintaksis	\N	1
25	CSS синтаксис	css-synt	\N	2
\.


--
-- Data for Name: home_topic; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.home_topic (id, title, description, content, html_content, data, update_data, is_published, image, slug, author_id, category_id, subcategory_id) FROM stdin;
1	What is Django			<p> <b> Django </b> is an open source framework written using the <b> Python </b> language used to write a web application. Django is the same as Ruby on Rails; React, Vue or JQuery for js. Django inherits the <b> MVC </b> (Model-View-Controller) or <b> MTV </b> (Models-Templates-Views) design pattern. <b> MVC </b> is a scheme for dividing data into three component parts where: </p>\r\n<br> <b> Models </b> is responsible for the business logic of the application, creating a table database\r\n<br> <b> View </b> is responsible for the data view patterns from the\r\n<br> <b> Controller </b> interprets user actions,\r\n<p> In Django, you can create several applications, and it is recommended to create them as independent of each other as possible, so that you can use the same application in different projects. This is one of the significant architectural differences of this framework from some others (for example Ruby on Rails). One of the basic principles of the framework is <b> DRY </b> (Don't repeat yourself) </p>\r\n<p> To work with the database, Django uses its own <b> ORM </b>, in which the model (table ) database is described by Python classes </p>\r\n\r\n<h3> Creating your first Django application </h3>\r\n<p> In order to create a Django project, it is recommended to first create a virtual environment into which all the necessary packages and libraries will be loaded, this will protect the computer from clogging and separate the project from others projects. Therefore, go to the desired directory and write: <code> user $ python3 -m venv name </code> </p>\r\n<p> Next, you need to activate the virtual environment for further use:\r\n<code> user $ source bin / activate </ code > </p>\r\n<p> Using the following command, you can see what packages, modules and applications are available in our virtual environment, since we created it just now it should be clean: <code> (venv) user $ pip list </ code> </p>\r\n<p> You can install Django using the following command: <code> (venv) user $ pip install Django </code>: </p>\r\n<p> To see all the available Django commands, just write: <code> (venv) user $ django-admin </code> </p>\r\n<p> Now let's start creating a Django project: <code> (venv) user $ django-admin startproject name </code> </p>\r\n<p> In a virtual environment a new directory is created with the name of the project, which contains the files responsible for setting up the entire project, routing, administration, etc. </p>\r\n\r\n<p> While no applications have been created, we have access to the start page that Django provides by default, which indicates a successful start. To access the page, you need to enter the project directory and start the local server with the following command: <code> (venv) user $ python3 manage.py runserver </code> </p>\r\n\r\n<p> It's time to create an application: <code> (venv) user $ python3 manage.py startapp name </code> </p>\r\n<p> By typing this command, Django creates a new folder with files that are responsible for models, view functions, administration and so on of our application </p>\r\n<p> After creating applications, you need to register it in the Django configuration file - <b> INSTALLED_APPS </b>. Although it will be enough to write only the name of the application, it is still desirable to specify the full path to the application class, the name of which can be found in the file <b> apps.py </b>. It will look like this: </p>\r\n<pre><code>\r\n---settings.py\r\n\r\nINSTALLED_APPS = [\r\n. ... ...\r\n'name.apps.ClassName',\r\n]\r\n</code></pre>	2021-11-09 13:52:10.551+01	2021-12-12 19:43:58.495+01	t		what-is-django	\N	3	23
7	Migrations			<p> In order for the model to work, you need to create a migration. <b> Migrations </b> in Django is a way to propagate changes that have been made to models (add a field, remove a model, etc.). <code> makemigratinos </code> will display the available migrations and <code> migrate </code> will create the migration </p>\r\n<pre> <code>\r\n(env) user $ python manage.py makemigratinos\r\n(env) user $ python manage.py migrate\r\n</code> </pre>	2021-12-02 10:26:28.07+01	2021-12-11 16:13:03.663+01	t		migrations	\N	3	3
40	Авторизация			<p>Авторизация это процесс который разбит на несколько этапов, первый это аутентификация (проверка на наличие пользователя) и авторизация (подтверждения логина и пароля). Для авторизации можно воспользоваться готовой стандартной формой или создать свою собственную с помощью встроенных функций <b>authenticate</b> и <b>login</b> из модуля <b>django.contrib.auth</b></p>\r\n<p>Для аутентификации пользователя можно использовать модель <b>AuthenticationForm</b> из модуля <b>django.contrib.auth.forms</b>, эта форма избавляет от необходимости вызова функции <b>authenticate</b>. Дальше создадим класс, который будет наследовать импортированную модель и указываем два поля, которые отвечают за имя пользователя и пароль</p>\r\n<pre><code>\r\n    ---forms.py\r\n    class UserLog(AuthenticationForm):\r\n        username = forms.CharField(label='User_Name', \r\n                    widget=forms.TextInput(attrs={'class': 'style'}))\r\n        password = forms.CharField(label='Password', \r\n                    widget=forms.PasswordInput(attrs={'class': 'style'}))\r\n</code></pre>\r\n\r\n<p>В файле представления записываем функцию и условие, при котором если данные пришли методом <b>POST</b>, то мы создаём переменную, которая будет принимать данные из формы и валидировать их (аутентифицировать), затем нужно будет принять данные пользователя с помощью функции <b>get_user</b>, и дальше вызвать функцию <b>login</b> (первым параметром она принимает <b>request</b> (объект запроса), а вторым объект аутентифицированного пользователя <b>form.get_user</b>). Затем можем сделать перенаправление на пользовательскую страницу, или любую другую. В противном случае, если данные пришли иным способом, то создадим форму не связанную с данными</p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    from django.contrib.auth.forms import AuthenticationForm\r\n    from django.contrib.auth import login, logout\r\n\r\n    def log(request):\r\n        if request.method == 'POST'\r\n            form = UserLog(data=request.POST)\r\n            if form.is_valid:\r\n                user = form.get_user()\r\n                login(request, user)\r\n                return redirect('page.html')\r\n        else:\r\n            form = UserLog()\r\n            return render(request, 'path/page.html', {'form': form})\r\n</code></pre>\r\n<p class="description">Для того, что бы после регистрации пользователя сразу же авторизовать, можно внести вправки в функцию представления регистрации, добавив метод <b>login</b> после сохранения пользователя</p>\r\n\r\n<p>Для представлений классов это будет выглядеть так:</p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    class LogUser(MyMixin, LoginView):\r\n        form_class = AuthenticationForm\r\n        template_name = 'path/file.html'\r\n\r\n        def get_success_url(self):\r\n            return reverse_lazy('home')\r\n\r\n</code></pre>\r\n<p>Для того, что бы пользователь после авторизации был переведён на нужную страницу необходимо создать специальный метод.</p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    class LogUser(MyMixin, LoginView):\r\n        . . .\r\n\r\n        deg get_success_url(self):\r\n            return reverse_lazy('url_name')\r\n</code></pre>\r\n<p class="description">Есть еще один способ как перенаправлять пользователя на нужную страницу, он заключается в том, что потребуется прописать директиву <b>LOGIN_REDIRECT_URL</b> в файле конфигураций</p>\r\n\r\n<p>Шаблон можно создать по принципу создания шаблона для регистрации. Для того, что бы у авторизованного пользователя отображалась функция выхода из учётной записи, можно добавить условие <b>is_authenticated</b> и затем уже отображать всё необходимое. Для того, что бы создать возможность выхода, достаточно создать новый путь в файле <b>urls.py</b> и функцию, в которой просто вызовем функцию <b>logout</b> и передадим параметр <b>request</b>, и затем произведём редирект на нужную страницу</p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    def log_out(request):\r\n        logout(request)\r\n        return redirect('url_name')\r\n\r\n\r\n    ---template.html\r\n    {% if request.user.is_authenticated %}\r\n        Welcome, {{ user.username}} | &lt;a href="{% url 'logout' %}"Logout&lt;/a>\r\n    {% else %}\r\n    &lt;a href="{% url 'register' %}"Register&lt;/a> | &lt;a href="{% url 'login' %}"Login&lt;/a>\r\n    {% endif %}\r\n</code></pre>\r\n<p>Для того, что бы после регистрации пользователь авторизовался автоматически, необходимо немного использовать метод <b>form_valid</b> для контролеров класа, он вызываеться когда форма регистрации прошла валидацию</p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    from django.contrib.auth.forms import UserCreationForm        \r\n\r\n    class RegUser(MyMixin, CreateView):\r\n        form_class - UserCreationForm\r\n        template_name = 'path/file.html'\r\n        success_url = reverse_lazy('login')\r\n\r\n        def form_valid(self, form):\r\n            user = form.save()\r\n            login(self.request, user)\r\n            return redirect('url_name')\r\n</code></pre>\r\n<p>Для контролера функции это выглядит так:</p>\r\n<code><pre>\r\n    def registration(request):\r\n    if request.method == 'POST':\r\n        form = RegisterUser(request.POST)\r\n        if form.is_valid():\r\n            user = request.user\r\n            login(request, user)\r\n            form.save()\r\n            messages.success(request, 'Successful registration!')\r\n            return redirect('home')\r\n        else:\r\n            messages.error(request, 'Unsuccessful registration!')\r\n    else:\r\n        form = RegisterUser()\r\n    return render(request, 'home/form.html', {'form': form, 'title': 'Registration'})\r\n</code></pre>\r\n\r\n\r\n<h3>Ограничения</h3>\r\n<p>Для того, что бы страница была доступна только определенному лицу (администратору) используется декоратор <b>login_required</b>, который импортируется из модуля <b>django.contrib.auth.decorators</b></p>\r\n<pre><code>\r\nfrom django.contrib.auth.decorators import login_required\r\n\r\n@login_required\r\ndef my_views(request):\r\n    if not request.user.is_authenticated:\r\n        return render(request, '/page.html')\r\n</code></pre>'\r\n\r\n\r\n<p>Можно ограничить доступ к целому блоку или ссылки для неавторизованных пользователей путём добавления следующей кода:</p>\r\n<pre><code>\r\n{% if request.user.is_authenticated %}\r\n--- block of content ---\r\n{% endif %}\r\n</code></pre>\r\n\r\n<p>Для того, что бы страница была доступна только определенному лицу (администратору) используется миксин <b>LoginRequiredMixin</b> из модуля <b>django.contrib.auth.mixins</b>. Теперь, если пользователь не авторизован (как админ или сотрудник), то ему будет отказан доступ к странице. Дополнительно можно определить параметр <b>login_url</b> и путь куда будет перенаправлен пользователь, или же можно возбудить сообщение об ошибке 404</p>\r\n<pre><code>\r\nfrom django.contrib.auth.mixins import LoginRequiredMixin\r\n\r\nclass MyView(LoginRequiredMixin, View):\r\n    login_url = reverse_lazy('login')\r\n    raise_exception = True\r\n</code></pre>	2021-12-02 10:54:03.555+01	2021-12-06 19:17:06.384+01	t		avtorizaciya	\N	3	9
43	Визуальный редактор CKEditor			<p>Данный визуальный редактор позволит расширить функционал добавления контента, с помощью него пользователь сможет применять классические стили к тексту, а так же это еще и файловый менеджер, который может работать с изображениями и другими файлами.</p>\r\n<p>Для начала этот редактор нужно установить с помощью команды <b>pip install django-ckeditor</b>. Затем в файле настроек необходимо добавить этот пакет в директиву <b>INSTALLED_APPS</b>, так же должна быть настроена директива <b>STATIC_ROOT</b>, после чего необходимо выполнить команду <b>python manage.py collectstatic</b>. Далее необходимо добавить константу <b>CKEDITOR_UPLOAD_PATH = 'uploads/'</b>, она указывает куда редактор будет загружать изображения, и загружаться они будут в директорию <b>media</b>, которая должна быть так же настроена</p>\r\n<pre><code>\r\n    ---settings.py\r\n\r\n    INSTALLED_APPS = [\r\n        . . .\r\n        'ckeditor',\r\n        'ckeditor_uploader'\r\n    ]\r\n\r\n    . . .\r\n\r\n    CKEDITOR_UPLOAD_PATH = 'uploads/'\r\n</code></pre>\r\n<p class="description">Если в настройках добавить базовую конфигурацию <b>CKEditor</b> (которую можно посмотреть по <a href="https://pypi.org/project/django-ckeditor/">ссылке</a>) то можно расширить возможности редактора. Так же можно установить дополнительные <a href="https://ckeditor.com/docs/ckeditor4/latest/guide/dev_skins.html">скины, которые изменят дизайн интерфейса</a></p>\r\n\r\n<p>В корневом файле <b>urls.py</b> необходимо добавить соответствующий маршрут</p>\r\n<pre><code>\r\n    ---urls.py\r\n\r\n    urlpatterns [\r\n        . . . \r\n        path('ckeditor/', include('ckeditor_uploader.urls')),\r\n    ]\r\n</code></pre>\r\n<p>Теперь можно приступить к встраиванию самого виджета. Настраивается это в файле <b>admin</b> и первым, что необходимо сделать, это импортировать <b>CKEditorWidget</b> (работа только с текстом) или <b>CKEditorUploadingWidget</b> (работа с текстом и файлом) и функцию <b>forms</b> из модуля <b>django</b>. Затем нужно создать класс, который будет наследовать класс <b>ModelForm</b>. Переопределим поле, которое будет редактируемо и передадим туда нужный виджет. Далее создадим класс <b>Meta</b> в котом будем описывать с какой моделью будет связь и какие поля из модели нужны</p>\r\n<pre><code>\r\n    from django import forms\r\n    from ckeditor_uploader.widgets import CKEditorUploadingWidget\r\n\r\n    class My_CKEditorAdminForm(forms.ModelForm)\r\n        content = forms.CharField(widget=CKEditorUploadingWidget())\r\n\r\n        class Meta:\r\n            model = Model\r\n            fields = '__all__'\r\n</code></pre>\r\n<p>После создания модели, её необходимо добавить в класс, в котором мы указывали настройку для админки. Делаться это с помощью аттрибута <b>form</b>, где мы указываем название созданной модели</p>	2021-12-02 10:56:18.583+01	2021-12-07 20:04:44.07+01	t		vizualnyj-redaktor-ckeditor	\N	3	18
44	Система кеширование Django			<p>Кеширование позволяет значительно снизить нагрузку на сайт. Кеш в Django представлен в нескольких видах, один из самых эффективных это <b>Memcached</b> (оперативная память), так же есть кеширование в БД, для этого создаться специальная таблица, для хранения кеша (менее эффективный и распространённый), и так же есть кеширование в файловую систему, где создаётся файл с кешем</p>\r\n\r\n<h3>Кеширование в файл</h3>\r\n<p>Для того, что бы работать с кешированием необходимо в файле <b>settings.py</b> настроить константу <b>CACHES</b>, куда передаётся словарь, в котором содержится ключ <b>default</b>, который представляет из себя словарь, в котором необходимо настроить ключи <b>BACKEND</b> (в котором укажем на вид кеширования) и <b>LOCATION</b> (указывается путь, где будет располагаться файл с кешем (необходимо создать директорию в корне проекта и указать её).</p>\r\n<p>Так же есть дополнительные параметры, для управления поведением кеширования, такие как например <b>TIMEOUT</b> (время устаревания кеша в секундах), больше можно посмотреть, перейдя по <a href="https://docs.djangoproject.com/en/3.2/topics/cache/">ссылке</a>.</p>\r\n<pre><code>\r\n    ---settings.py\r\n\r\n    CACHES = {\r\n    'default': {\r\n        'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',\r\n        'LOCATION': '/absolute/path/django_cache',\r\n    }\r\n}\r\n</code></pre>\r\n\r\n\r\n<h3>Кэширование на уровне представления</h3>\r\n<p>Для кэширование отдельных частей сайта, можно воспользоваться кэшированием на уровне представления, при использовании <b>контроллеров функции</b> в файле <b>views.py</b> импортируется декоратор <b>cache_page</b> (который принимает в качестве параметра время в секундах) из модуля <b>django.views.decorators.cache</b></p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    from django.views.decorators.cache import cache_page\r\n\r\n    @cache_page(60*15)\r\n    def my_page(request):\r\n        . . .\r\n</code></pre>\r\n<p>При использовании <b>контроллеров классов</b> кеш определяться на уровне представления <b>URLconf</b></p>\r\n<pre><code>\r\n    ---urls.py\r\n\r\n    from django.views.decorators.cache_page\r\n\r\n    urlpatterns = [\r\n        path('path/', cache_page(60*15)(def_view)), name='name')\r\n    ]\r\n</code></pre>\r\n\r\n\r\n<h3>Кеширование фрагмента шаблона</h3>\r\n<p>Для кэширования только части шаблона необходимо в шаблон подгрузить <b>{% load cache %}</b> и поместить необходимую область для кеширования в тег <b>cache</b>, который принимает параметр время в секундах и название блока</p>\r\n<pre><code>\r\n    ---template.html\r\n\r\n    {% load cache %}\r\n    {% cache 900 sidebar %}\r\n        {% block sidebar %}\r\n        {% endblock %}\r\n    {% endcache %}\r\n</code></pre>\r\n\r\n\r\n<h3>API для низкого уровня</h3>\r\n<p>Еще один метод кеширования, при котором мы записываем данные из БД в кеш с помощью функции <b>set</b>, которая принимает на себя такие параметры, как название ключа, данные которые туда сохраняются и время. Если в кеше уже записанные данные, то функция <b>get</b> их отобразит</p>\r\n<pre><code>\r\n    def view(request):\r\n        categories - cache.get('categories')\r\n    if not categories:\r\n        categories = Category.objects.all()\r\n        cache.set('categories', categories, 30)\r\n</code></pre>\r\n\r\n\r\n<h3>Кеширование всего сайта</h3>\r\n<p>Кеширование всего сайта осуществляется через настройку директивы <b>MIDDLEWARE</b> (релевантно использовать если ваш сайт обновляется редко)</p>\r\n<pre><code>\r\n    MIDDLEWARE = [\r\n        'django.middleware.cache.UpdateCacheMiddleware',\r\n        'django.middleware.common.CommonMiddleware',\r\n        'django.middleware.cache.FetchFromCacheMiddleware',\r\n    ]\r\n</code></pre>	2021-12-02 10:56:43.494+01	2021-12-07 21:22:33.108+01	t		sistema-keshirovanie-django	\N	3	19
45	Тонкая настройка (кастомизация) админки			<p>По умолчанию шаблон админки расположен по маршруту <b>/lib/python3.8/site-packages/django/contrib/admin/templates/admin/base.html</b>. Django предоставляет возможность собственноручно создать шаблон админки или изменить его, для этого необходимо в директории проекта создать папку под названием <b>admin</b> и в нём создать файл <b>base_site</b>. И теперь Django будет искать шаблон для админки именно по этому пути. Дальше можно скопировать содержимое <b>base_site</b> из админки и поместить в новый шаблон</p>\r\n<p>Для того, что бы подключить свои стили в базовом шаблоне админки <b>base,html</b> есть блок <b>extrastyle</b> в котором можно подключать свои файлы стилей. Для этого в каталоге <b>статик</b> создаётся папка <b>admin</b> и в неё папка <b>CSS</b></p>\r\n<pre><code>\r\n    ---my_base_site.html\r\n\r\n    {% load static %}\r\n    {% block extrastyle %}\r\n        &lt;link rel='stylesheet' href='{% static 'admin/css/admin.css' %}'>\r\n    {% endblock %}\r\n</code></pre>\r\n<p class='description'>Далее можно переназначать стили для тегов, узнать какие <b>CSS</b>-классы используются для тех или иных тегов можно просто открыв код страницы</p>\r\n<p>Так же в базовом шаблоне используются такие теги, как <b>site_title</b> и <b>site_header</b>, которые можно переопределить в файле admins.py таким образом:</p>\r\n<pre><code>\r\n    ---admins.py\r\n\r\n    admin.site.site_title = 'My Title'\r\n    admin.site.site_header = 'My Header'\r\n</code></pre>\r\n<p>Создание метода, который будет возвращать HTML код файла, например будет отображать картинку, вместо ссылки. Данный метод принимает обязательный аттрибут <b>self</b>, а также сам объект записи <b>obj</b>. Теперь для того, что бы отрабатывал HTML, этот метод должен возвращать функцию <b>mark_safe</b>, который помещает данную строку, как HTML код и никак не экранирует её.</p>\r\n<pre><code>\r\n    from django.utils.safestring import mark_safe\r\n\r\n\r\n    class AppsAdmin(admin.ModelAdmin):\r\n        . . . \r\n        . . .\r\n\r\n        def get_image(self, obj):\r\n            if obj.photo:\r\n                return mark_safe(f"&lt;img src='{obj.photo.url}'>")\r\n\r\n        get_image.short_description = 'my_name'\r\n</code></pre>\r\n<p class='description'>В атрибуте <b>short_description</b> описывается то, как будет называться тот или иной метод в админке</p>\r\n<p>В атрибуте <b>fields</b> настраиваются поля, которые будут представлены в админке внутри объекта. Здесь можно указать какие поля нужно отображать при редактировании объекта, и в каком порядке их выводить. При этом, если есть нередактируемые поля, типа даты публикации, то в таком случае необходимо будет указать какие поля буду нередактируемыми</p>\r\n<pre><code>\r\n    class AppsAdmin(admin.ModelAdmin):\r\n        . . . \r\n        . . .\r\n        fields = ('attribut1', 'attribut2', ... , 'get_image')\r\n        readonly_fields = ('attribute1', 'attribute2', 'get_image')\r\n</code></pre>	2021-12-02 10:57:22.736+01	2021-12-04 13:21:49.557+01	t		tonkaya-nastrojka-kastomizaciya-adminki	\N	3	20
46	Развёртывание сайта на хостинге			<p>Хостинг - это услуга, которая предоставляет возможность размерения своего проекта на реальный вед сервер. Существует множество платформ, которые арендуют место на сервере, здесь будет использоваться платформа <a href="https://beget.com/ru">beget.com</a> в учебных целях. После регистрации будет доступна админ-панель сайта, в которой потребуется перейти во вкладку <b>FTP</b> и активировать <b>SSH</b>. Далее переходим во вкладку <b>CMS</b> в которой будет представлен каталог различных фреймворков для установки, это означает, что <b>Django</b> можно установить в автоматическом режиме, или же можно установить вручную (по инструкции представленной на этой <a href="https://beget.com/ru/kb/how-to/web-apps/python">странице</a>)</p>\r\n<p>Для начала потребуется установить клиент <b>PuTTy</b>, который можно скачать с официального <a href="https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html">сайта</a>. <b>PuTTy</b> это клиент <b>SSH-</b> и <b>Telnet</b>  (Telnet - тот же SSH, только без шифрованной передачи данных (пакетов)), т.е. программа для безопасного подключения к удаленному компьютеру (или к серверу) и выполнения на нем различных команд. PuTTY ведет логи, позволяет настраивать шрифты, цвета и разрешение консоли, допускает сохранение в своей памяти ключей аутентификации, поддерживает работу через прокси-сервер. При этом утилита является бесплатной.</p>\r\n<p>Что бы установить <b>PuTTy</b> на <b>Linux</b> воспользуемся командами:</p>\r\n<pre><code>\r\n---user$ sudo apt-get update\r\n\r\n---user$ sudo apt-get install putty\r\n\r\n---user$ putty\r\n#запуск приложения\r\n</pre></code>\r\n<p>После запуска <b>PuTTy</b> появиться окно, в котором в поле <b>Host Name or IP address</b> нужно ввести имя домена, который можно посмотреть в своей админке хост-сайта во вкладке <b>управления сайтом</b>. Порт оставляйте по умолчанию 22. В поле <b>Saved Sessions</b> введите любое имя сессии (коннекта), и нажмите <b>Save</b>. После этого нажмите <b>Open</b> и отобразиться консольное окно, в котором нужно будет ввести логин и пароль (они будут отправленны по почте после регистрации). После успешного входа в систему, будет открыт доступ к удаленному серверу, это означает, что теперь есть возможность удаленно выполнять команды на стороне арендуемого сервера</p>\r\n\r\n<h3>Локальная установка Python на удалённый сервер</h3>\r\n<p>Следующая команда позволит войти в <b>Docker</b>, для того, что бы иметь возможность запускать интерпретатор <b>Python</b> и устанавливать необходимые пакеты. Далее будем следовать представленным <a href="https://beget.com/ru/kb/how-to/web-apps/python">инструкциям</a></p>\r\n<pre><code>\r\n    user$ ssh localhost -p222\r\n    user$ mkdir -p ~/.beget/tmp\r\n    user$ cd ~/.beget/tmp\r\n    . . . \r\n</code></pre>\r\n<p class='description'>Для того, что бы просматривать файлы которые находятся на удаленном сервере используется <b>FTP</b> протокол. Протокол FTP в «чистом виде», хоть и является стандартом де-факто для переноса файлов между удаленными компьютерами, имеет серьезные проблемы с безопасностью (пароль передается по сети в незашифрованном виде). Поэтому рекомендуется использовать безопасные протоколы <b>FTPS</b> или <b>SFTP</b>.</p>\r\n\r\n\r\n<h3>Установка зависимостей виртуального окружения</h3>\r\n<p>Разберём как установить все дополнительные модули, которые используются на проекте. Для того, что бы узнать какие модули и какие версии установлены в проекте локально, можно воспользоваться следующей командой (она сформирует файл со списком установленных модулей)</p>\r\n<pre><code>\r\n    pip freeze > name.txt\r\n</code></pre>\r\n<p>Далее скопируем этот файл на сервер и затем, что бы выполнить установку этих зависимостей потребуется <b>SSH</b>-клиент. После запуска докера через <b>PuTTy</b> активируем виртуальное окружение и выполняем команду:</p>\r\n<pre><code>\r\n    pip install -r name.txt\r\n</code></pre>\r\n<p class="description">Дополнительно можем установить <b>SQL</b> командой <code>mysqlclient</code></p>\r\n<p>Далее необходимо просто перебросить все необходимые файлы и папки которые непосредственно связанны с проектом. Теперь всё готово к тому, что бы изменить параметр <b>DEBUG</b> в <b>False</b>, что будет свидетельствовать о том, что проект запушен на продакшн. Дополнительно нужно будет прописать допустимые хосты, в которые передать адресное название сайта</p>\r\n<p>Также необходимо изменить директиву <b>DATABASES</b> где укажем настройки доступа к базе данных. Так же, в корневом каталоге сервера необходимо выполнить команду <b>migrate</b> и <b>collect static</b></p>\r\n<p class="description"><b>Beget</b> ищет статику и медиа файлы в корневом каталоге в папке <b>public_html</b></p>\r\n<p>Что бы перекинуть данные из одной БД в другую можно воспользоваться встроенной командой <b>Django</b> - <b>dumpdata</b>, помощью которой реализуется бэкап (экспорт) БД. После чего создастся файл формата <b>.json</b> (использует кодировку <b>windows1251</b>) в котором необходимо изменить кодировку на <b>UTF-8</b></p>\r\n<pre><code>\r\n    python manage.py dumpdata --exclude auth.permission --exclude contenttypes > db.json\r\n</code></pre>\r\n<p>Далее копируем этот файл на хостинг и затем через удалённый доступ выполняется команда</p>\r\n<pre><code>\r\n    (docker) my_site: python manage.py loaddata db.json\r\n</code></pre>	2021-12-02 10:57:46.744+01	2021-12-09 11:27:57.945+01	t		razvyortyvanie-sajta-na-hostinge	\N	3	21
52	Блоки			<p><code>border</code> borger suround element</p>\r\n    <p>Takes such parameters as <code>border: thickness style color (2px solid/dashed/dotted #color)</code></p>\r\n    <p><code>border-radius</code> set radius rounding of the border <br>\r\n        Recordered: <code>border-radius: 10px 10px 10px 10px;</code></p> \r\n    <span style='border: 4px dotted red; \r\n                 padding: 3px; \r\n                 font-size: large;'> <code>border</code></span>\r\n\r\n    <p><code>outline</code> external span of the block</p>\r\n    <span style='outline: 3px solid red; \r\n                border: 2px dashed; \r\n                padding: 2px; \r\n                font-size: large;'><code>outline</code></span><br>\r\n\r\n    <p><code>box-shadow</code> add a shadow to the element</p>\r\n    <p>Takes such parameters as:</p>\r\n    <div style='box-shadow: 3px 3px 5px 3px black; \r\n                padding: 5px 15px; \r\n                border-radius: 10px; \r\n                width: 315px; font-size: \r\n                large;'>\r\n        <pre><code>box-shadow: (horizontal shift)px \r\n            (vertical shift)px \r\n            (shadow radius)px \r\n            (distant)px #color</code></pre></div>\r\n\r\n    <p><code>opacity</code> determines the transparency level from 0.0 to 1</p>\r\n    <pre>\r\n        <code style='opacity:0.1'>opacity</code>\r\n        <code style='opacity:0.3'> opacity</code>\r\n        <code style='opacity:0.6'>  opacity</code>\r\n        <code style='opacity:0.9'>   opacity</code>\r\n    </pre>\r\n\r\n    <p><code>visibility</code> intendede for dislpay(default) or hiding elements</p>\r\n    <p><code>overflow</code> intendede for dislpay(default) or hiding external scope of the block</p>\r\n    <img src="img/channels4_profile.jpg" alt="#" style="border-radius: 50px; overflow: hidden; width: 10%; min-width: 5%;">\r\n\r\n\r\n    <h2><code>background</code></h2>\r\n    \r\n    <div class='body'>\r\n        <div class="back">\r\n            <h3><code>background-color</code></h3>\r\n            <h3><code>background-image</code></h3>\r\n            <h3><code>background-attachment</code></h3>\r\n        </div>\r\n        <div class="back">\r\n            <div class="background" style="background: rgba(232, 234, 236, 0.541);"><p>#Page</p></div>\r\n            <div class="background" style="background: url(img/background39.png)"><p>#Page</p></div>\r\n            <div class="background" style="background: url(img/tile.png) 0 0/ auto auto; color: rgb(255, 252, 242);"><p>#Page</p><br><br><br></div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\nbody {\r\n    background: color;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\nbody {\r\n    background: url(path/img);\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\nbody {\r\n    background-size: 0 0/ auto auto;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n<h2><code>padding</code></h2>\r\n    <p>Internal indent of block tags. <code>padding</code> can be writen in different ways:</p>\r\n    <pre><code>\r\n        padding: top right bottom left;\r\n        padding: top right & left bottom;\r\n        padding: tod & bottom right & left;\r\n        padding: all four paddings value\r\n    </code>\r\n    </pre>\r\n    <div class='body'>\r\n        <div class="block">\r\n            <div>\r\n                <p style="padding: 15px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="padding: 10px 20px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="padding: 0px 10px 20px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    padding: 15px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    padding: 10px 20px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    padding: 0px 10px 20px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n   </div>\r\n\r\n\r\n   <h2><code>margin</code></h2>\r\n    <p>External indent of block tags. <code>margin</code> can be writen in different ways:</p>\r\n    <pre><code>\r\n        margin: top right bottom left;\r\n        margin: top right & left bottom;\r\n        margin: tod & bottom right & left;\r\n        margin: all four paddings value\r\n    </code>\r\n    </pre>\r\n    <div class='body'>\r\n        <div class="block">\r\n            <div>\r\n                <p style="margin: 10px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="margin: 25px 10px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="margin: 0px 10px 20px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    padding: 10px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    padding: 25px 10px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    padding: 0px 10px 20px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n        <h3><code>mardin: auto;</code></h3>\r\n        <p class="margin">Sets the element in the center within it's container.</p>\r\n        <div class="margin">\r\n            <pre>\r\n                <code>\r\n    div {\r\n    padding: 0px 10px 20px;\r\n    }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <h2><code>width</code></h2>\r\n    <p>Sets the width of block tags and some in-line elements as <code>img</code>.</p>\r\n    <div class='body'>\r\n        <div class="block">\r\n            <div>\r\n                <p style="width: 100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="width: 75%;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="width: 210px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    width: 100px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    width: 75%;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    width: 210px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n        \r\n        <h3><code>max-width</code></h3>\r\n        <p>Sets the max-width of the block tags.</p>\r\n        <div class="block">\r\n            <div style="width: 60%;">\r\n                <p style="max-width: 400px;">If the content is larger than the maximum width, it will automatically change the height of the element.</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    max-width: 400px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n        </div>\r\n        <h3><code>min-width</code></h3>\r\n        <p>Sets the max-width of the block tags.</p>\r\n        <div class="block">\r\n            <div style="width: 60%;">\r\n                <p style="min-width: 550px;">If the content is larger than the maximum width, it will automatically change the height of the element.</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    min-width: 550px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n        <p>If the content is larger than the maximum width, it will automatically change the height of the element.</p>\r\n    </div>\r\n\r\n\r\n    <h2><code>height</code></h2>\r\n    <p>Sets the height of block tags and some in-line elements as <code>img</code>.</p>\r\n    <div class='body'>\r\n        <div class="block">\r\n            <div>\r\n                <p style="height: 100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="height: 75%;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="height: 40px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    height: 100px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    height: 75%;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    height: 40px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n        \r\n        <h3><code>max-height</code></h3>\r\n        <p>Sets the max-height of the block tags.</p>\r\n        <div class="block">\r\n            <div style="height: 50%;">\r\n                <p style="max-height: 150px;">If the content is larger than the maximum width, it will automatically change the height of the element.</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    max-height: 150px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n        </div>\r\n        <h3><code>min-height</code></h3>\r\n        <p>Sets the min-height of the block tags.</p>\r\n        <div class="block">\r\n            <div style="width: 30%;">\r\n                <p style="min-height: 60px;">If the content is larger than the maximum width, it will automatically change the height of the element.</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    min-height: 60px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n        <p>Useful script for changing the default width calculation</p>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\n*,*: before,*: after {\r\n    -moz-box-sizing: border-box;\r\n    webkit-box-sizing: border-box;\r\n    box-sizing: border-box;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <h2><code>oveflow</code></h2>\r\n    <p>Maneges the display of content of the block element</p>\r\n    <div class='body'>\r\n        <div class="block">\r\n            <div>\r\n                <p style="overflow: visible; height: 35px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, id!</p>\r\n            </div>\r\n            <div>\r\n                <p style="overflow: hidden; height: 62px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis odio fugiat suscipit! Quo ipsum delectus natus minima enim est dicta.</p>\r\n            </div>\r\n            <div>\r\n                <p style="overflow: auto; height: 70px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. At recusandae quis dolorem blanditiis placeat voluptatum laborum, vel aut enim atque!</p>\r\n            </div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    overflow: visible; \r\n    height: 35px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    overflow: hidden; \r\n    height: 62px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\ndiv {\r\n    overflow: auto; \r\n    height: 70px;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n\r\n\r\n\r\n    <h2><code>background</code></h2>\r\n    \r\n    <div class='body'>\r\n        <div class="back">\r\n            <h3><code>background-color</code></h3>\r\n            <h3><code>background-image</code></h3>\r\n            <h3><code>background-attachment</code></h3>\r\n        </div>\r\n        <div class="back">\r\n            <div class="background" style="background: rgba(232, 234, 236, 0.541);"><p>#Page</p></div>\r\n            <div class="background" style="background: url(img/background39.png)"><p>#Page</p></div>\r\n            <div class="background" style="background: url(img/tile.png) 0 0/ auto auto; color: rgb(255, 252, 242);"><p>#Page</p><br><br><br></div>\r\n        </div>\r\n        <div class="code">\r\n            <div>\r\n                <pre>\r\n                    <code>\r\nbody {\r\n    background: color;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\nbody {\r\n    background: url(path/img);\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n            <div>\r\n                <pre>\r\n                    <code>\r\nbody {\r\n    background-size: 0 0/ auto auto;\r\n}\r\n                    </code>\r\n                </pre>\r\n            </div>\r\n        </div>\r\n<h2 style="font-size: 30px">Positioning</h2>\r\n<h2><code>position</code></h2>\r\n<p>Sets the type of element position</p>\r\n        <div class="position">\r\n            <ul class="head">\r\n                <li><pre>\r\n                    <code>\r\n.block {\r\n    position: <b>static</b>;\r\n    font-size: 120%;\r\n}\r\n\r\n<small>&lt;!--installed by defaut--></small>\r\n\r\n                    </code>\r\n                </pre></li>\r\n                <li><pre>\r\n                    <code>\r\n.block{\r\n    position: <b>relative</b>;\r\n    left/right: Npx;\r\n    top/bottom: Npx;\r\n}\r\n<small>&lt;!--the position sets \r\nrelative to its parent--></small>\r\n                    </code>\r\n                </pre></li>\r\n                <li><pre>\r\n                    <code>\r\n.block{\r\n    position: <b>absolute</b>;\r\n    left: 0;\r\n    bottom: 0;\r\n}\r\n<small>&lt;!--the position sets relative \r\nto its nearest positioned ansestor--></small>\r\n                    </code>\r\n                </pre></li>\r\n            </ul>\r\n            <ul class="foot">\r\n                <li><pre>\r\n                    <code>\r\n.block{\r\n    position: <b>fixed</b>;\r\n    top: 10px;\r\n}\r\n<small>&lt;!--the position sets relative \r\nto viewport--></small>\r\n                    </code>\r\n                </pre></li>\r\n                <li><pre>\r\n                    <code>\r\n.block{\r\n    position: sticky;\r\n}\r\n<small>&lt;!--the position sets relative \r\n    to user's scroll</code>\r\n                </pre></li>\r\n                <li><pre>\r\n                    <code>\r\n.block{\r\n    position: relative;\r\n    right: 40px;\r\n    top: 30px;\r\n    <b>z-index</b>: 1;\r\n}\r\n<small>&lt;!--controls the overlap of elements\r\nvalue z-index responds for priority--></small>\r\n                    </code>\r\n                </pre></li>\r\n            </ul>\r\n        </div>\r\n        </div>	2021-12-05 13:06:24.885+01	2021-12-08 10:04:34.383+01	f		css-block	\N	2	25
55	Test 1				2021-12-07 21:37:33.452+01	2021-12-12 19:47:59.519+01	t		test1	2	3	22
61	test2				2021-12-12 19:47:40.314+01	2021-12-12 19:47:40.32+01	t		test2	1	3	22
2	URL links			<p> In the project directory there is a file <b> urls.py </b> which is responsible for routing. It initially contains the following: </p>\r\n<pre> <code>\r\nfrom django.contrib import admin\r\nfrom django.urls import path\r\n\r\nurlpatterns = [\r\npath ('admin /', admin.site.urls),\r\n]\r\n</code> </pre>\r\n<p> To create a new route to the old man from the application, you need to import functions (or classes) of the page view from the <b> views.py </b> file: <code> from path.file import def </ code > </p>\r\n<p> Where <b> path </b> is the name of the project folder, <b> file </b> is the <b> views </b> file that is responsible for displaying, and <b> def </b>\r\n<p> Next, in the <b> urlpatterns </b> variable, using the <b> path </b> function, the first parameter describes the name of the address bar (path), and the second - a link to the view function </p>\r\n<pre > <code>\r\n---urls.py\r\n\r\nurlpatterns = [\r\npath ('name /', def),\r\n]\r\n</code> </pre>\r\n<p> It means that when accessing such an address bar <b> 'name /' </b>, the browser should call the function <b> def </b> </p>	2021-12-02 10:20:20.41+01	2021-12-11 15:48:49.119+01	t		url-links	\N	3	2
3	List of nested routes			<p> As the second parameter, it is possible and recommended to use a list of nested routes </p>\r\n<p> To do this, create a file <b> urls.py </b> in the application and write the necessary paths in it. Next, in the <b> urls.py </b> file in the project directory, import the <b> include () </b> function. Now, for the second parameter of the <b> path </b> function, we will use the <b> include () </b> function and pass the path to the routes file there </p>\r\n<pre> <code>\r\n---urls.py\r\n\r\nfrom django.contrib import admin\r\nfrom django.urls import path, include\r\n\r\nurlpatterns = [\r\npath ('admin /', admin.site.urls),\r\npath ('name /', include ('path.urls'))\r\n]\r\n</ code> </pre>	2021-12-02 10:22:17.629+01	2021-12-11 15:50:51.016+01	t		list-of-nested-routes	\N	3	2
4	Models			<p> The file <b> models.py </b> contains the table parameters for creating a database. Models are described by classes, classes are described by attributes. Attributes represent corresponding fields in database tables. Below is an example of creating a model: </p>\r\n<pre> <code>\r\n---models.py\r\n\r\nfrom django.db import models\r\n\r\n# Create your models here.\r\n#All models are subclass of the django.db.models.Model class.\r\n#Each class will be transformed into database tables.\r\n\r\nclass Product (models.Model):\r\ntitle = model.CharField ('name', max_length = 150)\r\ncontent = model.TextField ('name', max_length = 50000)\r\ncreated_at = models.DateTimeField ('name', auto_now_add = True)\r\nupdated_at = models.DateTimeField (auto_now = True)\r\nphoto = models.ImageField (upload_to = 'path')\r\nis_published = modelsBoolean (default = True)\r\n\r\ndef str (self):\r\nreturn self.attribute\r\n</code> </pre>\r\n<p class = "description"> The <b> str </b> method is intended for string display of an object </p>	2021-12-02 10:24:10.132+01	2021-12-11 22:59:40.613+01	t		models	\N	3	3
5	Model type fields			<div class = 'container'> <code> CharField </code> - used for small text field <br>\r\n<b> Required argument </b>: <code> max_length </code> (limits the number of characters) </ div>\r\n<div class = 'container'> <code> TextField </code> - used for large text field </div>\r\n<div class = 'container'> <code> DateFiled </code> - field for storing date < / div>\r\n<div class = 'container'> <code> DateTimeField </code> - field for storing date and exact time <br>\r\n<b> Arguments </b>: <br> <code> auto_now </code> - updated automatically when the <br>\r\n<code> object is updatedauto_naw_add </code> - automatically created when creating an object </div>\r\n\r\n<div class = 'container'> <code> Boolean </code> - true / false <br>\r\n<b> Arguments </b>: <code> default </code> = True / False </div>\r\n\r\n<div class = 'container'> <code> ForeignKey </code> is a many-to-one relationship.\r\n<br> <b> Required arguments </b>: <br> <code> model </code> to link to <br>\r\n<code> on_delete </code> is a parameter that sets actions in case of deletion related object </div>\r\n\r\n<br> <div class = 'container'> <b> Additional arguments </b>:\r\n<p> <code> blank = True </code> - makes the field optional <br>\r\n<code> unique = True </code > - the field must be unique <br>\r\n<code> default = value </code> - the default value <br>\r\n<code> db_index = True </code> - sets the index for the field, making it fast to find <br>\r\n<code> verbose_name </code> - defines the constant name <br>\r\n<code> NULL = True / False </code> - sets the field value to NULL, i.e. without data </p> </div>\r\n\r\n<br> <div class = 'container'> <code> FileField </code> - allows you to upload files <br>\r\n<code> ImageField </code> - allows you to upload only photos <br>\r\n<b> Arguments </b> : <code> upload_to = 'path' </code> - indicates the path where the uploaded files will be saved </div>\r\n\r\n<p> For <b> FileField </b> and <b> ImageField </b> fields, you must additionally configure the <b> MEDIA_ROOT </b> and <b> MEDIA_URL </b> constants. To do this, add two new directives in the <b> settings.py </b> file: </p>\r\n<pre> <code>\r\n---settings.py\r\n\r\nMEDIA_ROOT = os.path.join (BASE_DIR, 'media')\r\nMEDIA_URL = '/ media /'\r\n</code> </pre>\r\n\r\n<p> Also, so that the uploaded files can be viewed on the site, you must create an appropriate route to these files. In debug mode, this is done using the <b> static </b> function from the <b> django.conf.url.static </b> module, which must be imported in the <b> urls.py </b> file in the project directory ... In the same place, we prescribe an additional condition to apply this path only in debug mode. First, let's import the <b> settings </b> file to take from there the value of the <b> DEBUG </b> constant, which is <b> True </b> in debug mode. After the <b> urlpatterns </b> directive, write the condition: </p>\r\n<pre> <code>\r\n---urls.py\r\n\r\nfrom django.conf.urls.static import static\r\nfrom django.conf import settings\r\n\r\nurlpatterns = [\r\n. ... ...\r\n]\r\nif settings.DEBUG:\r\nurlpatterns + = static (settings.MEDIA_URL, document_root = 'MEDIA_ROOT')\r\n</code> </pre>	2021-12-02 10:25:05.84+01	2021-12-11 23:02:39.754+01	t		model-type-fields	\N	3	3
6	Creating links between models			<p> Django provides the ability to create links between models. There are these types of relationships: </p>\r\n<p> <code> ForeignKey </code> - for Many to One relationships <br>\r\n<code> ManyToManyField </code> - for Many to Many relationships <br>\r\n<code> OneToOneField </code> - for One to One links </p>\r\n\r\n<p> In order to create a link, you need to add a new parameter to the list model, which will refer to the <b> id </b> category. In this case, the category model will be primary, and the list will be secondary. Conditionally it will look like this: </p>\r\n<pre> <code>\r\n---models.py\r\n\r\nclass List (models.Model):\r\ntitle = models.CharField (max_length = 100)\r\ncategory = ForeignKey ('Category', on_delete = models.PROTECT, null = True)\r\n\r\ndef __str __ (self):\r\nreturn self.title\r\n\r\nclass Category (models.Model):\r\ntitle = models.CharField (max_length = 20)\r\n\r\ndef __str __ (self):\r\nreturn self.title\r\n</code> </pre>\r\n\r\n<div class = 'container'> <p> The <code> ForeignKey </code> method accepts parameters such as: <br> <br>\r\n<code> Model </code> - link to the category model <br>\r\n<code> on_delete = models.RESTRICTION </code> - defines restrictions when deleting records from a category model </p> </div>\r\n\r\n<div class = 'container'> <p> Restrictions can be as follows: <br> <br>\r\n<code> PROTECT </code> - deleting a category removes all entries from the list <br>\r\n<code> CASCADE </code> - prohibits deleting a model if it is used in the list <br>\r\n<code> SET_NULL / SET_DEFAULT </code> - when deleting a category, sets the <b> ForeignKey </b> value to <b> null / default </b> all entries from the list <br>\r\n<code> SET () </code> - sets a custom value <br>\r\n<code> DO_NOTHING </code> - deleting a category does not cause any action </p>\r\n<p class = "description"> <code> null = True </code> - by default in Django all fields must be filled, and if the list is already filled, then using this method Django will apply <b> null </b> to all list items </p> </div>\r\n\r\n<p> For these settings to take effect, you need to register them with the command:\r\n<code> admin.site.register (Name, NameAdmin) </code> </p>	2021-12-02 10:25:30.582+01	2021-12-11 15:59:47.988+01	t		creating-links-between-models	\N	3	3
8	Registering a model in the admin panel			<p> After creating a migration, a database table is formed, in order to make edits to model objects or create new ones through the admin panel, you need to register the model. To do this, go to the <b> admin.py </b> file and import the model, then register it using the <b> register </b> function from the <b> admin.site </b> </p>\r\n<pre> <code>\r\n---admin.py\r\nfrom .models import *\r\n\r\nadmin.site.register (Class_Name)\r\n</code> </pre>	2021-12-02 10:27:14.739+01	2021-12-11 16:13:22.462+01	t		registering-a-model-in-the-admin-panel	\N	3	3
9	Admin panel			<p> To enter the admin panel and make all the necessary changes to the database objects, you need to create a <b> super user </b>. To do this, go to the terminal and write:\r\n<code> python manage.py createsuperuser </code>. Next, Django will offer to create a username and password, after that everything is ready to go to the admin panel </p>\r\n\r\n<p> The admin panel contains all registered models. Initially, they are displayed by the name of the model, in order to fix this, it is necessary to create a subclass <b> Meta </b> in our model, which will be responsible for displaying information in the admin panel. This meta-class includes many attributes, let's look at some of them: </p>\r\n<pre> <code>\r\n--- models.py\r\n\r\nclass Name (models.Model):\r\nattribut1 = value1\r\nattribut2 = value2\r\nattribut3 = value3\r\n\r\nclass Meta:\r\nverbose_name = 'Name'\r\n# responsible for the name of the model in the singular\r\n\r\nverbose_name_plural = 'Names'\r\n# is responsible for the plural name of the model\r\n\r\nordering = ['date', 'name']\r\n# sorting data in the database table\r\n</code> </pre>\r\n\r\n<p> In order to recruit a different application name (and not by the name of the directory) in the admin panel in the list of applications, go to the file <b> apps.py </b> and write: </p>\r\n<pre> <code>\r\n---apps.py\r\n\r\nclass HomeConfig (AppConfig):\r\ndefault_auto_field = 'django.db.models.BigAutoField'\r\nverbose_name = 'Home'\r\n</code> </pre>\r\n\r\n<p> In the <b> admin.py </b> file, you can configure the required table fields that will be available in the admin panel. This is done using a special editor class in which you can further customize the view of the model in the admin panel. It is usually called by the name of the model and the postfix <b> Admin </b> is added. This editor must be a subclass of <b> admin.ModelAdmin </b>. This class accepts many attributes such as: </p>\r\n<pre> <code>\r\n---admin.py\r\n\r\nclass NameAdmin (admin.ModelAdmin):\r\nlist_display = ('title', 'description', 'date', 'is_published')\r\n# accepts in the form of a list those fields that will be available in the admin panel\r\n\r\nlist_display_links = ('id', 'name')\r\n# fields to which links will be applied\r\n\r\nsearch_fields = ('name', 'content')\r\n# indicates which fields can be searched\r\n\r\nlist_editable = ('is_published',)\r\n# allows you to make changes to the object via the table in the admin panel\r\n\r\nlist_filter = ('date',)\r\n# fields by which filtering will be performed\r\n</code> </pre>	2021-12-02 10:27:56.313+01	2021-12-11 16:01:23.028+01	t		admin-panel	\N	3	11
10	View functions			<p> The <b> views.py </b> file creates functions or classes to view the page. To transfer the content from the database table to the page, you need to import the required model. Next, create a function (with the required <b> request </b> parameter) that will display the entire list of database objects. To do this, a variable is set up into which all objects are placed using the <b> objects.all () </b> method. The <b> views.py </b> file now looks like this: </p>\r\n<pre> <code>\r\n---views.py\r\n\r\nfrom django.shortcuts import render\r\nfrom .models import ClassName\r\n\r\ndef name (request):\r\nlist = ClassName.objects.all ()\r\n</code> </pre>\r\n\r\n<h3> Rendering Templates </h3>\r\n<p> The next step will walk you through creating page templates that we can render. <b> Rendering </b> is the process of populating a file (template) with data from the model </p>\r\n<p> By default, Django looks for templates in the <b> templates </b> folder in the application package. Initially, it is missing, so you need to create a new folder in the application directory with this name. It is also recommended to create another folder in it, which will duplicate the name of the application, and then you can create an html file, which is usually called by the name of the action (functions from the file <b> views.py </b>) </p>\r\n<p> Now we need to add output to the view function, in which the <b> render () </b> function will be triggered. This function takes a required parameter <b> request </b> (request object), <b> template name </b> and <b> context </b>, which is expressed by a dictionary, where the key is the name of the variable that will be available in the template, and the value will be any value, for example a list of database objects </p>\r\n<p> Now our <b> views.py </b> contains the following: </p>\r\n<pre> <code>\r\n--- views.py\r\n\r\nfrom django.shortcuts import render\r\nfrom .models import ClassName\r\n\r\ndef name (request):\r\nvalue = ClassName.objects.all ()\r\nreturn render (request, 'path / name.html', {'key': value, 'title': 'anything'})\r\n</code> </pre>	2021-12-02 10:33:10.429+01	2021-12-11 16:03:08.288+01	t		view-functions	\N	3	5
11	Templates (Jinja2)			<p> Variables from the <b> context </b> list are now available in the template; they can be inserted into standard html tags. For example, the variable <b> title </b> (which contains the title of the title) can be placed in the <b> & lth1> </b> tag, and the page will display the value of this variable with the styles inherent in this tag. In this case, the variable itself must be enclosed in two opening and closing brackets, like this:\r\n<code> {{title}} </code> </p>\r\n\r\n<p> Since the variable <b> key </b> is a list, we first need to iterate over it and for this we use special meta tags </p>\r\n<p> For each python method, be it a loop or a conditional expression, it is necessary to create an opening block and, after the content of the method, write a closing block </p>\r\n<p> An example of creating a loop that will iterate over a database list is presented below. In addition, the template can call functions from the model. Suppose we have a function <b> __str__ </b>, in order to call it in the template, it is enough to specify the model object and the name of the function </p>\r\n<pre> <code>\r\n--- template.html\r\n\r\n{% for item in key%}\r\n& lt; div>\r\n& lt; p> {{item.attribute1}} & lt; / p>\r\n& lt; p> {{item.attribute2}} & lt; / p>\r\n& lt; p> {{ item.attribute3}} & lt; / p>\r\n\r\n& lt; p> {{item.def}} & lt; / p>\r\n& lt; / div>\r\n{% endfor%}\r\n</code> </pre>\r\n\r\n<p> By default, if html tags are placed in the <b> TextField </b> field, they will be displayed simply as text, this is called tag escaping, this is done in order to protect the project from malicious scripts, themes however, this can be circumvented with the following command: </p>\r\n<pre> <code>\r\n--- template.html\r\n\r\n{% autoescape & lt; on / off>%}\r\ncontent with html tags\r\n{% endautoescape%}\r\n</code> </pre>	2021-12-02 10:33:44.864+01	2021-12-11 16:04:08.488+01	t		templates-jinja2	\N	3	5
12	Template inheritance			<p> Creating a basic site template is a good practice, it will create a common structure for all pages on the site. For this, an html file is created, in which blocks are formed, each of which will be static. This can be, for example, a block of a menu field, a vertical bar field, etc. To create such blocks, the following construction is used: </p>\r\n<pre> <code>\r\n{% block name%}\r\nblock with sidebar template\r\n{% endblock name%}\r\n</code> </pre>\r\n\r\n<p> Now, in the page template, you need to specify the base html file that will be inherited. Now the page template will have all the blocks from the base template, the blocks can be extended, changed or canceled </p>\r\n<pre> <code>\r\n{% extends 'base.html'%}\r\n\r\n{% block (name from base.html)%}\r\ncontent\r\n{% endblock%}\r\n</code> </pre>	2021-12-02 10:34:09.844+01	2021-12-11 16:05:01.572+01	t		template-inheritance	\N	3	5
13	Filters			<p> Built-in filters are used to change the order or format of the output of information (model object) when displayed to the end user. Built-in filters are described after the - <b> | </b> </p>\r\n\r\n<p> Create a filter to display the date in a suitable format <code> {{item.date | date: 'Ymd H: m'}} </code> </p>\r\n\r\n<p> Filter for sorting objects by creation date (from the most recent) using the <b> order_by </b> method (which takes as a parameter an attribute responsible for displaying the date and a minus sign before the attribute) <code> name.objects. order_by ('- date') </code> </p>\r\n\r\n<p> Filter showing how much time has passed from date_1 to date_2 <code> {{date_1 | timesince: date_2}} </code> </p>\r\n\r\n<p> By default, the <b> TextField </b> field is displayed in solid text, without any indentation, to fix this we use the <b> linebreaks </b> <code> {{item.text | linebreaks}} </code> </p>\r\n\r\n<p> Another useful filter that allows you to display a fixed number of words on the page <code> {{item.text | linebreaks | trunkcatewords: num}} </code> </p>	2021-12-02 10:34:29.44+01	2021-12-11 16:05:34.404+01	t		filters	\N	3	5
14	Static			<p> Adding statistics files allows you to apply cascading <b> CSS </b> style sheets and <b> JS </b> scripts to templates. An important note is that when in debug mode, Django looks for stat files in the <b> static </b> directory inside the application, <b> BUT </b> in live mode, Django looks for them in the root directory of the project. To do this, before launching the project on a real server, run the following command: <code> python manage.py collectstatic </code> </p>\r\n<p> This command will collect all statistical files in one <b> static </b> folder in the root project. In the future, the real server will collect statics from this folder. </p>\r\n\r\n<p> For all this functionality to work, you need to define the following three constants: <br>\r\n<br> <b> STATIC_URL </b> - URL prefix for static files. Thanks to this setting, Django looks for statics in the application directory and therefore this functionality works by default\r\n<br> <b> STATIC_ROOT </b> - the path to the shared static folder used by the real web server\r\n<br> <b> STATIC_DIRS </b> - a list of additional paths to static files used for collection and for debug mode\r\n<p> In the settings file it will look like this: </p>\r\n<pre> <code>\r\nSTATIC_URL = '/ static /'\r\nSTATIC_ROOT = os.path.join (BASE_DIR, 'static'\r\n</pre> </code>\r\n\r\n<p> Next, a directory called <b> static </b> is created in the application directory, in which, like the <b> template </b> directory, a folder with the name of the application is created, and then, for each type of statistical files, additional folders with specified types (such as css, js, images) </p>\r\n<p> To apply a static file <b> CSS </b> to a template, you just need to load the statics with the command <b> load static </b>. Next, in the <b> head </b> tag, connections to the statistical file are written, indicating that this file is static and the path to the file is indicated </p>\r\n<pre> <code>\r\n--- template.html\r\n\r\n{% load static%}\r\n. ... ...\r\n& lt; link rel = "stylesheet" href = "{% static 'app / css / style.css'%}">\r\n</code> </pre>	2021-12-02 10:35:39.338+01	2021-12-11 16:09:27.014+01	t		static	\N	3	5
51	Работа с текстом			<h3><code>font-family</code></h3><p>Responsible for the font family</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="font-family: Georgia, 'Times New Roman', Times, serif;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="font-family:'Courier New', Courier, monospace">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            font-family: Georgia, serif;\r\n        }\r\n\r\n\r\n        p {\r\n            font-family: 'Courier New', Courier, monospace;\r\n        }\r\n\r\n\r\n\r\n        p {\r\n            font-family: -apple-system, BlinkMacSystemFont, \r\n                            'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <h3><code>font-size</code></h3><p>Responsible for the font sizing</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="font-size: smaller">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="font-size: 18px;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="font-size: larger;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            font-size: smaller;\r\n        }\r\n\r\n\r\n        p {\r\n            font-size: 18px;\r\n        }\r\n\r\n\r\n\r\n\r\n        p {\r\n            font-size: larger;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <h3><code>font-style</code></h3><p>Definds font style</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="font-style: italic;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="font-style: oblique">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="font-style: initial;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            font-style: italic;\r\n        }\r\n\r\n\r\n        p {\r\n            font-family: style: oblique;\r\n        }\r\n\r\n\r\n        p {\r\n            font-style: initial;;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <h3><code>font-weight</code></h3><p>Sets the weight of the font</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="font-weight: bolder">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="font-weight: lighter">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            font-weight: bolder;\r\n        }\r\n\r\n\r\n        p {\r\n            font-weight: lighter;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n    <h3><code>color</code></h3><p>Spesify the color of the text</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="color: teal;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="color: rgb(114, 9, 9);">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n                <p style="color: #C87C56">\r\n                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            color: teal;\r\n        }\r\n\r\n\r\n        p {\r\n            color: rgb(114, 9, 9);\r\n        }\r\n\r\n\r\n        p {\r\n            color: #C87C56\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <h3><code>text-align</code></h3><p>Spesify font aligment</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="text-align: normal;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="text-align: justify;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="text-align: center;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="text-align: end;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            text-align: normal;\r\n        }\r\n\r\n\r\n        p {\r\n            text-align: justify;\r\n        }\r\n\r\n\r\n        p {\r\n            text-align: center;\r\n        }\r\n\r\n\r\n        p {\r\n            text-align: end;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n    <h3><code>text-decoration</code></h3><p>Adds underlines</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="text-decoration: overline;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="text-decoration: line-through;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="text-decoration: underline;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            text-decoration: overline;\r\n        }\r\n\r\n\r\n        p {\r\n            ext-decoration: line-through;\r\n        }\r\n\r\n\r\n        p {\r\n            text-decoration: underline;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n    <h3><code>text-shadow</code></h3><p>Applys shadow to the text</p>\r\n    <div class="fonttabl" style=" padding-bottom: 75px;">\r\n    \r\n        <div class='text'">\r\n            <p style="text-shadow: 3px 3px 2px black;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="text-shadow: 0px 75px 1px black;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n                \r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            text-shadow: 3px 3px 2px black;\r\n        }\r\n\r\n\r\n        p {\r\n            text-shadow: 0px 75px 1px black;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n    <h3><code>text-transform</code></h3><p>Responsible for upper or lower cases</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="text-transform: capitalize;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="text-transform: uppercase;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="text-transform: lowercase;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            text-transform: capitalize;\r\n        }\r\n\r\n\r\n        p {\r\n            text-transform: uppercase;\r\n        }\r\n\r\n\r\n        p {\r\n            text-transform: lowercase;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n    <h3><code>text-ident</code></h3><p>Setts width of indent</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="text-indent: 25px;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            text-indent: 25px;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n    <h3><code>letter-spacing</code></h3><p>Specify spacing between the symbols</p>\r\n    <div class="fonttabl" style="padding-bottom: 35px;">\r\n    \r\n        <div class='text'>\r\n            <p style="letter-spacing: 5px;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n\r\n        p {\r\n            letter-spacing: 5px;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n    <h3><code>word-spacing</code></h3><p>Specify spacing between the words</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="word-spacing: 15px;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        p {\r\n            word-spacing: 15px;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <h3><code>line-height</code></h3><p>Sets interlinear indent of text</p>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="line-height: 30px;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n      \r\n        p {\r\n            font-style: italic;;\r\n        }\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>\r\n</div>	2021-12-05 13:06:16.05+01	2021-12-08 10:04:34.034+01	f		font-and-text	\N	2	25
15	Shaping URLs in templates			<p> In order to display all objects from the secondary model that belong to one or another object of the primary model (for example, categories) at a specific address, for example http: / primary_model / num (where the number expresses the number <b> id </b> primary model) you need to create a new path in <b> urls.py </b> and a page display function in <b> views.py </b> </p>\r\n<p> In <b> urls. py </b> add the path to the <b> id </b> of the primary model (category), for this you can use such a dynamic parameter as <b> & lt; int: category_id> </b> and the second parameter is the function of displaying this category </p>\r\n<pre> <code>\r\n---urls.py\r\n\r\nurlpatterns = [\r\n. ... ...\r\npath ('category / & lt; int: category_id> /', my_def)\r\n]\r\n</code> </pre>\r\n\r\n<p> Next, in the <b> views.py </b> file, a function is created that will accept the <b> request </b> and <b> category_id </b> parameter. Using this function, we get objects belonging to the selected primary model, so we turn to the <b> objects </b> record manager and filter the output only for specific objects using the <b> filter () </b> method, which will add to <b > sql </b> -query condition (filter), in this case we will use a filter by <b> id </b>. We retrieve the current category using the <b> get </b> </p>\r\n<pre> <code>\r\ndef my_def (request, category_id)\r\nfunction : list = List.objects.filter (category_id = category_id)\r\ncategory = Category.objects. get (pk = category_id)\r\n</pre> </code>\r\n\r\n<p> Now it remains to create a page template with displaying objects by category, in the list of categories in the <b> a href </b> tag, it is enough to specify <b> 'category / {{item.pk}}' </b> and this link will display all objects of the selected category </p>\r\n\r\n<p> There is an even more reliable way to form a link on a page in Django, for this, use the special tag <code> {% url '& lt; URL-address or path name>' [link parameters]%} </code> </p>\r\n\r\n<p> For this, a special model method is created, which will point to a specific model object and generate the desired link option. To create such functionality in the <b> models.py </b> file, we import the <b> reverse </b> function from the <b> django.url </b> module, which will take the name <b> URL as the first parameter </b> route, the second parameter will be the dictionary <b> kwargs = {} </b> </p>\r\n<pre> <code>\r\n--- (models.py):\r\nfrom django.urls import reverse\r\n\r\nMy_Model class (models.Model):\r\n. ... ...\r\n\r\ndef get_absolute_url (self):\r\nreturn reverse ('url_name', kwargs = {'name_id': self.pk})\r\n</code> </pre>\r\n<p> Now let's compare two ways to create links, the first is via the <b> URL tag </b> and the second through the <b> get_absolute_url function </b> </p>\r\n<pre> <code>\r\n& lt; a href = '{% url' url_name 'item.pk%}'\r\n\r\n& lt; a href = '{{item.get_absolute_url}}'\r\n</code> </pre>\r\n\r\n<p> <code> get_object_or_404 (Class, pk = item_id) </code> is another useful function that returns a 404 error if the page is not found </p>	2021-12-02 10:36:24.969+01	2021-12-11 16:10:37.101+01	t		shaping-urls-in-templates	\N	3	5
16	Slug			<p> <b> Slug </b> is a unique <b> URL </b> -address fragment associated with a specific post. In Django, slugs are defined in the database model in the <b> SlugField </b> field, into which we pass the maximum length parameter, an indication of the uniqueness of the slug, and we can add <b> db_index </b>, which will allow search engines to search for the page faster </p>\r\n<the pre> <below code>\r\n---models.py\r\nclass My_Model (models.Model):\r\n. ... ...\r\nslug = models.SlugField ('Slug', max_length = 225, unique = True, db_index = True)\r\n</code> </pre>\r\n<p> In order for the slug to be created automatically, you need to go to the <b> admin.py </b> file and define the <b> prepopulated_fields </b> parameter in the admin panel settings, which will take the list as a parameter , CDB key will indicate the field that will autocomplete and option - the field on which it will be filled </p>\r\n<pre> <code>\r\n---admin.py\r\nclass My_ModelAdmin (admin.ModelAdmin):\r\n. ... ...\r\nprepopulated_fields = {'slug': ('name',)}\r\n</code> </pre>\r\n<p> Now, in order for the page to be searched for by slug, it is necessary in the file <b> urls.py </b> use dynamic parameter <b> 'address / & lt; slug: my_slug /' </b>. Next, let's slightly modify the view function from the previous example </p>\r\n<pre> <code>\r\n---views.py\r\n\r\ndef category_view (request, my_slug):\r\nlist = List.objects.filter (slug = my_slug)\r\nor\r\nlist = get_object_or_404 (List, slug = my_slug)\r\n</code> </pre>\r\n<p> We also modify the function <b> get_absolute_url </b> </p>\r\n<pre> <code>\r\n---models.py\r\n\r\ndef get_absolute_url (self):\r\nreturn reverse ('url_name', kwargs = {'my_slug': self.slug})\r\n</code> </pre>	2021-12-02 10:36:49.379+01	2021-12-11 16:12:38.065+01	t		slug	\N	3	5
17	Custom template tags			<p> Custom template tags are used to avoid duplicating any repetitive methods. To create a generic tag view function, you first need to create a folder in the application directory called <b> templatetags </b> and create a <b> __init__.py </b> file in it to tell Django that this is a module (package ). Next, let's create another file <b> my_name.py </b> in which we will designate tags </p>\r\n<p> In order to create a tag, you need to import the <b> template </b> module and register the tag </ p>\r\n<pre> <code>\r\n---my_tag.py\r\nfrom django import template\r\n\r\nfrom project.models import Model_Name\r\n\r\nregister = template.Library ()\r\n</code> </pre>\r\n\r\n<h4> Simple tag </h4>\r\n<p> A simple custom tag is created using the <code> @ register.simple_tag () </code> decorator into which you can pass parameters, for example ('name' = my_name). Next, a function is created that will return the required tag: </p>\r\n<pre> <code>\r\ndef get_tag ():\r\nreturn Model_Name.objects.all ()\r\n</code> </pre>\r\n<p> Now, in the template, we must call the file with tags: <code> {% load my_tag%} </code>. And then, if necessary, use the function, call it using the command <code> {% get_tag as name%} </code> </p>\r\n\r\n<h4> Inclusion tag </h4>\r\n<p> <b> Inline tags </b> allows you to display not only data, but also render data in the template. To create such a tag, you must register it as <code> @ register.inclusion_tag (path / template.html) </code> </p>\r\n<pre> <code>\r\n---my_tag.py\r\n\r\n@ register.inclusion_tag (path / template.html)\r\ndef show_template ():\r\nlist = List.objects.all ()\r\nreturn {'list': list}\r\n</code> </pre>\r\n<p> Now we can refer to the whole template just one line of code <code> {% show_template%} </code> </p>	2021-12-02 10:36:58.53+01	2021-12-11 16:08:08.673+01	t		custom-template-tags	\N	3	5
18	Forms			<p> HTML forms are a set of widgets that can be used on a page, they are designed to collect information from the user and then send it to the server. Forms can be related (add an article by model template, registration form) and not related to database tables (post, comment, search). </p>\r\n<p> To create an HTML form in Django, you need to create a form template, a path to the template, a display function, and the actual form. The form will be described in the <b> form.py </b> file and must be located in the application directory. In this file, you need to import the <b> forms </b> module, as well as all the necessary database models. Next, you need to create a class that should inherit from the class <b> forms.Form </b> (a form not associated with a model) or <b> forms.ModelForm </b> (a form associated with a model). </p>\r\n<pre> <code>\r\n---forms.py\r\nfrom django import form\r\nfrom path.models import Model\r\n</code> </pre>\r\n\r\n<h3> Creating a form not associated with the model </h3>\r\n<p> Let's create a form of the <b> forms.Form </b> type which we will manually link to the existing model. To create a form that is not related to the model in the created class, we will describe the form fields as they are described in the model, but with minor differences, for example, to create forms, they use classes of built-in fields, this is the familiar <b> CharField </b>, <b> BooleanField </b>, but not represented here for example <b> TextField </b>, and to create a dropdown list you can use <b> ChoiceField </b>, which will use the <b> select </b> widget, if the drop-down list is associated with a model, then you can use the <b> ModelChoiceField </b> attribute with the required <b> queryset </b> parameter\r\n\r\n<pre><code>\r\nclass NewForm (forms.Form):\r\ntitle = forms.Charfield (max_length = 100, label = 'Title')\r\nslug = forms.SlugField (max_length = 255)\r\ncontent = forms.CharField ()\r\nis_published = forms.BooleanField (required = False , initial = True)\r\ncategory = forms.ModelChoiceField (queryset = Category.objects.al (empty_label = 'nothing selected'))\r\n</code> </pre>\r\n\r\n<p> Now, in order to see what happened, you need to create a template and a view function, where you will also need to write a <b> condition </b>, in which if the request method is <b> POST </b>, then the server accepts data from the form. In order to receive data from the form, you need to refer to the <b> request </b> object and take the <b> POST </b> from it. Next, we write a condition for the presence of variation errors, if the form is valid, then the form should have a property such as <b> cleaned_data </b>, into which the data in the form of a dictionary falls. You can save the form to the database using the <b> create </b> function, into which we will transfer the generated dictionary with the form. In order for the function to unpack the form itself by keys and values ​​and add everything you need to the database, you need to add the characters <b> ** </b> before the dictionary. Using the <b> redirect </b> function from the <b> shortcuts </b> module, you can send a link to the page to which the redirect will be performed after creating the form </p>\r\n<p> The second condition will sound like this - if the data transfer method is <b> GET </b> then an empty form is generated </p>\r\n<pre> <code>\r\n---views.py\r\n\r\ndef form (request):\r\nif request.method == 'POST'\r\nform = NewForm (request.POST)\r\nif form.is_valid ():\r\npost = Model.objects.create (** form.cleaned_data)\r\nreturn redirect (post)\r\nelse :\r\nform = NewForm ()\r\nreturn render (request, 'path.html', {'form': form})\r\n</code> </pre>\r\n\r\n<p> Now in the template, all you need to do is call the form and Django will independently render everything and display the result, you just need to add the <b> form </b> tag, which will take the <b> action </b> attribute as a parameter (it points to then, to which <b> URL </b> -address you need to refer to process the form when the data will be sent to the server), and it is necessary to register the <b> method </b> of data transfer <b> POST </b>. Next, you will need to create a <b> submit </b> button. In the wrapper of the <b> form </b> tag, it will be enough to call the command <b> form.as_p </b>, which will wrap each form field in the <b> p </b> </p>\r\n<p> tag In addition , before calling the form, you must specify a parameter such as <b> csrf_token </b>, without which the default form will not work. This token is added to the form to protect it from <b> csrf </b> attacks and tampering </p>\r\n<pre> <code>\r\n--- form.html\r\n\r\n& lt; form action = '{% url' path '%} method =' POST'>\r\n{% csrf_token%}\r\n{{form.as_p}}\r\n&lt;button type =' submit '> Submit &lt;/ button>\r\n&lt;/form>\r\n</code> </pre>	2021-12-02 10:37:57.567+01	2021-12-12 14:06:57.244+01	t		forms	\N	3	6
19	Arguments for form fields			<p> Arguments for form fields are used to further customize the form. For example, by default, all form fields are required, and checkboxes are unchecked, and special arguments are used to fix this: </p>\r\n<pre> <code>\r\nlabel = 'Name' - names the title of the form field\r\nrequired = False- makes the field optional\r\ninitial = 'text' / True - initial value of the field\r\nempty_label = 'text' / None - used to edit an empty line in the drop-down list\r\n</code> </pre>\r\n\r\n<h3> Widgets </h3>\r\n<p> Widgets can be added to each field in the model, they define the type of the field, for example, you can reassign the widget for the <b> CharField </b> field to <b> Textarea () </b> and / or give the form the style <b> CSS </b> </p>\r\n<pre> <code>\r\nwidget = forms.TextInput (attrs = {'class': 'style'})\r\nwidget = forms.Textarea (attrs = { 'class': 'style', 'rows': 5})\r\nwidget = forms.Select (attrs = {'class': 'style'})\r\n</code> </pre>	2021-12-02 10:40:56.051+01	2021-12-11 22:47:16.186+01	t		arguments-for-form-fields	\N	3	6
30	Базовые методы ОРМ			<pre><code>\r\n    user$ python manage.py shell\r\n\r\n>>> from app.models import Model\r\n\r\n\r\n>>> Model.objects.all()                         \r\n# вывод всех объектов модели\r\n\r\n>>> Model.objects.all()[:num]              \r\n# срез объектов модели\r\n\r\n>>> Model.objects.all().reverse()        \r\n# вывод всех объектов модели в обратном порядке\r\n\r\n>>> Model.objects.order_by('attribute')          \r\n# вывод списка в указанном порядке\r\n\r\n>>> Model.objects.get(pk=value/title='title')   \r\n# вывод объекта по значению ключа\r\n</code></pre>\r\n<pre><code>\r\n>>> variable = _                                \r\n# присвоение переменной последнего результата выборки\r\n\r\n>>> variable.attribute                           \r\n# отобразит значение по ключу <b>attribute</b>\r\n\r\n>>> variable.category.pk                        \r\n# отобразит <b>id</b> значения по ключу \r\n\r\n>>> primary_obj = Category.objects.get(pk=num)  \r\n>>> primary_obj.model_set.all() \r\n# получить все обьекты из вторичной модели, которые связаны \r\n# с объектом первичной модели\r\n!перед аттрибутом <b>_set</b> название модели записывается в \r\n нижнем регистре\r\n\r\n                                                             \r\n>>> S_Model.objects.filter(p_model__attribute='value')   \r\n# получить все обьекты вторичной модели, которые связаны с \r\nпервичной по определенному аттрибуту\r\n\r\n>>> primary_obj.model_set.exists()              \r\n# есть ли обьекты в списке, вернёт True/False\r\n</code></pre>\r\n<pre><code>\r\n>>> Model.objects.count()                       \r\n# выведет количество объектов  \r\n\r\n>>> Model.objects.first()                       \r\n# вывод первого объекта списка\r\n\r\n>>> Model.objects.last()                        \r\n# вывод последнего объекта списка\r\n\r\n>>> Model.objects.earliest('date'/'update')     \r\n# вывод объекта списка по самой ранней дате\r\n\r\n>>> Model.objects.latest('date'/'update')       \r\n# вывод объекта списка по самой поздней дате\r\n</code></pre>\r\n<p class='description'>Порядок вывода объектов с помощью функции <b>all</b> по умолчанию произвольный, но его можно настроить в мета-описании модели в аттрибуте <b>ordering</b></p>\r\n<p class="description">Благодаря функции <b>__str__</b>, прописанной в модели, при обращении к связанной модели по её аттрибуту будет отображаться не идентификационный номер объекта, а её строковое представление</p>\r\n<p class="description">Аттрибут <b>_set</b> можно переназначить, достаточно в поле <b>ForeignKey</b> дописать параметр <b>related_name='name'</b>, и теперь вместо<b>model_set</b> можно использовать <b>name</b> в качестве функции вывода связанных объектов из вторичной модели</p>	2021-12-02 10:48:16.25+01	2021-12-04 17:28:22.14+01	t		bazovye-metody-orm	\N	3	8
20	Styling the form			<p> To style the form, you will have to face the need for independent rendering, that is, writing all the tags manually. In this case, the <b> form </b> tag is written as in the previous example, the <b> label </b> tag is also added, in which the <b> for </b> attribute takes the parameter of the form model field with the addition construct <b> id_for_label </b> which transfers the <b> id </b> fields of the model. A form field can be displayed with the <b> form.attribute </b> command, and styles are added by assigning different widgets to the model. Then, with <b> form.attribute.errors </b>, variation errors will be displayed, and non-form related errors are output through a directive such as <b> form.non_field.errors </b> </p>\r\n<p class = “description”> <b> form.attribute.errors </b> renders with <b> errorlist </b> class, which can be styled in <b> CSS </b> </p>\r\n<pre> <code>\r\n--- form.html\r\n\r\n{{form.non_field.errors}}\r\n&lt;div class = 'style'>\r\n&lt;label for = '{{form.attribute.id_for_label}}'> Title: / or / {{{form.attribut.label}} &lt;/label>\r\n{{form.attribute}}\r\n& lt; div class = 'style'>\r\n{{form.attribute.errors}}\r\n&lt;/div>\r\n&lt;/div>\r\n</code> </pre>\r\n\r\n<h4> Styling a form using a loop </h4>\r\n<p> To create a form using a loop, you need to iterate over each form field in a loop, the <b> label </b> tag can be displayed in the same way, or you can use the special attribute < b> label_tag </b> which will generate the <b> label </b> tag. Further, the form itself and variation errors are prescribed. Now the code looks shorter, it is convenient if there is a need to display all fields by the same type: </p>\r\n<pre> <code>\r\n--- form.html\r\n\r\n{{form.non_field.errors}}\r\n{{for field in form}}\r\n&lt;div class = 'style'>\r\n{{field.label_tag}}}\r\n{{field}}\r\n&lt;div class = 'style'>\r\n{{ field.errors}}\r\n&lt;/div>\r\n&lt;/div>\r\n</code> </pre>	2021-12-02 10:41:52.02+01	2021-12-12 15:04:13.121+01	t		styling-the-form	\N	3	6
21	Model-related forms			<p> To create such a form, you need to create a class that should inherit from the <b> forms.ModelForm </b> class, create another class inside the class, and name it <b> Meta </b>, which will contain set attributes that will be responsible for which model the form will be associated with and what fields it will have. In the <b> meta </b> -class, you can also reassign widgets, this is done through the <b> widgets </b> attribute, in which, in the form of a dictionary, form fields are selected as a key, and a widget type as a value </p>\r\n<p> To add arguments, you need to add the constructor <b> __init__ </b> to the created class, in which the constructor <b> super () .__ init __ (* args, ** kwargs) </b> from models <b> ModelForm </b> </p>\r\n\r\n<pre><code>\r\nclass NewForm (forms.ModelForm):\r\nclass Meta ():\r\nmodel = Model\r\nfields = ['title', 'content' ...] / '__all__'\r\nwidgets = {\r\n'title': forms.TextInput (attrs = {'class ':' style '})\r\n' title ': forms.Textarea (attrs = {' class ':' style ',' rows ': 5})\r\n' title ': forms.Select (attrs = {' class ':' style '})\r\n}\r\n\r\ndef __init __ (self, * args, ** kwargs):\r\nsuper () .__ init __ (* args, ** kwargs)\r\nself.fields ['attribut']. empty_label = 'text'\r\n</code> </pre>\r\n\r\n<p> To save data from a bound form, you need to slightly change the submission function at the place where the validity condition is written, if the form has passed validation, then it is enough to turn to the <b> save </b> method to save the form </ p >\r\n<pre> <code>\r\n---views.py\r\n\r\ndef form (request):\r\nif request.method == 'POST'\r\nform = NewForm (request.POST, request.FILES)\r\nif form.is_valid ():\r\npost = form.save ()\r\nreturn redirect (post)\r\nelse:\r\nform = NewForm ()\r\nreturn render (request, 'path.html', {'form': form})\r\n</code> </pre>\r\n\r\n<p> In order for the form to receive images from the user, when creating an instance of the form, pass the list of files that were transferred to the server from the form as the second argument. To do this, we turn to the <b> request </b> object and take the <b> FILES </b> collection (the way of using it is presented above). Now in the <b> form </b> tag it is necessary to describe the attribute <b> enctype </b> </p>\r\n<pre> <code>\r\n--- form.html\r\n& lt; form action = 'path' method = 'post 'enctype =' multipert / form-data '>\r\n</code> </pre>	2021-12-02 10:42:18.428+01	2021-12-11 23:06:49.614+01	t		model-related-forms	\N	3	6
22	Custom validators			<p> A custom validator can be added to any form field, a validator is nothing more than a form class method named like <b> clean_data </b>. The custom validator will be processed after passing the default validators </p>\r\n<p> Let's create a validator that checks if the heading starts with a number. So, in the <b> NewForm </b> class, add a function whose name is customary to start with <b> clean </b> and then, through an underscore, indicate the field that will vary. This function takes a <b> self </b> parameter. Next, we create a variable that will substitute the <b> self </b> parameter and call the <b> cleaned_data </b> function and access the required key. Next, a condition is required in which we write the regular expression of the <b> match </b> method from the <b> re </b> module, this method looks for something at the beginning of the line for the field, and if a digit was found, then the validator must will raise an exception <b> ValidationError </b>, in which you can write the error text as a parameter,\r\n\r\n<pre><code>\r\n---forms.py\r\n\r\nNewForm class (forms.ModelForm / the Form):\r\n\r\ndef clean_field (self):\r\nfield = self.cleaned_data ['field']\r\nif re.match (r '\\ d', 'field'):\r\nraise ValidationError ('text')\r\n\r\nreturn field\r\n</code> </pre>	2021-12-02 10:42:36.089+01	2021-12-12 10:35:46.135+01	t		custom-validators	\N	3	6
23	Контролеры класса CBVs, ListView			<p>Представление - это вызываемый объект, который принимает запрос и возвращает ответ. Это может быть больше, чем просто функция, и Django предоставляет пример некоторых классов, которые можно использовать как представления. Они позволяют структурировать представления и повторно использовать код, используя наследование и миксины.</p>\r\n\r\n<h3>ListView</h3>\r\n<p>Мы уже знакомы с тем как писать функции преставления. Теперь же попробуем написать контроллеры класса. Для начала импортируем класс <b>ListView</b> из модуля <b>django.views.generic</b>, что бы наследовать список. Теперь создадим класс, который будет являться подклассом <b>ListView</b>. Данный класс предназначен для работы со списками, в нём будут переопределяться некоторые аттрибуты, которые он наследует. Первое, что необходимо переопределить, это аттрибут <b>model</b> в который передаётся модель, она будет записана в объект по умолчанию <b>object_list</b></p>\r\n<p class='description'>Создав контролер класса Django автоматически создаёт для него путь к шаблону и переменную <b>object_list</b> в которой храниться список объектов модели. Для того, что бы установить свой шаблон по умолчанию, необходимо переопределить атрибут <b>template_name</b>, а что бы установить имя переменной по умолчанию - <b>context_object_name</b>. Атрибут <b>extra_context</b> используется для хранения статичных данных. Атрибут <b>allow_empty</b> со значением <b>False</b> будет отображать <b>404</b> ошибку в случае, если страница не найдена</p>\r\n<pre><code>\r\n    ---views.py\r\n    from django.view.generic.list import ListView\r\n\r\n    class NewClass(ListView):\r\n        model = Model\r\n        template_name = 'path/file.html'\r\n        context_object_name = 'my_name'\r\n        extra_context = {'title': 'text'}\r\n        allow_empty = True/False\r\n</code></pre>\r\n\r\n<p>Для того, что бы передать динамический массив или список необходимо создать функцию, которая будет генерировать как динамический, так и статический контекст, который можно будет передавать в шаблон. Функция эта называется <b>get_context_data</b> и принимает набор стандартных параметров. Первым делом необходимо определить переменную <b>context</b> и передать ей контекст, который уже сформирован в классе, для этого мы обратимся к базовому классу <b>ListView</b> - <b>super</b> и вызовем функцию <b>get_context_data</b>, которая будет принимать словарь <b>**kwargs</b> и дальше будем дополнять <b>context</b> необходимыми параметрами</p>\r\n<pre><code>\r\n    def get_context_data(self, *, object_list=None, **kwargs):\r\n        context = super().get_context_data(**kwargs)\r\n        context['title'] = 'text'\r\n        # where <b>title</b> contains a string\r\n\r\n        context['menu'] = menu      \r\n        # where <b>menu</b> contains a list of items\r\n        return context\r\n</code></pre>\r\n\r\n<p>Для того, что бы фильтровать объекты можно воспользоваться функцией <b>get_queryset</b> и в ней возвращать отфильтрованный список</p>\r\n<pre><code>\r\n    def get_queryset(self):\r\n        return Model.objects.filter(cat_id=self.kwargs['category_attribute'/'pk'], model_attribut=value)\r\n    or\r\n        return Model.objects.filter(cat__slug.kwargs[my_slug])\r\n</code></pre>\r\n<p class='description'>Строка <b>cat_id=self.kwargs['category_attribute']</b> означает, что берётся значение <b>cat_id</b> из адресной строки и фильтруется по этому параметру, иначе говоря выбираются только те объекты модели, которые имеют нужную категорию</p>\r\n<p>Теперь, для того, что бы обратиться к этому контролеру класса, в файле <b>urls.py</b> необходимо заменить функцию представления на название класса, а так же вызвать функцию <b>as_view()</b> - <code>path('path/', NewClass.as_view(), name='name')</code>></p>	2021-12-02 10:44:15.596+01	2021-12-04 14:55:23.902+01	t		kontrolery-klassa-cbvs-listview	\N	3	7
24	DetailView			<p>Этот класс используется для более детального отображения содержимого объекта базы данных. Описывать его можно, как и предыдущий класс. При создании маршрута к определенному объекту модели необходимо учитывать, что в качестве параметра идентификатора должно использоваться свойство <b>pk</b> или <b>slug</b></p>\r\n<p>Один из способов обратиться к <b>pk</b> и/или <b>slug</b> это переопределить следующие атрибуты:</p>\r\n<pre><code>\r\n    class NewClass(DetailView):\r\n        model = Model\r\n        pk_url_kwarg = 'my_id'\r\n        slug_url_kwarg = 'my_slug'\r\n</code></pre>\r\n<p>Второй способ, это передать к маршруту свойство <b>pk</b></p>\r\n<pre><code>\r\n    ---urls.py\r\n    path('address/&lt;int:pk>')\r\n</code></pre>\r\n<p class='description'>В данном классе список объектов по умолчанию храниться в переменной <b>object</b>, которую можно переопределить с помощью аттрибута <b>context_objects_name</b></p>	2021-12-02 10:44:36.216+01	2021-12-04 22:29:08.628+01	t		detailview	\N	3	7
39	Кастомизация формы регистрации			<p>Кастомизирование формы происходит в файле <b>forms.py</b>, в нём необходимо импортировать класс b<b>UserCreationForm</b>, так же необходимо импортировать модель <b>User</b> из модуля <b>django.contrib.auth.models</b>. Дальше создаём свой класс, который будет наследовать класс <b>UserCreationForm</b> и здесь можно настраивать дополнительные поля при необходимости. В классе <b>Meta</b> укажем с какой моделью форма будет связанна и в каком порядке будут выводиться поля</p>\r\n<pre><code>\r\n    ---forms.py\r\n    from django.contrib.auth.models import User\r\n    from django.contrib.auth.forms import UserCreationForm\r\n\r\n    class UserReg(UserCreationForm):\r\n        username = forms.CharField(label='User_Name', \r\n                    widget=forms.TextInput(attrs={'class': 'style'}))\r\n        password1 = forms.CharField(label='Password', \r\n                    widget=forms.PasswordInput(attrs={'class': 'style'}))\r\n        password2 = forms.CharField(label='Repeat Password',\r\n                    widget=forms.PasswordInput(attrs={'class': 'style'}))\r\n        email = form.EmailField(label='Email', \r\n                    widget=forms.EmailInput(attrs={'class': 'style'}))\r\n\r\n        class Meta:\r\n            model = User\r\n            fields = ('username' 'email', 'password1', 'password2')\r\n</code></pre>\r\n<p class="description">После небольшой кастомизации формы в функции представления необходимо будет уже наследовать новый созданный класс вместо <b>UserCreationForm</b>, предварительно импортировав его</p>\r\n<p class="description">Что бы у поля была стока подсказывающая формат ввода поля можно использовать аттрибут <b>help_text='hint'</b> в качестве параметра для необходимого поля</p>	2021-12-02 10:53:23.821+01	2021-12-06 15:56:53.904+01	t		kastomizaciya-formy-registracii	\N	3	9
25	CreateView			<p>Данный класс предназначен для работы с формами. Для того, что бы вызвать модель формы необходимо переопределить переменную <b>form_class</b>. Этого вполне достаточно, что бы форма работала. Единственное, на что следует обратить внимание, так это на наличие функции <b>get_absolute_url</b> в модели. Именно благодаря этой функции, после создания объекта, пользователь будет перенаправляться к этому объекту. В случае если перенаправление должно происходить на другую страницу, можно определить атрибут <b>success_url</b>, что позволит указать адрес для функции <b>reverse_lazy</b></p>\r\n<p class="description">Функция <b>reverse_lazy</b> создает маршрут отложенно и подходит под этот случай, так как функция <b>reverse</b> сразу строит маршрут в момент создания объекта, но это сделать невозможно, так как маршруты в этот момент еще не определены самим Django</p>\r\n<pre><code>\r\n    class NewClass(CreateView):\r\n        form_class = FormModel\r\n        success_url = reverse_lazy('address_name')\r\n</code></pre>	2021-12-02 10:45:10.875+01	2021-12-04 14:59:34.256+01	t		createview	\N	3	7
26	Миксины			<p>Миксины это возможность наследовать классы для избежания дублирования кода. В Django миксины создаются в директории приложения в файле, который принято называть <b>utils.py</b>. В нём создаются классы, устанавливаются параметры и затем, после импортирования миксина, они будут доступны для наследования. Кроме того, с помощью миксинов можно передавать данные в функцию <b>get_context_data</b>. Для этого в миксине потребуется создать функцию, которая будет содержать базовые параметры для всех функций <b>get_context_data</b></p>\r\n<p>В этом методе в первой строчке сформируем словарь из тех именованных параметров, которые будут переданы после вызова функции, далее можем передать в переменные все необходимые списки из БД, динамические и статичные данные. Так же можем записать условное выражение в котором, если мы определяем какой-либо именованный параметр, то описываем его</p>\r\n<pre><code>\r\n    ---utils.py\r\n\r\n    list = [\r\n        {'name': name},\r\n        {'name': name},\r\n    ]\r\n\r\n    class MyMixin():\r\n        attribute = value\r\n        def get_user_context(self, **kwargs):\r\n            context = kwargs\r\n            model = Model.objects.annotate(Count('model'))\r\n            context['list'] = list\r\n            context['model'] = model\r\n            if 'attribut' not in context:\r\n                context['attribut'] = 0\r\n            return context\r\n</code></pre>\r\n\r\n<p>Далее в файле <b>views.py</b> импортируем созданный миксин и наследуем его в нашем классе представления первым параметром. Для передачи данных из метода <b>def get_user_context</b> необходимо после определения переменной <b>context</b> (в которой уже содержится контекст) добавляем функцию из миксина, в которую можно передать параметры, которые станут словарём. Далее эта функция должна возвращать общий словарь из <b>context</b> и <b>my_def</b></p>\r\n<pre><code>\r\n    ---views.py\r\n    from app.utils import MyMixin\r\n\r\n\r\n    class View(MyMixin, ListView)\r\n        # в этом классе присутствует свойство <b>attribute</b> из класса <b>MyMixin</b>\r\n\r\n        def get_context_data(self, *, object_list=None, **kwargs):\r\n            context = super().get_context_data(**kwargs)\r\n            my_def = self.get_user_context(kay='value')\r\n            return dict(list(context.items()) + list(my_def.items()))\r\n</code></pre>	2021-12-02 10:45:29.871+01	2021-12-04 10:51:05.789+01	t		miksiny	\N	3	7
27	MySQL			<p>База данных представляет собой набор упорядоченных данных в виде таблицы. СУБД или система управления базами данными это инструмент управления, упорядочивания баз данных с помощью программных и лингвистических средств общего или специального назначения. <b>MySQL</b> представляет собой одну из многих систем управления БД. <b>SQL</b> или <b>Structured Query Language</b> это язык структурированных запросов, предназначенный для работы с БД, данный язык универсален, его поддерживает множество СУБД</p>\r\n\r\n<h3>MtSQL install</h3>\r\n<p>Для работы с этой базой данных потребуется установить сервер <b>MySQL</b>, можно зайти на официальный сайт <b>MySQL</b> и скачать его отдельно, или же, воспользоваться готовым локальным сервером, в состав которого уже входит <b>MySQL</b>, например <b>Open Server</b> (который отлично подходит под Windows) или <b>XAMPP</b> (подходит под другие операционные системы)</p>\r\n\r\n\r\n<h3>Установка XAMPP</h3>\r\n<p>Что бы установить <b>XAMPP</b> необходимо перейти на главную страницу <a href="https://www.apachefriends.org/index.html">XAMPP</a> выбрать установку под необходимое ПО и затем в терминале выполнить следующие команды:</p>\r\n<pre><code>\r\n    user$ sudo chmod +x xampp-linux-x64-8.0.12-0-installer.run\r\n    user$ sudo ./xampp-linux-x64-8.0.12-0-installer.run\r\n</code></pre>\r\n<p>После чего запуститься установщик <b>XAMPP</b>. После загрузки необходимо перейти в окно инсталлятора, во вкладку <b>Manage Servers</b> и запустить все сервера. После чего будет открыт доступ к сайту администрирования баз данных <a href="http://localhost/phpmyadmin/index.php">phpMyAdmin</a></p>\r\n<p>Дальше, для работы с <b>MySQL</b> нам потребуется <b>mysqlclient</b>, специальный драйвер, который может связываться с базой данных</p>\r\n\r\n\r\n<h3>Настройка MySQL в Django</h3>\r\n<pre><code>\r\n    ---settings.py\r\n\r\n    DATABASES = {\r\n        'default': {\r\n            'ENGINE': 'django.db.backends.mysql',\r\n            'NAME': 'DB_name',\r\n            'USER': 'root(default value)',\r\n            'PASSWORD': '',\r\n            'HOST': 'localhost',\r\n        }\r\n    }\r\n</code></pre>	2021-12-02 10:46:15.88+01	2021-12-04 15:01:19.692+01	t		mysql	\N	3	12
28	Shell			<p><b>Shell</b> это интерактивная оболочка, командный интерпретатор, который обеспечивает интерфейс взаимодействия между пользователем и ядром операционной системы, в то же время и своеобразный язык программирования, в котором присутствуют такие конструкции, как операторы условного ветвления, циклы, переменные и многое другое.</p>\r\n<p>Запустить интерактивную оболочку можно командой: <code>python manage.py shell</code></p>\r\n\r\n\r\n\r\n<h3>Создание объектов модели через Shell</h3>\r\n<p>Для того, что бы начать работу с моделями необходимо их импортировать: <code>from path.models import className</code></p>\r\n\r\n\r\n<p>Существует несколько методов добавления объектов в базу данных:</p>\r\n<pre><code>\r\nname = ClassName(attribute1='string', attribut2='integer', attribut3='Boolean')\r\nname.save()\r\n#или\r\nname.ClassName.objects.create(attribute1='string', attribut2='integer', attribut3='Boolean')\r\n#эта команда сразу создаёт и сохраняет объект\r\n</code></pre>\r\n\r\n<h3>Полезные команды</h3>\r\n<p>После сохранения объекта генерируется id объекта, которое можно посмотреть командой: <code>name.id</code></p>\r\n\r\n\r\n<p>Обращаясь к аттрибуту можно посмотреть его содержимое, например:</p>\r\n<pre><code>\r\n    name.attribut1\r\n    ---'string'\r\n    name.attribut2\r\n    ---'integer'\r\n</code></pre>\r\n\r\n<p>Чтобы редактировать значение необходимо прописать:</p>\r\n<pre><code>\r\n    name.attribut1 = 'new value'\r\n    name.save()\r\n</code></pre>\r\n\r\n<p>Что бы просмотреть все обьекты базы данных можно воспользоваться командой: <code>name.objects.all()</code></p>\r\n\r\n\r\n<p>Что бы вывести отсортированный список объектов используется метод <b>order_by</b>, которой принимает в качестве параметра необходимый атрибут в порядке которого будет выводиться список - <code>name.objects.order_by(id)</code></p>\r\n\r\n\r\n<p>Что бы вывести объект по значению поля <b>id</b> используется метод <b>get</b>: <code>className.objects.get(id=value)</code></p>	2021-12-02 10:47:01.201+01	2021-12-04 15:06:08.67+01	t		shell	\N	3	13
29	ORM (Object-Relational Mapping)			<p><b>ОРМ</b> это технология программирования, которая связывает базы данных с концепциями объектно-ориентированных языков программирования, создавая «виртуальную объектную базу данных»</p>\r\n<p>В учебных целях пользоваться <b>ОРМ</b> можно через интерпретатор <b>shell</b>, для того, что бы начать работать с базой данных, необходимо импортировать модели</p>\r\n<p>Что бы посмотреть, как Django формирует запросы, необходимо из модуля <b>django.db</b> импортировать <b>connection</b>, что бы отчистить все запросы используем функцию <b>reset_queries</b></p>\r\n<pre><code>\r\n    from django.db import connection, reset_queries\r\n    connection.queries\r\n    reset_queries()\r\n</code></pre>	2021-12-02 10:47:36.144+01	2021-12-04 15:17:34.388+01	t		orm-object-relational-mapping	\N	3	8
31	Операторы фильтрации			<pre><code>\r\n    &LT;--- <b>gt</b> вывести все объекты если id > num --->\r\n    >>> Model.objects.filter(pk__gt=num)   \r\n\r\n    &LT;--- <b>gte</b> вывести все объекты если id >= num--->\r\n    >>> Model.objects.filter(pk__gte=num)  \r\n\r\n    &LT;--- <b>lt</b> вывести все объекты если id &lt; num--->\r\n    >>> Model.objects.filter(pk__lt=num)        \r\n\r\n    &LT;--- <b>lte</b> вывести все объекты если id &lt;= num-->\r\n    >>> Model.objects.filter(pk__lte=num)   \r\n \r\n    &LT;--- <b>in</b> вывести объекты находящиеся в диапазоне --->\r\n    >>> Model.objects.filter(pk__in[num, num, num])     \r\n\r\n    &LT;--- <b>contains</b> вывести все объекты которые содержат --->\r\n    >>> Model.objects.filter(title__contains='Title')       \r\n\r\n    &LT;--- <b>icontains</b> (case-insensitive) вывести все объекты которые содержат --->\r\n    >>> Model.objects.filter(title__icontains='title')      \r\n    \r\n\r\n    >>> P_Model.objects.filter(s_model__title__contains='title').distinct()\r\n    # выведет все объекты первичной модели у которой связанные объекты содержат указанный фильтр\r\n</code></pre>\r\n<p class='description'>SQLite не поддерживает регистрозависимый поиск, поэтому фильтр <b>contains</b> будет отрабатывать без учета регистра</p>	2021-12-02 10:48:40.067+01	2021-12-04 15:44:36.225+01	t		operatory-filtracii	\N	3	8
32	Логическое and, or, not в запросах, класс Q			<p>Для создания запросов с логическими выражениями <b>and, or, not</b> необходимо импортировать класс <b>Q</b>:</p>\r\n<pre><code>\r\nfrom django.db.models import Q\r\n| -- or  ,   & -- and  ,   ~ -- not\r\n\r\n# вывод списка, который будет находиться в указанном диапазоне\r\n#<b>или</b> который будет содержать указанную строку\r\n>>> Model.objects.filter(Q(pk__in=[num, num]) | Q(title__contains='str'))\r\n\r\n# вывод списка, который будет находиться в указанном диапазоне\r\n#<b>и не</b> будет содержать указанную строку\r\n>>> Model.objects.filter(Q(pk__in=[num, num]) & ~ Q(title__contains='str'))\r\n</code></pre>	2021-12-02 10:49:02.882+01	2021-12-04 15:47:29.603+01	t		logicheskoe-and-or-not-v-zaprosah-klass-q	\N	3	8
33	Агрегатные функции			<p>Для того, что бы начать работать с агрегатными функциями, для демонстрации создадим поле в модели, которое будет отвечать за просмотры статьи (объекта). Следовательно, добавим к модели поле типа <b>integer</b>: <code>views = models.IntegerField(default=0)</code></p>\r\n\r\n<p>Теперь импортируем агрегатные функции из модуля <b>django.db.models</b></p>\r\n<pre><code>\r\nfrom django.db.models import aggregate, annotate\r\n\r\n>>> Model.objects.aggregate(Min('views'))           \r\n# отобразит максимальное значение поля views\r\nВывод: {'views__min': num}\r\n\r\n>>> Model.objects.aggregate(Max('views'))           \r\n# отобразит минимальное значение поля views\r\nВывод: {'views__max': num}\r\n\r\n>>> Model.objects.aggregate(my_name=Max('views')) \r\n{'my_name': num}\r\n>>> Model.objects.aggregate(my_name=Max('views') - Min('views')) \r\n{'my_name': num}\r\n</code></pre>\r\n<pre><code>\r\n>>> Model.objects.aggregate(Sum('views'))           \r\n# отобразит сумму значений поля views\r\nВывод: {'views__sum': num}\r\n\r\n>>> Model.objects.aggregate(Avg('views'))           \r\n# отобразит среднее значение поля views\r\nВывод: {'views__avg': num}\r\n\r\n>>> Model.objects.aggregate(Count('views'))         \r\n# отобразит количество значений поля views\r\nВывод: {'views__count': num}\r\n\r\n</code></pre>\r\n<pre><code>\r\n>>> list = P_Model.objects.annotate(Count('S_model'))      \r\n        for i in list:                                          \r\n            print(i.title, i.s_model__count)   \r\n\r\n                          #или\r\n\r\n>>> list = P_Model.objects.annotate(my_name=Count('S_model'))   \r\n        for i in list:                                 \r\n            print(i.title, i.my_name)   \r\n# отобразит количество объектов вторичной модели, которые связаны с первичной        \r\n\r\nModel.objects.values('attribut1', attribut2)        \r\n# получить объект с указанными аттрибутами\r\n\r\nModel.objects.values('attribut1__title')            \r\n# получить объект из связанной модели\r\n</code></pre>	2021-12-02 10:49:23.999+01	2021-12-04 16:03:27.276+01	t		agregatnye-funkcii	\N	3	8
34	Класс F, функции СУБД и Raw SQL			<p>Класс <b>F</b> рекомендуется использовать в тех случаях, когда необходимо изменить значение аттрибута</p>\r\n<pre><code>\r\n    # <b class='red'>как делать не рекомендуется</b>\r\n    object = Model.object.get(pk=num)\r\n    object.attribute += value          \r\n    object.save()\r\n\r\n\r\n    <b class='green'># рекомендуемая форма записи</b>\r\n    from django.db.models import F\r\n    object = Model.object.get(pk=num)  \r\n    object.attribute = F('attribute') + value\r\n    object.save()\r\n\r\n    Model.objects.filter(attribute1__icontains=F('attribute2'))\r\n</code></pre>\r\n\r\n<h3>Функции СУБД</h3>\r\n<p>СУБД поддерживают большой набор функций, используя функции СУБД вычисления переносятся со стороны языка программирования (Python) на сторону СУБД. Это рекомендуемая практика. В Django есть множество функций, которые являются обертками над функциями, которые будет выполнять СУБД. Для того, что бы начать работать с функциями СУБД необходимо из модуля <b>django.db.models.function</b> импортировать нужную функцию</p>\r\n\r\n<h3>Raw SQl</h3>\r\n<p><b>Raw SQL</b> это запросы написанные языком SQL</p>\r\n<pre><code>\r\n    Model.objects.raw('SELECT * FROM appname_modelname')        \r\n    # вывод всех объектов модели\r\n\r\n    Model.objects.raw("SELECT * FROM appname_modelname WHERE attribute = %s", ['value'])\r\n    # найти объект, в котором указанный атрибут равен указанному значению\r\n</code></pre>	2021-12-02 10:49:56.026+01	2021-12-04 16:07:59.065+01	t		klass-f-funkcii-subd-i-raw-sql	\N	3	8
35	Django DEBUG Toolbar			<p>Пакет <b>Debug Toolbar</b> позволит отслеживать корректность работы приложения и определять насколько код приложения является оптимальным. Установить этот пакет можно воспользовавшись руководством установки с официального сайта <a href="https://django-debug-toolbar.readthedocs.io/en/latest/installation.html">Debug Toolbar</a></p>\r\n<p>Теперь в пакете конфигурации проекта, в директиве <b>INSTALLED_APPS</b> необходимо его подключить <b>debug_toolbar</b>, в директиву <b>MIDDLEWARE</b> - <b>debug_toolbar.middleware.DebugToolbarMiddleware</b>, а так же в список <b>ip</b> адресов <b>INTERNAL_IPS</b> указать свой адрес или локальный адрес <b>'127.0.0.1'</b></p>\r\n<p>Теперь, в файле <b>urls</b> необходимо добавить условие, при котором, если мы находимся в режиме отладки, то создаться еще один путь:</p>\r\n<pre><code>\r\n    if settings.DEBUG:\r\n        import debug_toolbar\r\n        urlpatterns = [\r\n            path('__debug__/', include(debug_toolbar.urls)),\r\n        ] + urlpatterns\r\n</code></pre>\r\n<p>После установки этой утилиты на странице появиться панель в которой будет указана различная вкладочная информация, здесь нас в частности будет интересовать поле <b>SQL</b>-запросов. Если открыть эту вкладку, можно посмотреть, какие <b>SQL</b>-запросы вызывает приложение, первые два запроса вызываются в том случае если мы авторизованы. Желательно, что бы приложение не вызывало слишком много дублирующих однотипных запросов, так как это нагружает сервер</p>\r\n\r\n\r\n<h3>Метод select_related и prefetch_related</h3>\r\n<p>В Django есть понятие <b>ленивых</b> (отложенные запросы, которые выполняются только в момент запроса данных, их удобно использовать когда нужно выводить какие-либо неповторяющиеся статичные данные) и <b>сжатых</b> запросов. Метод <b>select_related</b> используется в том случае, когда необходимо создать сжатый запрос SQL, что означает, что информация, которая нам нужна, будет отображаться только по необходимости</p>\r\n<p>К примеру, есть <b>SQL</b>-запрос вывода списков объектов, и нужно, что бы данные загружались сжато, для этого вызываем метод <b>select_related</b> (для связи ForeignKey) или <b>prefetch_related</b> (для связи ManyToMany) и качестве параметра указывается связанное поле</p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    def Name(request):\r\n        model = Model.objects.all().select_related('attribut_with_ForeignKey')\r\n\r\n        or\r\n\r\n    class Name(ListView):\r\n        . . .\r\n\r\n        def get_queryset(self):\r\n            return Model.objects.all().select_related('attribut_with_ForeignKey')\r\n</code></pre>	2021-12-02 10:51:20.136+01	2021-12-04 13:21:45.749+01	t		django-debug-toolbar	\N	3	14
36	Постраничная навигация (pagination)			<p>Постраничная навигация это разбитие большого <b>SQL</b>-запроса на несколько страниц. Для того что бы использовать этот функционал необходимо импортировать класс <b>Paginator</b> из модуля <b>django.core.paginator</b>. Ниже приведены простые примеры использования пагинации</p>\r\n<pre><code>\r\nfrom django.core.paginator import Paginator\r\n>>> objects = Model.objects.all()\r\n\r\n>>> p = Paginator(objects, 2)               \r\n# объект класса пагинатора, который принимает в качестве \r\nпараметра список и кол. записей, которые будут \r\nотображаться на одной странице\r\n\r\n>>> p.count                           \r\n# выведет количество записей\r\n\r\n>>> p.num_pages              \r\n# выведет количество созданных страниц    \r\n    \r\n>>> p.page_range                            \r\n--->    range(1, 3)\r\n# вернёт диапазон страниц    \r\n</pre></code>\r\n<pre><code>\r\n>>> page1 = p.page(1)/ or / p.get_page(num)       \r\n# метод <b>page</b> берёт в качестве параметра  \r\nномер страницы и создает объект\r\n\r\n>>> page1.object_list                       \r\n# отображает содержимое объекта\r\n\r\n >>> page1.number         \r\n# выведет номер страницы    \r\n\r\n>>> page2 = p.page(2)\r\n>>> page2.has_next()                        \r\n--->    False   \r\n# есть ли следующая страница\r\n\r\n>>> page2.has_previous()                    \r\n--->    True\r\n# есть ли предыдущая страница \r\n\r\n>>> page2.has_other_pages()                 \r\n--->    True\r\n# если ли какие-то еще страницы\r\n\r\n>>> page2.next_page_number()                \r\n--->    Traceback (most recent call last):\r\nEmptyPage: That page contains no results\r\n# вернуть номер следующей страницы\r\n\r\n>>> page2.previous_page_number()            \r\n--->    1\r\n# вернуть номер предыдущей страницы\r\n</code></pre>\r\n<p>Пагинацию удобно использовать в классе <b>ListView</b>, всё что необходимо будет сделать, так это добавить свойство <b>paginate_by</b> которое будет отвечать за количество выводимых объектов на одной странице. После этого в шаблоне будут доступны следующие объекты класса <b>Paginator</b> это <b>paginator</b> объект в котором будут вызываться функции связанные с диапазонами типа <b>page_range</b> и объект <b>page_obj</b> над которым можно производить операции связанные с получением объекта</p>\r\n<p>В случае, если используются функции представления, то что бы добавить пагинацию необходимо будет произвести ряд настроек:</p>\r\n<pre><code>\r\n    def view(request):\r\n        model = Model.objects.all()\r\n        paginator = Paginator(model, num)\r\n        page_number = request.GET.get('page', 1)         # получаем номер текущей страницы, если \r\n                                                           такого параметра нет, то подставиться 1\r\n        page_obj = paginator.get_page(page_number)      \r\n\r\n        return render(request, 'path/page.html', context={'page_obj': page_obj})\r\n</code></pre>\r\n\r\n<p>В шаблоне выведем содержимое страниц, а так же добавим блок пагинации, нумерации страниц</p>\r\n<pre><code>\r\n    ---basic.html\r\n\r\n    {% if page_obj.has_other_pages%}\r\n\r\n        {% for page in page_obj %}\r\n            %lt;p> {{ page }} %lt;/p>\r\n        {% endfor %}\r\n\r\n        {% if page_obj.nas_previous %}\r\n            &lt;div>&lt;a href='?page={{ page_obj.previous_page_number }}'> Previous &lt;/a>&lt;/div>\r\n        {% endif %}\r\n\r\n        {% for num in page_obj.paginator.page_range %}\r\n            {% if page_obj.paginator.number == num %}\r\n                &lt;div class='emphasis'>&lt;a href='#'> {{ num }} &lt;/a>&lt;/div>\r\n            {% elif num > page_obj.number|add:-3 and num &lt; page.obj.number|add:3 %}\r\n                &lt;div>&lt;a href='?page={{ num }}'> {{ num }} &lt;/a>&lt;/div>\r\n            {% endif %}\r\n        {% endfor %}\r\n\r\n        {% if page_obj.nas_next %}\r\n            &lt;div>&lt;a href='?page={{ page_obj.next_page_number }}'> Next &lt;/a>&lt;/div>\r\n        {% endif %}\r\n\r\n    {% endif %}\r\n</code></pre>	2021-12-02 10:51:41.849+01	2021-12-05 21:29:45.956+01	t		postranichnaya-navigaciya-pagination	\N	3	15
37	Регистрация			<p>В Django регистрация и авторизация создаётся достаточно просто, для начала создадим функцию отображения, которая будет возвращать форму регистрации <b>UserCreationForm</b> из модуля <b>django.contrib.auth.forms</b>, ссылку на страницу регистрации и путь в <b>urls.py</b>. Дальше в наших шаблонах создадим форму регистрации и авторизации</p>\r\n<p>Для функций представления :</p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    from django.contrib.auth.forms import UserCreationForm\r\n\r\n    def reg(request):\r\n        if request.method == 'POST'\r\n            form = UserCreationForm(request.POST)\r\n            if form.is_valid:\r\n                form.save()\r\n                return redirect('login')\r\n        else:\r\n            form = UserCreationForm()\r\n        return render(request, 'path/page.html', {'form': form})\r\n</code></pre>\r\n<p class="description">Это простой способ создания контролерра для формы, при котором пользователь регестируется и перенаправляется к форме авторизации (она еще не создана). При этом новый пользователь уже добавлен в БД</p>\r\n\r\n<p>Для представления классов достаточно будет прописать:</p>\r\n<pre><code>\r\nclass RegUser(CreateView):\r\n    form_class = UserCreationForm\r\n    template_name = 'path/page.html'\r\n    success_url = reverse_lazy('login')\r\n</code></pre>\r\n\r\n<p class="description">Аналогичная запись для класса представления</p>\r\n<p>В шаблонах добавляем ссылки на форму и прописываем форму</p>\r\n<pre><code>\r\n    ---basic.html\r\n\r\n    # ссылка на страницу регистрации и авторизации\r\n    &lt;a href='{% url 'name' %}'>Registration&lt;/a> | &lt;a href='{% url 'name' %}'>Login&lt;/a>\r\n</code></pre>\r\n<pre><code>\r\n    ---template_form.html\r\n\r\n    &lt;form method='post'>\r\n        {% csrf_token %}\r\n        {{ form.as_p }}\r\n        &lt;button type='submit'>Registration&lt;/button>\r\n    &lt;/form>\r\n</code></pre>	2021-12-02 10:52:25.996+01	2021-12-06 13:10:50.291+01	t		registraciya	\N	3	9
38	Flash-сообщения			<p>Flash-messages это короткие сообщения, которые всплывают после успешной или неуспешной отправки формы. Для создания такого сообщения, необходимо импортировать <b>messages</b> из модуля <b>django.contrib</b></p>\r\n<pre><code>\r\n    ---views.py\r\n\r\n    from django.contrib import massages\r\n\r\n    #универсальная запись\r\n    messages.add_message(request, messages.INFO, 'text')\r\n    \r\n    # другие методы:\r\n    messages.info(request, 'text')\r\n    messages.success(request, 'text')\r\n    messages.warning(request, 'text')\r\n    messages.error(request, 'text')\r\n    messages.debug(request, '%s SQL query' %count)\r\n</code></pre>\r\n\r\n<p>Пример:</p>\r\n<pre><code>\r\n---views.py\r\n\r\ndef registration(request):\r\n    if request.method == 'POST':\r\n        form = UserCreationForm(request.POST)\r\n        if form.is_valid:\r\n            form.save()\r\n            messages.success(request, 'Successful registration!')\r\n            return redirect('home')\r\n        else:\r\n            messages.error(request, 'Unsuccessful registration!')\r\n    else:\r\n        form = UserCreationForm()\r\n    return render(request, 'home/form.html', {'form': form, 'title': 'Registration'})\r\n</code></pre>\r\n\r\n<p>Далее необходимо отобразить сообщение в шаблоне (<b>basic.html</b>). Ниже представлени пример стандартной записи:</p>\r\n<pre><code>\r\n---basic.html\r\n\r\n{% if messages %}\r\n    {% for message in messages %}\r\n        {% if message.tags == 'success' %}\r\n            &lt;div class="success" role="alert">{{ message }}&lt;/div>\r\n        {% elif message.tags == 'error' %}\r\n              &lt;div class="error" role="alert">{{ message }}&lt;/div>\r\n        {% else %}\r\n              &lt;div class="message_else" role="alert">{{ message }}&lt;/div>\r\n        {% endif %}\r\n    {% endfor %}\r\n{% endif %}\r\n</code></pre>	2021-12-02 10:53:02.751+01	2021-12-06 15:56:05.836+01	t		flash-soobsheniya	\N	3	9
41	Отправка писем на Email			<p>Для создания такого функционала потребуется для начала настроить директивы:\r\n    <br><b>EMAIL_HOST</b> - хост который будет использован, для отправки смс\r\n    <br><b>EMAIL_PORT</b> - подходящий порт, через который будет осуществлена связь, его необходимо уточнять\r\n    <br><b>EMAIL_HOST_USER</b> - здесь указывается имя пользователя для доступа к электронной почте\r\n    <br><b>EMAIL_HOST_PASSWORD</b> - пароль электронной почты с которой будет отправляться письмо\r\n    <br><b>EMAIL_USER_TLS</b> - тип защищенного порта, по умолчанию выставленное в <b>False, уточнять\r\n    </b><br><b>EMAIL_USE_SSL</b> - второй тип защищенного порта, по умолчанию выставленное в <b>False, уточнять</b></p>\r\n<pre><code>\r\n    ---settings.py\r\n\r\n    EMAIL_HOST = 'smtp.email.com'\r\n    EMAIL_PORT = num\r\n    EMAIL_HOST_USER = 'user_name@email.com'\r\n    EMAIL_HOST_PASSWORD = 'password'\r\n    EMAIL_USER_TLS = False\r\n    EMAIL_USER_SSL = False\r\n</code></pre>\r\n\r\n<p>Дальше необходимо создать контактную форму, через которую будут отправляться письма</p>\r\n<pre><code>\r\n    class SendEmail(forms.Form):\r\n        subjects = forms.CharField(label='Subject', \r\n                    widget=forms.TextInput(attrs={'class': 'style'}))\r\n        content = forms.CharField(label='Content', \r\n                    widget=forms.TextareaInput(attrs={'class': 'style', 'rows': 5}))\r\n</code></pre>\r\n\r\n<p>Далее в файле представлений страниц необходимо будет импортировать функцию <b>send_mail</b> из модуля <b>django.core.mail</b>. Эта функция имеет ряд необходимых параметров, таких как: тема, сообщение, отправитель, получатель, сообщение об ошибке. Далее создадим собственно форму и типичное условие</p>\r\n<pre><code>\r\n    from .forms import SendEmail\r\n    from django.core.mail import send_mail\r\n\r\n    def sendmail(request):\r\n        if request.method == 'POST'\r\n            form = SendEmail(request.POST)\r\n            if form.is_valid:\r\n                mail = send_mail(form.cleaned_data['subject'], form.cleaned_data['content'], 'user_name@email.com', ['user2_name@email.com'], fail_silently=False/True)\r\n                if mail:\r\n                    messages.success(request, 'Message sent successfully')\r\n                    return redirect('page.html')\r\n                else:\r\n                    messages.error(request, 'Message sent fail')\r\n            else:\r\n                messages.error(request, 'Fail validation')\r\n        else:\r\n            form = SendEmail()\r\n      return render(request, 'path/page.html', {'form': form})\r\n</code></pre>\r\n<pre><code>\r\n    ---template.html\r\n\r\n    &lt;form method='post'>\r\n    {% csrf_token%}\r\n    {{ form.as_p }}\r\n    &lt;button type='submit' class='style'>Send message&lt;/button>\r\n    &lt;/form>\r\n</code></pre>	2021-12-02 10:55:36.959+01	2021-12-07 18:54:04.233+01	t		otpravka-pisem-na-email	\N	3	16
42	Капча			<p>Капча это тест проверяющий является ли юзер ботом, для создания такого функционала установим пакет <b>simple captcha</b> с помощью команды <code>pip install django-simple-captcha</code>. Теперь необходимо произвести некоторые настройки, для того что бы всё заработало.\r\n    <br>Для начала добавим капчу в список установленный приложений\r\n    <br>Далее необходимо выполнить миграцию, так как капча использует БД\r\n    <br>Теперь в файле формы импортируем модель <b>CaptchaField</b> и определим в форме аттрибут <b>captcha</b> со значением модели</p>\r\n<p class="description">Для формы связанной с моделью аттрибут <b>captcha</b> определятся в классе <b>Meta</b></p>\r\n<pre><code>\r\n    ---settings.py\r\n\r\n    INSTALLED_APPS = [\r\n        . . . \r\n        'captcha',\r\n    ]\r\n\r\n    ---urls.py\r\n    urlpatterns = [\r\n        path('captcha', include('captcha.urls')),\r\n    ]\r\n\r\n    ---forms\r\n    from captcha.fields import CaptchaField\r\n\r\n    class Form(forms.Form):\r\n        . . .\r\n        captcha = CaptchaField(widget=CustomCaptchaTextInput)\r\n</code></pre>\r\n<p class="description">За дополнительной настройкой капчи можно обратиться по этой <a href="https://django-simple-captcha.readthedocs.io/en/latest/advanced.html#">ссылке.</a> Здесь представлено большое количество конфигураций, которые настраиваются в файле <b>settings.py</b></p>\r\n\r\n<p>Для кастомизации каптчи используется особенный метод добавления виджета. Для этого необходимо импортировать дополнительную модель <b>CustomCaptchaTextInput</b>. Также создать класс, который будет наследовать модель <b>CustomCaptchaTextInput</b> и в котором необходимо определить аттрибут <b>template_name</b> с ссылкой на шаблон. И затем уже можно будет создать кастомный шаблон для капчи</p>\r\n<pre><code>\r\n    ---forms\r\n    from captcha.fields import CaptchaField, CustomCaptchaTextInput\r\n\r\n    class Form(forms.Form):\r\n        field = 'path/file.html'\r\n\r\n\r\n    class Form(forms.Form):\r\n        . . .\r\n        captcha = CaptchaField(widget=CustomCaptchaTextInput)\r\n</code></pre>	2021-12-02 10:55:56.741+01	2021-12-07 19:55:12.543+01	t		kapcha	\N	3	17
47	HTML синтаксис			<p><b>HTML</b> (HyperText Markup Language) is the most basic building block of the Web. It defines the meaning and structure of web content. Other technologies besides HTML are generally used to describe a web page's appearance/presentation (CSS) or functionality/behavior (JavaScript).</p>\r\n    </article>\r\n\r\n\r\n    <article id='HTML_preamble'>\r\n      <h2>Here is an example of HTML preable</h2>\r\n      <pre class='code'>\r\n        <code>\r\n          &lt;<span id='gray'>!DOCTYPE html</span>>\r\n          &lt;<span id='red'>html</span>>\r\n            &lt;<span id='red'>head</span>>\r\n              &lt;<span id='red'>meta</span><span id='orange'> charset</span>=<span id='green'>"utf-8"</span>>\r\n              &lt;<span id='red'>title</span>> -- Some title --&lt;/<span id='red'>title</span>>\r\n            &lt;/<span id='red'>head&gt</span>>\r\n          &lt;<span id='red'>body</span>>\r\n          &lt;/<span id='red'>body</span>>\r\n          &lt;/<span id='red'>html</span>>\r\n        </code>\r\n      </pre>\r\n      <h3>The meaning of the following construction is:</h3>\r\n      <table>\r\n        <tr>\r\n          <td id='table_header'><code><b>&lt;<span id='gray'>!DOCTYPE html</span></b></code></td>\r\n          <td>It is a required preamble. In the mists of time, when HTML was young (around 1991/92),\r\n            doctypes were meant to act as links to a set of rules that the HTML page had to follow to be\r\n            considered good HTML, which could mean automatic error checking and other useful things.\r\n            However these days, they don't do much and are basically just needed to make sure your document\r\n            behaves correctly. That's all you need to know for now.</td>\r\n        </tr>\r\n        <tr>\r\n          <td id='table_header'><code>&lt;<span id='red'>html</span></code></td>\r\n          <td>The <code>&lt;<span id='red'>html</span>></code> element. This element wraps all the content on the entire page and is\r\n            sometimes known as the root element.</td>\r\n        </tr>\r\n        </tr>\r\n          <td id='table_header'><code>&lt;<span id='red'>head</span></code></td>\r\n          <td>The <code>&lt;<span id='red'>head</span>&gt;</code> element. This element acts as a container for all the stuff you want to\r\n            include on the HTML page that isn't the content you are showing to your page's viewers. This\r\n            includes things like keywords and a page description that you want to appear in search results,\r\n            CSS to style our content, character set declarations, and more.</td>\r\n        </tr>\r\n          <td id='table_header'><code>&lt;<span id='red'>meta</span><span id='orange'> charset</span>=<span id='green'>"utf-8"</span></code></td>\r\n          <td>This element sets the character set your document should use to <code><span id='green'>UTF-8</span></code> which includes most\r\n            characters from the vast majority of written languages. Essentially, it can now handle any textual\r\n            content you might put on it. There is no reason not to set this and it can help avoid some problems\r\n            later on.</td>\r\n        </tr>\r\n          <td id='table_header'><code>&lt;<span id='red'>title</span>. . .&lt;/<span id='red'>title</span></code></td>\r\n          <td>The <code>&lt;<span id='red'>title</span>&gt;</code> element. This sets the title of your page, which is the title that appears\r\n            in the browser tab the page is loaded in. It is also used to describe the page when you\r\n            bookmark/favorite it.</td>\r\n        </tr>\r\n          <td id='table_header'><code>&lt;<span id='red'>body</span></code></td>\r\n          <td>The <code>&lt;<span id='red'>body</span>&gt;</code> element. This contains all the content that you want to show to web users when\r\n            they visit your page, whether that's text, images, videos, games, playable audio tracks, or whatever\r\n            else</td>\r\n        </td>\r\n      </table>	2021-12-04 22:47:49.121+01	2021-12-08 10:04:31.98+01	f		html-synt	\N	1	24
48	Базовые теги			<h2>Semantic tags</h2>\r\n      <div class='tabl'>\r\n        <div>\r\n          <div><code>&lt;<span id='red'>h1</span>>header&lt;<span id='red'>h1</span>></code></div>\r\n          <div>(also h1, h2 … h6), the number convey the front-size)</div>\r\n        </div>\r\n        <div>\r\n          <div><code>&ltp&gtparagraph&lt/p&gt</code></div>\r\n          <div></div>\r\n        </div>\r\n        <div>\r\n          <div><b>&ltbr&gt</b>></div>\r\n          <div><small> (new line)</small></div>\r\n        </div>\r\n        <div>\r\n          <div><strong>&lta&gt</strong><i>anchor element</i><strong>&lt/a&gt</strong></div>\r\n          <div>and it's inherent attributes:</div>\r\n        </div>\r\n        <div>\r\n          <div class="sub"><b>&lt href=“link”></b></div>\r\n          <div></div>\r\n        </div>\r\n        <div>\r\n          <div class="sub"><b>&lt title=“some explanation”></b></div>\r\n          <div></div>\r\n        </div>\r\n        <div>\r\n          <div class="sub"><b>&lt target=“blank”></b></div>\r\n          <div></div>\r\n        </div>\r\n        <div>\r\n          <div>&ltimg src=“image link&gt</div>\r\n          <div>attributes:</div>\r\n        </div>\r\n        <div>\r\n          <div class="sub"><b>&lta width=“pxl”></b></div>\r\n          <div></div>\r\n        </div>\r\n        <div>\r\n          <div class="sub"><b>&lta height=“pxl”>></b></div>\r\n          <div></div>\r\n        </div>\r\n        <div>\r\n          <div class="sub">&lta alt=</div>\r\n          <div>descriptive text for those who can’t see the img</div>\r\n        </div>\r\n\r\n        <div>\r\n          <div>&lt;ul>unordered list&lt;/ul></div>\r\n          <div>commonly represents with dots</div>\r\n        </div>\r\n        <div>\r\n          <div>&lt;ol>ordered list&lt;/ol></div>\r\n          <div>commonly represents with ord number</div>\r\n        </div>\r\n        <div>\r\n          <div>&lt;li>ordered list&lt;/li></div>\r\n          <div>using for separate list item from each one. Attributes:</div>\r\n        </div>\r\n        <div>\r\n          <div class="sub">&lt;li value=“num”></div>\r\n          <div>that means that the list item will start through that number</div>\r\n        </div>\r\n      </div>\r\n\r\n      <h2>Style tags:</h2>\r\n      <ul>\r\n        <li><code>&lt;em><em></code> emphasize text </em><code>&lt;/em></code></li>\r\n        <li><code>&lt;i><i></code> italic type </i><code>&lt;/i></code></li>\r\n        <li><code>&lt;strong / b><strong></code> get text bold </strong><code>&lt;/strong / b></code></li>\r\n        <li><code>&lt;small><small></code> get text smaller </small><code>&lt;/small></code></li>\r\n        <li><code>&lt;u><u></code> under-scope </u><code>&lt;/u></code></li>\r\n      </ul>	2021-12-05 12:54:37.902+01	2021-12-08 10:04:32.462+01	f		basic-tags	\N	1	24
49	HTML формы			<p><code id='red'>&lt;form></code> is a component of a web page that has form controls, such as text, buttons, checkboxes, range, or color picker controls. A user can interact with such a form, providing data that can then be sent to the server for further processing (e.g. returning the results of a search or calculation). No client-side scripting is needed in many cases, though an API is available so that scripts can augment the user experience or use forms for purposes other than submitting data to a server.</p>\r\n<p>Tag <code id='red'>&lt;form></code> is conteiner for different user inputs.\r\n        Tag <code id='red'>&lt;form></code> have it's inherent atribut <code id='orange'>action</code> that conteins an server adress\r\n        and atribut <code id='orange'>method</code> that defines transmission method of data, and has several properties:\r\n    <code id='green'>'get'</code> and <code id='green'>'post'</code> with it's inherent atribut <code id='orange'>enctype</code> \r\n    and it's property <code id='green'>'multipert/form-data'</code>\r\n\r\n    <pre class='code'><code>&lt;<span id='red'>form </span><span id='orange'>action</span>="<span id='green'>server adress</span>" \r\n          <span id='orange'>method</span>="<span id='green'>get</span>/<span id='green'>post</span>"\r\n          <span id='orange'>enctype</span>="<span id='green'>multipart</span>/<span id='green'>form-data</span>" \r\n    </code></pre>\r\n\r\n    <p>The most used form element is <code id='red'>input</code>, that is an inline element<br>\r\n    The most important atribute of <code id='red'>input</code> tag is <code id='orange'>type</code> that defines method of\r\n        receiving data from user</p>\r\n\r\n    <p>Here we will observe common used type elements</p>\r\n\r\n\r\n    <div class='forms'><h2>Text field</h2>\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>text</span>' <span id='orange'>name</span>='<span id='green'>name</span>' <span id='orange'>value</span>='<span id='green'>vaue</span>'></code>\r\n    <p>(default) Displays a single-line text input field</p>\r\n    <div>\r\n        <label for="fname">Input name:</label>\r\n        <input placeholder="placeholder='First Name'" type="text" name='FirstName'>\r\n    </div>\r\n\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>password</span>' <span id='orange'>name</span>='<span id='green'>name</span>' <span id='orange'>value</span>='<span id='green'>vaue</span>'></code>\r\n    <p>Displays hiden input</p>\r\n    <div>\r\n        <label for="pas">Input password:</label>\r\n        <input type="password" name='pas'>\r\n    </div>\r\n\r\n    <div>\r\n      <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>tel</span>' <span id='orange'>name</span>='<span id='green'>telnum</span>'></code>\r\n      <p>Displays a field for input a tel number</p>\r\n      <label for="telnum">Enter a phone number :</label>\r\n        <input type="tel" name="telnum" placeholder="+38" pattern="[0-9]{3}-[0-9]{2}-[0-9]{2}" required>\r\n        <input type="submit" value="Submit">\r\n      </div>\r\n\r\n\r\n  <h3>Inputs restrictions:</h3>\r\n  <p>Argument <code id='orange'>pattern</code> specifies a regular expression to check the input value against</p>\r\n  <p>Argument <code id='orange'>required</code> specifies that an input field is required (must be filled out)</p>\r\n\r\n\r\n  <h2>Radio button and checkbox</h2>\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>radio</span>' <span id='orange'>name</span>='<span id='green'>name</span>'></code>\r\n    <p>Displays a radio button (for selecting one of many choices)</p>\r\n    <div>\r\n        <label for="gender">Gender</label><br>\r\n        <input type="radio" name='gender' value="Man">Man<br>\r\n        <input type="radio" name='gender' value="Woman">Woman<br>\r\n    </div>\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>checkbox</span>' <span id='orange'>name</span>='<span id='green'>name</span>'></code>\r\n    <p>Displays a checkbox button (for selecting more then one choices)</p>\r\n    <div>\r\n        <label for="property">Property:</label><br>\r\n        <input checked type="checkbox" name='bake'>Bake <br>\r\n        <input type="checkbox" name='car'>Car <br>\r\n        <input disabled type="checkbox" name='home'>Home <br>\r\n    </div>\r\n    <h3>Inputs restrictions:</h3>\r\n    <p><code id='orange'>checked</code> used for pre-select value</p> \r\n    <p><code id='orange'>disabled</code> makes field disabled</p>\r\n    \r\n    \r\n    <h2>Button</h2>\r\n      <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>submit</span>' <span id='orange'>name</span>='<span id='green'>name</span>' <span id='orange'>value</span>='<span id='green'>vaue</span>'></code>\r\n      <p>Displays a submit button (for submitting the form)</p>\r\n      <div>\r\n          <label for="option">Option</label>\r\n          <input type="submit" name='option' value="Apply">\r\n      </div>\r\n      \r\n      <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>button</span>' <span id='orange'>name</span>='<span id='green'>name</span>'></code>\r\n      <p>Displays a reset button (for reset the form)</p>\r\n      <div>\r\n          <label for="option">Option</label>\r\n          <input type="reset" name='option'>\r\n      </div>\r\n      \r\n      <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>button</span>' <span id='orange'>onclick</span>="<span id='purple'>alert</span>('<span id='green'>Hello World!</span>')" <span id='orange'>value</span>='<span id='green'>Click Me!</span>'></code>\r\n\r\n      <p>Displays a button</p>\r\n      <div>\r\n          <label for="option">Option</label>\r\n          <input type="button" name='option' onclick="alert('Hello World!')" value="Click Me!">\r\n      </div>\r\n      <p>Atribut <code><span id='orange'>onclick</span>="<span id='purple'>alert</span>('<span id='green'>some description</span>')</code> opens a new\r\n      field on the page with confirmation masege</p>\r\n\r\n\r\n    <h2>Quantity and date fields</h2>\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>number</span>' <span id='orange'>name</span>='<span id='green'>quantity</span>'></code>\r\n    <p>Displays a number input picker</p>\r\n    <div>\r\n        <label for="number">Quantity:</label>\r\n        <input type="number" max="10" min='1' name="number">\r\n        <input type="submit" value="Submit">\r\n    </div>\r\n\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>range</span>' <span id='orange'>min</span>='<span id='green'>num</span>' <span id='orange'>max</span>='<span id='green'>num</span>'></code>\r\n        <p>Displays a range list with slider control. For default it starts fron 0 to 100</p>\r\n    <div>\r\n        <label for="vol">Volume (between 0 and 50):</label><br>\r\n        <input type="range" name="vol" min="0" max="50">\r\n        <input type="submit" value="Submit">\r\n    </div>\r\n\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>date</span>' <span id='orange'>name</span>='<span id='green'>birthday</span>'></code>\r\n    <p>Displays a dete picker</p>\r\n    <div>\r\n      <label for="birthday">Birthday:</label>\r\n      <input type="date" max="1979-12-31" name="birthday">\r\n      <input type="submit" value="Submit">\r\n  </div>\r\n\r\n  <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>time</span>' <span id='orange'>name</span>='<span id='green'>time</span>'></code>\r\n      <p>Displays a time scope</p>\r\n      <div>\r\n      <label for="alarm">Set alarm clock</label>\r\n        <input type="time" name="alarm" value="08:00">\r\n        <input type="submit" value="Submit">\r\n      </div>\r\n  <h3>Inputs restrictions:</h3>\r\n  <p>Property <code id='orange'>min/max</code>used to add restrictions to dates</p>\r\n\r\n\r\n    <h2>Other types</h2>\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>color</span>' <span id='orange'>name</span>='<span id='green'>favcolor</span> <span id='orange'>value</span>='<span id='green'>color</span>'></code>\r\n    <p>Displays a color picker</p>\r\n    <div>\r\n        <label for="option">Choose your favorite color</label>\r\n        <input type="color" name="favcolor" value='#E76F51' style='padding: 1px; height: 30px; width: 75px;'>\r\n    </div>\r\n\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>email</span>' <span id='orange'>name</span>='<span id='green'>email</span>'></code>\r\n    <p>Displays a container for writing e-mail address</p>\r\n    <div>\r\n        <label for="e-mail">Enter youe e-mail</label>\r\n        <input input type="email" id="email" name="email">\r\n        <input type="submit" value="Submit">\r\n    </div>\r\n\r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>url</span>' <span id='orange'>name</span>='<span id='green'>url</span>'></code>\r\n        <p>Displays a url field</p>\r\n        <div>\r\n        <label for="url">Set an url adress</label>\r\n          <input type="url" name="url">\r\n          <input type="submit" value="Submit">\r\n        </div>\r\n\r\n        <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>search</span>' <span id='orange'>name</span>='<span id='green'>search</span>'></code>\r\n        <p>Displays a search field</p>\r\n        <div>\r\n        <label for="search">Google search :</label>\r\n          <input type="search" name="search">\r\n          <input type="submit" value="Submit">\r\n        </div>\r\n        \r\n    <code>&lt;<span id='red'>input</span> <span id='orange'>type</span>='<span id='green'>file</span>' <span id='orange'>name</span>='<span id='green'>file</span>'></code>\r\n    <p>Displays a file-select field and a 'Browse' buttton for file upploads</p>\r\n    <div>\r\n        <label for="file">Add photo</label>\r\n        <input type="file" name='file'> \r\n    </div>\r\n    <p>Attribut <code id='orange'>multiple</code> allows enter more then one value</p>\r\n\r\n\r\n    <h3>Other inputs restrictions:</h3>\r\n    <P>For every following types we can add <code id='orange'>disebled</code> atribute that, \r\n        makes field blocked, dim and not-usable</P>\r\n    <p>Atttribut <code id='orange'>pattern</code> specifies a regular expression that the user input checked against</p>\r\n    <p><code id='orange'>readonly</code> allows only reading the input</p>\r\n    <p><code id='orange'>step</code> specifies the legal number intervals for an input field</p>\r\n    <p><code id='orange'>readonly</code> declare the default value</p>\r\n    <p><code id='orange'>autofocus</code> make fields focus when the page loads</p>\r\n\r\n    <h2>Forms in action</h2>\r\n    <p>Ich <code id='orange'>input</code> element must have a <code id='orange'>name</code> atribut</p> \r\n    <p><code id='orange'>input</code> element has also a <code id='orange'>value</code> atribut that conteins a default value</p> \r\n      <div class="form_example">  \r\n        <div>\r\n        <div>\r\n            <label for="fname">First name:</label>\r\n            <input placeholder='First Name' type="text" name='FirstName'>\r\n        </div>\r\n        <div>\r\n            <label for="sname">Second Name</label>\r\n            <input placeholder='Second Name' type="text" name='sname'>\r\n        </div>\r\n        <div>\r\n            <label for="pas">Password</label>\r\n            <input type="password" name='pas'>\r\n        </div>\r\n        <div>\r\n            <label for="tel">Tel number</label>\r\n            <input type="tel" name='tel' value="+38 ">\r\n        </div>\r\n        </div>\r\n        \r\n        <div class="example">\r\n        <div>\r\n            <label for="gender">Gender</label><br>\r\n            <input type="radio" name='gender' value="Man">Man<br>\r\n            <input type="radio" name='gender' value="Woman">Woman<br>\r\n        </div>\r\n        <div>\r\n            <label for="property">Property:</label><br>\r\n            <input checked type="checkbox" name='bake'>Bake <br>\r\n            <input type="checkbox" name='car'>Car <br>\r\n            <input disabled type="checkbox" name='home'>Home <br>\r\n        </div>\r\n        </div>\r\n        </div>\r\n        \r\n        <div>\r\n          <div>\r\n            <label for="add">Additional information</label><br>\r\n            <textarea name="add" id="#" cols="30" rows="10"></textarea>\r\n          </div>\r\n\r\n          <div>\r\n            <label for="file">Add photo</label><br>\r\n            <input type="file" name='file'> \r\n          </div>\r\n          <div>\r\n            <label for="color">Favorite color</label>\r\n            <select name='color'>\r\n                <option value="red">Red</option>\r\n                <option value="green">Green</option>\r\n                <option selected value="blue">Blue</option>\r\n            </select>\r\n          </div>\r\n          <div>\r\n              <label for="option">Option:</label>\r\n              <input type="button" name='option' value="Apply">\r\n              <input type="reset" name='reset'>\r\n          </div>\r\n        </div>	2021-12-05 13:01:47.163+01	2021-12-08 10:04:33.07+01	f	image/2021/12/Yoshida_Hiroshi_artwork_Japanese_painting_mountains_Grand_Canyon-16165.jpg	html-forms	\N	1	24
50	CSS синтаксис			<section id='CSS'>\r\n  <article id='CSS anatomy'>\r\n    <h2>Anatomy of the CSS Rule</h2>\r\n    <p>CSS works by associating rules with HTML elements. These rules govern how the content of\r\n      specified elements should be displayed. And while styling an entire web page could be\r\n      a pretty complex process, defining a simple CSS rule is fairly straightforward. So, let's go over that.</p>\r\n    <h2> Element, Class and ID Selectors</h2>\r\n    <h3><em>Element</em> Selector</h3>\r\n    <p>First element selector, the element selector is just you specifying the element name. For example,\r\n      in this case, p for paragraph says that every paragraph in our HTML document should be colored blue.\r\n    <p> p {<br>&emsp;color: blue;<br>}</p>\r\n    <h3><em>class</em> Selector</h3>\r\n    <p>.blue {<br>&emsp;color: blue;<br>}</p>\r\n    <p>The class selector always specified in a stylesheat in a head scope. To apply this class style use:</p>\r\n    <p>&lt;p class='blue'>&lt/p></p>\r\n    <p>. . .</p>\r\n    <p>&lt;div class='blue'>&lt/div></p>\r\n    <h3><em>id</em> Selector</h3>\r\n    <p>#name {<br>&emsp;color<br>}</p>\r\n    <p>To apply id selector use:</p>\r\n    <p>&lt;div id='name'>&lt/div></p>\r\n    </article>\r\n\r\n<article>\r\n<h3>Grouping Selector</h3>\r\n<p>CSS allows to group several selectors into one CSS rule seperated by comma.</p>\r\n <p>div, .blue {<br>&emsp;color: blue;<br>}</p>\r\n<h3>Combining Selectors</h3>\r\n<p>Element with class Selector</p>\r\n<p>p.big {<br>&emsp;font-size: 20px;<br>}</p>\r\n<p>&lt;!- - Every p element with class=“big”accept font-size: 20px- -></p>\r\n<p>Here is an example how that construction behaves:</p>\r\n<p>&lt;p class=“big”>text size 20px&lt;/p></p>\r\n<p>&lt;div class=“big”>unaffected text&lt;/div</p>\r\n</article>\r\n<article>\r\n<h3>Child Selector</h3>\r\n<pre>\r\n<code>\r\n  >sds<\r\n  sd\r\n      <b>sd</b>\r\n        sd < sd:\r\n\r\n</code>\r\n</pre>\r\n<p>article > p {&emsp;color: blue;&emsp;}</p>\r\n<p>It means that every <b>p</b> element that is a direct child of article will have the CSS style</p>\r\n<p>&lt;article>. . . <br>&emsp;&ltp>. . . blue text . . .&lt/p><br>&lt;/article><br>. . .<br>&ltp>. . . unaffected text . . .&lt;/p><br>&lt;article>. . .<br>&lt;div>&ltp>. . . unaffected text . . .&lt;/p&lt;/div><br>&lt;/article></p>\r\n<h3>Descendant Selector</h3>\r\n<p>article  p {&emsp;color: blue;&emsp;}</p>\r\n<p>The syntax of its, selector spae another selector, and as a previous case, the CSS style will apply all <b>p elevent</p>\r\n<p>&lt;article>. . . <br>&ltp>. . . blue text . . .&lt/p><br>&lt;/article><br>. . .<br>&lt;p>. . . unaffected text . . .&lt;/p><br>&lt;article>. . .<br>&lt;div>&ltp>. . . blue text . . .&lt;/p&lt;/div><br>&lt;/article></p>\r\n</article>\r\n</section>	2021-12-05 13:02:27.271+01	2021-12-08 10:04:33.524+01	f	image/2021/12/Yoshida_Hiroshi_artwork_Japanese_painting_mountains_Grand_Canyon-16165_RUrkv0k.jpg	css-synt	\N	2	25
53	Псевдо-классы			<h2>Pseudo-<b>class</b> Selector</h2>\r\n<p>Pseudo-class selectors address targeting only the structures that can be targeted by simple combinations of regular selectors, or targeting the ability to style based on user interaction with the page. </p>\r\n<h3><code>:hover</code></h3>\r\n    <p>Fires on hover over the element</p>\r\n    <div class="ul">\r\n        <ul>\r\n            <li class="li1"><pre><code>\r\n.link:hover {\r\n    color: #color;\r\n    border-bottom: 3px solid;\r\n    font-size: 102%;\r\n}\r\n            </code></pre></li>\r\n            <li class="li2"><pre><code>\r\n.link:hover {\r\n    font-size: 105%;\r\n    border-radius: 10px;\r\n    overflow: hidden;\r\n}\r\n            </code></pre></li>\r\n            <li class="li3"><pre><code>\r\n.link:hover {\r\n    color: #color;\r\n    border-radius: 10px;\r\n    box-shadow: 0 0 5px #color;\r\n}\r\n            </code></pre></li>\r\n        </ul>\r\n    </div>\r\n    <h2><code>:visited</code></h2>\r\n    <p>Fires on visited links</p>\r\n    <div class="ul">\r\n        <ul>\r\n            <a href="https://www.google.com/" target="blank" class="li1"><li><pre><code>\r\n.link:visited {\r\n    color: #color;\r\n}\r\n            </code></pre></li></a>\r\n        </ul>\r\n    </div>\r\n\r\n    <h3><code>:active</code></h3>\r\n    <p>Fires with clicking on an element</p>\r\n    <div class="ul">\r\n        <ul>\r\n            <a href="https://www.google.com/" target="blank" class="li1"><li><pre><code>\r\n.link:active {\r\n    color: #color;\r\n}\r\n            </code></pre></li></a>\r\n        </ul>\r\n    </div>\r\n\r\n    <h3><code>:focus</code></h3>\r\n    <p>Fires when the element recives focus</p>\r\n    <div>\r\n        <form action="#">\r\n            <input type="text" class='focus'><br>\r\n            <input type="submit">\r\n        </form>\r\n    </div>\r\n    <h2><code>:firt/last-child</code></h2>\r\n    <p>Applies to the numeric element in block</p>\r\n    <div class="ul">\r\n        <ul>\r\n            <li><pre><code>\r\n<span style='color: rgb(85, 83, 83);'> &lt;!-  text1 -></span>\r\n                \r\nli:first-child {\r\n    color: rgb(95, 47, 47);\r\n}\r\n            </code></pre></li>\r\n            <li><pre><code>\r\n<span style='color: rgb(85, 83, 83);'> &lt;!-  text2 -></span>\r\n\r\nli:nth-child(2) {\r\n    color: seagreen;  \r\n}\r\n            </code></pre></li>\r\n            <li><pre><code>\r\n<span style='color: rgb(85, 83, 83);'> &lt;!-  text3 -></span>\r\n\r\nli:last-child {\r\n    color: slateblue;\r\n}\r\n            </code></pre></li>\r\n        </ul>\r\n    </div>\r\n\r\n\r\n<h2>Pseudo-elements</h2>\r\n<h3>::first-line / ::first-letter</h3>\r\n<p>Sets the style to only the first line or letter</p>\r\n<div class='psel'>\r\n    \r\n    <div><pre><code> \r\n        element::first-line{\r\n            color: rgb(255, 145, 0);\r\n        }\r\n    </code></pre>\r\n    <pre><code> \r\n        element::first-letter{\r\n            color: rgb(124, 0, 0);\r\n            font-size: 150%;\r\n            font-weight: bold;\r\n        }\r\n    </code></pre>\r\n    </div>\r\n    <div>\r\n        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Corrupti, fugiat sunt nulla neque laudantium aut, maiores perferendis et voluptatem veniam quidem reiciendis, incidunt eius itaque aliquam. Consequuntur ab libero reprehenderit?</p><br>\r\n        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Architecto alias quaerat a minus? Enim error doloribus animi quod a. Atque nesciunt nemo beatae enim ad cupiditate laborum a quia tempora.</p>\r\n    </div>\r\n</div>\r\n\r\n<h3>::before / ::after</h3>\r\n<p>Applies for displaing desired content before/after tag content to witch it appears</p>\r\n<div class='psel'>\r\n    \r\n    <div><pre><code> \r\n        element::before{\r\n            content: '';\r\n            width: 15px;\r\n            height: 15px;\r\n            border-radius: 50%;\r\n            background-color: #color;\r\n            display: inline-block;\r\n            margin-right: 8px;\r\n        }\r\n    </code></pre>\r\n    <pre><code> \r\n        element::after{\r\n            content: ' ~';\r\n        }\r\n    </code></pre>\r\n    <pre><code> \r\n        element:hover:before{\r\n            background-color: salmon;\r\n        }\r\n    </code></pre>\r\n    </div>\r\n    <div>\r\n        <ul>\r\n            <li>text</li>\r\n            <li>text</li>\r\n            <li>text</li>\r\n            <li>text</li>\r\n            <li>text</li>\r\n            <li>text</li>\r\n            <li>text</li>\r\n            <li>text</li>\r\n            <li>text</li>\r\n        </ul>\r\n    </div>\r\n</div>	2021-12-05 14:39:40.47+01	2021-12-08 10:04:34.881+01	f		pseudo-class-selector	\N	2	25
54	Обнуление			<h2>CSS reset</h2>\r\n    <div class="fonttabl">\r\n    \r\n        <div class='text'>\r\n            <p style="color: teal;">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n            <p style="color: rgb(114, 9, 9);">\r\n                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n                <p style="color: #C87C56">\r\n                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Recusandae, quaerat!</p>\r\n        </div>\r\n        <div class='code'>\r\n            <pre>\r\n                <code>\r\n        *{\r\n            padding: 0;\r\n            margin: 0;\r\n            border: 0;\r\n        }\r\n        *,*:before, *:after{\r\n            -moz-box-sizing: border-box;\r\n            -webkit-box-sizing: border-box;\r\n            box-sizing: border-box;\r\n        }\r\n        :focus, :active{\r\n            outline: none;\r\n        }\r\n        a:focus, a:active {\r\n            outline: none;\r\n        }\r\n\r\n        nav, footer, header, aside {\r\n            display: block\r\n        }\r\n\r\n        html, body {\r\n            height: 100%;\r\n            width: 100%;\r\n            font-size: 100%;\r\n            line-height: 1;\r\n            font-size: 14px;\r\n            -ms-text-size-adjust: 100%;\r\n            -moz-text-size-adjust: 100%;\r\n            -webkit-text-size-adjust: 100%;\r\n        }\r\n        input, button, textarea {\r\n            font-family: inherit;\r\n        }\r\n        input:: -ms-clear{display: none;}\r\n        button{cursor: pointer;}\r\n        button::-moz-focus-inner {padding: 0; \r\n                                  border:0;}\r\n        a, a:visited{text-decoration: none;}\r\n        ul li {list-style: none;}\r\n        img{vertical-align: top}\r\n                </code>\r\n            </pre>\r\n        </div>\r\n    </div>	2021-12-07 21:28:17.852+01	2021-12-08 10:04:35.229+01	f		zeroing	\N	2	25
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 25, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: captcha_captchastore_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.captcha_captchastore_id_seq', 78, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 500, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: home_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.home_category_id_seq', 7, true);


--
-- Name: home_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.home_subcategory_id_seq', 25, true);


--
-- Name: home_topic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.home_topic_id_seq', 61, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: captcha_captchastore captcha_captchastore_hashkey_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.captcha_captchastore
    ADD CONSTRAINT captcha_captchastore_hashkey_key UNIQUE (hashkey);


--
-- Name: captcha_captchastore captcha_captchastore_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.captcha_captchastore
    ADD CONSTRAINT captcha_captchastore_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_category home_category_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_category
    ADD CONSTRAINT home_category_pkey PRIMARY KEY (id);


--
-- Name: home_category home_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_category
    ADD CONSTRAINT home_category_slug_key UNIQUE (slug);


--
-- Name: home_subcategory home_subcategory_order_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_subcategory
    ADD CONSTRAINT home_subcategory_order_key UNIQUE ("order");


--
-- Name: home_subcategory home_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_subcategory
    ADD CONSTRAINT home_subcategory_pkey PRIMARY KEY (id);


--
-- Name: home_subcategory home_subcategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_subcategory
    ADD CONSTRAINT home_subcategory_slug_key UNIQUE (slug);


--
-- Name: home_topic home_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_topic
    ADD CONSTRAINT home_topic_pkey PRIMARY KEY (id);


--
-- Name: home_topic home_topic_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_topic
    ADD CONSTRAINT home_topic_slug_key UNIQUE (slug);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: captcha_captchastore_hashkey_cbe8d15a_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX captcha_captchastore_hashkey_cbe8d15a_like ON public.captcha_captchastore USING btree (hashkey varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: home_category_slug_297eaa9a_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_category_slug_297eaa9a_like ON public.home_category USING btree (slug varchar_pattern_ops);


--
-- Name: home_subcategory_category_id_ca0491ca; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_subcategory_category_id_ca0491ca ON public.home_subcategory USING btree (category_id);


--
-- Name: home_subcategory_slug_33dc4d02_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_subcategory_slug_33dc4d02_like ON public.home_subcategory USING btree (slug varchar_pattern_ops);


--
-- Name: home_topic_author_id_beca0acf; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_topic_author_id_beca0acf ON public.home_topic USING btree (author_id);


--
-- Name: home_topic_category_id_c3f69e4a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_topic_category_id_c3f69e4a ON public.home_topic USING btree (category_id);


--
-- Name: home_topic_slug_12b2de9b_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_topic_slug_12b2de9b_like ON public.home_topic USING btree (slug varchar_pattern_ops);


--
-- Name: home_topic_subcategory_id_4c9f9287; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX home_topic_subcategory_id_4c9f9287 ON public.home_topic USING btree (subcategory_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_subcategory home_subcategory_category_id_ca0491ca_fk_home_category_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_subcategory
    ADD CONSTRAINT home_subcategory_category_id_ca0491ca_fk_home_category_id FOREIGN KEY (category_id) REFERENCES public.home_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_topic home_topic_author_id_beca0acf_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_topic
    ADD CONSTRAINT home_topic_author_id_beca0acf_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_topic home_topic_category_id_c3f69e4a_fk_home_category_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_topic
    ADD CONSTRAINT home_topic_category_id_c3f69e4a_fk_home_category_id FOREIGN KEY (category_id) REFERENCES public.home_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_topic home_topic_subcategory_id_4c9f9287_fk_home_subcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.home_topic
    ADD CONSTRAINT home_topic_subcategory_id_4c9f9287_fk_home_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES public.home_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

