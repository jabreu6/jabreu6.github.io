PGDMP     ,                	    v           web    10.3    10.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    18803    web    DATABASE     �   CREATE DATABASE web WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE web;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    18806 	   propiedad    TABLE     �   CREATE TABLE public.propiedad (
    id integer NOT NULL,
    titulo character varying(200),
    descripcion character varying(500),
    ubicacion character varying(300),
    estado character varying(200),
    precio double precision
);
    DROP TABLE public.propiedad;
       public         postgres    false    3            �            1259    18804    propiedad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.propiedad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.propiedad_id_seq;
       public       postgres    false    3    197            �
           0    0    propiedad_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.propiedad_id_seq OWNED BY public.propiedad.id;
            public       postgres    false    196            o
           2604    18809    propiedad id    DEFAULT     l   ALTER TABLE ONLY public.propiedad ALTER COLUMN id SET DEFAULT nextval('public.propiedad_id_seq'::regclass);
 ;   ALTER TABLE public.propiedad ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    18806 	   propiedad 
   TABLE DATA               W   COPY public.propiedad (id, titulo, descripcion, ubicacion, estado, precio) FROM stdin;
    public       postgres    false    197   �       �
           0    0    propiedad_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.propiedad_id_seq', 11, true);
            public       postgres    false    196            q
           2606    18814    propiedad propiedad_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.propiedad
    ADD CONSTRAINT propiedad_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.propiedad DROP CONSTRAINT propiedad_pkey;
       public         postgres    false    197            �
   F   x����IT�,(��M-3JS��tYj^I"�!��g~IQ"��Ĝ��̜�"�C�R�R�h3����� ��     