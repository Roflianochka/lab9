PGDMP     /    9                 |            AssetGuardian #   15.5 (Ubuntu 15.5-0ubuntu0.23.10.1) #   15.5 (Ubuntu 15.5-0ubuntu0.23.10.1) ;    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ^           1262    16721    AssetGuardian    DATABASE     {   CREATE DATABASE "AssetGuardian" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ru_RU.UTF-8';
    DROP DATABASE "AssetGuardian";
                username    false            �            1259    16739    CommissionMembers    TABLE     �  CREATE TABLE public."CommissionMembers" (
    id integer NOT NULL,
    img character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    experience character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CommissionId" integer
);
 '   DROP TABLE public."CommissionMembers";
       public         heap    username    false            �            1259    16738    CommissionMembers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CommissionMembers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."CommissionMembers_id_seq";
       public          username    false    219            _           0    0    CommissionMembers_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."CommissionMembers_id_seq" OWNED BY public."CommissionMembers".id;
          public          username    false    218            �            1259    16732    Commissions    TABLE     �   CREATE TABLE public."Commissions" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Commissions";
       public         heap    username    false            �            1259    16731    Commissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Commissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Commissions_id_seq";
       public          username    false    217            `           0    0    Commissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Commissions_id_seq" OWNED BY public."Commissions".id;
          public          username    false    216            �            1259    16723 	   Employees    TABLE     [  CREATE TABLE public."Employees" (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    "hourlyRate" double precision NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Employees";
       public         heap    username    false            �            1259    16722    Employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Employees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Employees_id_seq";
       public          username    false    215            a           0    0    Employees_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Employees_id_seq" OWNED BY public."Employees".id;
          public          username    false    214            �            1259    16753    EnterpriseTools    TABLE     �   CREATE TABLE public."EnterpriseTools" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."EnterpriseTools";
       public         heap    username    false            �            1259    16752    EnterpriseTools_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EnterpriseTools_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."EnterpriseTools_id_seq";
       public          username    false    221            b           0    0    EnterpriseTools_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."EnterpriseTools_id_seq" OWNED BY public."EnterpriseTools".id;
          public          username    false    220            �            1259    16760    Enterprises    TABLE     �   CREATE TABLE public."Enterprises" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Enterprises";
       public         heap    username    false            �            1259    16769    EnterprisesTools    TABLE     �   CREATE TABLE public."EnterprisesTools" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "EnterpriseId" integer,
    "EnterpriseToolId" integer
);
 &   DROP TABLE public."EnterprisesTools";
       public         heap    username    false            �            1259    16768    EnterprisesTools_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EnterprisesTools_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."EnterprisesTools_id_seq";
       public          username    false    225            c           0    0    EnterprisesTools_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."EnterprisesTools_id_seq" OWNED BY public."EnterprisesTools".id;
          public          username    false    224            �            1259    16759    Enterprises_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Enterprises_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Enterprises_id_seq";
       public          username    false    223            d           0    0    Enterprises_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Enterprises_id_seq" OWNED BY public."Enterprises".id;
          public          username    false    222            �            1259    16788    Users    TABLE     b  CREATE TABLE public."Users" (
    id integer NOT NULL,
    fullname character varying(255) NOT NULL,
    nickname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    bio text,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    username    false            �            1259    16787    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          username    false    227            e           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          username    false    226            �           2604    16742    CommissionMembers id    DEFAULT     �   ALTER TABLE ONLY public."CommissionMembers" ALTER COLUMN id SET DEFAULT nextval('public."CommissionMembers_id_seq"'::regclass);
 E   ALTER TABLE public."CommissionMembers" ALTER COLUMN id DROP DEFAULT;
       public          username    false    218    219    219            �           2604    16735    Commissions id    DEFAULT     t   ALTER TABLE ONLY public."Commissions" ALTER COLUMN id SET DEFAULT nextval('public."Commissions_id_seq"'::regclass);
 ?   ALTER TABLE public."Commissions" ALTER COLUMN id DROP DEFAULT;
       public          username    false    216    217    217            �           2604    16726    Employees id    DEFAULT     p   ALTER TABLE ONLY public."Employees" ALTER COLUMN id SET DEFAULT nextval('public."Employees_id_seq"'::regclass);
 =   ALTER TABLE public."Employees" ALTER COLUMN id DROP DEFAULT;
       public          username    false    215    214    215            �           2604    16756    EnterpriseTools id    DEFAULT     |   ALTER TABLE ONLY public."EnterpriseTools" ALTER COLUMN id SET DEFAULT nextval('public."EnterpriseTools_id_seq"'::regclass);
 C   ALTER TABLE public."EnterpriseTools" ALTER COLUMN id DROP DEFAULT;
       public          username    false    221    220    221            �           2604    16763    Enterprises id    DEFAULT     t   ALTER TABLE ONLY public."Enterprises" ALTER COLUMN id SET DEFAULT nextval('public."Enterprises_id_seq"'::regclass);
 ?   ALTER TABLE public."Enterprises" ALTER COLUMN id DROP DEFAULT;
       public          username    false    223    222    223            �           2604    16772    EnterprisesTools id    DEFAULT     ~   ALTER TABLE ONLY public."EnterprisesTools" ALTER COLUMN id SET DEFAULT nextval('public."EnterprisesTools_id_seq"'::regclass);
 D   ALTER TABLE public."EnterprisesTools" ALTER COLUMN id DROP DEFAULT;
       public          username    false    225    224    225            �           2604    16791    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          username    false    227    226    227            P          0    16739    CommissionMembers 
   TABLE DATA           �   COPY public."CommissionMembers" (id, img, name, surname, phone, experience, "createdAt", "updatedAt", "CommissionId") FROM stdin;
    public          username    false    219   HI       N          0    16732    Commissions 
   TABLE DATA           K   COPY public."Commissions" (id, name, "createdAt", "updatedAt") FROM stdin;
    public          username    false    217   K       L          0    16723 	   Employees 
   TABLE DATA           q   COPY public."Employees" (id, "firstName", "lastName", phone, "hourlyRate", "createdAt", "updatedAt") FROM stdin;
    public          username    false    215   tK       R          0    16753    EnterpriseTools 
   TABLE DATA           O   COPY public."EnterpriseTools" (id, name, "createdAt", "updatedAt") FROM stdin;
    public          username    false    221   L       T          0    16760    Enterprises 
   TABLE DATA           P   COPY public."Enterprises" (id, name, img, "createdAt", "updatedAt") FROM stdin;
    public          username    false    223   4L       V          0    16769    EnterprisesTools 
   TABLE DATA           n   COPY public."EnterprisesTools" (id, "createdAt", "updatedAt", "EnterpriseId", "EnterpriseToolId") FROM stdin;
    public          username    false    225   QL       X          0    16788    Users 
   TABLE DATA           i   COPY public."Users" (id, fullname, nickname, email, bio, password, "createdAt", "updatedAt") FROM stdin;
    public          username    false    227   nL       f           0    0    CommissionMembers_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."CommissionMembers_id_seq"', 33, true);
          public          username    false    218            g           0    0    Commissions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Commissions_id_seq"', 20, true);
          public          username    false    216            h           0    0    Employees_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Employees_id_seq"', 7, true);
          public          username    false    214            i           0    0    EnterpriseTools_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."EnterpriseTools_id_seq"', 1, false);
          public          username    false    220            j           0    0    EnterprisesTools_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."EnterprisesTools_id_seq"', 1, false);
          public          username    false    224            k           0    0    Enterprises_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Enterprises_id_seq"', 1, false);
          public          username    false    222            l           0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 3, true);
          public          username    false    226            �           2606    16746 (   CommissionMembers CommissionMembers_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."CommissionMembers"
    ADD CONSTRAINT "CommissionMembers_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."CommissionMembers" DROP CONSTRAINT "CommissionMembers_pkey";
       public            username    false    219            �           2606    16737    Commissions Commissions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Commissions"
    ADD CONSTRAINT "Commissions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Commissions" DROP CONSTRAINT "Commissions_pkey";
       public            username    false    217            �           2606    16730    Employees Employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_pkey";
       public            username    false    215            �           2606    16758 $   EnterpriseTools EnterpriseTools_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EnterpriseTools"
    ADD CONSTRAINT "EnterpriseTools_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."EnterpriseTools" DROP CONSTRAINT "EnterpriseTools_pkey";
       public            username    false    221            �           2606    16776 C   EnterprisesTools EnterprisesTools_EnterpriseId_EnterpriseToolId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."EnterprisesTools"
    ADD CONSTRAINT "EnterprisesTools_EnterpriseId_EnterpriseToolId_key" UNIQUE ("EnterpriseId", "EnterpriseToolId");
 q   ALTER TABLE ONLY public."EnterprisesTools" DROP CONSTRAINT "EnterprisesTools_EnterpriseId_EnterpriseToolId_key";
       public            username    false    225    225            �           2606    16774 &   EnterprisesTools EnterprisesTools_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."EnterprisesTools"
    ADD CONSTRAINT "EnterprisesTools_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."EnterprisesTools" DROP CONSTRAINT "EnterprisesTools_pkey";
       public            username    false    225            �           2606    16767    Enterprises Enterprises_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Enterprises"
    ADD CONSTRAINT "Enterprises_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Enterprises" DROP CONSTRAINT "Enterprises_pkey";
       public            username    false    223            �           2606    16799    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            username    false    227            �           2606    16797    Users Users_nickname_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_nickname_key" UNIQUE (nickname);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_nickname_key";
       public            username    false    227            �           2606    16795    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            username    false    227            �           2606    16747 5   CommissionMembers CommissionMembers_CommissionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CommissionMembers"
    ADD CONSTRAINT "CommissionMembers_CommissionId_fkey" FOREIGN KEY ("CommissionId") REFERENCES public."Commissions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public."CommissionMembers" DROP CONSTRAINT "CommissionMembers_CommissionId_fkey";
       public          username    false    219    3241    217            �           2606    16777 3   EnterprisesTools EnterprisesTools_EnterpriseId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EnterprisesTools"
    ADD CONSTRAINT "EnterprisesTools_EnterpriseId_fkey" FOREIGN KEY ("EnterpriseId") REFERENCES public."Enterprises"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public."EnterprisesTools" DROP CONSTRAINT "EnterprisesTools_EnterpriseId_fkey";
       public          username    false    223    3247    225            �           2606    16782 7   EnterprisesTools EnterprisesTools_EnterpriseToolId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EnterprisesTools"
    ADD CONSTRAINT "EnterprisesTools_EnterpriseToolId_fkey" FOREIGN KEY ("EnterpriseToolId") REFERENCES public."EnterpriseTools"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."EnterprisesTools" DROP CONSTRAINT "EnterprisesTools_EnterpriseToolId_fkey";
       public          username    false    221    3245    225            P   �  x������0�k�Sl�r<�Ď��
�A!��AZ9��;8�-��DH�ވ��GtH0�h���͏�.�q�3v:��8G�Kj�S[�*]u��m՛�tk�_h��pt�J�̠]�fl�B�R�ڗ����BP�)̈́̉�._���><��a���!)p�=��ot�����`ou�����	��H�FZy��l{��Kd�@��k��52}����oMM_3M���>
�f���sw���;�~�	�D~V%W��ye���a"�H9�4]����i���/�S��I;�!�|2�evh�Q�JӦ��� ύ��јU%�X6y�kTf}�Z��(��,l�S4����N���9��3����ݬ{�J�����a�q��x��w�A �kYʲ)�ZV�ԍ��k��F��v��6v�P9�"�)G �?���>���%J�3���d��|18��      N   G   x�3�0�¾{�p��F �W0�4202�50�54P0��20�24�362265�60�/�e�i�E��qqq �/�      L   �   x�e�=
AF��)�_fH&��SZz++���x��",�z�썜NE����1��6m?���)�]%�1$��Q<�'(Uª�h�2"(X���9�v��Ů�X�v���f{.��79�H�����*RCQ�I�!�ι7��2i      R      x������ � �      T      x������ � �      V      x������ � �      X   �   x�}�1n�@E��S��X�쮃�U���&����.��	"
�9	 !p��7ʘʸ����!��X�[�j�T��^�Y�YzO+m'
'�	f.�QN1P�%Іvt�V	�g�N[:A�R���t�o:^�&Գa�V.E��D��X#Kh��>�)Gj����s���|�k?������u+��l�����|��&.�RvĴ�C+1{���d��J���γB���x�     