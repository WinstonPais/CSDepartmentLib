PGDMP         5                x            csDepLib    12.1    12.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25529    csDepLib    DATABASE     �   CREATE DATABASE "csDepLib" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE "csDepLib";
                postgres    false            �            1259    25719 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25722    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    202            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    203            �            1259    25724    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25727    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    204            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    205            �            1259    25729    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25732    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    206            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    207            �            1259    25734 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    25740    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    25743    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210            �            1259    25745    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    211            �            1259    25747    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    25750 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    213            �            1259    25752    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    25759    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    214            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    215            �            1259    25761    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25764    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    217            �            1259    25766    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25772    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    218            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    219            �            1259    25774    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25960    mainapp_bkstat    TABLE     ?   CREATE TABLE public.mainapp_bkstat (
    bkst text NOT NULL
);
 "   DROP TABLE public.mainapp_bkstat;
       public         heap    postgres    false            �            1259    25944    mainapp_bookavail    TABLE     @   CREATE TABLE public.mainapp_bookavail (
    bk text NOT NULL
);
 %   DROP TABLE public.mainapp_bookavail;
       public         heap    postgres    false            �            1259    25908    mainapp_bookslent    TABLE     �   CREATE TABLE public.mainapp_bookslent (
    "AccesssionNumber" integer NOT NULL,
    "Lent_on" date NOT NULL,
    status_id text NOT NULL,
    user_id integer NOT NULL
);
 %   DROP TABLE public.mainapp_bookslent;
       public         heap    postgres    false            �            1259    25780    mainapp_libraryallbooks    TABLE     �   CREATE TABLE public.mainapp_libraryallbooks (
    "AccesssionNumber" integer NOT NULL,
    "Title" text NOT NULL,
    "Author" text NOT NULL,
    "Availability_id" text NOT NULL
);
 +   DROP TABLE public.mainapp_libraryallbooks;
       public         heap    postgres    false            �            1259    25786    mainapp_userprofileinfo    TABLE     �   CREATE TABLE public.mainapp_userprofileinfo (
    id integer NOT NULL,
    phone character varying(10) NOT NULL,
    semester character varying(1),
    user_id integer NOT NULL
);
 +   DROP TABLE public.mainapp_userprofileinfo;
       public         heap    postgres    false            �            1259    25789    mainapp_userprofileinfo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mainapp_userprofileinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.mainapp_userprofileinfo_id_seq;
       public          postgres    false    222            �           0    0    mainapp_userprofileinfo_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.mainapp_userprofileinfo_id_seq OWNED BY public.mainapp_userprofileinfo.id;
          public          postgres    false    223            �
           2604    25791    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    25792    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    25793    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    25794    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    208            �
           2604    25795    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �
           2604    25796    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    25797    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �
           2604    25798    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �
           2604    25799    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �
           2604    25800    mainapp_userprofileinfo id    DEFAULT     �   ALTER TABLE ONLY public.mainapp_userprofileinfo ALTER COLUMN id SET DEFAULT nextval('public.mainapp_userprofileinfo_id_seq'::regclass);
 I   ALTER TABLE public.mainapp_userprofileinfo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �          0    25719 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    202   +�       �          0    25724    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    204   H�       �          0    25729    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    206   e�       �          0    25734 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    208   M�       �          0    25740    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   Q�       �          0    25747    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    212   n�       �          0    25752    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    214   ��       �          0    25761    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    216   �       �          0    25766    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    218   ��       �          0    25774    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   "�       �          0    25960    mainapp_bkstat 
   TABLE DATA           .   COPY public.mainapp_bkstat (bkst) FROM stdin;
    public          postgres    false    226   E�       �          0    25944    mainapp_bookavail 
   TABLE DATA           /   COPY public.mainapp_bookavail (bk) FROM stdin;
    public          postgres    false    225   t�       �          0    25908    mainapp_bookslent 
   TABLE DATA           ^   COPY public.mainapp_bookslent ("AccesssionNumber", "Lent_on", status_id, user_id) FROM stdin;
    public          postgres    false    224   ��       �          0    25780    mainapp_libraryallbooks 
   TABLE DATA           k   COPY public.mainapp_libraryallbooks ("AccesssionNumber", "Title", "Author", "Availability_id") FROM stdin;
    public          postgres    false    221   ��       �          0    25786    mainapp_userprofileinfo 
   TABLE DATA           O   COPY public.mainapp_userprofileinfo (id, phone, semester, user_id) FROM stdin;
    public          postgres    false    222   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    203            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    207            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);
          public          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);
          public          postgres    false    215            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    217            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);
          public          postgres    false    219            �           0    0    mainapp_userprofileinfo_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.mainapp_userprofileinfo_id_seq', 3, true);
          public          postgres    false    223            �
           2606    25802    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    202            �
           2606    25804 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    204    204            �
           2606    25806 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    204            �
           2606    25808    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    202            �
           2606    25810 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    206    206            �
           2606    25812 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    206            �
           2606    25814 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            �
           2606    25816 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            �
           2606    25818    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    208            �
           2606    25820 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    212            �
           2606    25822 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    212    212            �
           2606    25824     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    208            �
           2606    25826 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    214                       2606    25828 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    216    216                       2606    25830 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    216                       2606    25832 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    218            	           2606    25834 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220                       2606    25967 "   mainapp_bkstat mainapp_bkstat_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mainapp_bkstat
    ADD CONSTRAINT mainapp_bkstat_pkey PRIMARY KEY (bkst);
 L   ALTER TABLE ONLY public.mainapp_bkstat DROP CONSTRAINT mainapp_bkstat_pkey;
       public            postgres    false    226                       2606    25951 (   mainapp_bookavail mainapp_bookavail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mainapp_bookavail
    ADD CONSTRAINT mainapp_bookavail_pkey PRIMARY KEY (bk);
 R   ALTER TABLE ONLY public.mainapp_bookavail DROP CONSTRAINT mainapp_bookavail_pkey;
       public            postgres    false    225                       2606    25915 (   mainapp_bookslent mainapp_bookslent_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mainapp_bookslent
    ADD CONSTRAINT mainapp_bookslent_pkey PRIMARY KEY ("AccesssionNumber");
 R   ALTER TABLE ONLY public.mainapp_bookslent DROP CONSTRAINT mainapp_bookslent_pkey;
       public            postgres    false    224                       2606    25917 /   mainapp_bookslent mainapp_bookslent_user_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.mainapp_bookslent
    ADD CONSTRAINT mainapp_bookslent_user_id_key UNIQUE (user_id);
 Y   ALTER TABLE ONLY public.mainapp_bookslent DROP CONSTRAINT mainapp_bookslent_user_id_key;
       public            postgres    false    224                       2606    25836 4   mainapp_libraryallbooks mainapp_libraryallbooks_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_libraryallbooks
    ADD CONSTRAINT mainapp_libraryallbooks_pkey PRIMARY KEY ("AccesssionNumber");
 ^   ALTER TABLE ONLY public.mainapp_libraryallbooks DROP CONSTRAINT mainapp_libraryallbooks_pkey;
       public            postgres    false    221                       2606    25838 4   mainapp_userprofileinfo mainapp_userprofileinfo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.mainapp_userprofileinfo
    ADD CONSTRAINT mainapp_userprofileinfo_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.mainapp_userprofileinfo DROP CONSTRAINT mainapp_userprofileinfo_pkey;
       public            postgres    false    222                       2606    25840 ;   mainapp_userprofileinfo mainapp_userprofileinfo_user_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.mainapp_userprofileinfo
    ADD CONSTRAINT mainapp_userprofileinfo_user_id_key UNIQUE (user_id);
 e   ALTER TABLE ONLY public.mainapp_userprofileinfo DROP CONSTRAINT mainapp_userprofileinfo_user_id_key;
       public            postgres    false    222            �
           1259    25841    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    202            �
           1259    25842 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    204            �
           1259    25843 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    204            �
           1259    25844 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    206            �
           1259    25845 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            �
           1259    25846 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            �
           1259    25847 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    212            �
           1259    25848 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    212            �
           1259    25849     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    208            �
           1259    25850 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    214                        1259    25851 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    214                       1259    25852 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            
           1259    25853 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220                       1259    25968 !   mainapp_bkstat_bkst_9e46bdad_like    INDEX     m   CREATE INDEX mainapp_bkstat_bkst_9e46bdad_like ON public.mainapp_bkstat USING btree (bkst text_pattern_ops);
 5   DROP INDEX public.mainapp_bkstat_bkst_9e46bdad_like;
       public            postgres    false    226                       1259    25952 "   mainapp_bookavail_bk_56ac14d0_like    INDEX     o   CREATE INDEX mainapp_bookavail_bk_56ac14d0_like ON public.mainapp_bookavail USING btree (bk text_pattern_ops);
 6   DROP INDEX public.mainapp_bookavail_bk_56ac14d0_like;
       public            postgres    false    225                       1259    25969 $   mainapp_bookslent_status_id_c35e9bb0    INDEX     g   CREATE INDEX mainapp_bookslent_status_id_c35e9bb0 ON public.mainapp_bookslent USING btree (status_id);
 8   DROP INDEX public.mainapp_bookslent_status_id_c35e9bb0;
       public            postgres    false    224                       1259    25975 )   mainapp_bookslent_status_id_c35e9bb0_like    INDEX     }   CREATE INDEX mainapp_bookslent_status_id_c35e9bb0_like ON public.mainapp_bookslent USING btree (status_id text_pattern_ops);
 =   DROP INDEX public.mainapp_bookslent_status_id_c35e9bb0_like;
       public            postgres    false    224                       1259    25953 0   mainapp_libraryallbooks_Availability_id_4bbdc842    INDEX     �   CREATE INDEX "mainapp_libraryallbooks_Availability_id_4bbdc842" ON public.mainapp_libraryallbooks USING btree ("Availability_id");
 F   DROP INDEX public."mainapp_libraryallbooks_Availability_id_4bbdc842";
       public            postgres    false    221                       1259    25959 5   mainapp_libraryallbooks_Availability_id_4bbdc842_like    INDEX     �   CREATE INDEX "mainapp_libraryallbooks_Availability_id_4bbdc842_like" ON public.mainapp_libraryallbooks USING btree ("Availability_id" text_pattern_ops);
 K   DROP INDEX public."mainapp_libraryallbooks_Availability_id_4bbdc842_like";
       public            postgres    false    221                       2606    25854 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2795    204    206                        2606    25859 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2784    204    202            !           2606    25864 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    206    216    2820            "           2606    25869 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    202    2784            #           2606    25874 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    208    209    2797            $           2606    25879 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    212    2795    206            %           2606    25884 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2797    212    208            &           2606    25889 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    216    214    2820            '           2606    25894 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    214    208    2797            +           2606    25970 M   mainapp_bookslent mainapp_bookslent_status_id_c35e9bb0_fk_mainapp_bkstat_bkst    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_bookslent
    ADD CONSTRAINT mainapp_bookslent_status_id_c35e9bb0_fk_mainapp_bkstat_bkst FOREIGN KEY (status_id) REFERENCES public.mainapp_bkstat(bkst) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.mainapp_bookslent DROP CONSTRAINT mainapp_bookslent_status_id_c35e9bb0_fk_mainapp_bkstat_bkst;
       public          postgres    false    224    2846    226            *           2606    25918 D   mainapp_bookslent mainapp_bookslent_user_id_85645e0e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_bookslent
    ADD CONSTRAINT mainapp_bookslent_user_id_85645e0e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.mainapp_bookslent DROP CONSTRAINT mainapp_bookslent_user_id_85645e0e_fk_auth_user_id;
       public          postgres    false    208    2797    224            (           2606    25954 R   mainapp_libraryallbooks mainapp_libraryallbo_Availability_id_4bbdc842_fk_mainapp_b    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_libraryallbooks
    ADD CONSTRAINT "mainapp_libraryallbo_Availability_id_4bbdc842_fk_mainapp_b" FOREIGN KEY ("Availability_id") REFERENCES public.mainapp_bookavail(bk) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.mainapp_libraryallbooks DROP CONSTRAINT "mainapp_libraryallbo_Availability_id_4bbdc842_fk_mainapp_b";
       public          postgres    false    225    2843    221            )           2606    25899 P   mainapp_userprofileinfo mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_userprofileinfo
    ADD CONSTRAINT mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.mainapp_userprofileinfo DROP CONSTRAINT mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id;
       public          postgres    false    2797    222    208            �      x������ � �      �      x������ � �      �   �  x�m��n�0F����L��\�5&M��ڪ-L��ZǍ�;��X9��`�gۛ�r1~��/�KY����5,u����oNP!"0��[$" ����TF��M��<wC�2P�@W\N�h�ؚ�	ې� ��q�hy��Ǩr����ܾ�^�X�#��HF*; ��G���&U���Sۂ���x| J~:xx *:���YǓ�C��]3�kt���Dۆ�$0
	�Ƚ�8�H3�AW�6Z�.t�a\�L�wb�3b��zcw� ��H):h�i�vޙ������xKuV��M�X�Ea�v<-d����	iY�����w���^��ޜ��>�&�2!_cHu.f�]��꤅b���PZ���]Yx��"�:�_�:�'A��u.P����(Xg,KA�+�ja�>�Ϋ�U�-!�y�ZF�Y"{L-#�,[�e$�%r4��������(�t!��])1�D�ZH�q$&��Ck�Jj�      �   �   x����n�@ E��Wt��:��$$�j�Vj�6nFD�K���$�w]ݛ����y:t-�o�쳏gv�3L&�'��7hQ�2�zY�����eWI�xy�^������A��쁓��{J0q@pG� y�7R�0��5 ��)bS�>`"(ԅ3���>"&(��?�VUn�og���ѳ]�<O�gi<��*��2	�Ψ L0
	�y�3�sQ������K5�ku.�j�7FfA 
