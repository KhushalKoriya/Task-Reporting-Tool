PGDMP         5    
    
        z            reportingtool    14.2    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33048    reportingtool    DATABASE     q   CREATE DATABASE reportingtool WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE reportingtool;
                postgres    false            �            1259    33050 
   regdetails    TABLE     �   CREATE TABLE public.regdetails (
    id integer NOT NULL,
    name character varying,
    email character varying,
    password character varying,
    status character varying
);
    DROP TABLE public.regdetails;
       public         heap    postgres    false            �            1259    33049    regdetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.regdetails_id_seq;
       public          postgres    false    210            �           0    0    regdetails_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.regdetails_id_seq OWNED BY public.regdetails.id;
          public          postgres    false    209            \           2604    33053    regdetails id    DEFAULT     n   ALTER TABLE ONLY public.regdetails ALTER COLUMN id SET DEFAULT nextval('public.regdetails_id_seq'::regclass);
 <   ALTER TABLE public.regdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    33050 
   regdetails 
   TABLE DATA           G   COPY public.regdetails (id, name, email, password, status) FROM stdin;
    public          postgres    false    210   �
       �           0    0    regdetails_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.regdetails_id_seq', 1, false);
          public          postgres    false    209            ^           2606    33057    regdetails regdetails_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.regdetails
    ADD CONSTRAINT regdetails_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.regdetails DROP CONSTRAINT regdetails_pkey;
       public            postgres    false    210            �   3   x�3���,��,��S鹉�9z�����F�&�f����%�e�\1z\\\ m-�     