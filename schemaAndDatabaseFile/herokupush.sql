PGDMP     &                    x            csDepLib    12.1    12.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    "AccesssionNumber_id" integer NOT NULL,
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
    public          postgres    false    202   T�       �          0    25724    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    204   q�       �          0    25729    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    206   ��       �          0    25734 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    208   v�       �          0    25740    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   &�       �          0    25747    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    212   C�       �          0    25752    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    214   `�       �          0    25761    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    216   ��       �          0    25766    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    218   �       �          0    25774    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   ��       �          0    25960    mainapp_bkstat 
   TABLE DATA           .   COPY public.mainapp_bkstat (bkst) FROM stdin;
    public          postgres    false    226   �       �          0    25944    mainapp_bookavail 
   TABLE DATA           /   COPY public.mainapp_bookavail (bk) FROM stdin;
    public          postgres    false    225   F�       �          0    25908    mainapp_bookslent 
   TABLE DATA           a   COPY public.mainapp_bookslent ("AccesssionNumber_id", "Lent_on", status_id, user_id) FROM stdin;
    public          postgres    false    224   q�       �          0    25780    mainapp_libraryallbooks 
   TABLE DATA           k   COPY public.mainapp_libraryallbooks ("AccesssionNumber", "Title", "Author", "Availability_id") FROM stdin;
    public          postgres    false    221   ��       �          0    25786    mainapp_userprofileinfo 
   TABLE DATA           O   COPY public.mainapp_userprofileinfo (id, phone, semester, user_id) FROM stdin;
    public          postgres    false    222   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    203            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    207            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 19, true);
          public          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 32, true);
          public          postgres    false    215            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    217            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);
          public          postgres    false    219            �           0    0    mainapp_userprofileinfo_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.mainapp_userprofileinfo_id_seq', 15, true);
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
       public            postgres    false    220                       2606    25967 "   mainapp_bkstat mainapp_bkstat_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mainapp_bkstat
    ADD CONSTRAINT mainapp_bkstat_pkey PRIMARY KEY (bkst);
 L   ALTER TABLE ONLY public.mainapp_bkstat DROP CONSTRAINT mainapp_bkstat_pkey;
       public            postgres    false    226                       2606    25951 (   mainapp_bookavail mainapp_bookavail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mainapp_bookavail
    ADD CONSTRAINT mainapp_bookavail_pkey PRIMARY KEY (bk);
 R   ALTER TABLE ONLY public.mainapp_bookavail DROP CONSTRAINT mainapp_bookavail_pkey;
       public            postgres    false    225                       2606    25915 (   mainapp_bookslent mainapp_bookslent_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mainapp_bookslent
    ADD CONSTRAINT mainapp_bookslent_pkey PRIMARY KEY ("AccesssionNumber_id");
 R   ALTER TABLE ONLY public.mainapp_bookslent DROP CONSTRAINT mainapp_bookslent_pkey;
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
       public            postgres    false    220                       1259    25968 !   mainapp_bkstat_bkst_9e46bdad_like    INDEX     m   CREATE INDEX mainapp_bkstat_bkst_9e46bdad_like ON public.mainapp_bkstat USING btree (bkst text_pattern_ops);
 5   DROP INDEX public.mainapp_bkstat_bkst_9e46bdad_like;
       public            postgres    false    226                       1259    25952 "   mainapp_bookavail_bk_56ac14d0_like    INDEX     o   CREATE INDEX mainapp_bookavail_bk_56ac14d0_like ON public.mainapp_bookavail USING btree (bk text_pattern_ops);
 6   DROP INDEX public.mainapp_bookavail_bk_56ac14d0_like;
       public            postgres    false    225                       1259    25969 $   mainapp_bookslent_status_id_c35e9bb0    INDEX     g   CREATE INDEX mainapp_bookslent_status_id_c35e9bb0 ON public.mainapp_bookslent USING btree (status_id);
 8   DROP INDEX public.mainapp_bookslent_status_id_c35e9bb0;
       public            postgres    false    224                       1259    25975 )   mainapp_bookslent_status_id_c35e9bb0_like    INDEX     }   CREATE INDEX mainapp_bookslent_status_id_c35e9bb0_like ON public.mainapp_bookslent USING btree (status_id text_pattern_ops);
 =   DROP INDEX public.mainapp_bookslent_status_id_c35e9bb0_like;
       public            postgres    false    224                       1259    25981 "   mainapp_bookslent_user_id_85645e0e    INDEX     c   CREATE INDEX mainapp_bookslent_user_id_85645e0e ON public.mainapp_bookslent USING btree (user_id);
 6   DROP INDEX public.mainapp_bookslent_user_id_85645e0e;
       public            postgres    false    224                       1259    25953 0   mainapp_libraryallbooks_Availability_id_4bbdc842    INDEX     �   CREATE INDEX "mainapp_libraryallbooks_Availability_id_4bbdc842" ON public.mainapp_libraryallbooks USING btree ("Availability_id");
 F   DROP INDEX public."mainapp_libraryallbooks_Availability_id_4bbdc842";
       public            postgres    false    221                       1259    25959 5   mainapp_libraryallbooks_Availability_id_4bbdc842_like    INDEX     �   CREATE INDEX "mainapp_libraryallbooks_Availability_id_4bbdc842_like" ON public.mainapp_libraryallbooks USING btree ("Availability_id" text_pattern_ops);
 K   DROP INDEX public."mainapp_libraryallbooks_Availability_id_4bbdc842_like";
       public            postgres    false    221                       2606    25854 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    206    204    2795                       2606    25859 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    202    204    2784                        2606    25864 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2820    216    206            !           2606    25869 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2784    209    202            "           2606    25874 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    209    208    2797            #           2606    25879 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    212    206    2795            $           2606    25884 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    212    208    2797            %           2606    25889 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    214    216    2820            &           2606    25894 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    214    208    2797            *           2606    25976 M   mainapp_bookslent mainapp_bookslent_AccesssionNumber_id_0bb22952_fk_mainapp_l    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_bookslent
    ADD CONSTRAINT "mainapp_bookslent_AccesssionNumber_id_0bb22952_fk_mainapp_l" FOREIGN KEY ("AccesssionNumber_id") REFERENCES public.mainapp_libraryallbooks("AccesssionNumber") DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.mainapp_bookslent DROP CONSTRAINT "mainapp_bookslent_AccesssionNumber_id_0bb22952_fk_mainapp_l";
       public          postgres    false    221    2830    224            )           2606    25970 M   mainapp_bookslent mainapp_bookslent_status_id_c35e9bb0_fk_mainapp_bkstat_bkst    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_bookslent
    ADD CONSTRAINT mainapp_bookslent_status_id_c35e9bb0_fk_mainapp_bkstat_bkst FOREIGN KEY (status_id) REFERENCES public.mainapp_bkstat(bkst) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.mainapp_bookslent DROP CONSTRAINT mainapp_bookslent_status_id_c35e9bb0_fk_mainapp_bkstat_bkst;
       public          postgres    false    226    2845    224            +           2606    25982 D   mainapp_bookslent mainapp_bookslent_user_id_85645e0e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_bookslent
    ADD CONSTRAINT mainapp_bookslent_user_id_85645e0e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.mainapp_bookslent DROP CONSTRAINT mainapp_bookslent_user_id_85645e0e_fk_auth_user_id;
       public          postgres    false    2797    224    208            '           2606    25954 R   mainapp_libraryallbooks mainapp_libraryallbo_Availability_id_4bbdc842_fk_mainapp_b    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_libraryallbooks
    ADD CONSTRAINT "mainapp_libraryallbo_Availability_id_4bbdc842_fk_mainapp_b" FOREIGN KEY ("Availability_id") REFERENCES public.mainapp_bookavail(bk) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.mainapp_libraryallbooks DROP CONSTRAINT "mainapp_libraryallbo_Availability_id_4bbdc842_fk_mainapp_b";
       public          postgres    false    221    2842    225            (           2606    25899 P   mainapp_userprofileinfo mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_userprofileinfo
    ADD CONSTRAINT mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.mainapp_userprofileinfo DROP CONSTRAINT mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id;
       public          postgres    false    222    208    2797            �      x������ � �      �      x������ � �      �   �  x�m��n�0F����L��\�5&M��ڪ-L��ZǍ�;��X9��`�gۛ�r1~��/�KY����5,u����oNP!"0��[$" ����TF��M��<wC�2P�@W\N�h�ؚ�	ې� ��q�hy��Ǩr����ܾ�^�X�#��HF*; ��G���&U���Sۂ���x| J~:xx *:���YǓ�C��]3�kt���Dۆ�$0
	�Ƚ�8�H3�AW�6Z�.t�a\�L�wb�3b��zcw� ��H):h�i�vޙ������xKuV��M�X�Ea�v<-d����	iY�����w���^��ޜ��>�&�2!_cHu.f�]��꤅b���PZ���]Yx��"�:�_�:�'A��u.P����(Xg,KA�+�ja�>�Ϋ�U�-!�y�ZF�Y"{L-#�,[�e$�%r4��������(�t!��])1�D�ZH�q$&��Ck�Jj�      �   �   x�3��L,J��3R�P�*e���*����F:%�F:�F*a�NUA.N~�)E)Y�U*^��>��9�Qe�~�~%ɩ掜FF�f��
VF�VF��V��%��y�%�y��Ŝ�6g ��$ᐓY����T^�0�D��������bW� ɘ4b      �      x������ � �      �      x������ � �      �     x���MO�0�s�+�\aU�$�����8p;�5t]:5�i���iG+@H;ps$�}S�H�X�l!4����R!^	m�`��}�}�dL1,*N�2J�)J)h"Fp�v}[wv�9������[�w�?]�#_ol�]���wM�r�o>�o�o�F�:�V��1{�3���a�<͑�RM�d�|�{�������v�b������fB��4/H��db9�ig}����.����k��v~���%��NId��'Q�qmU}qcR>&=�I�|�J��      �   �   x�U�K�0��a��]ظ��n�	RoOՊ;�<��c��]L�F���m`wք��t�5�a����wMe�ʘ�����\���3ĉr��lڲDN��e]�#I�Q���2�L�1l�$��C����m�؇L�      �   �  x����n�0�����U���?�J��xSTn�j�~M;nJEQ�"��<>scq��ɷ�t��X  ڪ��������4ȏ�(��a�p��u[����a�;7U�-b$���?Td��
nv�M��m(���|^ǔ�q�`��� ��4U]k���bO�]u
f��8H�b��/�Q�iy`�'�u�_��,:���d]=���~h�q���q���%��Jc�q��t���v��7��7A\�*P�@<ͷ{Q]?}c�TB�BAH�cj7Ns'���k���4�DL��{��d��v�o��D�>���z�]]����=~��6~��0�x�DԫFm�.PpJ��	V~��G4R*�D�!,���]������5�@h�}p��~�>nYT׭\H� ��//o�!�Tډ.B�[��kB~@�G2��c	JbZ�̅a�T/�n��_��-�,H{�F� :u� �3{Wצ�$�G0��W"�$�\��R�>�U)�`�(�\*���>X�A`�d�,'�-� �8A��R��ť�>DN��K��2D�a:&H������U6g�xf�'�։�2FH���8��C̠>�pŐS�����3"�K�㠡<nHO���S���:b�Y9d#��Kǜ�=���a��el���n��&��      �   N  x���͎�0�5<��+��`H���!@�ƶ��V7$p�0�/��7T#T�j�]yq����~t�I��~vuo� ��>�0�d�����N���ѳS��!�X��+�l��Y�"ia4��7Zd�*�#b�ū*�6Nŋ�V,s����<F3���.��IM�K��+�KRT��ub��e��j��\d��	~�f	Z�d���Mb���d���7`�6M��NѾ�sae�l(Zi�t��[z�P�tԣv�3�G鍆��Ok�$ � =�{ >Ao��1���ct��v���OI}��ց��2��L����V��p
(�JHQ�bNj%Vme��6����z5�JN�Ϥ�[���	�z��	� �&�w�����^"�Jԓ���W�d̪�ExX�2K����
f[�"<j�Ц�V64TV��J��Q��,��a�' �����!�x�������ʫ����s�����SrM�y��v�QE	T�|�� �2��k�N$��P�E+<|1I��\�����|d�u2z�%"X"V��Ʋ6;�֎Z������G��b�~)߰�;�� �4��o�n��Uz9>      �      x�H�K��K�r��K�,�MM����� a�      �      x��K��rs��qt�q����� 5�{      �      x������ � �      �      x��}�n�H��o�S$0@M5>�#���C�o[.��ru����h�6E��a��}�}�}���L��<d���E]e#�̌��е��O��@'�`���8ʒ8���hA���_,�I�i�Sm��z������`�����ON�7th��6ЎhF�4K�y�'~��e��jM��i�� "���mB�'
/��?HSmx?<�����fk�A�ӐL��A�$/����,���S����^�}r�]�I�%��i�Q �r�S?�`^�$��>rLN�p1�������7��{��e����`�������֣�`])� w�z�D��=�$�t�G �����:������(�C�\�/�����Wt��~�]�!�L�t�u�d����#�M/8,ܯ+-s���QЈ\�I����#?�`�A6_�2��I�K�w�P���9L�� ��2ʳ��������c��V4��@�L+��o�T��O!�R�#HT�6L��!�p�Q�D������� ��^�d��ۙ�/d2?�u�e2�}����ߕ�� �#$��ӹ��Ѓ'�`ܒ$��p�2�7�㇇8Y���m�1����8yJ��-��B:�5��e�n����6]Hl���4��ֵ�p����..�v	$IFA�E~�#��E��-	����S?N�n�U�R�`81��&���'�4Y��]����3�/W�RX'p�y<Kce�_�  �%/������ =��|�jG���<b���Y����F�=m��p^�>9	B$x��8�j�`G�n�-2�����c�U��B���<���6���L��i�%+)E^�Z9�_=~���*���I�2?2um��Y�Lā�#�*"'䒌�L%V���#�Kp0���&7L�?y2�Q���@��?R�̃���6�����D����`���'(7|7�ސ���AZ,R����Ox�Q&0�9lN��L�k�=��m2�]i�獏?����:����Q�V_P�M�V��P	
�_� �ن��'䒮�0&'��W��
X���D�
��/�Gc���ф܌��}=����TRl�p���c�R.}}2�c`cp���ge�-C;�m�$��ĥ�%E]a��w!]�BeHԝ [�K�?��-��"f�P f��Z�����q�lF�D�����D��~�7Ō�V�D9#��@_���֍"���n���I��zp�
vo��őep���a2_��o��� ��E�)4f��2�t�#.ö����C�$p��`{i(�Q�c����
`ع���O��������6�e�2��͕��/`9��� �br�k�b���$p�W�n�u�)����#�Lk���70�6��r�2(y�1
�܎�0����ߎ��;�J���,�5PBɍ-ԇ����ZyGG�9��:T�]Ҡ�c&�>/{��Ȯ����)M((��Ϲ��yꇵٲd�����8@��26����.�"㰪��y����+�s=�橯�kOVQ�P0@��-�_�U�;�F!4\Y�����֨��B�o��: o@w;�&T���i�Sn��XhN�d���h^�N@�M�^]�n�(��O����Nr>=:#_��nw.$�)%�=��	�W���0V�VO;�A�r��8H�y��* �9�+
ܟLA��>���p'tE��]o�5�2P��\�^���i1i��Rj�s}�vD�9C�6{�����ȖL)���pEL�ʛ�H�z���d�Xs��:���EvW�E7^~�������5�Jb�֮�%�0�m��+?���L�ܑ)%���r[�)ڙ��|��S��Bf3���?�i7���Uh��xC�̓�����k��>��p��mf��M�g�=tuug�u ��@	���
6�H(�@�&�Y�\�ۓPv���-�t����"L\n
�(�{��EBQ�j�jy���x�\6�݁���2W>3���W؊kk*/�?pZ1��ᷧ4�!�9Z����y�sf�	��E�Lc��>�Y��0����Q�\WK+MW�����	��,C��d���'[�t>�����3�	��y�J�	�1(�)�+X�!?��e)��P���Cc΂�e`�(��v�p���K��$$�n%��!�d���R�b�) ��յ�!��k��P�T��c�_+c�[���Ϡ�*�Ko���9-�(hAH{�|E�W���)
� C(��i�l�6����ޕo~-�s8
P�ʍ�2mz^���߫ n���������5����jq0�Xn�|���V����ǹ�^I����e��������9�n.���A[~����v��s���?����bKW�XS�V@�NB�;P
��	��CPn)�%����������~.:OcTTxʮ�_�%���+�]^J��(t�}���ņcgq�y��@� �QAd6o�H�@��1����G1���'�"u�3��s���Ҭ�f���6��I
w����g"sv��y��Tb�x�+F�=Uf��ƴE3n6ai�N�5��I����6��n�n�? ��{�mRt��2�
�n�%��:`��`�C�@����V�a5�K�-n�P��0 ��XQ�t��)�z�&�u�n�Ѳ�Y*��۝�p�$Z5�c8���-,�����@���;W5Pt����n}�	����M�}���9�_������A�XH�i�a�V 0��_z�t����b���8���*,���6tជ���)��3.MA�E���()�l�"��fD���5t�-�j� ��|�,U\��������a��V����T|��,�� �{��X�z]�,AM�y��h�<4��9�}A��2_��a���s�Mgg��cJ�q'���K�X��}%������.D}�7�|��s��i["t��l��w���>���V����ܢK� vu�9Z�Y��e�(��x�̀M�E��K	7V�9���ܟW�Q����O�/�\�ۧ���F�r�n�-�&�B,&5T�w�6/�V��Hڧ�<��QQ��k�X�)�d�FI��UKN�# ��L�H�s�1�fj�}���Ou�lm�;%qB&Sr�m���$ �>z����/��v���[�<��b�ݚpK���Ny5�Véu	k��d��Tr��_T�.��,�d���;���0^n�Aqg��`�Ơ\���#D"xg�%^�� vO�|�?+Pf���L��rI�%�@Gg���K�-���(S@�f��ꁶ����ew���7���0�ԭB�#"DA�]+b�c��m������֝�x)�PW�� x��an���
\)�N)Ֆ���.E���g���hd0�Ll"�5�\Y�=nRX36j��:#rM��m���e]��ҕ�S����pj��	.��t�Tj��*�pm)HV~~e�ӵ[�H<WX_�4S�b��o���`�Ґ"���<'R�v@�^j�����"�ᖆ�쬒l/�������g��Ib����jK��JJ���6+.�^3��90�����3��(9�e�σ9��k+�E���.�E�i^�V	抢�E�T��U�~z���4x�#�=G+>�b-�e2�g	�-lk{���ĭ����pm�/�#���_��Kaa����J�<T\�q�n�bMI�/[�D����7��MB��A6��
��$������1�vC��s�xӳd�5:ۦ�}�Mӧ�G����I \��9��8cZ#L��[�T�����4t��B]�u=�0���#D`�v�o�ճh����EJJj��&��OЄ��/+�0>p(���{�,)����9�p�X ���\�gО���a��RF.��}�U`�F�{�������+k���&s�ݲ<��I�)p�� �᫝^M�--�A��&S�t��r�9���0L�-7��t��i��kU����t��BQ
�BdJWjذ�O��X�$X���ZE��n��z������+���    �lƒ�փq,�T$���e�1Ʀ=hX��k�6��̎-�
�n�p
7*jd��%
�[����Tq���Չɦ��e�ܟ;?��c�� P��}��Ȏ)ۖ��޷=�n�K�O;�z�m�;��T{u�Ak��W���=rV�Ջ��^|�"``���R�>������\y�w�:���sV����/^�"��^4>
h���՛iؖ�Vu[�䉿��ϓtl�k,�^!i���
���������*,l��WEB:+*��Ea�"�)�bM y�NE����[⵻}����#�K���eH�*�����SP��l�U�ћY#��.����Qe�	
����>×�ي��lu�\�#��4�rL�$��s�-XO�B$�_��2B�$���6��43��L�&�U?����&a҂�i�R*2_{��6�`�m'���&+R�� ���ݶ��N���Az)#4�7dd��*�w�=s��K��BX#p��I��<Lƹ���e�r38TJ*HEVv�e(��<}�יe�m��~(��.��E7\�Mj6�<ĭ#��<sz����G&��tAq�*�^���
�=�.�E92��n��v�n#����s��u�����W9��&�б�{F�D�960G�Y�#��pwN@g�_�zP��Y~ f����.~/�/g�|��LE�y�~�Yo{	; [R(��vܐ>�X:%���,C ]ŉ�#� }�,|uCm�y�X�W\P*/�n�rJ0�Y�k-���x�ԼH�je��ߋ���/�F`��`¤UM��n����p���	Z�,�t�`��b�ʣ(2��\nE\���0���7i�G���6���6扎>PP(�`�|LԋR�R��$���>Gf9lY���������X���ҏ1o��pM_c�	LW�˙�^��NQ��jK������왙��	%�`�
���չ�'�$�ݵ~f��0&	���>m���/��@�Xl�+03�qu��"�d�w.q�������ٔ�p�5f���ds�j�#wq�ō�ᥘOF`���z3�s\��Rʃ�^;�d��_�/ᇥ�h7uC+�U��*�\�*SS�1C;�����L(4u)>�L"k/��"��T-�E2;�\O䒾ֱ6�E�F�yKIi�Z?Q��]�>�)mL}P�	�}�Z{*+�,Q�&*lD�?^�`���#�[���j��ى�����D��2Wk�L]�'����]RP�|V��u�@��臒*�fo�^)�	f�.��)zY3_�����R��^fC��)�)�J��I�T�\�Jѳ_ƣ��\���z����|XK������s��5��ݴAX����q�	M�z�R��%��$���'>�yB��)��OT��ީ[���zPx"/� �)MS��r9C��e��pYb$�>���h�i��;�L��l)�q=r�ҧ�f�4���C`�ߝ�`K����G7l���@>NgE�'/�<$���L��1�r�6?+�(���?��i����9Oj]́�����,�^#��i�����-��Q`��
-�0��q��D���٢�>�A������S����<nx+���#�5�cZ`j�Ht�Q!�`�1vT���.��!@qhuc���R]V�"��*/�@�5�BW��o�b.}X�u0-V�U�YH/�_�|A
5d`,�^��jǓ�dܝa��ɭL��Tp���N)p��W��N�=���*P,�Wb�)v��b7D�4׮�by�z`��C�X(0��3:B��`�v����1*�~�oU�4��^N��(�4�q��KE7hU�&�	��%���1hrȲ��Q���(C\�������z:(:W���r�O&-�&hw�!9&?`�p+��2�zS�A�4�*ba���]�}D��m��NM`ń���I��q/c�_�X�]���Ѫ\�ps�O���"��h��S����?��k�2a۫̚A@�nI��o�� 4����n�h���m�Iw�'��	H���P�6�	�n��\��jIVŠ��Ij19���C��흅��Hd��P1�^f�c7��}�L�덭yax��y`���i�e'��62,���]�y�%��U�Rl:��rw��5G��$D�1jdô栌5*�;�c~*�t�n���> �E�4�_+w���EI��Ek�'��`{�Rmh��!MǮ�.햛��nr>W.3���穐'!��@��~R�(P �w��a��kU�ԧ�ǜ։�Ӫ��L��x	��`�,/Yb)��Nh�	���]C��k�^:��.q☏Z���%��[�r|��.������qi1��l�7,�i:�3f��l^��L +��F�o�E�9	V0��+�޵�W���W��A����_�X�Γ^}Uww�-���q�h��,�N���c��H$�|���J��S7�ya;1��,�Q��Gө�ߵPH�B��O�i��+�@C�ih�kH��)9]�J<���M�rCS8&Q�.��a�^1_0�),�h����bq���S�z�g��İW�c��=�'1������xr�������4�zSCZ�����Ѧ���ĺ��W1��K,%��|�f���A\���M��s��[V]��JH���WG�O׬��M>������N��2v���o�qJ�c={���	��4�V%���r#��O��\M��X+��d#�r�$�.��=�aNr~q0�MY� �eb!t(㯮Ή:�|��Ӓ�g�	F�����<+���ћ�+y�װ��ph?�5n�� ���0�'�]^���.$��`(o1���UA�EE�[+&Q�%%���+B������b8�56�Y*�m�8�Î��Wh���b\��
_Z| WCU5������a�Dd�S��-+���z�k�bȪ6{�_��>�Oc���Xš!�-W���E4xB}�d9�U���/�$�6��x�i�̈�Lnf�R���v��SF�S#z��ȊM��%�K��E}]ak�%)ޤ�������z��v<�`��1��,rd��u��L��^�b:i���h�m�,΅��(V�?c�L!;�Ъf��]NDԆ �N�	�+�(L��;r��1�.�x ���ꋭ��I9en�����@�c@���
�#Csv�;7���Q�?K��ј��03|Q�/�h�:�s��^�`��ǩ�������w}C#WC�7�J�߼�q�-���������"�u���%`��������q{?Z��W����������H�����:B�U�X՘�ܞd��H��_k�]�Ku߅a��0��m�c@O�e��Q�������?�ΊO��Jǩ^�s
-1�`�sP�S�ld�fK0ɤ�8|i-�]1u�$F��K)��q��ձ�����r����up���d�O�?��T�e,��*:\���r��g^S��#�}t�J�hE ~נ:�9��Zn�e�]�u3���� �QP�AOI53�2Ef@�R�e�`�cL�	R]��$�]���Z�1�e:�u�2�b0;�0`����X�7�mh��"	��F�a�X	�Y�'�{���
�7����_ʲ>�l͌	��G��a�k���c,���U��(�a�=�����kT~7lr$@S�I��` `�v��k����k�[�}�Om�gR�DL�|��z���ivpM�7M�����h�#��a=�o�c��Wx���wҒ�gYN�WeK{e�x�r�1�'�MX��S
&g5��*���Y7c�}�ĂW,���>B�KNYh���� �J��"Kn_�z�,�8˄d�+b�2�y���f�����(�[%��{��'T�O�#���Ma��1�5� H�Q �:t?
�}������ ɼ�Ջi�/P�D
��>�O��0u��hF��v�q���q[����?�����q�����p;���6�F����п��qN�~�h���W�ZF�LVD,,��*Ϻ̆���a�#�f9�$�
��I�=r�R�����)Y�kG���Xp�}��{栲�|�r�f�)*��h���`�v�    &�������ۚ��q?�����dx������nO��zXp-�׸�f�)K�`�B;�ow���Ւɰ��)�F�ϗ�_h1��҄�~<(�NJ���keo����/p��J��<�k�<-W�F���(���٢n��.Y���(X��T%Z����4�Ke [�d �L17������I�e���u��Ѹ����"����).��,lt&���>��j7F)ӕ����x�<[�q��覆�{�<�
^�6`|�w/�l�Ia�DKe��u����Q�����F��� �In�\.�7�+�ˋ_fv���=�CY(�p�S�r��E��y�L�O��*�}��WE~*m��3N^hF�Mq<῟��)&������
���1[�������S_ȥ�U�8-c:0^�.v�Ʌ(��۫�"0/���Yғ6kz���V�m6d�ov��Fr&�(�0"�AЖl���{Ky���΅J�+Q��h�U���By��^7��L���9��cpv����a��E�,�'�J6����)Eމ��$�A�����#��Z��PYT�a����z]2_���;�x^�6���0zA���݅1�Ů�Tn;��G��?p����������,�!H��o�^/���y��ވ�K��r���
s��R$���e����$_]����8h�n���xЭ	T� f|D�ﰻ'��jv2�|Q�/��>����z#Б��>���v���o�#��^�ǾC�V/��;�1}�[�JH��I����@M~�c4s��z��5��UdS�p͑�8H�-��3�Z�"O�K5�M�':+l��C�J���蘆�:�3I�!�&��*�U��/� +�'BUWXˆ�A^��FZ�ǳ�4�ª�8�]	�
Wh�����@���Lf�b�S�U�	��N �E/�/�J#ʀ/�΀��P���볦ղ�@����֛�[3յ������*5�����#��Gy �]�Ϋ݂=|�:V����52���_j�?��9h��Ac~�s�>��9h��AӤ���~&	P��
����Glu�& R�]�UXzWX���⽋��ӊ�%��--�G.�`=�ȸ��첨Z�=y� �h*^�V��RA�H����U�c$�e��b���l�9l��1����a[J֨�G�:�k��9Zc�tzH��ϖ �/��'ʋX��U"��5��X���0��ĹR�����[4���1������f)��MEb:�oj'�z�/$��a�Q��*�'���W+
�U�5X_��p�HLX�3�<���`�g�o��c���xD���oX�4W�(�7�-� ���;,jD�ҕ8�A[֭T�6�6��ɭ[6��i��4h������*	��H�V���c�;hQ��{����hmz\��
=p���/�Ԑ���~�b��
��#V@�ׇ�-!l`��=l����̒ԕ1�I��5�_5f��]��#o��n�w��d4ʋbi��� �"/��A�#��CA�
��ҚY��?����w�E=ř�JQ��FH��G�����{0Ͷd*^6Ц�L`xẨ����ھ`����	V�d
6�b��$<=F�vq<F;,�Ǹ46oy���<�s��~��D�������1;����0{O��t�sl6��|g�^D>P����8m�����pΨ= ��>u�½Cop�l�ṿ�Ug4�,n@A�\в'j�z�r8x%ܯ;`�e$d����r�:�e��ύbM/y[C�}?�/D�C���-"�<(�Ӕ���S��,���P��.�U�'�;�Bȸ}���,&=��cE�B�#��9�k�sR�?Ǫ��Vc��R%��K隍*A�N�����}6[t�S9A�,d�+~�V��vH֠�%Q��V����a?¢��u�<��5@')��2���v;�D{��������r�, },]T�:�~�4Ǣ�Bb3�4]��2����0W�?�|�yA_��D.XGl�͞��m��\(!M��kԥ�Y�e9���v�+�k	�|��96�Æn<�#�~��D�(Hf��Hr��l2�q笥�fǄJ�-# �<�rǨ6�f�E�Y{a��.�����XG+�۝��8��2��9gab��6b�P�6�q#ST<���a"��τ��s?������jL��v�;Y��;`�[��}v}?_x��F+Uu�D�g!2}�-��W�h�C��l��A9�֋|@۷��d����}���֛c�>������lK-�8d3�/d�GZi�e�[�p�zs�����4OP���x�&��09�M�����D��'����8�#��/���~�ڱ޶4d���r8�p��U,��j�FǑb9T��Sq�
���q�� p�mD���&z҇��,���{OS�U���~&���{F���z��_�f}��P6��2���J���:*��l��5hͮ4�Be+��h=7I �F�7�A���t�7 �`�-&��˵�����V�N��gf	��~�a[�L�m�~Դ��~Զ�Nߋ�VE�f�^e|��N�ڐt���"�l�^Mp1�PC#,��w�+֊�?
|�-��i���4�'?�-%���?�h'�9`]�W��_���6k�4\�ά��D{�;��R��-��������_ĵ��r�<�r�)��0�+6��7�4(V�k���M�Di;?�ȣ��������6��̶ݘ�����<���+�Q��!�ƹp�ض��y�w�]4,����X�U7�"�/~��u�z�C�]�rڶ�2P��R�z�<�f�r �=m��,M�
�ٵQKl�	B��O/��8�v�*�1ZRl��}&oު�ѝ/&��\t�69Db;��s)zD��,�V�Ϋ��o;�S�Zs5m��%M��2/�I�Č��5#%��v�R�RZs;6�7QF9ێ�o�f��ɲ����6�� ']����u��Wpb����>H%�XܾB�k��c �@o�2L���N��1����K�Z���]l6�\��)�I�`��(�bX���O�b�m�U��� 
#Ч�A��#�֤�,'�QAji�9�gz*
-�Q��)�^dܵ��&~U��Z�(E�����Ҋ�jf�dE��ڭx�4�w���-�J�1��vjE�gڬ��~u��R���Kh#9d^u�ϱ� QLR���� i'[���'zr�΃]�;��֝e��p��]�K����<w�� �+�cE ��7R1�ب�=�;)P��X5�[�4.�f�����Ne���X s���J���J�_l��if)E^�.�&=1whH�>�3.6<��� ��c�5��@���#m�e�7vչf�ءc�ٜ�!�Ɔ���M�R�x͢�C�*��ԝ~�mf\ˌ>@�q��g��f�<��t��cY�3���?X4�E�8��xޏ��ߑD�]V�C��ӷ
�r�O���ۯ-@
��{E���~�t��i(�������8}[���}d�S��� Ovù�r���r�^k=�|c�z^6'Q:zK

�Ust}/�RTeɐƇ!M��d�VP�C��������s�x�۹���)�LZ�0�nĆ��==�ѝ��3�ql����b)}a��+L�:�%�9���R���mhy��-\�f�^���� j�5���[o��Q0U\j�ɡ2��7�6�����.�=�Q��@c��@a�vwQ�^9�i\�O�k3��І���>8*&���ӏ�:�I�X�y�8�V��g�WXA���U&��d��w�1'��)ؒ�r)�^��X��D��o;{)�a+�-+y*ʹ�-�U/�'_��c1�h<E~�cύ�>�M
�&<�"n����<�׊�F���������s@�UU�����x>���a� �����_�8M|����`�l|�r��~��?{���v\}S�4�l�LC�����b��1�L._���滞����Dq(R.4�Z�6b�� ��GaWl��k��~!��K��.L�Li
�6��$Ԩ�<ϿM�qH�{�rz	�u����9u�>� �:`�K¦b�QD��w!�s��*W_�a��fƜ%7�=~�a�0�ҬCp�� 7
  ��t�5�Kx�RH�bX��gV��ި���dz�X�͡��k����X/��*�[5L�'���0��w��$����w�0�ӯx�Ǳ��_����l	7ԣRK�0_ǲ>I]D\�<( �Z����8�#�Ӧ0m���S��#S�E�ʟ���/��,ϟ(L�+�v�f�j�W�bb��D�FU�@?@-�	M����!��]���82>,n��kX�#��%�!��L�$[)��t!��{�L���p���<d�+f؜N�9�*�ϽQ�X3���eX/��^��:�f˭���`��`�Eq� �<�I�r��5�G�?�,e��������_i��NQ�%u��?��+��݊hd!��i����O&����6�ҧ�ПŠK�B
2��a��Z�hS ol�5�+��{�|]���|m�v�UH�����Y���lV�����{���ށ��l�j����*�v믥�{x��M�	Ԏmk�X:BJw�%�Ny}}�eD�c;U��^UC��9��'�xPġ������$HҬ�Ǡ����R���:���*�S�	9O{�۴w��N.R�0��hX/G6�Zp��JKD����SG�aoz�;�q�O�?����'�G�ɴ����O�v�^R!\dN��>s'O��J��F��y]K�R-fI`Q���2g�h�
�A�r��!G�2��q���z�6��Y��`�$���wtY���\0���8qB�`�r�����Z9@hƹ<zD}��?�z=���Q��R�2�0zv���8�C����oOB1����9Z^���O�Z=���s��Uӆ���7{7JHYK3�*,�$�V��Y���ŕZ��T��;��#�-���Xu�C����x��_*3���bAl�<!�9��'�K�����P��*���(:��ܪa��-�M�w�"g
�p;��4.�/��z,r��2N��� �A���
��թ�@-0��>�lJ��0	3C�+(�ͫp�oi��ꢼk�|W��}C�dɲ��;��q����MEK^�G��S�(�'�6`Yٷ�0�ٕW����G���Q;�:��g�H���<��W0 U�!�5���7yCR֘��{�&g�*R��՘jw&��+*ީ���n�ݲ�O��@�<�y���Sw\�-dM��ћX�������*�i.X�8w�
�Ы<k��b<�n|���~LE��g`��"?�XT�vcc��zz�<Y��AW8خDJI1({$9ǔe�(���	n��JJ���VP�Z���R7m�U� ?�;���x1���h��,^lK��^Ɋ����
�Sav��#P�_�¾�lݏ310�� b�����ˮ�}��P�I>?TcA��;����l�� ���� [)�
Gب�(ŋfSL�H�T�~�]Sv��[�H��a`�� ]cC?�e�XS�A������kʋ2+��j�T�h;�TWT���D�dl�	dn_
ϕ?�}S��]x�gb���W �D��i"��������:>����M�]�߈�.
U�Ps�-3b5��՛�e� f_�7�;R��%V�"�Ry]Ө�C��N��R�VP�����LN����,�?xG>�h�'�֮R�0����)��������@un�YR�|^����>f��&}���5G�����RpR�9@�����6���U4Ty�R��t=5�k�܅MU�]��.��Ư�p��5�[H����xF����s^�F�=b��j�Ob��닩:>(���ۨ��s�^������|��H;X��^LT�:��'F3�5��~cU�TJ��W;o[~<�T��������u]���Not��"�?	#��p�j�����������Rwĵ�-u�Ų��_���$�ƴ_ȝ�gV��aĪbA�[���������-35�nF�Y�Y�-�,Zy8Q���P����n6��qq�՛�4�#�n��}+�����s|��v��;��y�3v���4�/�f���#�a��v���>t�6�}��m,���Ώ���M���)�A�/1WfI_��0�������J��4��u����&�����oD�����|l ��:��3a1�V(wԶ�놹�#�;�u��o�9Mo�]ծct��v�6����6ou����3�Fs�@Eж�a��gc�0�δ+�0���|<�\(����A8�����5��;@�w������7��	b����Z;$��u���u�'_D�{�r���&
���	]�A�0 �6x,[V��5Z�+6��h��'�����ij,�� ݧ����u� 6>3�����$�S`�e���C���o'߰���^9��)X���YN� 1��W��[�J.0�v����O�'�ǘυ5�b~�	]����`�Ǥ�po5�\ϊ-r�3���1ȿrL��fؾ�oj霧��h��z��A<��۝Z_�?�x:>Z"&S���	o�����ӵr��J�K~x&|=r���4r�w�h�bH����W�աpF�:9���=�$�m�y�(ݺ��Ւ.�ME�(ŚN������Nz��9ƪV�u�#�O[
�G����=���hD���{�^�&�3�����v0;'���b&J�>���?�����?��K�      �       x�34�41�00��06�4�4������ 57�     