改��hY���Y�      �      x������ � �      �      x������ � �      �     x���1o�0�g�+�L�*,�g;��@; 10u����	J�"���5*A4�R�����}�ӳ@�rڥ��f�H0""���(R�V�BɎ��N��@�F��ja�"�!��m�zE���6[�b��f5~��g��x�$qI`��p� F�ixm*9�x�����{<ƽ�����]@��$��<�����pb�I_;IE�Y�~���Y�v��ۥ��D!:�q�q��m�"-�f��6Op��mQ.q�f_eV��f����`��UR��8��ò�l�����l�f�Fh�"���-6�F aR�s�Ɔ6����\�\7a�5K�ڮ�`mS�Ge1sUu�?���T�2´��>�]y��>�@g�&���k�t:��)!�      �   �   x�U�K�0��a��]ظ��n�	RoOՊ;�<��c��]L�F���m`wք��t�5�a����wMe�ʘ�����\���3ĉr��lڲDN��e]�#I�Q���2�L�1l�$��C����m�؇L�      �   ^  x����r�0E��W�}'I�l÷��M�)S�H���5Ypؖ�/p����Sh�ý�} h˦JWeT{�@yD�p!`G����"�R���s]6�"�@I5��SE�
�Xpw������XD��|^��ZH9a��OL�Zw���?����k(Oь5��'��b�5M/���6���42,fgtr������wu��ca#����V��įViB	i&�I41Ѯ}|�ڕ�&Hj���H.A��QTh�o�R�5N���%�r�0N��-^��$Hm�<A��Q���k�%�S����sW�̮�깹�<�!t�#��Bgk����]Lr�D4�Fm��ȒR�2��/v��FA�4�i�҅k�3�P&�����ny�v�㾈�U,Yq
��z?}��X�ԉ�b�׶kBy@�G*�����td��R�t����z	�m��H{Ps�&M�`�����IIj�P0^���R���[��J	Y$���R�g_�h�A0���Œ���L��!����L��3���T�ǈL���4���G��,�gF��x��z���y����� Q�9���CNˌŜ:A}F����h|^4�����/0��      �     x�=��n�  @��+v_4@G&&;��F0m:d[�@A�e���gv���K�����g<���q$]�0����	��m}L2���d�CVs�וQ�N��yM!s��1�{�g�Ѣ:�|��(���[K#�7+�
�9h�}牕�R�;[�L�u��=Uq�Ћ;�_����������0}�6�v�(݊���@�t�xA�22T�L��e*s攓��,�A�|��ݍ��_��$=���� �&3H&OSH�#��d�,�~�i)      �      x�H�K��K�r��K�,�MM����� a�      �      x��K��rs��qt�q����� 5�{      �      x������ � �      �      x��}�n�H��o�S$0@M5>�#���C�o[.��ru����h�6E��a��}�}�}���L��<d���E]e#�̌��е��O��@'�`���8ʒ8���hA���_,�I�i�Sm��z������`�����ON�7th��fi������ߵqB�%9�tF��J�ϯ�����#�Q2͒|�剟���e��jM��i�� "���mB�'
���?HS	���iNC2�~ђ� 
rK� ,�6N}b��{��ɕv�'ɖ�+�YD����N��ςy���,�19����O���6
b؛`�9
�AN�%����OSX��#�u������S�����<ZеlJ�Rn�4~�^h��
���r�2��׊�^��2X��vI��2	�UD�y���2�ΎL6I�L�`q��h�����FI@#r�'���G��(����|��x��&.yߕg@A2��8<0�#<ܾ�(�d
�ͽ0�;0X{a0v`h�A�� �ɴ���V K��`��(%?�D�ak�$�y �peH�K?���q�"��M�@�O����B&�#?Y�Y&cqط|�>�]� ?z�8B�h9��=xR�-I�|g*�!~9~x����i�6#�k?{���T��?H�(��'�Q�_\�M�^�i�U�Ć��L#�i]�WoN���rj�@�ddY�'=r_4ݰݒ ��-=��>�\�K u	�\o��~�O�5�`��\/��|͸��	l��XY�@×%��C�K��7�<�!HOi:_�4��QD�38��f>`�/�a��xFG.(�׳ON�	�;N��4X�9�[x��j���|��_q�e���"O�C��E��,7S1yZy�JJ�W�VN��W��&t�
�v��̏L]��a q d�E���	�$�<S��4��H�Ll�?���O��b/�+j�,�`�����$D��� �a-88�9p�	
���8�7d90��T�is��b�	k��5���j�r|�b�A��y��㸾�NC�tr�a���T9l����!<T����9�}�!p�	��� �ɉ��`�V�*�a2����)���X}�|4!7c2�o_��mE�x,7�0����X���__C����)��Y�c�Ўq�7I�*q)~IQW����]HW�P��hȖ�R|��OA��Cˀ}�H��6�Yᦖ�}�v�_�t �0Q�Gnh�?Qe��M1c�'Q�Ȳ5��y��u#����4�[���v��E��@����%cqd\h,d��WA�����7@ pg
�Y.��*]�H�˰-�b��'	\�3�^�b���r~)�v�(~��� ?���%���c���|AseA�� XN0�e-H��Z��.������!�[�@]`J�`w�$�Z�`h���Mo���J^v�B��c��.!���c`��NC����R�� �;}�Pr�G�!�h��V��`�|��o�4��I��O�˞Š?���>DpfmJ

