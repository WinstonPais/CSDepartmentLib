PGDMP                         x            csDepLib    12.1    12.0 o    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16843    csDepLib    DATABASE     �   CREATE DATABASE "csDepLib" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE "csDepLib";
                postgres    false            �            1259    16875 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16873    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16885    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16883    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16867    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16865    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16893 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    16903    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16901    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16891    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16911    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16909 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    16971    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    16969    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16857    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16855    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16846    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16844    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    17002    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25219    mainapp_libraryallbooks    TABLE     �   CREATE TABLE public.mainapp_libraryallbooks (
    "AccesssionNumber" integer NOT NULL,
    "Title" text NOT NULL,
    "Author" text NOT NULL,
    "Availability" text NOT NULL
);
 +   DROP TABLE public.mainapp_libraryallbooks;
       public         heap    postgres    false            �            1259    17014    mainapp_userprofileinfo    TABLE     �   CREATE TABLE public.mainapp_userprofileinfo (
    id integer NOT NULL,
    phone character varying(10) NOT NULL,
    semester character varying(1),
    user_id integer NOT NULL
);
 +   DROP TABLE public.mainapp_userprofileinfo;
       public         heap    postgres    false            �            1259    17012    mainapp_userprofileinfo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mainapp_userprofileinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.mainapp_userprofileinfo_id_seq;
       public          postgres    false    222            �           0    0    mainapp_userprofileinfo_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.mainapp_userprofileinfo_id_seq OWNED BY public.mainapp_userprofileinfo.id;
          public          postgres    false    221            �
           2604    16878    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16888    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    16870    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    16896    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16906    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    16914    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    16974    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    16860    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16849    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    17017    mainapp_userprofileinfo id    DEFAULT     �   ALTER TABLE ONLY public.mainapp_userprofileinfo ALTER COLUMN id SET DEFAULT nextval('public.mainapp_userprofileinfo_id_seq'::regclass);
 I   ALTER TABLE public.mainapp_userprofileinfo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �          0    16875 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   #�       �          0    16885    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   @�       �          0    16867    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ]�       �          0    16893 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ݕ       �          0    16903    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   �       �          0    16911    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    16971    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �       �          0    16857    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   m�       �          0    16846    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �       �          0    17002    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   ș       �          0    25219    mainapp_libraryallbooks 
   TABLE DATA           h   COPY public.mainapp_libraryallbooks ("AccesssionNumber", "Title", "Author", "Availability") FROM stdin;
    public          postgres    false    223   �       �          0    17014    mainapp_userprofileinfo 
   TABLE DATA           O   COPY public.mainapp_userprofileinfo (id, phone, semester, user_id) FROM stdin;
    public          postgres    false    222   6�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    202            �           0    0    mainapp_userprofileinfo_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.mainapp_userprofileinfo_id_seq', 2, true);
          public          postgres    false    221            �
           2606    17000    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    16937 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �
           2606    16890 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �
           2606    16880    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    16923 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    16872 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �
           2606    16908 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �
           2606    16952 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �
           2606    16898    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �
           2606    16916 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �
           2606    16966 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �
           2606    16994     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �
           2606    16980 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    16864 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    16862 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    16854 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �
           2606    17009 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220                       2606    25226 4   mainapp_libraryallbooks mainapp_libraryallbooks_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_libraryallbooks
    ADD CONSTRAINT mainapp_libraryallbooks_pkey PRIMARY KEY ("AccesssionNumber");
 ^   ALTER TABLE ONLY public.mainapp_libraryallbooks DROP CONSTRAINT mainapp_libraryallbooks_pkey;
       public            postgres    false    223            �
           2606    17019 4   mainapp_userprofileinfo mainapp_userprofileinfo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.mainapp_userprofileinfo
    ADD CONSTRAINT mainapp_userprofileinfo_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.mainapp_userprofileinfo DROP CONSTRAINT mainapp_userprofileinfo_pkey;
       public            postgres    false    222            �
           2606    17021 ;   mainapp_userprofileinfo mainapp_userprofileinfo_user_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.mainapp_userprofileinfo
    ADD CONSTRAINT mainapp_userprofileinfo_user_id_key UNIQUE (user_id);
 e   ALTER TABLE ONLY public.mainapp_userprofileinfo DROP CONSTRAINT mainapp_userprofileinfo_user_id_key;
       public            postgres    false    222            �
           1259    17001    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    16938 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �
           1259    16939 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    16924 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �
           1259    16954 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �
           1259    16953 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �
           1259    16968 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �
           1259    16967 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �
           1259    16995     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �
           1259    16991 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            �
           1259    16992 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �
           1259    17011 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            �
           1259    17010 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220                       2606    16931 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    2775    211                       2606    16926 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2780    211    209                       2606    16917 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2770    205    207                       2606    16946 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2780    209    215                       2606    16941 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2788    215    213                       2606    16960 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    217    2775                       2606    16955 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2788    217    213            	           2606    16981 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2770    219            
           2606    16986 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    213    2788                       2606    17022 P   mainapp_userprofileinfo mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_userprofileinfo
    ADD CONSTRAINT mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.mainapp_userprofileinfo DROP CONSTRAINT mainapp_userprofileinfo_user_id_df235e01_fk_auth_user_id;
       public          postgres    false    2788    213    222            �      x������ � �      �      x������ � �      �   p  x�m�Mn� F�p