��s��b��amE�,j�����t���������8�*�n�E^� %-��\�8�y�+����U�:�L �t��m���QW4�� ����5����P�[��G���ݎ@�	���z���[j3���"Y��)����Pk�Wר��}�}�EǵA�����O���2���݇	kJ�}.g�o�<���ӎC`��܃"=�yd�
�nN�Ŋ�'S�q���;\�	]�lE�B�[rM���4�����DADL��.����\_��Qt�о���p���x�%S��;`z#\���f:��<�7?V�\��������t��UaÍ��o�!�:����A#�`���ر��x	;�y[��ʏ;`<Sb wdJ	�/���f�v�'3$��f��ٌ�j��y�M}�q�10ސ.�$g�.�2�Z)��#4\�w�Yhp���ā|]]C�Yx��#PB�h���$�#Ъ	nV<���$�k�bK� �A.��|��[�B9J��F�PTu�Z�Z��[��<��|w��G*�̕�L�+2����Z����VL�|��)M@t�p�Vc�4A�jB��G�'Ә��c�rC8�(z�Fd��&B����>R@4����_{�6���>�1�z��lşl�����n`���@B�/街*�'H�Ǡ�f���`����.�"i��H7�b�A؞�9h�}ꂉl`�� ���U�����h�IH���K<��Q��p����@o@>2K�kLC0y׈��^��	V�)�V�
gD}��x Pŭ��:��%�	�2���^e �[�(<t�������=��1M��+�H�2ZX�p���	�e����¿Wp�%�=���_L�y��'���`ر��������q�}�s�*�)Ò��ۥ��}�ɫ���sB�P�[�0��ny������+���Ȫ� %}��+F�)]+�N'!qk(��m�!(����L�����G��v?��1**�h��/н��]����./��N���Ǎ�1�b_�z�q��8�ἁ+OQ�|T�����H9������=F#��#��R�n}�AuN�V����nٻ���1�U����Ȝ]�g^|9��9����~C��麫1�B�Z��MXZ��|��a�#���ͫ��;������%p��D7���q���fC�+�s>XC�0�8�`a���`X�ҩ��*�n ���8V5���J��Ijݰ�o���8G���0�v�'���V����sAˀ'����+� 2�=�V����|��}�c�l�ryS������<"��kG~�)֓n�jȩ o�����:�XAbi-�(���Ɔ���a]���?(tJ'q�(�KS�b=)�M
",���l]zK�)0 �<Kw�n:?����qX�����;:ߢ9K/��^ � �l(KP�a��4Z*�t\|_�-��׵w�?��x�����k܉e��R�"��~?�>��\Āy�{Q�6��݁�haZÖ�>0[$�9Ż |,�������=:��.�]��r�Vq��o(�h!�fAD3`Sh�&��n��~�~?G?���UW�m94��K/W��)�d�����dK��	Ʊ�?�	�����Ƌ�p�%��);�0zT�%��(�v
&�&�Q�/lՒS��f+�!R�p���Z�D߀ /��B�,[�!�N�C��ɔ}�jg4	@���h�#�Kj��}/���,�� �8/�I薸�7.ԝ�j�����F�ɤ���������]~Ylɚ��w�|�a�ܒ���V���A� #2R�cG� 4D��rK�R�잦��V��v�%����&/J��jᮓ�[R��Q������m1-z��:�V��o(��#(0a��[��GD�2�ȻV�c�p�����׻3��;M�R�)��( �e������R�%�R�-���)\� ���@����`B��D`k6��bzܤ�fl�l�uF�L1�XC����+%��^,���&�\>2e�f!���!U&��R ��0����k��x�,�i��Ů��f1����!E\�+TyN�,8쀜��7׫�E��-@�Y%)�^������/|�21��Wa��� ��l7mV\��f��s`�۝�1�g��Pr.��s4K�V��\��]�
Ӽ2��#E�
�!��n�����7��i�G
%z�V|B�Z��d��Li����}7���[������*�_8�G��?����(����?��y�:�L����Ś��_,�
<���y��$t��d+�@ZMBދ�����^�o7�	OT'�7=KF�Q#�m
��w�4}Zx�0�a����}a;���O�3�51�d���Ke9:�ʝ�AC7/)��Pד
3�O��:B�nw�[=���|`��[T�����h���M��2��bX]���⑂����	��M ׈�  ?X��|��޽F(e�����[�h�',ֿY)�Y������:k2�-���H���w�
������T���R1t�o2�@MGk�/ם��n�t�rc(O׍��Ǭ��P5ޞ�hW/e2< D�t�F�K�d|̀U�x�%`˱�    U�K��VK��̽�X�~����i��j�t,�h=���LEb�b�^[�clڃ���᡾�?`#�o���ҭ@�6� �`q��F�Xy��%+� yA�:;\���l�Y]�@���S�?Ϡ+�z�옢�mY��}���6�����ݦ��oJ�W�`J��&	}���#g`��Y���`�����-�Y-�Ӱ��l�>��7x���p:g!M����-�!��@㣀f��Z���mikU�N��0��<IW�F���"���N� hz�:x�m�����V��9W$���j�X@�a��-��'L�T���%^��g�=>=�G��K�[�t�R?)p�.x�Z;̶��@Q���5�\�"��G�5Q����on�3|	��(���F�Q��u>�;H��*�PR~>�ނ��,TAbq���.#�J0\(��hczN3{o�Tn��Q������g�&|)-X�+�"+�'�i#G�p�v�08@o�"e�ri�m�
��y�����ECxCF�I��y��3w�.�d-T�������d�ki��Q��.7��@u���Tdl�^��x�S�{�	Q�;�6@�a臒���*^t�e�Ԡf��C�:���3�G�`��(/�drxKT��"��8�� �c�B\�#C�{��Om��6�(��<�kaYG+�^�|�cym�k�g4I�zds4�=��w�t��U��i��`Vϋ?���"�r�JK+�TԬw�'������%���an�yQ�p�eU�)��2�U��=��ǀ��W7�Ѧ�s�����R�V`.�S��֢����O͋����vx1��x�M��hf�&LZ�;��Zx�w}��*�����.��\�PyE�������Ҷư�&-���pA�چ�Y��<��
�eL���zQ�Z�����Q3���,�-+�TY]�yak��\��"���@��k����*�`��+p�)
�Um����v4�=3�aQ>�d,W����:7�D�� ��֫������$��V��t�⅃�yf�3�n�Y䗌��%��_:���\��L�ߒl�S�{�.���1�S��L3\ocfp�+�VJy�=��J���@�K�%����nh��*Ye�₝KYej�6fh'���#��C�o�	��.��bJd�y�^D�����ƱHfg��\��:֦a�(�h�;�a))M`u@C�'*�k�2�����E~��֞�
�<KT̀>�E�
���?�z��o�H��v1>~��$nv⯁@�7>}bŒ䄾�պ>SW�I��ih�T �U��i]�5�+��d�����W�yb���fvJ�^���"c7��{e��ِm~�k��R'd(��o�R���(�"�>���^�oj#�< �ƨd!��e��g7�G�.�au�mB�޾� l	5;�4��Oi��g�GJ�L-����w�V�!����5�dJ�m�\�P�sg1\�	�O�>�>�|l���*�)\�-e2�G�S��Ԍ�&�y�c!���lö�>��M5�nȧ��L�H���d��dW^�i��!�Y���g`�e7p3���;-���"�I��9���5ތ����k�6j0���QA��XT
l4W�%�&�B7 .x�(V�@�![t���1��:�����ғ�g�o���4w����|LLͿ��|0J#��sƎ
��e6(�n̘ؔA�˪t�B$��Y�E(��R�p�⍢�̥KW���걊<�����3H���eѧ��^�x2V�쏻3�=�=�u��s�
�vu�)�������)��@x�V���J��/Ů�R����U�,o�Q��b(��qFgA�Y,ڎԟ�4F��O��ʝV��)����!9Nct����ڄ7��P��0MYv���?j��Be��:~�|��SX�E'��[n�ɤEr��N?�JV�&�
�u�̹�phP5Ԫ�X���;�gGWe��3r+�SSDX1!���G��z���W.�~�a�p�*#�\�6s��l �(�%a�1����ڤL��*�fд[ҧ���> ��%���(Zf��g��D���"�d��9�MB���8W���Z�U1h�m�ZLNA� �P9{{g��7��9T�G�����e���M9w����zck^(|d�y�m�	ġ���Km�o�q�`9?|U��N����nc��?/	�t��0�9(#F�J��;䘟�&kW��CY`�Z/�?�؛�h��ݢl��cA��?���u֥�r3[Q���ef9���<�$D�� ���O�
�?3�xzb��ʜ�����:�rZո��x/!��3��%K,��z�) -1!�y�k�~��Kgp�AN�Q�A��O�d��p�Qn���XKƶ�^�54.-���My����6M�q�L����֔�	`�`��@�M��/�*�
�4c�ݻ���*s~��
<9��>����yҫ����`��r��?�ͳ�E��	�s�ݲ����1�Q��u��6/l'��;�u��b:5��
�RȔ�I5��t%h�7�t�0�3%��X�G�^�)Pnh
'�$J�%Q<�+���2�e-�t�[,�C�#��6@���,����|,��g�$F�����O�`?�z_t���Vox�B��XC3��>:�XR��*fV��������,��=���:��IY}�v˪Y\i)��� ��(��5f��g����	P�.��=N�w�g�Vs5a����ު��RnD~��BQ����yk�?�l�ZΕ����g<�I�/�Ã�)�@��C�=�e��5�wQ'��WqZR��2��7<�\ �gEշ0zs{%/�65-��A��M@��"��A>��z�c���+�1څd�2L�-F�[�*h���~k�$
���rt|E�s�2}�TG�Ʀ=K��Q�rح��Jm���\���CP�K��j���V�Ý�;����{� 4��e��{Y�p�RY�f{o�T��g�i��4��84$��
�}C��O(�o��,gՠ
�_@�ݗd�F�0�}�ђ��LtI�7ݮ7q�H2bjDO1Y�I���b������+l�$ś�z�?[�7?S/���N��\5Ʋ�E�lR�Nۜ	X�����Q�B'�uI��M�Ź���
�g��)d�Z��,U�ˉ�� �I:�|c���p|G.6�#��%� ��C�Z}�U��")����������q(��_Btd�`�ny��/6��g�"6?�ff�/*z�m�At_ �^���8��lTw:]���oh�j��Z)���0���^�a��2��{#\ĸ.�Rq�D,�_����8n�@˹ �X ��~������^�И@Gh�
��ۓ�����2�k;��~��0��A`���ulp���Gy���+��T;+>A�+�zE�)��@H�m;�AqNѲ�Q�-]�$����v�Ե�-&.����E"twT��N�o����ED�j���=??W��?���b CP����B��~]&r�z��yM��p��Y+ch���]���f �j���9�v��� GvH~0GA�=%	�� ��)J�%���1MS$Hat����GvM�vk��Ŗ�h��R��e�H�<!����fb��h��I�k�$��A<R��b%�g����U�&+��(*G|)���K�m3&<�A7����,�����T1�|���X��2��Q��l�.� MY&%��������Eo�Z��Eo�Z�����eH�19��E�G��J�y��5��4�&~���)�̎��t����2^��f��IK�e9�^����9ư�T6au�VO)�p��(���_fY܌���^�Ԗ��9.9e�m6Jb�+ӎ��5_
��M����LHV�"��!c���}j�Nko�{���U���9}Bu���1�HY��KSX�D���(��Q@������Gq$ ���[Y��f�e.K� _��0_�D�S�1�a�lw��q����q~!n�c��}p;���q{��Ӭ�ncj�+�ߎ���.������.�X1|��e��dE�B��_����lx���8nk��Kr� Z?�$�#�1(��P�*����v
[���G��gݰ�`*Ka�W�-gl>��r    8�v08X��l�k"ʸ��_/i������y��\�lM�w����.��3��\�5n��gʒ)X����ݧ�|�d2l�f
F�����Z�1�4��JA������Z��- ����/��e'��Z'O˕��/�-���~���t��GV� :�+��?"U�Vq���5��RȖ:�nS̍�,l@�+�q�bdYm�n�*h4���ƫ&L}a��K��K��,���_�ڍQ�t%(�B�+�.�]l�f�������(Ϭ�W�����+��vRk�R�fy]�l�v�-��,�Q��6Hs�[-���M�����◙]i��A��P�;��T�\�bѥe�6����&��k�:�U��J�i�Ӈ��S]���8z��=��1��B?�q̖��g�m���r�oU/N����]tr!�+�������K�tv���͚�A�����lM�A���;��L�Q�aD7��-�tc��0���Ý���W�H'��|�j?Ƨ��"��;�n䫙H{;9$r.=�����=�s��ًY�?0N.�l�-��@S����I�C��>P�3�'G <������1�*X�d�"1�w§��Dm���a�B���c�]a��v3�2��7~(�tmw��{QYY�C����J�^|E��,p�?����喱�1�q�HX[��@o�I��2�gq�f�^�19�[<�tA�6��2��awO���*�d����_*c8^�#���F�#c5}D&��N��hG>��l�}���^�w�c4�Z�b�6���ȱ�做�$(�h�N��R/lk6��Ȧ��#$�q�i��gȵ,E�ؗj�� OtV�f��zG�1)�u�g*��B�M��U�� %_AV\O������#���2�:�gUi�3�U�q����V���\O���ń�ȫ���@H�,^,_.�F��_��U=� `���gM�e�5���-S�7��f�kM;��_	+�UjxGe/G�5��@�J�W�{��u�FE�kd��k+����s�����4��|�s�8���I�B��L�w /��7���M@��������r���{3���K6�[Z@�\��z��q���eQ�:{���T�f��g��j�zUo����H2n�BQ�X��js�F�c��	�ö��Q���u��,�#r��T���`��-; �_�!(2O��.]�D*VGkƟ�(9b�atU�s�h-��5g�8�vE3b�A��S�%0<�R4x�)���t��Nj�,_HPw���iU4:N��3�Vī@k�����X����g>y�?�6NϾ��;�������߰<,4^i�tQ�o0[�A$��wXԈ>�+q����[��l�m�[�lZ��*(?i�:(w�+��U��J��D���wТ|q�NKoS����z����-^H�!eC��t�h<G��گa[B��~G{�,�7(�%�+c<��F�akv�j�e��^1�G�����v��h�����AE^D=�lG��)<���9��5�z%�6'3���W�z�3ە�����*�S��S�`�m�T�l�MW1����uQ'/�}������l��d%�Ixz����x�vXr�q!hl��.y���s�����ӛ�cv~f��a�>�������l��
�$佈|4�&����oq�Z�����Q{  �e�}��{����B�GK��h�Y܀�R��eOԘ�D�p6�J�_w���H�
D�}��u��"�k�{wŚ^���~�_�&��7�[D�yP��)}9��D�Y��5�<b�]���OPw��q�Z��YLz4�ǊB�VG�s�ה�$�U�V���.��6J����5U�|A����l�萧r��X��W�"�N�퐬A%K�2+�hs��~�E���8y�k�NRpe�K=�vd����/�\��ߏ�Y �X�*��u
��i�EŅ�fni�Ze��7��`�2�%��򂾀7�\
���J�=���"%�PB�j�רK����r0���W��d�0Mslb��x�5F��,ቾQ��(����d,���YKQ͎	��[F@�y�+�Qm�g30�
�ҳ��6�]�7�	]��V�;��q�;�eX�s���l�ܡ�m ��F��x�yW�Do�	���~���Y��՘L�`w��	�w���=�4��~����V�����Bd��D[�"�z��-�p�����r�����o�������$w��7��}S�;tk��4�Z�q�f<z_�z��҂�.��@��F{u%i(����G�	L��ar�#�Z=�i���mOzb=rq(G.l��^ �5d�"�c�mi�*�c�p���ϫXB��
6��#��r�&�A��Vj���8��A8��ۈ��9�M��CUY��/�����/��=l��4L�[����78����`����;�l. Ge�?����uT�٦�kК]iL��V$'�zn�@�5�jo�Z���o@$�%�[Lbw�k1ى���2�l�y���F�� RöZ�(:�:��imE��mu��S������������!�:`o�Ez�ؽ��*b�� (FX"���W��)~��[p���i�O~t[J4���Nhs��ү�#l����m��i���Y1݉0�`w>M;�t�[��ק�U-��k+|���yB�Sڕa�Wl��oliP���"���L��v~D�Gɽ�a��m,��5�m�1�Km2�y��W�xC��s�бm����}�$ �hX8	��_��&n�E@_������r��%���m�e�8K�^3�8hyp��9&�@�{ڌ9�Y�l~�k���@6���^�!?p�U�c�����L޼Ub�;_L)��mr�28�v,�R􈒙Y�h�Wa;�v�����jڎ�K��#e>^,��D	kFJb��T�p��*�vl�o��r�w��ͬ%p�e-q*�mP'N�
���T���� ��?n}�Jʱ�}�b׼��<@�ޞe�*3�l�c`W{k���vQ;��l�r)Sl���ƳQ(Ű�ᓟ������
�F�Oa�D�GܭI�YN裂�ҺsX��TZt�>�S�ȸk{]M��N����Q
�l�͙����(�Ɋ��[�i.?�6s�[*8�Q��cV���� ��ϴYh{�ꖭ�
?|	&��Frȼ��!�cYA���^��A(�N�b�C�O��ޝ�Zwf-�;�V��.��V�b{��y�b�mA�V�Ǌ@xo�bX�Q�e{VwR8�⩱jҷ=h\��|��wŝ�v�� ��ؕй���-��n��R��]rLzb�А�}�qg\lxNK�A>|�Ƕkp�x�;�G�^�o�s�ޱC��9kCz�7@u�ʥ��E��RU�a�;�~�̸�}�㢯Ϙ��ryh���ǲfgT��hx��q����+N�#�\�:���j?j�o5*�ޟ2JE�_[��o���*R���B�\[�2PR#m?!3�q��"k'��Z��! �A��s��J�������z����lN�t�������^2��ʒ!�C���������J!j-���-6�;��C�ʷs	��S���a:�݈5��{z��;U�-f���\%��R��0IW��u|KLs�C�'t� /�/r���6�[�8$:�X�v���k.ԆkVAǷ��k�<`���Z�Ce�+�o�m>$����\�{0����D����&�X�rFӸj���f\9��o'�}pTL�KE�au^�4���(F+p��BQ�����%	��Ll��d��8�cN�S�%W�R �*۱
M�,��v�R?�VD[0V�T�s9F[�^�O���}�b��x���Ǟ}}�6<�Mx2DE�{{�y��]��9{w!5(���&櫪Xi�0A�>|��Ò0Byv1���;p��
+0Z�M����垙������������iX�&��Vo����8yc��\�2��1�w=m	��ʉ0�P�\h0��m��A&*(?�®�X��e��B�͗L�]���
��-l(�I�Q�y��j������2�8�5Cs�4�|:|u�t��M����\!�B����U����Գ͌9Knx{ 4
  �4��a��Y��H�=��:k��H��<Ű�#XϬ&�-�Q�!U��d�ʛCG�8��/�^��U,�j��O>��a�jm��I2���E�6�7`4�?(�_���c��^/��n�G���a��e}�����yP@^�TY;��qPG�Ma�*K��,x�G��8%�<�?���_οY�?Q��)W ��T������ȍ�h�~�Z�(-��C2E�v	�qd|X(�2&}���G�?�K�C�3��I�R6�%2#<�B*+�<�T�i���'ry��W̰9�ls�T>��{�x�
f8&G˰$^֥�Ju͖[���x�����:y��R�J�k�?���Y$���U�����G����K��/�}p�W^K��$�0B�{��hw���:L9~O:lV�O��?�A��dv�	�Ƴ��Ѧ@���kBWh��x�(��7������R�ǭ�b�٬�'���%�����$��!:KU`��_K��2�)�-����t����~Kl����^ˈl�v��I�"�,�8�sB�O��C��!{��I��Y%4�A�cU�/��ͭu %U�8r>��ȷi��˝\��+:`�Ѱ^�l.���󕖈��iͧ������w��7����o�On�F�i�۷����b��B�Ȝj�)|�N��^�l]�n9N󺖖�Z̒���!��e�N��^��C�re ��Hye�.m俳���2I�?���A�`���q��m9�\� �w�r��8�sy��R���zb��|���e�a��ޟ�q�����ޞ�bvWy]s��������z"-�R���;�o8�n4����f�UX�I��@��I�+��ǩ0X�w��GF[�gݱ�4�.3V5$w�f�Tf��Ă�, yB.sx�Oz�>R���ɡH�U2$Y3+Pt|)�U�?�[қ��rE��'�0v$i\,_��X�Ƒe�UQA=�:*WQ8K�S�Z`ܫ}Pٔ��`f�`+VPʛW�n��(�Eyנ������b���ee�w��(A?%�����`��`Q�O�m���oCaD�+�?`�ɏѿ�vRu0]��;y i�`@>�|Ck��7#�o򆤬1C��rM��U�R��1��LWT�S߇�ciݠ�e+����^yB��I��ZȚ���7��s�c���U&F�\�Lq��Z�Wy֊��x�����7����1`��baE~j�����ƒ�+��&y�у�p�]���bP,�
Hr8�)�.Q��34��2���¹�%��0�z���n���~w��W�A�b�*	��$�Y�ؖ.�)���)P������7F���D�}���gb`h�A�f_�i���]���a�d%�|~�Ƃ0�+w��;�M�b�AgUaA�Rp��QAQ�%̦
��&��������**�������A�Ɔ~4,��*���j���7��הeVW�h���vꩮ�@+:���	��Z�ܾ�+~��,��	����~?���@��`��>D��+����u|0��i;�:�z�/�]�6� �[f>�jJ��7�˼̾Bo�w� ;K�$Eb��Q��]��>��.�ge��p�y�#�]Y���|�фO~�]�Na�+e�SX�_q4/.A3+��<�.��(�>�+w?�}��L�BC�ok�k[����s������m@5
�h�����zj ׎;���껆�]���_;,��k8��FQ��)�� ��缦�T{��wՎ5��:>1�Su|P��ŷQ�9c��̽d}Qe��fw�v�F����(u �O�fTkڝ�ƪک�˯v޶�x�1�Pr�����4n��� ����D�F�m���l��[�c�a�=J���kW[�J�ec��<��IH�i��;�ϬkÈU�
�f������I[fj����1�T�R[@Y��p�x=���#q�l��)��ԫ7]ijG�x?8�V���1@��<��{�&	wl��g�s�i�_��+�G�p?�u�}��m,����X>@2��������S��_b�̒�b{a�G��A�����i�����M�����߈�mum��� iu�f�b��P�.�m;��s�G~+v<�
�߄s�����]��:���0mq�m��w�f���Z���mg�X),���a �iW�a8v7���x:6�P�#�%8�pnkoۃk w�x�q��io���x?�# rY�vH���^=��2�|O�������M*3G����a@�m�X��6�k��WlK�X-O�I�u��A��X��A0"�O���U��Al|fF���-/�I�����������N�a����r,^�S������
b���~ٷx�\`8���㙟�O��1�k`����7��~�Is��j���[�hgt�b��n3Ͱ}���9Oa�������x���;���~��&t|�DL�8��ކ���?�k�f����"�L�z�~c�-oi�<��� Ő ��3�ȫC��ur,TU7{rI�ۆ�*Q�uy}�%]H���Q�5�p��+^9��pOs�U�(�Gn�����?��{�3�`�шPs�0�xM`	fFY_q���?�����?�K�      �      x�3�4351626153�4�4����� +�z     