NP��u�Q��L�4j"�i��71�hv`�'?ɀ���ڮS�학V�	-��羇�� ��So�K���hV�R �ǰ��2�����2�Id���rD;��ԏ�(H�&*2	w����Y� k�/T�<G/D4u:�A$�*' x���b�(@�XJ]��x��=P��`sT�7CkX��w;���Ժ�F�`���"uCE��^	�~��.Q3�A��:X/�O�a�Ɍ��Ƞg��m������U@J6A5;�F���aEƉ�*�*�l�"cf�:�x$�g��߄4���17׺M��n�~/�񿌯�e�ʜ��W���I��%�
��P$��U��JI��MJ���i      �   �   x����n�@E׏�p�N�̼�A !�hm�D�C��A�:��D��ߗĺ骫{�������U��=�}	�g�d8h� �(U��[4W�h�A��o�+C×I��n��Q.���"R1d���|��RO�>�>��@�˺�J�G3���'}�$����/��8u�;���N�_�\)�Τ٪�����\���P߾EqX\CXG��,�h�0���ڌ�\�ȶ*��!$�������ûS��hM,���cX+      �      x������ � �      �      x������ � �      �   A   x�Ǳ�0��?=Jd=J� i���d��Muȋ\��ר����Guo�1 #���S�
�      �   t   x�M�;�@k�0H�9�C�`�k[���ۃ��޼���*
�f�@K{�sT�S<n��8�6X���0m��u���@�Z�w�*���{�$�E'�����S)��+�C�7'o8�      �   �  x���͎� ���S�J�Ϳ�,+!&a=h��b<�����H�Q���suu��\��m�s ���3�!@���H���!;� �xG�@����"�Lnژ����"*@0QT�"ڇ>�7�>��&�6��>������}`�T�Kra�����=�Kc�@��'��G6O�B�7z4�ݧ�閌�im|�QO6n�Wc+B�S{;���.�
�T��J�������q�%�I�m�ĞA�q7��MTBr���P1��͜�M�<��������+G��-.ְ�[�k~��oS᣻���0�]M
q�7����<���2��V���v�z:G�H�UX�%�шD��o4�B�cX����P55QA��)�e�������Qq��e��l���.�u���f�����#�C~nA
��l����ޢ�7��[7������C��n���p8���kW      �     x�=��n�  @��+v_4@G&&;��F0m:d[�@A�e���gv���K�����g<���q$]�0����	��m}L2���d�CVs�וQ�N��yM!s��1�{�g�Ѣ:�|��(���[K#�7+�
�9h�}牕�R�;[�L�u��=Uq�Ћ;�_����������0}�6�v�(݊���@�t�xA�22T�L��e*s攓��,�A�|��ݍ��_��$=���� �&3H&OSH�#��d�,�~�i)      �      x��}�n�H��o�S$0@M5>�#���C�o[.��ru����h�6E��a��}�}�}���L��<d���E�e#�̌��е��O��@'�`���8ʒ8���hA���_,�I�i�Sm��z������`�����ON�7th��fh�d���eB7�-���K�<�ԟ�I�m�AtM���D�T�ϯ���㿙�Q�����.}r�����n�#�C2&�q�����`��ɂ�q���X�q�W����e�`I��#��˕��@;���$�<�?e�����Z�aD�m�$���?�C���	V�G���[m�>HsX�$^����� �4b�Bn��'F�o�W|�\i~�lɿr�%AH��ԇ���JRX�s��{����,��]m�pF��Sl�4X�k�]d���r�7OA$/��N�hA�~�)�H����!{��+�8���	d`�_���+���h�dH.� ]Et�'�j+C��d� ��׸_W4Z�p��(	hD.�$�_��ȑE��� ��|����$�%���(Y���@Zx�}�Q����{a�w`���`��0Ъ�&�AH�iE���@�j���)�QJ~���ֆI<� oP�!.�h�k��2�`�ᾬ��`;��L�G~���L��o�~}���~�$q���r:�1z���}�����C�,dO���	_s��j�[�K)�t�$=j��6�)ܒ���;m�
���3�i$?�k����)��..�v	$IFA�E~�#��E��-	����S?N�n�U�R�`81��&���'�4Y��]���׌�Ka��I��,��4|Y,��>���n|���r��D���eHS �qE>��i�f���>��`t���y=��$����d�M�u�3���� ���W��W]&�^.�>�O[2�_�r3������y�k�D�~��)��`�j'q����ԵIf2QB�]ī���K2�3�XM��t/����c��0����,F�B��&�H�2�o�(NBD��NւC������0��݌xC��i�He�6�>�!F����9^3�1��,Ƿ� v���7>�8����4�J'WFA[}A��6][��C%(�~����6�>!�t�19�W��U�
PE7�����&�fL����Y�����b�b�3_>��r��k�Y�#��>+{l�1n�&	^%.�/)�
�07��
*C����� ْ^��]�)�~h��i0�F�0+�Բ�o�n����d3&�����'�,��)f,��$�Y��B46�n$�5��pk����N��hԃ�V��x�d,�,�����*�|~C5x�.�L�1��Y��ip���@L��$��w�KCY�Z[�� V ���/~"����_����y,s�A�/h�,��} �	f��R���]+�E�5 ��Ӿ2�p��L���dZ���������A�ˎQ(��v�^�q�%�vl�i�����P* ug���Jn�h�>�~��;:̑/������u�3���xٳ�Gv؇άMiBA�@���=\�S?��Ȗ%C��t������1��w!�U���m��kD��]ќ�'4O}E_x��R���	 b�n�O�V���� peA��[�	X�:�o
�h~�� �����Pyz��O��6c]�9)�u:��y	8�6�{u��-�W��'?Qt\��op;����|!û	�}��������r&@^�&��X1[=�8	�=(�� ��A� ��4_�(p2��������]�V�/t�%�4�@�Ns�z�>J�AĤ�H�i����E�p����G{�G [2����7�1�*o�#Q��s��cU�U8��8�zN�]1�x�����H42
ָ*�[����Ü�������3%pG����BPZ�ma�hg~2�A�NAh���8�6������W���2Orv�/�����8B��Op���7�O�A����5ԝ���>%��*�l@"�<���f�snOBٱ�.�t���W�0q�u(�3���Q�'j	EUG����	��.��s��w�r�\��D�"#_a+��u�����i��ʇߞ�D��h5�NJ�Ι�&t�{}2��.�<f)7�È��kDF�r]]>�O��?�|�m.���g8z�W�л��$�cP3R�A��C��9���P��Z+���?��1�e�D-0:�i�UT��n�%�Ws���u�{2\�b)g1�	������L�5��B�W�Q���E������-}��gп��w�7��$���4��t��٫dw�	��Og(Q�;����ӐQ��ѻ�M�/���G�T���^�7�kq�{��]����Y����=�HÎ�ΗL�l(���{�+EAM�����.�T�M;�������\z��Ԁ��w��o7>G�����,�P�[�bĚҵ�t�R��K���BpK��/�l��?xD�n�s�y����u�ݢ(�w_���Rj�D���{�h-v�e��?�����Z(��
"�y;@��RF�!<�g>z}�xE��>��[��dP���`hf��Z�J�(#B�Š���Ȝ]�g^|9��9����~C��麫1M@�6��MXZ��|��a�#�����۪׍�`���	�M�>�]F߸CI����R�0�vH�Q����]0�t��m�2�D}+
��}�?%Q��$�n��7ZvM�#Kew�a��n��@�U�4���\��2�������
4�lF�]U�C7�=�v��� [�\�����������H��ڑd�գ��*j ����G�@���,V�XZ�	o������B�j�B.w��
�ҹ[:����XD=�(���� �jFD�*[CW��F
�7�R���M�'`ݟ��>k��R||GG�[4g��0�`��b�e	j:����FK������%���������o:0;|Sr�;��7�_*W�����������nu����;��;�-Lk�u�f�Ľ#�x��%�1W�Z�G�]���sX��*��-E-��,�hl
-���D���������g����b�p+�F!|���>e��~�5"܊#u�l�u0���U1Q�Bо���xQ�N�D�>e�F���d7]��N�$�$@0Jڄ�Zr��le:D��n4S���%}Z��ek3d�)y�2���oS�&(���|�~I���Ű�Z��徠`�E��%n��u�����ᨺ���g2id9���?*m��A[����?_Eq/�䠸�Ղ@0hcP.���T��"����T ��i��(��_r	��p��ɋ�(���YDϥ��an�) `3El�@[L�����������
��
Lg�V���� �q�1܅���r����Y�NS�w
�+
�E <B�0���|��f	��j�~�m
�"�r�3P�y� 2��&+ؚM����7)�5[�q��&S� |�в���i�J	'�W�m��I���LY�X*5p�G�I���*?�����-|$�+��A�)z���YLv�iHW�
U�){ ; g/5���j�a��pK�PvVI
��bhy}n�߳L̂$14UXjc50�{z3Ƕ�5�}rlu���/���>�h���x�>���=<�yeZ%�����CR��V����op���9�J������ �	�4�%������nO���/õU�ph�(�~/Q����*��Pup������5%��XlxLٮ"�M.p�Ѕ�o���i5	y/6�o:hvxa��ݐ'<ѝ,��,}G���)4F�m��i�Qc��::;$�pE_�l䤑�iM�0ٿn�RY�ίr�k���F�K
u�"�����������ݾ�VϢ�;X��(i��.�0�?A���H�a|�P����#X<R0 Y<Qs�	�� ��+��Ϡ=ٻ��h��\~��~��� ����7+�1k�W0�t[gM�@�e�Y)+S�nWA��W;��* �[Z*ƃN�M���h-��s�Ӎa��[n����������ۓ��ᅢ���Ȕ���a�    ����=��i9V��x):�j��2���W4m?\��%��X��H,Ë�k�Vc�M{а�=<���?؈�0;�t+��7�)Xܨ��)V�(�n�
/H�GPŹ�W'~$�z6�1��y��T�Ǐ�3��@�
���";�h8l[�"{��x�M.u?���i�����R��1�`�IB_)�3��X!pV/*?x{�=t���u�GK��4�~3[C�p��e�<���Y!G�gs�xA�`�~z��(�ٲ�Vo�a[�Z�m��'�L#?O�U�Ѯi��{����+��l�o�����z�	鬨�)��pاt�u~�	�2Ag��o����r�O��/���!��DO
\���NA�-�3PT%Gof� ��#��"DM��'(`ƛ��_Bg+
lg�Qh�is����l��1u���Ͻ�`u<U�X\~�����
�;ژ��̺�2��|T�l�ck?��l�	_JV��J��f�	n��m5�� F4Л�HY��\ڟv۲:y��w�,�ސ�a�l�5��ݪ,GU`����B$���0�Zڿr�=����<P(� �ֵ�� ^��^gB���Pb�����|���p�75��,����~���Q ��3�K���UĽ��{5�_�+��X���z���S�i��(�.#��ZX�ъ�+_�X^�4B�|�M�����f%�����9�)Uk<yZf�����Ϻ��ȿ���Њ35�]��g��%�lI��~��qC^�4\b9�l�>��t'~� �1`���q�)�Jc�^qA��Ի��)�Te��j�#�EO�"1��^/�w�(���	�VuJ������]_����?e�K�. TE���%pp+�$m�1,�IK?�$\���@V�1Ot􁂲@���c�^��r~p%y�L�92�a�
/DV�~^���E�&�~��y�?Іk�c�_��7X��
�u��mU[����Md��|X�O(Y�U��?��>�%9����0��eh��0Ih���i�<��x���2�B�����}�%�s���i�<�Φ$�3W�1S�$��T����-nD/�w2�L�ۘ��
��Rt��z�%�4P�	?,EF��Z��DVY��`�RV�����	fh�ȅ����fB��K�A�Y{A��& ��q,����z"�����i/
6Z��cXJJX����
���Li�`ꃪQG��'����,��.�Oa���Ft��u�^+�>�?�MA��_�6����k ���O�X�#9�/s���UAz��%�g�(pZWq��~(�"m��b��`f낙�R��5��؍�/�^Y�e6d���b��	�Je��5��=�e<
�ȵk>��ݛ�ȇ�H�1*Y�;�hY���M����oX�A�Є��/�8 [B�N2�=}�S�'���R_K�D���iH��'�r0��4E�/�3T�\�Y�%F��A��&�f����.Ζ2�#�)}zjƀM�<��h����ya[K�}tæk����t�Q$x�"��C�+/�4���,�
�3�B�����s흖��X��ֹ��O�o�A���5R,����(� �R,6����L��w@+`�艐-:����܍�?U���Q����ᆷR}`�;R�[C>���߁Dg>����bG�i����C�3&6S��*]�	�mVy�
���*ܬx�h�r��ҕ��i�z�"�Bzq7���
R�!cY����W;�� ���s�|On�`�\���]]qJ�+�����p��9޿U�by����K���!:��vU��Z�����
�B�� g��Yb���#��<�Qa��r��U�r��E��iH���_*�A��6���.ԧ0�A�C��]���|���=��ðnX�)�O��q�x�-7�d�v�;����0�Vp�d��FA��VU��\7�9=;�*{����Xq��"��	���?���^��r���8녣U��悟��6�E`�D��(	k}l�=�&e¶W�5���ݒ>��8l�h<-���F�2S5<۬%��O9&�X//̡�m�2�<ǹj�-Ւ��Am��br
J�h����;g/����͡b>r���/-�-�n�	���%�6�[���@��� ���l�N �/mdXjS������r�8�t�o��vk��yI��c�Ȇi�A1jTbw�!��T6�X��a>��0_��0�j�0M_�fy�n���� Նf��t�:��n���-$�s�2�_�|�
y��z �y�'��xןV<=��OeN}��p�i�H9�j\�t<���
���%�R`�����̼�5n�v�3���&����]��X�JA��(�`�W��b[}���C�Ϧ<`p�R���8c�J��ukJ��i�C��&\��ݐ`S
����]KNp�9?�q�Dk��e��<��Wuww��B�o��ƌ�YȢn�X
�9�nY�D�ʇ�Шd�:us���ۂ�:tT1���]�T)dJ����k��	4ě�V��D����U��#M��(74�a%�(���n��2�J:�-ס��?E�G�y�}M{e>���3|#�j��]�'W��}�/��LA�7*D�Ux����mzL�s([p3���RRK���g���Ea��Aؤ�>H�eՅ,������`��~u��t���䳊?�xl�(c�������;ֳg���0ozNCoURy
)7"?�T�(���ݼ�����l�ZΕ����g<�I�/�Ã�)�@��C��e��5�wQ'��WqZR��2��7*�\ �gEշ0zs{%/�65-��A��M@��"��A>��zc���+�1څd�2L�-F�[�*h���~k�$
���rt|E�s�2}�TG��f;K��Q�r�e��Jm���\���CP�K��j���V�Ý�;����{� 4��e��{Y�p�RY�f{f�T��g�i��4��84$��
�}C��O(�o��,gՠ
�_@�ݗd�F�0�}�ђ��Lt7�7ݮ7q�H2bjDO1Y�I���b������+l�$ś�z��-�@o~�^��� :�j�e=�٤p��9�FC��ף؅NZ�n8<� �sa##�����#S�N7�*�Y�n��! ��t���
4
�����\l�1G��K� Ň.���b���ERN������k��P.9����������M)�_lT���El~4&�(��_T��=�2��� ��$g�qj�I��t���]�������R�7�azK�6���2eDg9�F��q]��B�XF��+0i�+p�>W��s���Q�&��?(/�����1���t,V5&(�'ف��)�e��.p��R�waد��.�y��Sa�y�w�}�"��O���d��q�W��BK�$ض��-���L2�0_Z�lWL];��b�RJ�K\$BwGu,�0�f���\D���a���s�����*2�h�/����e"�ܡ������w��R1�Z��5�Nl6𻠖k��jj�pԆ�7 s�j�S�@��L���TaY"���4E�F�@;;I|dפh�Vo6l��v�.�����X���#2;��l&�鍆�A�d��H����#E/V�x���^�߱B���rtp�������-c�#�ts��/���X �>�:A�0�gXm�5,������	ДeRb �]A��Z�ƯEo�Z�֯E_�=[�Y�=��;_�p{�ި�d��\S�MSh���.����hXO���-��o&�����Y�S�U٦^�)^��c�IeVGj���	�Y�����e��͘|�,��Kmi ����S�f# &��R>-ɒ��|)��6�&�2!Y劘}2�y��;��%�!��VI>����	��:ǈ#e}S�/iLa,�k@����Gݏz���V�<3@2oe�b����,��|���|��7L � �Q(��e��/�m�B��/�=�����6����B��/���:�N�������d ;��o�x�S��/� c��Ճ��Q#��~��߳.��m�g�☬YN.ɽh�D�h��ƠT4�C��pJ���(�m�"�F�-tÞ�    9�,�%_�����z���4���@�z/�ݮ�(�������s��B�u�r��5�����l�aO��zXp-�׸�f�)K�`�B;�ow���Ւɰ��)�F�ϗ�_h1��҄�~<(�NJ���keo���/p��J��<�k�<-W�F���(���٢n��.Y���(X��T%Z����4�Ke [�d �L17������I�e���u��Ѹ��������).��,lt&���>��j7F)ӕ����x�</�q��覆�{�<�
^�6`|�w/�l�Ia�DKe��u����Q�����F��� ��l�\.�7�+�ˋ_fv���=�CY(�p�S�r��E��y�L�O��*�}��WE~*m��3N^hF�Mq�࿟��)&������
���1[�������S_ȥ�U�8-�70^�.v�Ʌ(��۫�"0/���Yғ6kz���V�m4}���4�3iF���Z��dӍE��X�{�wv.Tb�_�"��F�-����ʋ@n�����f"���ȹ���3�����g/JdAp��8�T�1���M)�N�'�?}��g�O�@x"j�BeQ�c�U
�6�u�|Eb��O�x��@�����a���R��(fe8�.Xo�P����.:�+�����8܇ Y���z�����)X�z#~/1T��-c�c(�=�J��������?�|ue*����"��fZr�A�&xP邘m�e�����ӫU���EɿT��p��G��@G�j��
Ln۝�R�ю|{��m[��o�0�h��n�*m ]�'�c�5�IP��̝n��^��l�W�M�?�5G"Hx� 1���ϐkY�<�/�H6A����>B+�&��c���T$�3������WAJ��4���U]a-Gy�ehuϪҰg�J�8v%\+\��j��c��2���	O�W'h�;��!X�X�\*�(C�P;�z�CA�FS�ϚV˶k 7[8�Zo�o�Tךv��Vī����
^��k �v�:�v���X�������V|���4��1>��9h��A3�4��q>M��?����$@�* ^��o��1��H�t!Va�]a�*;��.f�L+
�l�������#�k�ˢju��!���x�Z��J�"���VW1�9�dܖ�������氍ǜ�r�m)Y�l��<��YG�h�i��!�N?[v �$CPd�(/`]�V�0T��֌?cQr�^���J�Z�.j�nqx�6f�0����$��K`x��h�S4�������Y����F�Ӫh.t�b�g2^�(�W��`}��ñ"1a�|���m0��}��'v����1��ayXh��\���`���H��ﰨ}JW�TmY�R�
؀�,&�nٔ٧UP~Ҡu���W6��$�/"�ZQ��/���E�����ަ���q5�=*���[�[��RCʆ�����*x�X�_¶�������1X"JoP0KRW�x�'�����~՘�*w�b��������v��(/���;�8���zَ�10Sx)s(rKkf�J��lNf"����g�+E5T1�����4ے�x�@��b0���N^j��1�/rk'X	�)�l��J�����������B�ؼ�?\�<�9�����7����2��/��}<mӹϱ����I�{�h@M�G��ⴵ�+�#�9��@ ��v��1>���y���1��V��8\���rA˞�1���l��p����������(�E"�׆��55��m����M92�o�,�H�OS�*r8O�*���Kk@y�ʻ0W��<
!��������h��
���{簯)�II���!��X�].Km�t//�k6��;����+��l�!O�)��1ܯ�E�[���!Y�J�DeVZ��6���_�q�,�� ���*�ԗz����;  _4p�v���U� ��tUP���=�������t��\co@#�\e�HK��}o�`��6{��EJp��4�~�Q�Rg��`T����%��a������,k�<�Y�}� �Q"���X�ǝ����*�����W��ڔ�f`��g�m
��o�2�b�nw^/�$w`˰�眅�6؈�C��@@ǍLQ�󮆉8�>7��8hk߳���1����d����o�{�i���|���T�-.��������E�_���[��ݷ?��[/�m��ד)>��I�b[o���(�fw���i,����x����i-��]n)�͍��J�P<Aߏ���O��G4�z ����۞�>�z��P�\�F�� :k��Ej�z�ҐU�����W���7�lG���PM�Nŭ*�V�q8��p��]�s��I����]_d��=M1^T�{؆�i���r4��op�k�����wB�\ ���*�3��(��M�נ5�Ҙ
��HN���$��k����;ҙ߀H�K�����.�b���Xe:٦�%����A��m�2Qt<�u�Q�ڊ�Q��.8}/�Zћ-z9��!(S;AkC�u�ު����{5�U�8.@1AP��D�߱�X+�S�( �9l��8��/z�`��趔hn������u�_UG�~U���8���py;�b�a���|�vH�&�Lo�O��Z~�V�^�9�����+Ô������ҠX��E7�����"��{��*���X��k0�vc֗�dB�$T��(F��d�¡c�λ+�9���I vѰp0��b-VMܴ����ׅ���Kti�i�v�@q�J�f�q�����s
LȁX��s<ܳ4�*�f�F-��&l��?�TC(~�
����hI��;���y��Fw��Rr�a��ep��XΥ�%3�Z�:��v��$O�k�մ`�4�G�|�X&�3�֌��f۩J�JiU��ؠ�D�l;�YK�&�Z�6T�۠N�t��Wשv_��ڷ�� ��cq�
Ůy7?�y���=�0"Tf:�n�����.9k��vv��(r�R��&!��g�P�a��'?Q�l��T.J(�@������[�³��G��u�6�=�(��F}&��{�q�����U��k����3CK+�<�Q��!�k���\~�m�"�Tp��*iǬJ���AM�i�"����-[K~�L.���y��C<ǲ�D1I����P��lź�*��ɽ;v���ZZw��:�]jw�.������Œۂ������<H5İb������p@�Scդozи�����;���c�J7�+�s/+�[~��6�!��y����0�ܡ!����θ�𜖾�|���m��6�^w����9��U�5�c��fsֆ�n,��6�K��5�2�����Sw����q-3� �E_�1�����Z�]��e�Ψ*��`��Y����y?�W�~G�vuXE�~�N�j(Tʽ?e���l�� )����U�����ҹ��e��F�~B*f���mE�N���NC@��<���˕�ŗ��{���.0�yٜD��-)(x?T-����dJQ�%C�4�˓�[Ae�B�Z֫�[l~w̕��o��/ܧh3i-�tt�j|c��pGw��[�Ʊ9@?�J����a��0 �����ȇO�"HA^�_䶡�m��ppHt��z=�2X[��\�׬��o���Fy�Tq��&�ʤW����|H�
2��H�`F:��:���L�E�z匦q�>�͸rC�N
�ਘ엊N?��&ic!�Q�V�[���1^a�K,W������q�ǜ�'�0`K�ʥ@zU�c�Y�G���(~����`��(�r���W�D�|����ň�����=7���7mx(H��d���9����_+��s$��BjPއ�M�WU���?`��}��7ׇ%`���b04&aw�4�V`�ޛ����%�=3�w�쭻��q�M�Ӱ�M2���[��q��3�|e��c��z�*��;�aġH��`jeۈ�;�LTP~�]��.�	�������/�λ09;0�)�[�P��P���<�6��!����%d:�q�k���i/�t���.	���F�Bޅ4ϭ�� ,
  \}���g�s�����i���`K����{V�u��/�J!y�a9G��YM�[z��C����b�7���q��_b��ԫXn�0��|rG��	�����d8[���mo�h PL����2��^��%�P�6H,m�|��$u!q!�����j��v,�㠎,N�´U��OY��MqJy*��W���<�4<0�S� �1���%^5�����U�� �&4QZj��d�v�>����P�eL��1`U� �l�`��g2ɓl�lxKdFxЅTV�y2����'O�򐩯�as
08����|h?�F�b�pL��aI��K{�>��-���׃�Y�et�'�ʕj��'���Y$���U�����G����K��/�}p�W^K��$�0B�{��hw���:L9~O:lV�O��?�A��dv�	�Ƴ��Ѧ@���kBWh��x�(��7������R�ǭ�b�٬�'���%�����$��!:KU`��_K��2�)�-����t����~Kl����^ˈl�v��I�"�,�8�sB�O��C��!{��I��Y%4�A�cU�/��ͭu %U�8r>��ȷi��˝\��+:`�Ѱ^�l.���󕖈��iͧ������w��7����o�On�F�i�۷����b��B�Ȝj�)|�N��^�l]�n9N󺖖�Z̒���!��e�N��^��C�re ��Hye�.m俳���2I�?���A�`���q��m9�\� �w�r��8�sy��R���zb��|���e�a��ޟ�q�����ޞ�bvWy]s��������z"-�R���;�o8�n4����f�UX�I��@��I�+��ǩ0X�w��GF[���c�i]f�jH���"~���b��Y@�\��>��.}��?�C���dH�fV���Rr��0~P��7E�劜)8�O�a�HҸX���ȍ#�8	���zuT��*p�V�����W���)��$��V���7��ݾ�Q
���A�]uW�Œ�%��R�?�Q�~J6-y�nO��H��ۀee߆fW^~�:��G���`4��	"-v*� �^��|T��8��oF���IYc�*�嚜�H�6Wc�ݙ>��x����ҺAw�V�?	� ����:N�q=>��5QSGob����6oO�L���`����+�B����ܻ��?�o�1qc������bQ1ۍ�%SW��M�d54�]�`�)%ŠX���pS�]���gh,'�e�+9(�s#KXAaj�^�J�8�V������LTL�I��x�-]6Sx%+�S�*�O����o�@��
�ֳ5t?���І��;��N/��9��B�J$��P�a�W�<R�w�����8Ϊl��*a���/J�M0="-LR1��wM�u�oUT"%���t��hX�UbM!��K�o�_�)/ʬ$���RE���S]Q�Vt�]���&��})<W6�`�YL�v�:���~g_�\�ʧ}� �W����'��` ��v6uv�~#^̻(TmBA�-��|�ՔWo��y�}��t�HAv�XI��J�uM�r=�:!.�K}ZA]���.09��G���X��=�H�	��Z�J���W�R����h^\�f<V �y�]fIQ�}x)V�~����/�􅆾��ֶ;$J�I���9??�ڀjV�P�9K���� �wp>4U�w[���vX�m��pn!��bS�A�/(�yM�����k<�u|b�/������o��sƞϙ{�������"�`��{1QQ�@Z�ִͨ;�=�U�S)9�_��m��LcP�6
�6c���ui���A8�ѭ���$���2�]���w�������{�ZK�׮�ԕ��.y"O���~!w��Y!ֆ�2��n��K_�7<���Ԩ�9�cd�f����h��D�zFC�G���H�S�ũWo��Ԏ
��~p��8#�c���-x����M��R�-���*Ӝ�4�1V���~�������X�!���|�6dpK;?>>&7�+�<q��\�%}�������+9O��'�1�_��4G��������v7�	���0N7̄�0[��]P�v��"��V �x���	�4�TwU���t���a���ۼ�%�:V7�͵A�Ά�RX����@:Ӯ�p�n����tlr��G�Kp����޶� 2� �������tw'��~�G@�j�W׽z��e���|����9"�(Tf�&tAUÀ��lYmJ�h��4���Z�$����ڟ����4�`Dt�rc������̌2��[^h�|O�A����>��|��W?{�X���`���'f9�h/_��o�*��pڍ/�3?�Hc>����9&t%jo�c����½�Ts=+�����"�7� ��1�f�a�>���s�.¢������owj}	/�<�M��h��Lqf�$����N����+	�,�E��������[���y��9�A�!�&�g\�W�����X ��n�䒠��U�t���VK��6ţk:��V�r:����ZQ�q��
<m)P�cL��g���q��������K�      �      x�3�477351616�4�4����� ,Pz     