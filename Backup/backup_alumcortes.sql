PGDMP     .                
    v            postgres    10.4    10.4 �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    12938    postgres    DATABASE     f   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE postgres;
             postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    3333                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            	           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    16434    BARRIO    TABLE     �   CREATE TABLE public."BARRIO" (
    "COD_BARRIO" integer NOT NULL,
    "NOMBRE" character varying(30)[] NOT NULL,
    "COD_CIUDAD" integer DEFAULT 1 NOT NULL
);
    DROP TABLE public."BARRIO";
       public         postgres    false    4                        1259    17154    BARRIO_CLIENTES    TABLE     �   CREATE TABLE public."BARRIO_CLIENTES" (
    "COD_BARRIO" integer NOT NULL,
    "COD_CLIENTE" integer NOT NULL,
    "DIRECCION" character varying(50) NOT NULL
);
 %   DROP TABLE public."BARRIO_CLIENTES";
       public         postgres    false    4                       1259    17150    BARRIO_CLIENTES_COD_BARRIO_seq    SEQUENCE     �   CREATE SEQUENCE public."BARRIO_CLIENTES_COD_BARRIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."BARRIO_CLIENTES_COD_BARRIO_seq";
       public       postgres    false    288    4            
           0    0    BARRIO_CLIENTES_COD_BARRIO_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."BARRIO_CLIENTES_COD_BARRIO_seq" OWNED BY public."BARRIO_CLIENTES"."COD_BARRIO";
            public       postgres    false    286                       1259    17152    BARRIO_CLIENTES_COD_CLIENTE_seq    SEQUENCE     �   CREATE SEQUENCE public."BARRIO_CLIENTES_COD_CLIENTE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."BARRIO_CLIENTES_COD_CLIENTE_seq";
       public       postgres    false    4    288                       0    0    BARRIO_CLIENTES_COD_CLIENTE_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."BARRIO_CLIENTES_COD_CLIENTE_seq" OWNED BY public."BARRIO_CLIENTES"."COD_CLIENTE";
            public       postgres    false    287            �            1259    16440    BARRIO_COD_BARRIO_seq    SEQUENCE     �   CREATE SEQUENCE public."BARRIO_COD_BARRIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."BARRIO_COD_BARRIO_seq";
       public       postgres    false    197    4                       0    0    BARRIO_COD_BARRIO_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BARRIO_COD_BARRIO_seq" OWNED BY public."BARRIO"."COD_BARRIO";
            public       postgres    false    198            �            1259    16442    CATALOGO    TABLE     �   CREATE TABLE public."CATALOGO" (
    "COD_CATALOGO" integer NOT NULL,
    "FOTO" text,
    "PRECIO" numeric(8,2) NOT NULL,
    "DETALLE" text NOT NULL,
    "COD_COTIZACION" integer NOT NULL
);
    DROP TABLE public."CATALOGO";
       public         postgres    false    4                       0    0     COLUMN "CATALOGO"."COD_CATALOGO"    COMMENT     ]   COMMENT ON COLUMN public."CATALOGO"."COD_CATALOGO" IS 'LLAVE PRIMARIA DE LA TABLA CATALOGO';
            public       postgres    false    199                       0    0 "   COLUMN "CATALOGO"."COD_COTIZACION"    COMMENT     `   COMMENT ON COLUMN public."CATALOGO"."COD_COTIZACION" IS 'LLAVE FORANEA DE LA TABLA COTIZACION';
            public       postgres    false    199            �            1259    16448    CATALOGO_COD_CATLOGO_seq    SEQUENCE     �   CREATE SEQUENCE public."CATALOGO_COD_CATLOGO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."CATALOGO_COD_CATLOGO_seq";
       public       postgres    false    199    4                       0    0    CATALOGO_COD_CATLOGO_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE public."CATALOGO_COD_CATLOGO_seq" OWNED BY public."CATALOGO"."COD_CATALOGO";
            public       postgres    false    200            �            1259    16450    CATALOGO_COD_COTIZACION_seq    SEQUENCE     �   CREATE SEQUENCE public."CATALOGO_COD_COTIZACION_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."CATALOGO_COD_COTIZACION_seq";
       public       postgres    false    4    199                       0    0    CATALOGO_COD_COTIZACION_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."CATALOGO_COD_COTIZACION_seq" OWNED BY public."CATALOGO"."COD_COTIZACION";
            public       postgres    false    201            �            1259    16452    CIUDAD    TABLE     �   CREATE TABLE public."CIUDAD" (
    "COD_CIUDAD" integer NOT NULL,
    "NOMBRE" character varying(30) NOT NULL,
    "COD_DEPARTAMENTO" integer DEFAULT 1 NOT NULL
);
    DROP TABLE public."CIUDAD";
       public         postgres    false    4            �            1259    16455    CIUDAD_COD_CIUDAD_seq    SEQUENCE     �   CREATE SEQUENCE public."CIUDAD_COD_CIUDAD_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."CIUDAD_COD_CIUDAD_seq";
       public       postgres    false    202    4                       0    0    CIUDAD_COD_CIUDAD_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."CIUDAD_COD_CIUDAD_seq" OWNED BY public."CIUDAD"."COD_CIUDAD";
            public       postgres    false    203            �            1259    16457    CLIENTES    TABLE     n  CREATE TABLE public."CLIENTES" (
    "COD_CLIENTE" integer NOT NULL,
    "CEDULA" character varying(14)[] NOT NULL,
    "SEGUNDO_NOMBRE" character varying(15)[] NOT NULL,
    "COD_BARRIO" integer NOT NULL,
    "PRIMER_NOMBRE" character varying(15)[] NOT NULL,
    "PRIMER_APELLIDO" character varying(15)[],
    "SEGUNDO_APELLIDO" character varying(15)[] NOT NULL
);
    DROP TABLE public."CLIENTES";
       public         postgres    false    4                       0    0    COLUMN "CLIENTES"."COD_CLIENTE"    COMMENT     \   COMMENT ON COLUMN public."CLIENTES"."COD_CLIENTE" IS 'LLAVE PRIMARIA DE LA TABLA CLIENTES';
            public       postgres    false    204                       0    0    COLUMN "CLIENTES"."COD_BARRIO"    COMMENT     Y   COMMENT ON COLUMN public."CLIENTES"."COD_BARRIO" IS 'LLAVE FORÁNEA DE LA TABLA BARRIO';
            public       postgres    false    204            �            1259    16463    CLIENTES_COD_BARRIO_seq    SEQUENCE     �   CREATE SEQUENCE public."CLIENTES_COD_BARRIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."CLIENTES_COD_BARRIO_seq";
       public       postgres    false    204    4                       0    0    CLIENTES_COD_BARRIO_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."CLIENTES_COD_BARRIO_seq" OWNED BY public."CLIENTES"."COD_BARRIO";
            public       postgres    false    205            �            1259    16467    CLIENTES_COD_CLIENTE_seq    SEQUENCE     �   CREATE SEQUENCE public."CLIENTES_COD_CLIENTE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."CLIENTES_COD_CLIENTE_seq";
       public       postgres    false    204    4                       0    0    CLIENTES_COD_CLIENTE_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."CLIENTES_COD_CLIENTE_seq" OWNED BY public."CLIENTES"."COD_CLIENTE";
            public       postgres    false    206            �            1259    16469    CLIENTE_TIPO_TELEFONO    TABLE     �   CREATE TABLE public."CLIENTE_TIPO_TELEFONO" (
    "COD_CLIENTE_TIPO_TELEFONO" integer NOT NULL,
    "COD_CLIENTE" integer NOT NULL,
    "COD_TIPO_TELEFONO" integer NOT NULL,
    "NUMERO" character varying(12)[] NOT NULL
);
 +   DROP TABLE public."CLIENTE_TIPO_TELEFONO";
       public         postgres    false    4                       0    0 ,   COLUMN "CLIENTE_TIPO_TELEFONO"."COD_CLIENTE"    COMMENT     [   COMMENT ON COLUMN public."CLIENTE_TIPO_TELEFONO"."COD_CLIENTE" IS 'LLAVE FORANEA CLIENTE';
            public       postgres    false    207                       0    0 2   COLUMN "CLIENTE_TIPO_TELEFONO"."COD_TIPO_TELEFONO"    COMMENT     t   COMMENT ON COLUMN public."CLIENTE_TIPO_TELEFONO"."COD_TIPO_TELEFONO" IS 'LLAVE FORANEA DE LA TABLA  TIPO_TELEFONO';
            public       postgres    false    207            �            1259    16475 3   CLIENTE_TIPO_TELEFONO_COD_CLIENTE_TIPO_TELEFONO_seq    SEQUENCE     �   CREATE SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_TIPO_TELEFONO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_TIPO_TELEFONO_seq";
       public       postgres    false    207    4                       0    0 3   CLIENTE_TIPO_TELEFONO_COD_CLIENTE_TIPO_TELEFONO_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_TIPO_TELEFONO_seq" OWNED BY public."CLIENTE_TIPO_TELEFONO"."COD_CLIENTE_TIPO_TELEFONO";
            public       postgres    false    208            �            1259    16477 %   CLIENTE_TIPO_TELEFONO_COD_CLIENTE_seq    SEQUENCE     �   CREATE SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_seq";
       public       postgres    false    4    207                       0    0 %   CLIENTE_TIPO_TELEFONO_COD_CLIENTE_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_seq" OWNED BY public."CLIENTE_TIPO_TELEFONO"."COD_CLIENTE";
            public       postgres    false    209            �            1259    16479 +   CLIENTE_TIPO_TELEFONO_COD_TIPO_TELEFONO_seq    SEQUENCE     �   CREATE SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_TIPO_TELEFONO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_TIPO_TELEFONO_seq";
       public       postgres    false    4    207                       0    0 +   CLIENTE_TIPO_TELEFONO_COD_TIPO_TELEFONO_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."CLIENTE_TIPO_TELEFONO_COD_TIPO_TELEFONO_seq" OWNED BY public."CLIENTE_TIPO_TELEFONO"."COD_TIPO_TELEFONO";
            public       postgres    false    210            �            1259    16481    CONDUCTORES    TABLE     �  CREATE TABLE public."CONDUCTORES" (
    "COD_CONDUCTOR" smallint NOT NULL,
    "PRIMER_NOMBRE" character varying(15) NOT NULL,
    "SEGUNDO_NOMBRE" character varying(15) NOT NULL,
    "PRIMER_APELLIDO" character varying(15) NOT NULL,
    "SEGUNDO_APELLIDO" character varying(15) NOT NULL,
    "VLR_FLETE" numeric(5,0) NOT NULL,
    "COD_BARRIO" integer NOT NULL,
    "DIRECCION" character varying(50)
);
 !   DROP TABLE public."CONDUCTORES";
       public         postgres    false    4                       1259    17126    CONDUCTORES_COD_BARRIO_seq    SEQUENCE     �   CREATE SEQUENCE public."CONDUCTORES_COD_BARRIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."CONDUCTORES_COD_BARRIO_seq";
       public       postgres    false    211    4                       0    0    CONDUCTORES_COD_BARRIO_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."CONDUCTORES_COD_BARRIO_seq" OWNED BY public."CONDUCTORES"."COD_BARRIO";
            public       postgres    false    285            �            1259    16484    CONDUCTORES_COD_CONDUCTOR_seq    SEQUENCE     �   CREATE SEQUENCE public."CONDUCTORES_COD_CONDUCTOR_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."CONDUCTORES_COD_CONDUCTOR_seq";
       public       postgres    false    211    4                       0    0    CONDUCTORES_COD_CONDUCTOR_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."CONDUCTORES_COD_CONDUCTOR_seq" OWNED BY public."CONDUCTORES"."COD_CONDUCTOR";
            public       postgres    false    212            �            1259    16486    CONDUCTOR_TIPO_TEL    TABLE     �   CREATE TABLE public."CONDUCTOR_TIPO_TEL" (
    "COD_CONDUCTOR_TIPO_TEL" integer NOT NULL,
    "COD_CONDUCTOR" smallint NOT NULL,
    "COD_TIPO_TELEFONO" integer NOT NULL,
    "NUMERO" character varying(12) NOT NULL
);
 (   DROP TABLE public."CONDUCTOR_TIPO_TEL";
       public         postgres    false    4                       0    0 +   COLUMN "CONDUCTOR_TIPO_TEL"."COD_CONDUCTOR"    COMMENT     q   COMMENT ON COLUMN public."CONDUCTOR_TIPO_TEL"."COD_CONDUCTOR" IS 'LLAVE FORANEA DE LA TABLA CONDUCTOR_TIPO_TEL';
            public       postgres    false    213                       0    0 /   COLUMN "CONDUCTOR_TIPO_TEL"."COD_TIPO_TELEFONO"    COMMENT     p   COMMENT ON COLUMN public."CONDUCTOR_TIPO_TEL"."COD_TIPO_TELEFONO" IS 'LLAVE FORANEA DE LA TABLA TIPO_TELEFONO';
            public       postgres    false    213            �            1259    16489 -   CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_TIPO_TEL_seq    SEQUENCE     �   CREATE SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_TIPO_TEL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_TIPO_TEL_seq";
       public       postgres    false    213    4                       0    0 -   CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_TIPO_TEL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_TIPO_TEL_seq" OWNED BY public."CONDUCTOR_TIPO_TEL"."COD_CONDUCTOR_TIPO_TEL";
            public       postgres    false    214            �            1259    16491 $   CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_seq    SEQUENCE     �   CREATE SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_seq";
       public       postgres    false    213    4                        0    0 $   CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_seq" OWNED BY public."CONDUCTOR_TIPO_TEL"."COD_CONDUCTOR";
            public       postgres    false    215            �            1259    16493 (   CONDUCTOR_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE     �   CREATE SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_TIPO_TELEFONO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_TIPO_TELEFONO_seq";
       public       postgres    false    213    4            !           0    0 (   CONDUCTOR_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."CONDUCTOR_TIPO_TEL_COD_TIPO_TELEFONO_seq" OWNED BY public."CONDUCTOR_TIPO_TEL"."COD_TIPO_TELEFONO";
            public       postgres    false    216            �            1259    16495    CORTES    TABLE       CREATE TABLE public."CORTES" (
    "COD_CORTE" smallint NOT NULL,
    "GRADO_CORTE" character varying(4) NOT NULL,
    "COD_DESCUENTO" smallint NOT NULL,
    "COD_TIPO_PRODUCTO" smallint NOT NULL,
    "CANTIDAD" character(3) NOT NULL,
    "MEDIDA" numeric(10,1) NOT NULL
);
    DROP TABLE public."CORTES";
       public         postgres    false    4            "           0    0    COLUMN "CORTES"."COD_DESCUENTO"    COMMENT     \   COMMENT ON COLUMN public."CORTES"."COD_DESCUENTO" IS 'LLAVE FORANEA DE LA TABLA DESCUENTO';
            public       postgres    false    217            �            1259    16498    CORTES_COD_CORTE_seq    SEQUENCE     �   CREATE SEQUENCE public."CORTES_COD_CORTE_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."CORTES_COD_CORTE_seq";
       public       postgres    false    4    217            #           0    0    CORTES_COD_CORTE_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."CORTES_COD_CORTE_seq" OWNED BY public."CORTES"."COD_CORTE";
            public       postgres    false    218            �            1259    16500    CORTES_COD_DESCUENTO_seq    SEQUENCE     �   CREATE SEQUENCE public."CORTES_COD_DESCUENTO_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."CORTES_COD_DESCUENTO_seq";
       public       postgres    false    217    4            $           0    0    CORTES_COD_DESCUENTO_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."CORTES_COD_DESCUENTO_seq" OWNED BY public."CORTES"."COD_DESCUENTO";
            public       postgres    false    219            �            1259    16502    CORTES_COD_TIPO_PRODUCTO_seq    SEQUENCE     �   CREATE SEQUENCE public."CORTES_COD_TIPO_PRODUCTO_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."CORTES_COD_TIPO_PRODUCTO_seq";
       public       postgres    false    217    4            %           0    0    CORTES_COD_TIPO_PRODUCTO_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."CORTES_COD_TIPO_PRODUCTO_seq" OWNED BY public."CORTES"."COD_TIPO_PRODUCTO";
            public       postgres    false    220            �            1259    16504    COTIZACIONES    TABLE       CREATE TABLE public."COTIZACIONES" (
    "COD_COTIZACION" integer NOT NULL,
    "CANTIDAD" smallint NOT NULL,
    "DESCRIPCION" text NOT NULL,
    "FECHA ENTREGA" date NOT NULL,
    "COLOR_MAT" character varying(7) NOT NULL,
    "COD_CLIENTE" integer NOT NULL
);
 "   DROP TABLE public."COTIZACIONES";
       public         postgres    false    4            &           0    0 !   COLUMN "COTIZACIONES"."COLOR_MAT"    COMMENT     N   COMMENT ON COLUMN public."COTIZACIONES"."COLOR_MAT" IS 'COLOR DE MATERIALES';
            public       postgres    false    221            '           0    0 #   COLUMN "COTIZACIONES"."COD_CLIENTE"    COMMENT     ^   COMMENT ON COLUMN public."COTIZACIONES"."COD_CLIENTE" IS 'LLAVE FORANEA DE LA TABLA CLIENTE';
            public       postgres    false    221            �            1259    16510    COTIZACION_COD_CLIENTE_seq    SEQUENCE     �   CREATE SEQUENCE public."COTIZACION_COD_CLIENTE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."COTIZACION_COD_CLIENTE_seq";
       public       postgres    false    4    221            (           0    0    COTIZACION_COD_CLIENTE_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."COTIZACION_COD_CLIENTE_seq" OWNED BY public."COTIZACIONES"."COD_CLIENTE";
            public       postgres    false    222            �            1259    16512    COTIZACION_COD_COTIZACION_seq    SEQUENCE     �   CREATE SEQUENCE public."COTIZACION_COD_COTIZACION_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."COTIZACION_COD_COTIZACION_seq";
       public       postgres    false    4    221            )           0    0    COTIZACION_COD_COTIZACION_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."COTIZACION_COD_COTIZACION_seq" OWNED BY public."COTIZACIONES"."COD_COTIZACION";
            public       postgres    false    223            �            1259    16514    COTIZACION_INVENTARIO    TABLE     �   CREATE TABLE public."COTIZACION_INVENTARIO" (
    "COD_COTINVE" integer NOT NULL,
    "COD_COTIZACION" integer NOT NULL,
    "COD_INVENTARIO" integer NOT NULL
);
 +   DROP TABLE public."COTIZACION_INVENTARIO";
       public         postgres    false    4            *           0    0 ,   COLUMN "COTIZACION_INVENTARIO"."COD_COTINVE"    COMMENT     u   COMMENT ON COLUMN public."COTIZACION_INVENTARIO"."COD_COTINVE" IS 'LLAVE FORANEA DE LA TABLA COTIZACION_INVENTARIO';
            public       postgres    false    224            +           0    0 /   COLUMN "COTIZACION_INVENTARIO"."COD_COTIZACION"    COMMENT     m   COMMENT ON COLUMN public."COTIZACION_INVENTARIO"."COD_COTIZACION" IS 'LLAVE FORANEA DE LA TABLA COTIZACION';
            public       postgres    false    224            ,           0    0 /   COLUMN "COTIZACION_INVENTARIO"."COD_INVENTARIO"    COMMENT     m   COMMENT ON COLUMN public."COTIZACION_INVENTARIO"."COD_INVENTARIO" IS 'LLAVE FORANEA DE LA TABLA INVENTARIO';
            public       postgres    false    224            �            1259    16517 %   COTIZACION_INVENTARIO_COD_COTINVE_seq    SEQUENCE     �   CREATE SEQUENCE public."COTIZACION_INVENTARIO_COD_COTINVE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."COTIZACION_INVENTARIO_COD_COTINVE_seq";
       public       postgres    false    224    4            -           0    0 %   COTIZACION_INVENTARIO_COD_COTINVE_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."COTIZACION_INVENTARIO_COD_COTINVE_seq" OWNED BY public."COTIZACION_INVENTARIO"."COD_COTINVE";
            public       postgres    false    225            �            1259    16519 (   COTIZACION_INVENTARIO_COD_COTIZACION_seq    SEQUENCE     �   CREATE SEQUENCE public."COTIZACION_INVENTARIO_COD_COTIZACION_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."COTIZACION_INVENTARIO_COD_COTIZACION_seq";
       public       postgres    false    4    224            .           0    0 (   COTIZACION_INVENTARIO_COD_COTIZACION_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."COTIZACION_INVENTARIO_COD_COTIZACION_seq" OWNED BY public."COTIZACION_INVENTARIO"."COD_COTIZACION";
            public       postgres    false    226            �            1259    16521 (   COTIZACION_INVENTARIO_COD_INVENTARIO_seq    SEQUENCE     �   CREATE SEQUENCE public."COTIZACION_INVENTARIO_COD_INVENTARIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."COTIZACION_INVENTARIO_COD_INVENTARIO_seq";
       public       postgres    false    224    4            /           0    0 (   COTIZACION_INVENTARIO_COD_INVENTARIO_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."COTIZACION_INVENTARIO_COD_INVENTARIO_seq" OWNED BY public."COTIZACION_INVENTARIO"."COD_INVENTARIO";
            public       postgres    false    227            �            1259    16523    DEPARTAMENTO    TABLE     �   CREATE TABLE public."DEPARTAMENTO" (
    "COD_DEPARTAMENTO" integer NOT NULL,
    "DEPARTAMENTO" character varying(30) NOT NULL,
    "COD_PAIS" integer NOT NULL
);
 "   DROP TABLE public."DEPARTAMENTO";
       public         postgres    false    4            �            1259    16526 !   DEPARTAMENTO_COD_DEPARTAMENTO_seq    SEQUENCE     �   CREATE SEQUENCE public."DEPARTAMENTO_COD_DEPARTAMENTO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."DEPARTAMENTO_COD_DEPARTAMENTO_seq";
       public       postgres    false    4    228            0           0    0 !   DEPARTAMENTO_COD_DEPARTAMENTO_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."DEPARTAMENTO_COD_DEPARTAMENTO_seq" OWNED BY public."DEPARTAMENTO"."COD_DEPARTAMENTO";
            public       postgres    false    229            �            1259    16528    DEPARTAMENTO_COD_PAIS_seq    SEQUENCE     �   CREATE SEQUENCE public."DEPARTAMENTO_COD_PAIS_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."DEPARTAMENTO_COD_PAIS_seq";
       public       postgres    false    228    4            1           0    0    DEPARTAMENTO_COD_PAIS_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."DEPARTAMENTO_COD_PAIS_seq" OWNED BY public."DEPARTAMENTO"."COD_PAIS";
            public       postgres    false    230            �            1259    16530 
   DESCUENTOS    TABLE     �   CREATE TABLE public."DESCUENTOS" (
    "COD_DESCUENTO" integer NOT NULL,
    "MEDIDAS" numeric(5,2) NOT NULL,
    "DESCRIPCION" character varying(20) NOT NULL
);
     DROP TABLE public."DESCUENTOS";
       public         postgres    false    4            �            1259    16533    DESCUENTO_COD_DESCUENTO_seq    SEQUENCE     �   CREATE SEQUENCE public."DESCUENTO_COD_DESCUENTO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."DESCUENTO_COD_DESCUENTO_seq";
       public       postgres    false    231    4            2           0    0    DESCUENTO_COD_DESCUENTO_seq    SEQUENCE OWNED BY     b   ALTER SEQUENCE public."DESCUENTO_COD_DESCUENTO_seq" OWNED BY public."DESCUENTOS"."COD_DESCUENTO";
            public       postgres    false    232            �            1259    16535 	   EMPLEADOS    TABLE     %  CREATE TABLE public."EMPLEADOS" (
    "COD_EMPLEADO" integer NOT NULL,
    "PRIMER_NOMBRE" character varying(15) NOT NULL,
    "SEGUNDO_NOMBRE" character varying(15) NOT NULL,
    "PRIMER_APELLIDO" character varying(15) NOT NULL,
    "SEGUNDO_APELLIDO" character varying(15) NOT NULL,
    "EMAIL" character varying(55) NOT NULL,
    "FECHA_NACIMIENTO" date NOT NULL,
    "FUNCION" character varying(20) NOT NULL,
    "CUENTA_BANCO" character varying(12) NOT NULL,
    "COD_BARRIO" integer NOT NULL,
    "DIRECCION" character varying(50) NOT NULL
);
    DROP TABLE public."EMPLEADOS";
       public         postgres    false    4            3           0    0    COLUMN "EMPLEADOS"."COD_BARRIO"    COMMENT     Y   COMMENT ON COLUMN public."EMPLEADOS"."COD_BARRIO" IS 'LLAVE FORANEA DE LA TABLA BARRIO';
            public       postgres    false    233            �            1259    16538    EMPLEADOS_COD_BARRIO_seq    SEQUENCE     �   CREATE SEQUENCE public."EMPLEADOS_COD_BARRIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."EMPLEADOS_COD_BARRIO_seq";
       public       postgres    false    4    233            4           0    0    EMPLEADOS_COD_BARRIO_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."EMPLEADOS_COD_BARRIO_seq" OWNED BY public."EMPLEADOS"."COD_BARRIO";
            public       postgres    false    234            �            1259    16540    EMPLEADOS_COD_EMPLEADO_seq    SEQUENCE     �   CREATE SEQUENCE public."EMPLEADOS_COD_EMPLEADO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."EMPLEADOS_COD_EMPLEADO_seq";
       public       postgres    false    233    4            5           0    0    EMPLEADOS_COD_EMPLEADO_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."EMPLEADOS_COD_EMPLEADO_seq" OWNED BY public."EMPLEADOS"."COD_EMPLEADO";
            public       postgres    false    235                       1259    17061    EMPLEADO_OFICINA    TABLE     �   CREATE TABLE public."EMPLEADO_OFICINA" (
    "COD_EMPLEADO" smallint NOT NULL,
    "COD_EMPLEADO_OFICINA" smallint NOT NULL,
    "VLR_HORA" integer NOT NULL
);
 &   DROP TABLE public."EMPLEADO_OFICINA";
       public         postgres    false    4                       1259    17059 !   EMPLEADO_OFICINA_COD_EMPLEADO_seq    SEQUENCE     �   CREATE SEQUENCE public."EMPLEADO_OFICINA_COD_EMPLEADO_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."EMPLEADO_OFICINA_COD_EMPLEADO_seq";
       public       postgres    false    4    277            6           0    0 !   EMPLEADO_OFICINA_COD_EMPLEADO_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."EMPLEADO_OFICINA_COD_EMPLEADO_seq" OWNED BY public."EMPLEADO_OFICINA"."COD_EMPLEADO";
            public       postgres    false    276                       1259    17076    EMPLEADO_OPERARIO    TABLE     �   CREATE TABLE public."EMPLEADO_OPERARIO" (
    "COD_EMPLEADO" smallint NOT NULL,
    "COD_EMPLEADO_OPERARIO" smallint NOT NULL,
    "VLR_MANO" integer NOT NULL
);
 '   DROP TABLE public."EMPLEADO_OPERARIO";
       public         postgres    false    4                       1259    17074 +   EMPLEADO_OPERARIO_COD_EMPLEADO_OPERARIO_seq    SEQUENCE     �   CREATE SEQUENCE public."EMPLEADO_OPERARIO_COD_EMPLEADO_OPERARIO_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."EMPLEADO_OPERARIO_COD_EMPLEADO_OPERARIO_seq";
       public       postgres    false    280    4            7           0    0 +   EMPLEADO_OPERARIO_COD_EMPLEADO_OPERARIO_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."EMPLEADO_OPERARIO_COD_EMPLEADO_OPERARIO_seq" OWNED BY public."EMPLEADO_OPERARIO"."COD_EMPLEADO_OPERARIO";
            public       postgres    false    279                       1259    17072 "   EMPLEADO_OPERARIO_COD_EMPLEADO_seq    SEQUENCE     �   CREATE SEQUENCE public."EMPLEADO_OPERARIO_COD_EMPLEADO_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."EMPLEADO_OPERARIO_COD_EMPLEADO_seq";
       public       postgres    false    4    280            8           0    0 "   EMPLEADO_OPERARIO_COD_EMPLEADO_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."EMPLEADO_OPERARIO_COD_EMPLEADO_seq" OWNED BY public."EMPLEADO_OPERARIO"."COD_EMPLEADO";
            public       postgres    false    278            �            1259    16542 	   ENSAMBLES    TABLE     �   CREATE TABLE public."ENSAMBLES" (
    "COD_ENSAMBLE" integer NOT NULL,
    "COD_CORTE" smallint NOT NULL,
    "FECHA" date NOT NULL,
    "ESTADO" character varying(10) NOT NULL
);
    DROP TABLE public."ENSAMBLES";
       public         postgres    false    4            9           0    0    COLUMN "ENSAMBLES"."COD_CORTE"    COMMENT     X   COMMENT ON COLUMN public."ENSAMBLES"."COD_CORTE" IS 'LLAVE FORANEA DE LA TABLA CORTES';
            public       postgres    false    236            $           1259    17202    ENSAMBLES_TRANSPORTE    TABLE     �   CREATE TABLE public."ENSAMBLES_TRANSPORTE" (
    "COD_ENSAMBLE" integer NOT NULL,
    "COD_TRANSPORTE" integer NOT NULL,
    "FECHA" date NOT NULL
);
 *   DROP TABLE public."ENSAMBLES_TRANSPORTE";
       public         postgres    false    4            "           1259    17198 %   ENSAMBLES_TRANSPORTE_COD_ENSAMBLE_seq    SEQUENCE     �   CREATE SEQUENCE public."ENSAMBLES_TRANSPORTE_COD_ENSAMBLE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."ENSAMBLES_TRANSPORTE_COD_ENSAMBLE_seq";
       public       postgres    false    4    292            :           0    0 %   ENSAMBLES_TRANSPORTE_COD_ENSAMBLE_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."ENSAMBLES_TRANSPORTE_COD_ENSAMBLE_seq" OWNED BY public."ENSAMBLES_TRANSPORTE"."COD_ENSAMBLE";
            public       postgres    false    290            #           1259    17200 '   ENSAMBLES_TRANSPORTE_COD_TRANSPORTE_seq    SEQUENCE     �   CREATE SEQUENCE public."ENSAMBLES_TRANSPORTE_COD_TRANSPORTE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."ENSAMBLES_TRANSPORTE_COD_TRANSPORTE_seq";
       public       postgres    false    4    292            ;           0    0 '   ENSAMBLES_TRANSPORTE_COD_TRANSPORTE_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."ENSAMBLES_TRANSPORTE_COD_TRANSPORTE_seq" OWNED BY public."ENSAMBLES_TRANSPORTE"."COD_TRANSPORTE";
            public       postgres    false    291            �            1259    16548    ENSAMBLE_COD_CORTE_seq    SEQUENCE     �   CREATE SEQUENCE public."ENSAMBLE_COD_CORTE_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."ENSAMBLE_COD_CORTE_seq";
       public       postgres    false    4    236            <           0    0    ENSAMBLE_COD_CORTE_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."ENSAMBLE_COD_CORTE_seq" OWNED BY public."ENSAMBLES"."COD_CORTE";
            public       postgres    false    237            �            1259    16550    ENSAMBLE_COD_ENSAMBLE_seq    SEQUENCE     �   CREATE SEQUENCE public."ENSAMBLE_COD_ENSAMBLE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."ENSAMBLE_COD_ENSAMBLE_seq";
       public       postgres    false    236    4            =           0    0    ENSAMBLE_COD_ENSAMBLE_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public."ENSAMBLE_COD_ENSAMBLE_seq" OWNED BY public."ENSAMBLES"."COD_ENSAMBLE";
            public       postgres    false    238            �            1259    16552 
   INVENTARIO    TABLE     �   CREATE TABLE public."INVENTARIO" (
    "COD_INVENTARIO" integer NOT NULL,
    "COD_PDTE_PRODUCCION" integer NOT NULL,
    "TIPO_MATERIAL" text NOT NULL,
    "ESTADO" character varying(7) NOT NULL,
    "TAMAÑO" numeric(10,1) NOT NULL
);
     DROP TABLE public."INVENTARIO";
       public         postgres    false    4            �            1259    16558    INVENTARIO_COD_INVENTARIO_seq    SEQUENCE     �   CREATE SEQUENCE public."INVENTARIO_COD_INVENTARIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."INVENTARIO_COD_INVENTARIO_seq";
       public       postgres    false    239    4            >           0    0    INVENTARIO_COD_INVENTARIO_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."INVENTARIO_COD_INVENTARIO_seq" OWNED BY public."INVENTARIO"."COD_INVENTARIO";
            public       postgres    false    240            �            1259    16560 "   INVENTARIO_COD_PDTE_PRODUCCION_seq    SEQUENCE     �   CREATE SEQUENCE public."INVENTARIO_COD_PDTE_PRODUCCION_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."INVENTARIO_COD_PDTE_PRODUCCION_seq";
       public       postgres    false    4    239            ?           0    0 "   INVENTARIO_COD_PDTE_PRODUCCION_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."INVENTARIO_COD_PDTE_PRODUCCION_seq" OWNED BY public."INVENTARIO"."COD_PDTE_PRODUCCION";
            public       postgres    false    241            �            1259    16564    INVENTARIO_PROVEEDORES    TABLE     �   CREATE TABLE public."INVENTARIO_PROVEEDORES" (
    "COD_INVENT_PROVEE" integer NOT NULL,
    "COD_PROVEEDOR" smallint NOT NULL,
    "COD_INVENTARIO" integer NOT NULL
);
 ,   DROP TABLE public."INVENTARIO_PROVEEDORES";
       public         postgres    false    4            @           0    0 3   COLUMN "INVENTARIO_PROVEEDORES"."COD_INVENT_PROVEE"    COMMENT     ~   COMMENT ON COLUMN public."INVENTARIO_PROVEEDORES"."COD_INVENT_PROVEE" IS 'LLAVE PRIMARIA DE LA TABLA INVENTARIO_PROVEEDORES';
            public       postgres    false    242            A           0    0 /   COLUMN "INVENTARIO_PROVEEDORES"."COD_PROVEEDOR"    COMMENT     l   COMMENT ON COLUMN public."INVENTARIO_PROVEEDORES"."COD_PROVEEDOR" IS 'LLAVE FORANEA DE LA TABLA PROVEEDOR';
            public       postgres    false    242            B           0    0 0   COLUMN "INVENTARIO_PROVEEDORES"."COD_INVENTARIO"    COMMENT     n   COMMENT ON COLUMN public."INVENTARIO_PROVEEDORES"."COD_INVENTARIO" IS 'LLAVE FORANEA DE LA TABLA INVENTARIO';
            public       postgres    false    242            �            1259    16567 )   INVENTARIO_PROVEEDORES_COD_INVENTARIO_seq    SEQUENCE     �   CREATE SEQUENCE public."INVENTARIO_PROVEEDORES_COD_INVENTARIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."INVENTARIO_PROVEEDORES_COD_INVENTARIO_seq";
       public       postgres    false    4    242            C           0    0 )   INVENTARIO_PROVEEDORES_COD_INVENTARIO_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."INVENTARIO_PROVEEDORES_COD_INVENTARIO_seq" OWNED BY public."INVENTARIO_PROVEEDORES"."COD_INVENTARIO";
            public       postgres    false    243            �            1259    16569 ,   INVENTARIO_PROVEEDORES_COD_INVENT_PROVEE_seq    SEQUENCE     �   CREATE SEQUENCE public."INVENTARIO_PROVEEDORES_COD_INVENT_PROVEE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."INVENTARIO_PROVEEDORES_COD_INVENT_PROVEE_seq";
       public       postgres    false    4    242            D           0    0 ,   INVENTARIO_PROVEEDORES_COD_INVENT_PROVEE_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."INVENTARIO_PROVEEDORES_COD_INVENT_PROVEE_seq" OWNED BY public."INVENTARIO_PROVEEDORES"."COD_INVENT_PROVEE";
            public       postgres    false    244            �            1259    16571 (   INVENTARIO_PROVEEDORES_COD_PROVEEDOR_seq    SEQUENCE     �   CREATE SEQUENCE public."INVENTARIO_PROVEEDORES_COD_PROVEEDOR_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."INVENTARIO_PROVEEDORES_COD_PROVEEDOR_seq";
       public       postgres    false    242    4            E           0    0 (   INVENTARIO_PROVEEDORES_COD_PROVEEDOR_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."INVENTARIO_PROVEEDORES_COD_PROVEEDOR_seq" OWNED BY public."INVENTARIO_PROVEEDORES"."COD_PROVEEDOR";
            public       postgres    false    245            �            1259    16573    MEDIDAS    TABLE     �   CREATE TABLE public."MEDIDAS" (
    "COD_MEDIDA" integer NOT NULL,
    "ALTO" numeric(5,1) NOT NULL,
    "ANCHO" numeric(5,1) NOT NULL,
    "COD_COTIZACION" integer NOT NULL
);
    DROP TABLE public."MEDIDAS";
       public         postgres    false    4            F           0    0    COLUMN "MEDIDAS"."COD_MEDIDA"    COMMENT     Y   COMMENT ON COLUMN public."MEDIDAS"."COD_MEDIDA" IS 'LLAVE PRIMARIA DE LA TABLA MEDIDAS';
            public       postgres    false    246            G           0    0 !   COLUMN "MEDIDAS"."COD_COTIZACION"    COMMENT     _   COMMENT ON COLUMN public."MEDIDAS"."COD_COTIZACION" IS 'LLAVE FORANEA DE LA TABLA COTIZACION';
            public       postgres    false    246            �            1259    16576    MEDIDAS_COD_COTIZACION_seq    SEQUENCE     �   CREATE SEQUENCE public."MEDIDAS_COD_COTIZACION_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."MEDIDAS_COD_COTIZACION_seq";
       public       postgres    false    4    246            H           0    0    MEDIDAS_COD_COTIZACION_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."MEDIDAS_COD_COTIZACION_seq" OWNED BY public."MEDIDAS"."COD_COTIZACION";
            public       postgres    false    247            �            1259    16578    MEDIDAS_COD_MEDIDA_seq    SEQUENCE     �   CREATE SEQUENCE public."MEDIDAS_COD_MEDIDA_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MEDIDAS_COD_MEDIDA_seq";
       public       postgres    false    4    246            I           0    0    MEDIDAS_COD_MEDIDA_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."MEDIDAS_COD_MEDIDA_seq" OWNED BY public."MEDIDAS"."COD_MEDIDA";
            public       postgres    false    248                       1259    17095    OPERARIO_TIPO_TEL    TABLE     �   CREATE TABLE public."OPERARIO_TIPO_TEL" (
    "COD_EMPLEADO_TIPO_TEL" smallint NOT NULL,
    "COD_EMPLEADO" smallint NOT NULL,
    "COD_TIPO_TELEFONO" smallint NOT NULL,
    "NUMERO" character varying NOT NULL
);
 '   DROP TABLE public."OPERARIO_TIPO_TEL";
       public         postgres    false    4                       1259    17091 !   OPERARIO_TIPO_TEL_COD_EMPEADO_seq    SEQUENCE     �   CREATE SEQUENCE public."OPERARIO_TIPO_TEL_COD_EMPEADO_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."OPERARIO_TIPO_TEL_COD_EMPEADO_seq";
       public       postgres    false    284    4            J           0    0 !   OPERARIO_TIPO_TEL_COD_EMPEADO_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE public."OPERARIO_TIPO_TEL_COD_EMPEADO_seq" OWNED BY public."OPERARIO_TIPO_TEL"."COD_EMPLEADO";
            public       postgres    false    282                       1259    17089 +   OPERARIO_TIPO_TEL_COD_EMPLEADO_TIPO_TEL_seq    SEQUENCE     �   CREATE SEQUENCE public."OPERARIO_TIPO_TEL_COD_EMPLEADO_TIPO_TEL_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."OPERARIO_TIPO_TEL_COD_EMPLEADO_TIPO_TEL_seq";
       public       postgres    false    284    4            K           0    0 +   OPERARIO_TIPO_TEL_COD_EMPLEADO_TIPO_TEL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."OPERARIO_TIPO_TEL_COD_EMPLEADO_TIPO_TEL_seq" OWNED BY public."OPERARIO_TIPO_TEL"."COD_EMPLEADO_TIPO_TEL";
            public       postgres    false    281                       1259    17093 '   OPERARIO_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE     �   CREATE SEQUENCE public."OPERARIO_TIPO_TEL_COD_TIPO_TELEFONO_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."OPERARIO_TIPO_TEL_COD_TIPO_TELEFONO_seq";
       public       postgres    false    284    4            L           0    0 '   OPERARIO_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."OPERARIO_TIPO_TEL_COD_TIPO_TELEFONO_seq" OWNED BY public."OPERARIO_TIPO_TEL"."COD_TIPO_TELEFONO";
            public       postgres    false    283            �            1259    16589    PAIS    TABLE     m   CREATE TABLE public."PAIS" (
    "COD_PAIS" integer NOT NULL,
    "PAIS" character varying(30)[] NOT NULL
);
    DROP TABLE public."PAIS";
       public         postgres    false    4            �            1259    16595    PAIS_COD_PAIS_seq    SEQUENCE     �   CREATE SEQUENCE public."PAIS_COD_PAIS_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."PAIS_COD_PAIS_seq";
       public       postgres    false    4    249            M           0    0    PAIS_COD_PAIS_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."PAIS_COD_PAIS_seq" OWNED BY public."PAIS"."COD_PAIS";
            public       postgres    false    250            �            1259    16597    PDTE_PRODUCCION    TABLE     �   CREATE TABLE public."PDTE_PRODUCCION" (
    "COD_PDTE_PRODUCCION" integer NOT NULL,
    "COD_PEDIDO" integer NOT NULL,
    "FECHA_APROBADO" date NOT NULL
);
 %   DROP TABLE public."PDTE_PRODUCCION";
       public         postgres    false    4            �            1259    16600 '   PDTE_PRODUCCION_COD_PDTE_PRODUCCION_seq    SEQUENCE     �   CREATE SEQUENCE public."PDTE_PRODUCCION_COD_PDTE_PRODUCCION_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."PDTE_PRODUCCION_COD_PDTE_PRODUCCION_seq";
       public       postgres    false    251    4            N           0    0 '   PDTE_PRODUCCION_COD_PDTE_PRODUCCION_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."PDTE_PRODUCCION_COD_PDTE_PRODUCCION_seq" OWNED BY public."PDTE_PRODUCCION"."COD_PDTE_PRODUCCION";
            public       postgres    false    252            �            1259    16602    PDTE_PRODUCCION_COD_PEDIDO_seq    SEQUENCE     �   CREATE SEQUENCE public."PDTE_PRODUCCION_COD_PEDIDO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."PDTE_PRODUCCION_COD_PEDIDO_seq";
       public       postgres    false    4    251            O           0    0    PDTE_PRODUCCION_COD_PEDIDO_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."PDTE_PRODUCCION_COD_PEDIDO_seq" OWNED BY public."PDTE_PRODUCCION"."COD_PEDIDO";
            public       postgres    false    253            �            1259    16604    PEDIDOS    TABLE     �   CREATE TABLE public."PEDIDOS" (
    "COD_PEDIDO" integer NOT NULL,
    "COD_COTIZACION" integer NOT NULL,
    "ESTADO" boolean NOT NULL
);
    DROP TABLE public."PEDIDOS";
       public         postgres    false    4            P           0    0    COLUMN "PEDIDOS"."COD_PEDIDO"    COMMENT     Y   COMMENT ON COLUMN public."PEDIDOS"."COD_PEDIDO" IS 'LLAVE PRIMARIA DE LA TABLA PEDIDOS';
            public       postgres    false    254            Q           0    0 !   COLUMN "PEDIDOS"."COD_COTIZACION"    COMMENT     _   COMMENT ON COLUMN public."PEDIDOS"."COD_COTIZACION" IS 'LLAVE FORANEA DE LA TABLA COTIZACION';
            public       postgres    false    254            �            1259    16607    PEDIDOS_COD_COTIZACION_seq    SEQUENCE     �   CREATE SEQUENCE public."PEDIDOS_COD_COTIZACION_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."PEDIDOS_COD_COTIZACION_seq";
       public       postgres    false    254    4            R           0    0    PEDIDOS_COD_COTIZACION_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."PEDIDOS_COD_COTIZACION_seq" OWNED BY public."PEDIDOS"."COD_COTIZACION";
            public       postgres    false    255                        1259    16609    PEDIDOS_COD_PEDIDO_seq    SEQUENCE     �   CREATE SEQUENCE public."PEDIDOS_COD_PEDIDO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."PEDIDOS_COD_PEDIDO_seq";
       public       postgres    false    254    4            S           0    0    PEDIDOS_COD_PEDIDO_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."PEDIDOS_COD_PEDIDO_seq" OWNED BY public."PEDIDOS"."COD_PEDIDO";
            public       postgres    false    256                       1259    16611    PROVEEDORES    TABLE       CREATE TABLE public."PROVEEDORES" (
    "COD_PROVEEDOR" smallint NOT NULL,
    "COD_BARRIO" integer NOT NULL,
    "NOMBRE" character varying(30) NOT NULL,
    "NIT" character varying(12) NOT NULL,
    "DESCRIPCION" text NOT NULL,
    "DIRECCION" character varying(50) NOT NULL
);
 !   DROP TABLE public."PROVEEDORES";
       public         postgres    false    4            T           0    0 !   COLUMN "PROVEEDORES"."COD_BARRIO"    COMMENT     [   COMMENT ON COLUMN public."PROVEEDORES"."COD_BARRIO" IS 'LLAVE FORANEA DE LA TABLA BARRIO';
            public       postgres    false    257                       1259    16617    PROVEEDORES_COD_BARRIO_seq    SEQUENCE     �   CREATE SEQUENCE public."PROVEEDORES_COD_BARRIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."PROVEEDORES_COD_BARRIO_seq";
       public       postgres    false    4    257            U           0    0    PROVEEDORES_COD_BARRIO_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."PROVEEDORES_COD_BARRIO_seq" OWNED BY public."PROVEEDORES"."COD_BARRIO";
            public       postgres    false    258                       1259    16619    PROVEEDORES_COD_PROVEEDOR_seq    SEQUENCE     �   CREATE SEQUENCE public."PROVEEDORES_COD_PROVEEDOR_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."PROVEEDORES_COD_PROVEEDOR_seq";
       public       postgres    false    4    257            V           0    0    PROVEEDORES_COD_PROVEEDOR_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."PROVEEDORES_COD_PROVEEDOR_seq" OWNED BY public."PROVEEDORES"."COD_PROVEEDOR";
            public       postgres    false    259                       1259    16621    PROVEEDOR_TIPO_TEL    TABLE     �   CREATE TABLE public."PROVEEDOR_TIPO_TEL" (
    "COD_PROVEEDOR_TIPO_TEL" integer NOT NULL,
    "COD_TIPO_TELEFONO" integer NOT NULL,
    "COD_PROVEEDOR" smallint NOT NULL,
    "NUMERO" character varying(12) NOT NULL
);
 (   DROP TABLE public."PROVEEDOR_TIPO_TEL";
       public         postgres    false    4            W           0    0 /   COLUMN "PROVEEDOR_TIPO_TEL"."COD_TIPO_TELEFONO"    COMMENT     q   COMMENT ON COLUMN public."PROVEEDOR_TIPO_TEL"."COD_TIPO_TELEFONO" IS 'LLAVE FORANEA DE LA TABLA  TIPO_TELEFONO';
            public       postgres    false    260            X           0    0 +   COLUMN "PROVEEDOR_TIPO_TEL"."COD_PROVEEDOR"    COMMENT     h   COMMENT ON COLUMN public."PROVEEDOR_TIPO_TEL"."COD_PROVEEDOR" IS 'LLAVE FORANEA DE LA TABLA PROVEEDOR';
            public       postgres    false    260                       1259    16624 -   PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_TIPO_TEL_seq    SEQUENCE     �   CREATE SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_TIPO_TEL_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_TIPO_TEL_seq";
       public       postgres    false    260    4            Y           0    0 -   PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_TIPO_TEL_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_TIPO_TEL_seq" OWNED BY public."PROVEEDOR_TIPO_TEL"."COD_PROVEEDOR_TIPO_TEL";
            public       postgres    false    261                       1259    16626 $   PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_seq    SEQUENCE     �   CREATE SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_seq";
       public       postgres    false    4    260            Z           0    0 $   PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_seq" OWNED BY public."PROVEEDOR_TIPO_TEL"."COD_PROVEEDOR";
            public       postgres    false    262                       1259    16628 (   PROVEEDOR_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE     �   CREATE SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_TIPO_TELEFONO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_TIPO_TELEFONO_seq";
       public       postgres    false    4    260            [           0    0 (   PROVEEDOR_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."PROVEEDOR_TIPO_TEL_COD_TIPO_TELEFONO_seq" OWNED BY public."PROVEEDOR_TIPO_TEL"."COD_TIPO_TELEFONO";
            public       postgres    false    263                       1259    16630 	   SOBRANTES    TABLE     �   CREATE TABLE public."SOBRANTES" (
    "COD_SOBRANTE" integer NOT NULL,
    "COD_CORTE" smallint NOT NULL,
    "TAMAÑO" character varying(5),
    "COD_INVENTARIO" integer NOT NULL
);
    DROP TABLE public."SOBRANTES";
       public         postgres    false    4            \           0    0    COLUMN "SOBRANTES"."COD_CORTE"    COMMENT     X   COMMENT ON COLUMN public."SOBRANTES"."COD_CORTE" IS 'LLAVE FORANEA DE LA TABLA CORTES';
            public       postgres    false    264            	           1259    16633    SOBRANTES_COD_CORTE_seq    SEQUENCE     �   CREATE SEQUENCE public."SOBRANTES_COD_CORTE_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SOBRANTES_COD_CORTE_seq";
       public       postgres    false    4    264            ]           0    0    SOBRANTES_COD_CORTE_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."SOBRANTES_COD_CORTE_seq" OWNED BY public."SOBRANTES"."COD_CORTE";
            public       postgres    false    265            !           1259    17171    SOBRANTES_COD_INVENTARIO_seq    SEQUENCE     �   CREATE SEQUENCE public."SOBRANTES_COD_INVENTARIO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."SOBRANTES_COD_INVENTARIO_seq";
       public       postgres    false    4    264            ^           0    0    SOBRANTES_COD_INVENTARIO_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."SOBRANTES_COD_INVENTARIO_seq" OWNED BY public."SOBRANTES"."COD_INVENTARIO";
            public       postgres    false    289            
           1259    16635    SOBRANTES_COD_SOBRANTE_seq    SEQUENCE     �   CREATE SEQUENCE public."SOBRANTES_COD_SOBRANTE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."SOBRANTES_COD_SOBRANTE_seq";
       public       postgres    false    264    4            _           0    0    SOBRANTES_COD_SOBRANTE_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."SOBRANTES_COD_SOBRANTE_seq" OWNED BY public."SOBRANTES"."COD_SOBRANTE";
            public       postgres    false    266                       1259    16637    TIPO_PRODUCTO    TABLE     �   CREATE TABLE public."TIPO_PRODUCTO" (
    "COD_TIPO_PRODUCTO" smallint NOT NULL,
    "TIPO_PRODUCTO" character varying(10) NOT NULL,
    "COD_PDTE_PRODUCCION" integer NOT NULL
);
 #   DROP TABLE public."TIPO_PRODUCTO";
       public         postgres    false    4            `           0    0 *   COLUMN "TIPO_PRODUCTO"."COD_TIPO_PRODUCTO"    COMMENT     l   COMMENT ON COLUMN public."TIPO_PRODUCTO"."COD_TIPO_PRODUCTO" IS 'LLAVE PRIMARIA DE LA TABLA TIPO_PRODUCTO';
            public       postgres    false    267            a           0    0 ,   COLUMN "TIPO_PRODUCTO"."COD_PDTE_PRODUCCION"    COMMENT     o   COMMENT ON COLUMN public."TIPO_PRODUCTO"."COD_PDTE_PRODUCCION" IS 'LLAVE FORANEA DE LA TBALA PDTE_PRODUCCION';
            public       postgres    false    267                       1259    16640 %   TIPO_PRODUCTO_COD_PDTE_PRODUCCION_seq    SEQUENCE     �   CREATE SEQUENCE public."TIPO_PRODUCTO_COD_PDTE_PRODUCCION_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."TIPO_PRODUCTO_COD_PDTE_PRODUCCION_seq";
       public       postgres    false    267    4            b           0    0 %   TIPO_PRODUCTO_COD_PDTE_PRODUCCION_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."TIPO_PRODUCTO_COD_PDTE_PRODUCCION_seq" OWNED BY public."TIPO_PRODUCTO"."COD_PDTE_PRODUCCION";
            public       postgres    false    268                       1259    16642 #   TIPO_PRODUCTO_COD_TIPO_PRODUCTO_seq    SEQUENCE     �   CREATE SEQUENCE public."TIPO_PRODUCTO_COD_TIPO_PRODUCTO_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."TIPO_PRODUCTO_COD_TIPO_PRODUCTO_seq";
       public       postgres    false    267    4            c           0    0 #   TIPO_PRODUCTO_COD_TIPO_PRODUCTO_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."TIPO_PRODUCTO_COD_TIPO_PRODUCTO_seq" OWNED BY public."TIPO_PRODUCTO"."COD_TIPO_PRODUCTO";
            public       postgres    false    269                       1259    16644    TIPO_TELEFONO    TABLE     �   CREATE TABLE public."TIPO_TELEFONO" (
    "COD_TIPO_TELEFONO" integer NOT NULL,
    "TIPO_TELEFONO" character varying(5)[] NOT NULL,
    "COD_PAIS" integer NOT NULL
);
 #   DROP TABLE public."TIPO_TELEFONO";
       public         postgres    false    4            d           0    0 !   COLUMN "TIPO_TELEFONO"."COD_PAIS"    COMMENT     Y   COMMENT ON COLUMN public."TIPO_TELEFONO"."COD_PAIS" IS 'LLAVE FORANEA DE LA TABLA PAIS';
            public       postgres    false    270                       1259    16650    TIPO_TELEFONO_COD_PAIS_seq    SEQUENCE     �   CREATE SEQUENCE public."TIPO_TELEFONO_COD_PAIS_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."TIPO_TELEFONO_COD_PAIS_seq";
       public       postgres    false    270    4            e           0    0    TIPO_TELEFONO_COD_PAIS_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."TIPO_TELEFONO_COD_PAIS_seq" OWNED BY public."TIPO_TELEFONO"."COD_PAIS";
            public       postgres    false    271                       1259    16652 #   TIPO_TELEFONO_COD_TIPO_TELEFONO_seq    SEQUENCE     �   CREATE SEQUENCE public."TIPO_TELEFONO_COD_TIPO_TELEFONO_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."TIPO_TELEFONO_COD_TIPO_TELEFONO_seq";
       public       postgres    false    4    270            f           0    0 #   TIPO_TELEFONO_COD_TIPO_TELEFONO_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."TIPO_TELEFONO_COD_TIPO_TELEFONO_seq" OWNED BY public."TIPO_TELEFONO"."COD_TIPO_TELEFONO";
            public       postgres    false    272                       1259    16654    TRANSPORTES    TABLE     �   CREATE TABLE public."TRANSPORTES" (
    "COD_TRANSPORTE" integer NOT NULL,
    "COD_CONDUCTOR" smallint NOT NULL,
    "PLACA_VEHICULO" character varying(10) NOT NULL
);
 !   DROP TABLE public."TRANSPORTES";
       public         postgres    false    4            g           0    0 $   COLUMN "TRANSPORTES"."COD_CONDUCTOR"    COMMENT     c   COMMENT ON COLUMN public."TRANSPORTES"."COD_CONDUCTOR" IS 'LLAVE FORANEA DE LA TABLA CONDUCTORES';
            public       postgres    false    273                       1259    16657    TRANSPORTE_COD_CONDUCTOR_seq    SEQUENCE     �   CREATE SEQUENCE public."TRANSPORTE_COD_CONDUCTOR_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."TRANSPORTE_COD_CONDUCTOR_seq";
       public       postgres    false    4    273            h           0    0    TRANSPORTE_COD_CONDUCTOR_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public."TRANSPORTE_COD_CONDUCTOR_seq" OWNED BY public."TRANSPORTES"."COD_CONDUCTOR";
            public       postgres    false    274                       1259    16661    TRANSPORTE_COD_TRANSPORTE_seq    SEQUENCE     �   CREATE SEQUENCE public."TRANSPORTE_COD_TRANSPORTE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."TRANSPORTE_COD_TRANSPORTE_seq";
       public       postgres    false    4    273            i           0    0    TRANSPORTE_COD_TRANSPORTE_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public."TRANSPORTE_COD_TRANSPORTE_seq" OWNED BY public."TRANSPORTES"."COD_TRANSPORTE";
            public       postgres    false    275            r           2604    16663    BARRIO COD_BARRIO    DEFAULT     |   ALTER TABLE ONLY public."BARRIO" ALTER COLUMN "COD_BARRIO" SET DEFAULT nextval('public."BARRIO_COD_BARRIO_seq"'::regclass);
 D   ALTER TABLE public."BARRIO" ALTER COLUMN "COD_BARRIO" DROP DEFAULT;
       public       postgres    false    198    197            �           2604    17157    BARRIO_CLIENTES COD_BARRIO    DEFAULT     �   ALTER TABLE ONLY public."BARRIO_CLIENTES" ALTER COLUMN "COD_BARRIO" SET DEFAULT nextval('public."BARRIO_CLIENTES_COD_BARRIO_seq"'::regclass);
 M   ALTER TABLE public."BARRIO_CLIENTES" ALTER COLUMN "COD_BARRIO" DROP DEFAULT;
       public       postgres    false    288    286    288            �           2604    17158    BARRIO_CLIENTES COD_CLIENTE    DEFAULT     �   ALTER TABLE ONLY public."BARRIO_CLIENTES" ALTER COLUMN "COD_CLIENTE" SET DEFAULT nextval('public."BARRIO_CLIENTES_COD_CLIENTE_seq"'::regclass);
 N   ALTER TABLE public."BARRIO_CLIENTES" ALTER COLUMN "COD_CLIENTE" DROP DEFAULT;
       public       postgres    false    287    288    288            t           2604    16664    CATALOGO COD_CATALOGO    DEFAULT     �   ALTER TABLE ONLY public."CATALOGO" ALTER COLUMN "COD_CATALOGO" SET DEFAULT nextval('public."CATALOGO_COD_CATLOGO_seq"'::regclass);
 H   ALTER TABLE public."CATALOGO" ALTER COLUMN "COD_CATALOGO" DROP DEFAULT;
       public       postgres    false    200    199            u           2604    16665    CATALOGO COD_COTIZACION    DEFAULT     �   ALTER TABLE ONLY public."CATALOGO" ALTER COLUMN "COD_COTIZACION" SET DEFAULT nextval('public."CATALOGO_COD_COTIZACION_seq"'::regclass);
 J   ALTER TABLE public."CATALOGO" ALTER COLUMN "COD_COTIZACION" DROP DEFAULT;
       public       postgres    false    201    199            v           2604    16666    CIUDAD COD_CIUDAD    DEFAULT     |   ALTER TABLE ONLY public."CIUDAD" ALTER COLUMN "COD_CIUDAD" SET DEFAULT nextval('public."CIUDAD_COD_CIUDAD_seq"'::regclass);
 D   ALTER TABLE public."CIUDAD" ALTER COLUMN "COD_CIUDAD" DROP DEFAULT;
       public       postgres    false    203    202            x           2604    16667    CLIENTES COD_CLIENTE    DEFAULT     �   ALTER TABLE ONLY public."CLIENTES" ALTER COLUMN "COD_CLIENTE" SET DEFAULT nextval('public."CLIENTES_COD_CLIENTE_seq"'::regclass);
 G   ALTER TABLE public."CLIENTES" ALTER COLUMN "COD_CLIENTE" DROP DEFAULT;
       public       postgres    false    206    204            y           2604    16668    CLIENTES COD_BARRIO    DEFAULT     �   ALTER TABLE ONLY public."CLIENTES" ALTER COLUMN "COD_BARRIO" SET DEFAULT nextval('public."CLIENTES_COD_BARRIO_seq"'::regclass);
 F   ALTER TABLE public."CLIENTES" ALTER COLUMN "COD_BARRIO" DROP DEFAULT;
       public       postgres    false    205    204            z           2604    16670 /   CLIENTE_TIPO_TELEFONO COD_CLIENTE_TIPO_TELEFONO    DEFAULT     �   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO" ALTER COLUMN "COD_CLIENTE_TIPO_TELEFONO" SET DEFAULT nextval('public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_TIPO_TELEFONO_seq"'::regclass);
 b   ALTER TABLE public."CLIENTE_TIPO_TELEFONO" ALTER COLUMN "COD_CLIENTE_TIPO_TELEFONO" DROP DEFAULT;
       public       postgres    false    208    207            {           2604    16671 !   CLIENTE_TIPO_TELEFONO COD_CLIENTE    DEFAULT     �   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO" ALTER COLUMN "COD_CLIENTE" SET DEFAULT nextval('public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_seq"'::regclass);
 T   ALTER TABLE public."CLIENTE_TIPO_TELEFONO" ALTER COLUMN "COD_CLIENTE" DROP DEFAULT;
       public       postgres    false    209    207            |           2604    16672 '   CLIENTE_TIPO_TELEFONO COD_TIPO_TELEFONO    DEFAULT     �   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO" ALTER COLUMN "COD_TIPO_TELEFONO" SET DEFAULT nextval('public."CLIENTE_TIPO_TELEFONO_COD_TIPO_TELEFONO_seq"'::regclass);
 Z   ALTER TABLE public."CLIENTE_TIPO_TELEFONO" ALTER COLUMN "COD_TIPO_TELEFONO" DROP DEFAULT;
       public       postgres    false    210    207            }           2604    16673    CONDUCTORES COD_CONDUCTOR    DEFAULT     �   ALTER TABLE ONLY public."CONDUCTORES" ALTER COLUMN "COD_CONDUCTOR" SET DEFAULT nextval('public."CONDUCTORES_COD_CONDUCTOR_seq"'::regclass);
 L   ALTER TABLE public."CONDUCTORES" ALTER COLUMN "COD_CONDUCTOR" DROP DEFAULT;
       public       postgres    false    212    211            ~           2604    17128    CONDUCTORES COD_BARRIO    DEFAULT     �   ALTER TABLE ONLY public."CONDUCTORES" ALTER COLUMN "COD_BARRIO" SET DEFAULT nextval('public."CONDUCTORES_COD_BARRIO_seq"'::regclass);
 I   ALTER TABLE public."CONDUCTORES" ALTER COLUMN "COD_BARRIO" DROP DEFAULT;
       public       postgres    false    285    211                       2604    16674 )   CONDUCTOR_TIPO_TEL COD_CONDUCTOR_TIPO_TEL    DEFAULT     �   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL" ALTER COLUMN "COD_CONDUCTOR_TIPO_TEL" SET DEFAULT nextval('public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_TIPO_TEL_seq"'::regclass);
 \   ALTER TABLE public."CONDUCTOR_TIPO_TEL" ALTER COLUMN "COD_CONDUCTOR_TIPO_TEL" DROP DEFAULT;
       public       postgres    false    214    213            �           2604    16675     CONDUCTOR_TIPO_TEL COD_CONDUCTOR    DEFAULT     �   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL" ALTER COLUMN "COD_CONDUCTOR" SET DEFAULT nextval('public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_seq"'::regclass);
 S   ALTER TABLE public."CONDUCTOR_TIPO_TEL" ALTER COLUMN "COD_CONDUCTOR" DROP DEFAULT;
       public       postgres    false    215    213            �           2604    16676 $   CONDUCTOR_TIPO_TEL COD_TIPO_TELEFONO    DEFAULT     �   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL" ALTER COLUMN "COD_TIPO_TELEFONO" SET DEFAULT nextval('public."CONDUCTOR_TIPO_TEL_COD_TIPO_TELEFONO_seq"'::regclass);
 W   ALTER TABLE public."CONDUCTOR_TIPO_TEL" ALTER COLUMN "COD_TIPO_TELEFONO" DROP DEFAULT;
       public       postgres    false    216    213            �           2604    16677    CORTES COD_CORTE    DEFAULT     z   ALTER TABLE ONLY public."CORTES" ALTER COLUMN "COD_CORTE" SET DEFAULT nextval('public."CORTES_COD_CORTE_seq"'::regclass);
 C   ALTER TABLE public."CORTES" ALTER COLUMN "COD_CORTE" DROP DEFAULT;
       public       postgres    false    218    217            �           2604    16678    CORTES COD_DESCUENTO    DEFAULT     �   ALTER TABLE ONLY public."CORTES" ALTER COLUMN "COD_DESCUENTO" SET DEFAULT nextval('public."CORTES_COD_DESCUENTO_seq"'::regclass);
 G   ALTER TABLE public."CORTES" ALTER COLUMN "COD_DESCUENTO" DROP DEFAULT;
       public       postgres    false    219    217            �           2604    16679    CORTES COD_TIPO_PRODUCTO    DEFAULT     �   ALTER TABLE ONLY public."CORTES" ALTER COLUMN "COD_TIPO_PRODUCTO" SET DEFAULT nextval('public."CORTES_COD_TIPO_PRODUCTO_seq"'::regclass);
 K   ALTER TABLE public."CORTES" ALTER COLUMN "COD_TIPO_PRODUCTO" DROP DEFAULT;
       public       postgres    false    220    217            �           2604    16680    COTIZACIONES COD_COTIZACION    DEFAULT     �   ALTER TABLE ONLY public."COTIZACIONES" ALTER COLUMN "COD_COTIZACION" SET DEFAULT nextval('public."COTIZACION_COD_COTIZACION_seq"'::regclass);
 N   ALTER TABLE public."COTIZACIONES" ALTER COLUMN "COD_COTIZACION" DROP DEFAULT;
       public       postgres    false    223    221            �           2604    16681    COTIZACIONES COD_CLIENTE    DEFAULT     �   ALTER TABLE ONLY public."COTIZACIONES" ALTER COLUMN "COD_CLIENTE" SET DEFAULT nextval('public."COTIZACION_COD_CLIENTE_seq"'::regclass);
 K   ALTER TABLE public."COTIZACIONES" ALTER COLUMN "COD_CLIENTE" DROP DEFAULT;
       public       postgres    false    222    221            �           2604    16682 !   COTIZACION_INVENTARIO COD_COTINVE    DEFAULT     �   ALTER TABLE ONLY public."COTIZACION_INVENTARIO" ALTER COLUMN "COD_COTINVE" SET DEFAULT nextval('public."COTIZACION_INVENTARIO_COD_COTINVE_seq"'::regclass);
 T   ALTER TABLE public."COTIZACION_INVENTARIO" ALTER COLUMN "COD_COTINVE" DROP DEFAULT;
       public       postgres    false    225    224            �           2604    16683 $   COTIZACION_INVENTARIO COD_COTIZACION    DEFAULT     �   ALTER TABLE ONLY public."COTIZACION_INVENTARIO" ALTER COLUMN "COD_COTIZACION" SET DEFAULT nextval('public."COTIZACION_INVENTARIO_COD_COTIZACION_seq"'::regclass);
 W   ALTER TABLE public."COTIZACION_INVENTARIO" ALTER COLUMN "COD_COTIZACION" DROP DEFAULT;
       public       postgres    false    226    224            �           2604    16684 $   COTIZACION_INVENTARIO COD_INVENTARIO    DEFAULT     �   ALTER TABLE ONLY public."COTIZACION_INVENTARIO" ALTER COLUMN "COD_INVENTARIO" SET DEFAULT nextval('public."COTIZACION_INVENTARIO_COD_INVENTARIO_seq"'::regclass);
 W   ALTER TABLE public."COTIZACION_INVENTARIO" ALTER COLUMN "COD_INVENTARIO" DROP DEFAULT;
       public       postgres    false    227    224            �           2604    16685    DEPARTAMENTO COD_DEPARTAMENTO    DEFAULT     �   ALTER TABLE ONLY public."DEPARTAMENTO" ALTER COLUMN "COD_DEPARTAMENTO" SET DEFAULT nextval('public."DEPARTAMENTO_COD_DEPARTAMENTO_seq"'::regclass);
 P   ALTER TABLE public."DEPARTAMENTO" ALTER COLUMN "COD_DEPARTAMENTO" DROP DEFAULT;
       public       postgres    false    229    228            �           2604    16686    DEPARTAMENTO COD_PAIS    DEFAULT     �   ALTER TABLE ONLY public."DEPARTAMENTO" ALTER COLUMN "COD_PAIS" SET DEFAULT nextval('public."DEPARTAMENTO_COD_PAIS_seq"'::regclass);
 H   ALTER TABLE public."DEPARTAMENTO" ALTER COLUMN "COD_PAIS" DROP DEFAULT;
       public       postgres    false    230    228            �           2604    16687    DESCUENTOS COD_DESCUENTO    DEFAULT     �   ALTER TABLE ONLY public."DESCUENTOS" ALTER COLUMN "COD_DESCUENTO" SET DEFAULT nextval('public."DESCUENTO_COD_DESCUENTO_seq"'::regclass);
 K   ALTER TABLE public."DESCUENTOS" ALTER COLUMN "COD_DESCUENTO" DROP DEFAULT;
       public       postgres    false    232    231            �           2604    16688    EMPLEADOS COD_EMPLEADO    DEFAULT     �   ALTER TABLE ONLY public."EMPLEADOS" ALTER COLUMN "COD_EMPLEADO" SET DEFAULT nextval('public."EMPLEADOS_COD_EMPLEADO_seq"'::regclass);
 I   ALTER TABLE public."EMPLEADOS" ALTER COLUMN "COD_EMPLEADO" DROP DEFAULT;
       public       postgres    false    235    233            �           2604    16689    EMPLEADOS COD_BARRIO    DEFAULT     �   ALTER TABLE ONLY public."EMPLEADOS" ALTER COLUMN "COD_BARRIO" SET DEFAULT nextval('public."EMPLEADOS_COD_BARRIO_seq"'::regclass);
 G   ALTER TABLE public."EMPLEADOS" ALTER COLUMN "COD_BARRIO" DROP DEFAULT;
       public       postgres    false    234    233            �           2604    17064    EMPLEADO_OFICINA COD_EMPLEADO    DEFAULT     �   ALTER TABLE ONLY public."EMPLEADO_OFICINA" ALTER COLUMN "COD_EMPLEADO" SET DEFAULT nextval('public."EMPLEADO_OFICINA_COD_EMPLEADO_seq"'::regclass);
 P   ALTER TABLE public."EMPLEADO_OFICINA" ALTER COLUMN "COD_EMPLEADO" DROP DEFAULT;
       public       postgres    false    276    277    277            �           2604    17079    EMPLEADO_OPERARIO COD_EMPLEADO    DEFAULT     �   ALTER TABLE ONLY public."EMPLEADO_OPERARIO" ALTER COLUMN "COD_EMPLEADO" SET DEFAULT nextval('public."EMPLEADO_OPERARIO_COD_EMPLEADO_seq"'::regclass);
 Q   ALTER TABLE public."EMPLEADO_OPERARIO" ALTER COLUMN "COD_EMPLEADO" DROP DEFAULT;
       public       postgres    false    278    280    280            �           2604    17080 '   EMPLEADO_OPERARIO COD_EMPLEADO_OPERARIO    DEFAULT     �   ALTER TABLE ONLY public."EMPLEADO_OPERARIO" ALTER COLUMN "COD_EMPLEADO_OPERARIO" SET DEFAULT nextval('public."EMPLEADO_OPERARIO_COD_EMPLEADO_OPERARIO_seq"'::regclass);
 Z   ALTER TABLE public."EMPLEADO_OPERARIO" ALTER COLUMN "COD_EMPLEADO_OPERARIO" DROP DEFAULT;
       public       postgres    false    279    280    280            �           2604    16690    ENSAMBLES COD_ENSAMBLE    DEFAULT     �   ALTER TABLE ONLY public."ENSAMBLES" ALTER COLUMN "COD_ENSAMBLE" SET DEFAULT nextval('public."ENSAMBLE_COD_ENSAMBLE_seq"'::regclass);
 I   ALTER TABLE public."ENSAMBLES" ALTER COLUMN "COD_ENSAMBLE" DROP DEFAULT;
       public       postgres    false    238    236            �           2604    16691    ENSAMBLES COD_CORTE    DEFAULT        ALTER TABLE ONLY public."ENSAMBLES" ALTER COLUMN "COD_CORTE" SET DEFAULT nextval('public."ENSAMBLE_COD_CORTE_seq"'::regclass);
 F   ALTER TABLE public."ENSAMBLES" ALTER COLUMN "COD_CORTE" DROP DEFAULT;
       public       postgres    false    237    236            �           2604    17205 !   ENSAMBLES_TRANSPORTE COD_ENSAMBLE    DEFAULT     �   ALTER TABLE ONLY public."ENSAMBLES_TRANSPORTE" ALTER COLUMN "COD_ENSAMBLE" SET DEFAULT nextval('public."ENSAMBLES_TRANSPORTE_COD_ENSAMBLE_seq"'::regclass);
 T   ALTER TABLE public."ENSAMBLES_TRANSPORTE" ALTER COLUMN "COD_ENSAMBLE" DROP DEFAULT;
       public       postgres    false    292    290    292            �           2604    17206 #   ENSAMBLES_TRANSPORTE COD_TRANSPORTE    DEFAULT     �   ALTER TABLE ONLY public."ENSAMBLES_TRANSPORTE" ALTER COLUMN "COD_TRANSPORTE" SET DEFAULT nextval('public."ENSAMBLES_TRANSPORTE_COD_TRANSPORTE_seq"'::regclass);
 V   ALTER TABLE public."ENSAMBLES_TRANSPORTE" ALTER COLUMN "COD_TRANSPORTE" DROP DEFAULT;
       public       postgres    false    291    292    292            �           2604    16692    INVENTARIO COD_INVENTARIO    DEFAULT     �   ALTER TABLE ONLY public."INVENTARIO" ALTER COLUMN "COD_INVENTARIO" SET DEFAULT nextval('public."INVENTARIO_COD_INVENTARIO_seq"'::regclass);
 L   ALTER TABLE public."INVENTARIO" ALTER COLUMN "COD_INVENTARIO" DROP DEFAULT;
       public       postgres    false    240    239            �           2604    16694    INVENTARIO COD_PDTE_PRODUCCION    DEFAULT     �   ALTER TABLE ONLY public."INVENTARIO" ALTER COLUMN "COD_PDTE_PRODUCCION" SET DEFAULT nextval('public."INVENTARIO_COD_PDTE_PRODUCCION_seq"'::regclass);
 Q   ALTER TABLE public."INVENTARIO" ALTER COLUMN "COD_PDTE_PRODUCCION" DROP DEFAULT;
       public       postgres    false    241    239            �           2604    16695 (   INVENTARIO_PROVEEDORES COD_INVENT_PROVEE    DEFAULT     �   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES" ALTER COLUMN "COD_INVENT_PROVEE" SET DEFAULT nextval('public."INVENTARIO_PROVEEDORES_COD_INVENT_PROVEE_seq"'::regclass);
 [   ALTER TABLE public."INVENTARIO_PROVEEDORES" ALTER COLUMN "COD_INVENT_PROVEE" DROP DEFAULT;
       public       postgres    false    244    242            �           2604    16696 $   INVENTARIO_PROVEEDORES COD_PROVEEDOR    DEFAULT     �   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES" ALTER COLUMN "COD_PROVEEDOR" SET DEFAULT nextval('public."INVENTARIO_PROVEEDORES_COD_PROVEEDOR_seq"'::regclass);
 W   ALTER TABLE public."INVENTARIO_PROVEEDORES" ALTER COLUMN "COD_PROVEEDOR" DROP DEFAULT;
       public       postgres    false    245    242            �           2604    16697 %   INVENTARIO_PROVEEDORES COD_INVENTARIO    DEFAULT     �   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES" ALTER COLUMN "COD_INVENTARIO" SET DEFAULT nextval('public."INVENTARIO_PROVEEDORES_COD_INVENTARIO_seq"'::regclass);
 X   ALTER TABLE public."INVENTARIO_PROVEEDORES" ALTER COLUMN "COD_INVENTARIO" DROP DEFAULT;
       public       postgres    false    243    242            �           2604    16698    MEDIDAS COD_MEDIDA    DEFAULT     ~   ALTER TABLE ONLY public."MEDIDAS" ALTER COLUMN "COD_MEDIDA" SET DEFAULT nextval('public."MEDIDAS_COD_MEDIDA_seq"'::regclass);
 E   ALTER TABLE public."MEDIDAS" ALTER COLUMN "COD_MEDIDA" DROP DEFAULT;
       public       postgres    false    248    246            �           2604    16699    MEDIDAS COD_COTIZACION    DEFAULT     �   ALTER TABLE ONLY public."MEDIDAS" ALTER COLUMN "COD_COTIZACION" SET DEFAULT nextval('public."MEDIDAS_COD_COTIZACION_seq"'::regclass);
 I   ALTER TABLE public."MEDIDAS" ALTER COLUMN "COD_COTIZACION" DROP DEFAULT;
       public       postgres    false    247    246            �           2604    17098 '   OPERARIO_TIPO_TEL COD_EMPLEADO_TIPO_TEL    DEFAULT     �   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL" ALTER COLUMN "COD_EMPLEADO_TIPO_TEL" SET DEFAULT nextval('public."OPERARIO_TIPO_TEL_COD_EMPLEADO_TIPO_TEL_seq"'::regclass);
 Z   ALTER TABLE public."OPERARIO_TIPO_TEL" ALTER COLUMN "COD_EMPLEADO_TIPO_TEL" DROP DEFAULT;
       public       postgres    false    284    281    284            �           2604    17099    OPERARIO_TIPO_TEL COD_EMPLEADO    DEFAULT     �   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL" ALTER COLUMN "COD_EMPLEADO" SET DEFAULT nextval('public."OPERARIO_TIPO_TEL_COD_EMPEADO_seq"'::regclass);
 Q   ALTER TABLE public."OPERARIO_TIPO_TEL" ALTER COLUMN "COD_EMPLEADO" DROP DEFAULT;
       public       postgres    false    282    284    284            �           2604    17100 #   OPERARIO_TIPO_TEL COD_TIPO_TELEFONO    DEFAULT     �   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL" ALTER COLUMN "COD_TIPO_TELEFONO" SET DEFAULT nextval('public."OPERARIO_TIPO_TEL_COD_TIPO_TELEFONO_seq"'::regclass);
 V   ALTER TABLE public."OPERARIO_TIPO_TEL" ALTER COLUMN "COD_TIPO_TELEFONO" DROP DEFAULT;
       public       postgres    false    283    284    284            �           2604    16703    PAIS COD_PAIS    DEFAULT     t   ALTER TABLE ONLY public."PAIS" ALTER COLUMN "COD_PAIS" SET DEFAULT nextval('public."PAIS_COD_PAIS_seq"'::regclass);
 @   ALTER TABLE public."PAIS" ALTER COLUMN "COD_PAIS" DROP DEFAULT;
       public       postgres    false    250    249            �           2604    16704 #   PDTE_PRODUCCION COD_PDTE_PRODUCCION    DEFAULT     �   ALTER TABLE ONLY public."PDTE_PRODUCCION" ALTER COLUMN "COD_PDTE_PRODUCCION" SET DEFAULT nextval('public."PDTE_PRODUCCION_COD_PDTE_PRODUCCION_seq"'::regclass);
 V   ALTER TABLE public."PDTE_PRODUCCION" ALTER COLUMN "COD_PDTE_PRODUCCION" DROP DEFAULT;
       public       postgres    false    252    251            �           2604    16705    PDTE_PRODUCCION COD_PEDIDO    DEFAULT     �   ALTER TABLE ONLY public."PDTE_PRODUCCION" ALTER COLUMN "COD_PEDIDO" SET DEFAULT nextval('public."PDTE_PRODUCCION_COD_PEDIDO_seq"'::regclass);
 M   ALTER TABLE public."PDTE_PRODUCCION" ALTER COLUMN "COD_PEDIDO" DROP DEFAULT;
       public       postgres    false    253    251            �           2604    16706    PEDIDOS COD_PEDIDO    DEFAULT     ~   ALTER TABLE ONLY public."PEDIDOS" ALTER COLUMN "COD_PEDIDO" SET DEFAULT nextval('public."PEDIDOS_COD_PEDIDO_seq"'::regclass);
 E   ALTER TABLE public."PEDIDOS" ALTER COLUMN "COD_PEDIDO" DROP DEFAULT;
       public       postgres    false    256    254            �           2604    16707    PEDIDOS COD_COTIZACION    DEFAULT     �   ALTER TABLE ONLY public."PEDIDOS" ALTER COLUMN "COD_COTIZACION" SET DEFAULT nextval('public."PEDIDOS_COD_COTIZACION_seq"'::regclass);
 I   ALTER TABLE public."PEDIDOS" ALTER COLUMN "COD_COTIZACION" DROP DEFAULT;
       public       postgres    false    255    254            �           2604    16708    PROVEEDORES COD_PROVEEDOR    DEFAULT     �   ALTER TABLE ONLY public."PROVEEDORES" ALTER COLUMN "COD_PROVEEDOR" SET DEFAULT nextval('public."PROVEEDORES_COD_PROVEEDOR_seq"'::regclass);
 L   ALTER TABLE public."PROVEEDORES" ALTER COLUMN "COD_PROVEEDOR" DROP DEFAULT;
       public       postgres    false    259    257            �           2604    16709    PROVEEDORES COD_BARRIO    DEFAULT     �   ALTER TABLE ONLY public."PROVEEDORES" ALTER COLUMN "COD_BARRIO" SET DEFAULT nextval('public."PROVEEDORES_COD_BARRIO_seq"'::regclass);
 I   ALTER TABLE public."PROVEEDORES" ALTER COLUMN "COD_BARRIO" DROP DEFAULT;
       public       postgres    false    258    257            �           2604    16710 )   PROVEEDOR_TIPO_TEL COD_PROVEEDOR_TIPO_TEL    DEFAULT     �   ALTER TABLE ONLY public."PROVEEDOR_TIPO_TEL" ALTER COLUMN "COD_PROVEEDOR_TIPO_TEL" SET DEFAULT nextval('public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_TIPO_TEL_seq"'::regclass);
 \   ALTER TABLE public."PROVEEDOR_TIPO_TEL" ALTER COLUMN "COD_PROVEEDOR_TIPO_TEL" DROP DEFAULT;
       public       postgres    false    261    260            �           2604    16711 $   PROVEEDOR_TIPO_TEL COD_TIPO_TELEFONO    DEFAULT     �   ALTER TABLE ONLY public."PROVEEDOR_TIPO_TEL" ALTER COLUMN "COD_TIPO_TELEFONO" SET DEFAULT nextval('public."PROVEEDOR_TIPO_TEL_COD_TIPO_TELEFONO_seq"'::regclass);
 W   ALTER TABLE public."PROVEEDOR_TIPO_TEL" ALTER COLUMN "COD_TIPO_TELEFONO" DROP DEFAULT;
       public       postgres    false    263    260            �           2604    16712     PROVEEDOR_TIPO_TEL COD_PROVEEDOR    DEFAULT     �   ALTER TABLE ONLY public."PROVEEDOR_TIPO_TEL" ALTER COLUMN "COD_PROVEEDOR" SET DEFAULT nextval('public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_seq"'::regclass);
 S   ALTER TABLE public."PROVEEDOR_TIPO_TEL" ALTER COLUMN "COD_PROVEEDOR" DROP DEFAULT;
       public       postgres    false    262    260            �           2604    16713    SOBRANTES COD_SOBRANTE    DEFAULT     �   ALTER TABLE ONLY public."SOBRANTES" ALTER COLUMN "COD_SOBRANTE" SET DEFAULT nextval('public."SOBRANTES_COD_SOBRANTE_seq"'::regclass);
 I   ALTER TABLE public."SOBRANTES" ALTER COLUMN "COD_SOBRANTE" DROP DEFAULT;
       public       postgres    false    266    264            �           2604    16714    SOBRANTES COD_CORTE    DEFAULT     �   ALTER TABLE ONLY public."SOBRANTES" ALTER COLUMN "COD_CORTE" SET DEFAULT nextval('public."SOBRANTES_COD_CORTE_seq"'::regclass);
 F   ALTER TABLE public."SOBRANTES" ALTER COLUMN "COD_CORTE" DROP DEFAULT;
       public       postgres    false    265    264            �           2604    17173    SOBRANTES COD_INVENTARIO    DEFAULT     �   ALTER TABLE ONLY public."SOBRANTES" ALTER COLUMN "COD_INVENTARIO" SET DEFAULT nextval('public."SOBRANTES_COD_INVENTARIO_seq"'::regclass);
 K   ALTER TABLE public."SOBRANTES" ALTER COLUMN "COD_INVENTARIO" DROP DEFAULT;
       public       postgres    false    289    264            �           2604    16715    TIPO_PRODUCTO COD_TIPO_PRODUCTO    DEFAULT     �   ALTER TABLE ONLY public."TIPO_PRODUCTO" ALTER COLUMN "COD_TIPO_PRODUCTO" SET DEFAULT nextval('public."TIPO_PRODUCTO_COD_TIPO_PRODUCTO_seq"'::regclass);
 R   ALTER TABLE public."TIPO_PRODUCTO" ALTER COLUMN "COD_TIPO_PRODUCTO" DROP DEFAULT;
       public       postgres    false    269    267            �           2604    16716 !   TIPO_PRODUCTO COD_PDTE_PRODUCCION    DEFAULT     �   ALTER TABLE ONLY public."TIPO_PRODUCTO" ALTER COLUMN "COD_PDTE_PRODUCCION" SET DEFAULT nextval('public."TIPO_PRODUCTO_COD_PDTE_PRODUCCION_seq"'::regclass);
 T   ALTER TABLE public."TIPO_PRODUCTO" ALTER COLUMN "COD_PDTE_PRODUCCION" DROP DEFAULT;
       public       postgres    false    268    267            �           2604    16717    TIPO_TELEFONO COD_TIPO_TELEFONO    DEFAULT     �   ALTER TABLE ONLY public."TIPO_TELEFONO" ALTER COLUMN "COD_TIPO_TELEFONO" SET DEFAULT nextval('public."TIPO_TELEFONO_COD_TIPO_TELEFONO_seq"'::regclass);
 R   ALTER TABLE public."TIPO_TELEFONO" ALTER COLUMN "COD_TIPO_TELEFONO" DROP DEFAULT;
       public       postgres    false    272    270            �           2604    16718    TIPO_TELEFONO COD_PAIS    DEFAULT     �   ALTER TABLE ONLY public."TIPO_TELEFONO" ALTER COLUMN "COD_PAIS" SET DEFAULT nextval('public."TIPO_TELEFONO_COD_PAIS_seq"'::regclass);
 I   ALTER TABLE public."TIPO_TELEFONO" ALTER COLUMN "COD_PAIS" DROP DEFAULT;
       public       postgres    false    271    270            �           2604    16719    TRANSPORTES COD_TRANSPORTE    DEFAULT     �   ALTER TABLE ONLY public."TRANSPORTES" ALTER COLUMN "COD_TRANSPORTE" SET DEFAULT nextval('public."TRANSPORTE_COD_TRANSPORTE_seq"'::regclass);
 M   ALTER TABLE public."TRANSPORTES" ALTER COLUMN "COD_TRANSPORTE" DROP DEFAULT;
       public       postgres    false    275    273            �           2604    16721    TRANSPORTES COD_CONDUCTOR    DEFAULT     �   ALTER TABLE ONLY public."TRANSPORTES" ALTER COLUMN "COD_CONDUCTOR" SET DEFAULT nextval('public."TRANSPORTE_COD_CONDUCTOR_seq"'::regclass);
 L   ALTER TABLE public."TRANSPORTES" ALTER COLUMN "COD_CONDUCTOR" DROP DEFAULT;
       public       postgres    false    274    273            �          0    16434    BARRIO 
   TABLE DATA               H   COPY public."BARRIO" ("COD_BARRIO", "NOMBRE", "COD_CIUDAD") FROM stdin;
    public       postgres    false    197   VC      �          0    17154    BARRIO_CLIENTES 
   TABLE DATA               U   COPY public."BARRIO_CLIENTES" ("COD_BARRIO", "COD_CLIENTE", "DIRECCION") FROM stdin;
    public       postgres    false    288   �C      �          0    16442    CATALOGO 
   TABLE DATA               c   COPY public."CATALOGO" ("COD_CATALOGO", "FOTO", "PRECIO", "DETALLE", "COD_COTIZACION") FROM stdin;
    public       postgres    false    199   D      �          0    16452    CIUDAD 
   TABLE DATA               N   COPY public."CIUDAD" ("COD_CIUDAD", "NOMBRE", "COD_DEPARTAMENTO") FROM stdin;
    public       postgres    false    202   tE      �          0    16457    CLIENTES 
   TABLE DATA               �   COPY public."CLIENTES" ("COD_CLIENTE", "CEDULA", "SEGUNDO_NOMBRE", "COD_BARRIO", "PRIMER_NOMBRE", "PRIMER_APELLIDO", "SEGUNDO_APELLIDO") FROM stdin;
    public       postgres    false    204   �E      �          0    16469    CLIENTE_TIPO_TELEFONO 
   TABLE DATA               |   COPY public."CLIENTE_TIPO_TELEFONO" ("COD_CLIENTE_TIPO_TELEFONO", "COD_CLIENTE", "COD_TIPO_TELEFONO", "NUMERO") FROM stdin;
    public       postgres    false    207   �F      �          0    16481    CONDUCTORES 
   TABLE DATA               �   COPY public."CONDUCTORES" ("COD_CONDUCTOR", "PRIMER_NOMBRE", "SEGUNDO_NOMBRE", "PRIMER_APELLIDO", "SEGUNDO_APELLIDO", "VLR_FLETE", "COD_BARRIO", "DIRECCION") FROM stdin;
    public       postgres    false    211   �F      �          0    16486    CONDUCTOR_TIPO_TEL 
   TABLE DATA               x   COPY public."CONDUCTOR_TIPO_TEL" ("COD_CONDUCTOR_TIPO_TEL", "COD_CONDUCTOR", "COD_TIPO_TELEFONO", "NUMERO") FROM stdin;
    public       postgres    false    213   �G      �          0    16495    CORTES 
   TABLE DATA               z   COPY public."CORTES" ("COD_CORTE", "GRADO_CORTE", "COD_DESCUENTO", "COD_TIPO_PRODUCTO", "CANTIDAD", "MEDIDA") FROM stdin;
    public       postgres    false    217   %H      �          0    16504    COTIZACIONES 
   TABLE DATA               �   COPY public."COTIZACIONES" ("COD_COTIZACION", "CANTIDAD", "DESCRIPCION", "FECHA ENTREGA", "COLOR_MAT", "COD_CLIENTE") FROM stdin;
    public       postgres    false    221   yH      �          0    16514    COTIZACION_INVENTARIO 
   TABLE DATA               d   COPY public."COTIZACION_INVENTARIO" ("COD_COTINVE", "COD_COTIZACION", "COD_INVENTARIO") FROM stdin;
    public       postgres    false    224   !I      �          0    16523    DEPARTAMENTO 
   TABLE DATA               X   COPY public."DEPARTAMENTO" ("COD_DEPARTAMENTO", "DEPARTAMENTO", "COD_PAIS") FROM stdin;
    public       postgres    false    228   QI      �          0    16530 
   DESCUENTOS 
   TABLE DATA               Q   COPY public."DESCUENTOS" ("COD_DESCUENTO", "MEDIDAS", "DESCRIPCION") FROM stdin;
    public       postgres    false    231   �I      �          0    16535 	   EMPLEADOS 
   TABLE DATA               �   COPY public."EMPLEADOS" ("COD_EMPLEADO", "PRIMER_NOMBRE", "SEGUNDO_NOMBRE", "PRIMER_APELLIDO", "SEGUNDO_APELLIDO", "EMAIL", "FECHA_NACIMIENTO", "FUNCION", "CUENTA_BANCO", "COD_BARRIO", "DIRECCION") FROM stdin;
    public       postgres    false    233   J      �          0    17061    EMPLEADO_OFICINA 
   TABLE DATA               `   COPY public."EMPLEADO_OFICINA" ("COD_EMPLEADO", "COD_EMPLEADO_OFICINA", "VLR_HORA") FROM stdin;
    public       postgres    false    277   �K      �          0    17076    EMPLEADO_OPERARIO 
   TABLE DATA               b   COPY public."EMPLEADO_OPERARIO" ("COD_EMPLEADO", "COD_EMPLEADO_OPERARIO", "VLR_MANO") FROM stdin;
    public       postgres    false    280   �K      �          0    16542 	   ENSAMBLES 
   TABLE DATA               U   COPY public."ENSAMBLES" ("COD_ENSAMBLE", "COD_CORTE", "FECHA", "ESTADO") FROM stdin;
    public       postgres    false    236   "L      �          0    17202    ENSAMBLES_TRANSPORTE 
   TABLE DATA               [   COPY public."ENSAMBLES_TRANSPORTE" ("COD_ENSAMBLE", "COD_TRANSPORTE", "FECHA") FROM stdin;
    public       postgres    false    292   |L      �          0    16552 
   INVENTARIO 
   TABLE DATA               u   COPY public."INVENTARIO" ("COD_INVENTARIO", "COD_PDTE_PRODUCCION", "TIPO_MATERIAL", "ESTADO", "TAMAÑO") FROM stdin;
    public       postgres    false    239   �L      �          0    16564    INVENTARIO_PROVEEDORES 
   TABLE DATA               j   COPY public."INVENTARIO_PROVEEDORES" ("COD_INVENT_PROVEE", "COD_PROVEEDOR", "COD_INVENTARIO") FROM stdin;
    public       postgres    false    242   M      �          0    16573    MEDIDAS 
   TABLE DATA               T   COPY public."MEDIDAS" ("COD_MEDIDA", "ALTO", "ANCHO", "COD_COTIZACION") FROM stdin;
    public       postgres    false    246   KM      �          0    17095    OPERARIO_TIPO_TEL 
   TABLE DATA               u   COPY public."OPERARIO_TIPO_TEL" ("COD_EMPLEADO_TIPO_TEL", "COD_EMPLEADO", "COD_TIPO_TELEFONO", "NUMERO") FROM stdin;
    public       postgres    false    284   �M      �          0    16589    PAIS 
   TABLE DATA               4   COPY public."PAIS" ("COD_PAIS", "PAIS") FROM stdin;
    public       postgres    false    249   �M      �          0    16597    PDTE_PRODUCCION 
   TABLE DATA               b   COPY public."PDTE_PRODUCCION" ("COD_PDTE_PRODUCCION", "COD_PEDIDO", "FECHA_APROBADO") FROM stdin;
    public       postgres    false    251   ;N      �          0    16604    PEDIDOS 
   TABLE DATA               M   COPY public."PEDIDOS" ("COD_PEDIDO", "COD_COTIZACION", "ESTADO") FROM stdin;
    public       postgres    false    254   lN      �          0    16611    PROVEEDORES 
   TABLE DATA               s   COPY public."PROVEEDORES" ("COD_PROVEEDOR", "COD_BARRIO", "NOMBRE", "NIT", "DESCRIPCION", "DIRECCION") FROM stdin;
    public       postgres    false    257   �N      �          0    16621    PROVEEDOR_TIPO_TEL 
   TABLE DATA               x   COPY public."PROVEEDOR_TIPO_TEL" ("COD_PROVEEDOR_TIPO_TEL", "COD_TIPO_TELEFONO", "COD_PROVEEDOR", "NUMERO") FROM stdin;
    public       postgres    false    260   �O      �          0    16630 	   SOBRANTES 
   TABLE DATA               _   COPY public."SOBRANTES" ("COD_SOBRANTE", "COD_CORTE", "TAMAÑO", "COD_INVENTARIO") FROM stdin;
    public       postgres    false    264   P      �          0    16637    TIPO_PRODUCTO 
   TABLE DATA               f   COPY public."TIPO_PRODUCTO" ("COD_TIPO_PRODUCTO", "TIPO_PRODUCTO", "COD_PDTE_PRODUCCION") FROM stdin;
    public       postgres    false    267   JP      �          0    16644    TIPO_TELEFONO 
   TABLE DATA               [   COPY public."TIPO_TELEFONO" ("COD_TIPO_TELEFONO", "TIPO_TELEFONO", "COD_PAIS") FROM stdin;
    public       postgres    false    270   ~P      �          0    16654    TRANSPORTES 
   TABLE DATA               \   COPY public."TRANSPORTES" ("COD_TRANSPORTE", "COD_CONDUCTOR", "PLACA_VEHICULO") FROM stdin;
    public       postgres    false    273   �P      j           0    0    BARRIO_CLIENTES_COD_BARRIO_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."BARRIO_CLIENTES_COD_BARRIO_seq"', 1, false);
            public       postgres    false    286            k           0    0    BARRIO_CLIENTES_COD_CLIENTE_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."BARRIO_CLIENTES_COD_CLIENTE_seq"', 1, false);
            public       postgres    false    287            l           0    0    BARRIO_COD_BARRIO_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."BARRIO_COD_BARRIO_seq"', 5, true);
            public       postgres    false    198            m           0    0    CATALOGO_COD_CATLOGO_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."CATALOGO_COD_CATLOGO_seq"', 4, true);
            public       postgres    false    200            n           0    0    CATALOGO_COD_COTIZACION_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."CATALOGO_COD_COTIZACION_seq"', 1, false);
            public       postgres    false    201            o           0    0    CIUDAD_COD_CIUDAD_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."CIUDAD_COD_CIUDAD_seq"', 4, true);
            public       postgres    false    203            p           0    0    CLIENTES_COD_BARRIO_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."CLIENTES_COD_BARRIO_seq"', 1, false);
            public       postgres    false    205            q           0    0    CLIENTES_COD_CLIENTE_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."CLIENTES_COD_CLIENTE_seq"', 5, true);
            public       postgres    false    206            r           0    0 3   CLIENTE_TIPO_TELEFONO_COD_CLIENTE_TIPO_TELEFONO_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_TIPO_TELEFONO_seq"', 4, true);
            public       postgres    false    208            s           0    0 %   CLIENTE_TIPO_TELEFONO_COD_CLIENTE_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."CLIENTE_TIPO_TELEFONO_COD_CLIENTE_seq"', 1, false);
            public       postgres    false    209            t           0    0 +   CLIENTE_TIPO_TELEFONO_COD_TIPO_TELEFONO_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."CLIENTE_TIPO_TELEFONO_COD_TIPO_TELEFONO_seq"', 1, false);
            public       postgres    false    210            u           0    0    CONDUCTORES_COD_BARRIO_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."CONDUCTORES_COD_BARRIO_seq"', 1, false);
            public       postgres    false    285            v           0    0    CONDUCTORES_COD_CONDUCTOR_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."CONDUCTORES_COD_CONDUCTOR_seq"', 1, false);
            public       postgres    false    212            w           0    0 -   CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_TIPO_TEL_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_TIPO_TEL_seq"', 1, false);
            public       postgres    false    214            x           0    0 $   CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."CONDUCTOR_TIPO_TEL_COD_CONDUCTOR_seq"', 1, false);
            public       postgres    false    215            y           0    0 (   CONDUCTOR_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."CONDUCTOR_TIPO_TEL_COD_TIPO_TELEFONO_seq"', 1, false);
            public       postgres    false    216            z           0    0    CORTES_COD_CORTE_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."CORTES_COD_CORTE_seq"', 1, false);
            public       postgres    false    218            {           0    0    CORTES_COD_DESCUENTO_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."CORTES_COD_DESCUENTO_seq"', 1, false);
            public       postgres    false    219            |           0    0    CORTES_COD_TIPO_PRODUCTO_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."CORTES_COD_TIPO_PRODUCTO_seq"', 1, false);
            public       postgres    false    220            }           0    0    COTIZACION_COD_CLIENTE_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."COTIZACION_COD_CLIENTE_seq"', 1, false);
            public       postgres    false    222            ~           0    0    COTIZACION_COD_COTIZACION_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."COTIZACION_COD_COTIZACION_seq"', 1, false);
            public       postgres    false    223                       0    0 %   COTIZACION_INVENTARIO_COD_COTINVE_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."COTIZACION_INVENTARIO_COD_COTINVE_seq"', 1, false);
            public       postgres    false    225            �           0    0 (   COTIZACION_INVENTARIO_COD_COTIZACION_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."COTIZACION_INVENTARIO_COD_COTIZACION_seq"', 1, false);
            public       postgres    false    226            �           0    0 (   COTIZACION_INVENTARIO_COD_INVENTARIO_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."COTIZACION_INVENTARIO_COD_INVENTARIO_seq"', 1, false);
            public       postgres    false    227            �           0    0 !   DEPARTAMENTO_COD_DEPARTAMENTO_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."DEPARTAMENTO_COD_DEPARTAMENTO_seq"', 1, false);
            public       postgres    false    229            �           0    0    DEPARTAMENTO_COD_PAIS_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."DEPARTAMENTO_COD_PAIS_seq"', 1, false);
            public       postgres    false    230            �           0    0    DESCUENTO_COD_DESCUENTO_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."DESCUENTO_COD_DESCUENTO_seq"', 1, false);
            public       postgres    false    232            �           0    0    EMPLEADOS_COD_BARRIO_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."EMPLEADOS_COD_BARRIO_seq"', 1, false);
            public       postgres    false    234            �           0    0    EMPLEADOS_COD_EMPLEADO_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."EMPLEADOS_COD_EMPLEADO_seq"', 5, true);
            public       postgres    false    235            �           0    0 !   EMPLEADO_OFICINA_COD_EMPLEADO_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."EMPLEADO_OFICINA_COD_EMPLEADO_seq"', 1, false);
            public       postgres    false    276            �           0    0 +   EMPLEADO_OPERARIO_COD_EMPLEADO_OPERARIO_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."EMPLEADO_OPERARIO_COD_EMPLEADO_OPERARIO_seq"', 2, true);
            public       postgres    false    279            �           0    0 "   EMPLEADO_OPERARIO_COD_EMPLEADO_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."EMPLEADO_OPERARIO_COD_EMPLEADO_seq"', 1, false);
            public       postgres    false    278            �           0    0 %   ENSAMBLES_TRANSPORTE_COD_ENSAMBLE_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."ENSAMBLES_TRANSPORTE_COD_ENSAMBLE_seq"', 1, false);
            public       postgres    false    290            �           0    0 '   ENSAMBLES_TRANSPORTE_COD_TRANSPORTE_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."ENSAMBLES_TRANSPORTE_COD_TRANSPORTE_seq"', 1, false);
            public       postgres    false    291            �           0    0    ENSAMBLE_COD_CORTE_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."ENSAMBLE_COD_CORTE_seq"', 1, false);
            public       postgres    false    237            �           0    0    ENSAMBLE_COD_ENSAMBLE_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."ENSAMBLE_COD_ENSAMBLE_seq"', 4, true);
            public       postgres    false    238            �           0    0    INVENTARIO_COD_INVENTARIO_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."INVENTARIO_COD_INVENTARIO_seq"', 1, false);
            public       postgres    false    240            �           0    0 "   INVENTARIO_COD_PDTE_PRODUCCION_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."INVENTARIO_COD_PDTE_PRODUCCION_seq"', 1, false);
            public       postgres    false    241            �           0    0 )   INVENTARIO_PROVEEDORES_COD_INVENTARIO_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."INVENTARIO_PROVEEDORES_COD_INVENTARIO_seq"', 1, false);
            public       postgres    false    243            �           0    0 ,   INVENTARIO_PROVEEDORES_COD_INVENT_PROVEE_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."INVENTARIO_PROVEEDORES_COD_INVENT_PROVEE_seq"', 1, false);
            public       postgres    false    244            �           0    0 (   INVENTARIO_PROVEEDORES_COD_PROVEEDOR_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."INVENTARIO_PROVEEDORES_COD_PROVEEDOR_seq"', 1, false);
            public       postgres    false    245            �           0    0    MEDIDAS_COD_COTIZACION_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."MEDIDAS_COD_COTIZACION_seq"', 1, false);
            public       postgres    false    247            �           0    0    MEDIDAS_COD_MEDIDA_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."MEDIDAS_COD_MEDIDA_seq"', 1, false);
            public       postgres    false    248            �           0    0 !   OPERARIO_TIPO_TEL_COD_EMPEADO_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."OPERARIO_TIPO_TEL_COD_EMPEADO_seq"', 1, false);
            public       postgres    false    282            �           0    0 +   OPERARIO_TIPO_TEL_COD_EMPLEADO_TIPO_TEL_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."OPERARIO_TIPO_TEL_COD_EMPLEADO_TIPO_TEL_seq"', 12, true);
            public       postgres    false    281            �           0    0 '   OPERARIO_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."OPERARIO_TIPO_TEL_COD_TIPO_TELEFONO_seq"', 1, false);
            public       postgres    false    283            �           0    0    PAIS_COD_PAIS_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."PAIS_COD_PAIS_seq"', 1, false);
            public       postgres    false    250            �           0    0 '   PDTE_PRODUCCION_COD_PDTE_PRODUCCION_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."PDTE_PRODUCCION_COD_PDTE_PRODUCCION_seq"', 1, false);
            public       postgres    false    252            �           0    0    PDTE_PRODUCCION_COD_PEDIDO_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."PDTE_PRODUCCION_COD_PEDIDO_seq"', 1, false);
            public       postgres    false    253            �           0    0    PEDIDOS_COD_COTIZACION_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."PEDIDOS_COD_COTIZACION_seq"', 1, false);
            public       postgres    false    255            �           0    0    PEDIDOS_COD_PEDIDO_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."PEDIDOS_COD_PEDIDO_seq"', 1, false);
            public       postgres    false    256            �           0    0    PROVEEDORES_COD_BARRIO_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."PROVEEDORES_COD_BARRIO_seq"', 1, false);
            public       postgres    false    258            �           0    0    PROVEEDORES_COD_PROVEEDOR_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."PROVEEDORES_COD_PROVEEDOR_seq"', 1, false);
            public       postgres    false    259            �           0    0 -   PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_TIPO_TEL_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_TIPO_TEL_seq"', 1, false);
            public       postgres    false    261            �           0    0 $   PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."PROVEEDOR_TIPO_TEL_COD_PROVEEDOR_seq"', 1, false);
            public       postgres    false    262            �           0    0 (   PROVEEDOR_TIPO_TEL_COD_TIPO_TELEFONO_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."PROVEEDOR_TIPO_TEL_COD_TIPO_TELEFONO_seq"', 1, false);
            public       postgres    false    263            �           0    0    SOBRANTES_COD_CORTE_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."SOBRANTES_COD_CORTE_seq"', 1, false);
            public       postgres    false    265            �           0    0    SOBRANTES_COD_INVENTARIO_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."SOBRANTES_COD_INVENTARIO_seq"', 1, false);
            public       postgres    false    289            �           0    0    SOBRANTES_COD_SOBRANTE_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."SOBRANTES_COD_SOBRANTE_seq"', 2, true);
            public       postgres    false    266            �           0    0 %   TIPO_PRODUCTO_COD_PDTE_PRODUCCION_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."TIPO_PRODUCTO_COD_PDTE_PRODUCCION_seq"', 1, false);
            public       postgres    false    268            �           0    0 #   TIPO_PRODUCTO_COD_TIPO_PRODUCTO_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."TIPO_PRODUCTO_COD_TIPO_PRODUCTO_seq"', 1, false);
            public       postgres    false    269            �           0    0    TIPO_TELEFONO_COD_PAIS_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."TIPO_TELEFONO_COD_PAIS_seq"', 1, false);
            public       postgres    false    271            �           0    0 #   TIPO_TELEFONO_COD_TIPO_TELEFONO_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."TIPO_TELEFONO_COD_TIPO_TELEFONO_seq"', 2, true);
            public       postgres    false    272            �           0    0    TRANSPORTE_COD_CONDUCTOR_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."TRANSPORTE_COD_CONDUCTOR_seq"', 1, false);
            public       postgres    false    274            �           0    0    TRANSPORTE_COD_TRANSPORTE_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."TRANSPORTE_COD_TRANSPORTE_seq"', 1, false);
            public       postgres    false    275            �           2606    16723    BARRIO BARRIO_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BARRIO"
    ADD CONSTRAINT "BARRIO_pkey" PRIMARY KEY ("COD_BARRIO");
 @   ALTER TABLE ONLY public."BARRIO" DROP CONSTRAINT "BARRIO_pkey";
       public         postgres    false    197            �           2606    16725    CATALOGO CATALOGO_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."CATALOGO"
    ADD CONSTRAINT "CATALOGO_pkey" PRIMARY KEY ("COD_CATALOGO");
 D   ALTER TABLE ONLY public."CATALOGO" DROP CONSTRAINT "CATALOGO_pkey";
       public         postgres    false    199            �           2606    16727    CIUDAD CIUDAD_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."CIUDAD"
    ADD CONSTRAINT "CIUDAD_pkey" PRIMARY KEY ("COD_CIUDAD");
 @   ALTER TABLE ONLY public."CIUDAD" DROP CONSTRAINT "CIUDAD_pkey";
       public         postgres    false    202            �           2606    16729    CLIENTES CLIENTES_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."CLIENTES"
    ADD CONSTRAINT "CLIENTES_pkey" PRIMARY KEY ("COD_CLIENTE");
 D   ALTER TABLE ONLY public."CLIENTES" DROP CONSTRAINT "CLIENTES_pkey";
       public         postgres    false    204            �           2606    16731 0   CLIENTE_TIPO_TELEFONO CLIENTE_TIPO_TELEFONO_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO"
    ADD CONSTRAINT "CLIENTE_TIPO_TELEFONO_pkey" PRIMARY KEY ("COD_CLIENTE_TIPO_TELEFONO");
 ^   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO" DROP CONSTRAINT "CLIENTE_TIPO_TELEFONO_pkey";
       public         postgres    false    207            �           2606    17160 "   BARRIO_CLIENTES COD_BARRIO_CLIENTE 
   CONSTRAINT     }   ALTER TABLE ONLY public."BARRIO_CLIENTES"
    ADD CONSTRAINT "COD_BARRIO_CLIENTE" PRIMARY KEY ("COD_BARRIO", "COD_CLIENTE");
 P   ALTER TABLE ONLY public."BARRIO_CLIENTES" DROP CONSTRAINT "COD_BARRIO_CLIENTE";
       public         postgres    false    288    288            �           2606    17066 %   EMPLEADO_OFICINA COD_EMPLEADO_OFICINA 
   CONSTRAINT     �   ALTER TABLE ONLY public."EMPLEADO_OFICINA"
    ADD CONSTRAINT "COD_EMPLEADO_OFICINA" PRIMARY KEY ("COD_EMPLEADO", "COD_EMPLEADO_OFICINA");
 S   ALTER TABLE ONLY public."EMPLEADO_OFICINA" DROP CONSTRAINT "COD_EMPLEADO_OFICINA";
       public         postgres    false    277    277            �           2606    17082 '   EMPLEADO_OPERARIO COD_EMPLEADO_OPERARIO 
   CONSTRAINT     �   ALTER TABLE ONLY public."EMPLEADO_OPERARIO"
    ADD CONSTRAINT "COD_EMPLEADO_OPERARIO" PRIMARY KEY ("COD_EMPLEADO", "COD_EMPLEADO_OPERARIO");
 U   ALTER TABLE ONLY public."EMPLEADO_OPERARIO" DROP CONSTRAINT "COD_EMPLEADO_OPERARIO";
       public         postgres    false    280    280            �           2606    17105 '   OPERARIO_TIPO_TEL COD_EMPLEADO_TIPO_TEL 
   CONSTRAINT     ~   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL"
    ADD CONSTRAINT "COD_EMPLEADO_TIPO_TEL" PRIMARY KEY ("COD_EMPLEADO_TIPO_TEL");
 U   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL" DROP CONSTRAINT "COD_EMPLEADO_TIPO_TEL";
       public         postgres    false    284                        2606    17208 ,   ENSAMBLES_TRANSPORTE COD_ENSAMBLE_TRANSPORTE 
   CONSTRAINT     �   ALTER TABLE ONLY public."ENSAMBLES_TRANSPORTE"
    ADD CONSTRAINT "COD_ENSAMBLE_TRANSPORTE" PRIMARY KEY ("COD_ENSAMBLE", "COD_TRANSPORTE");
 Z   ALTER TABLE ONLY public."ENSAMBLES_TRANSPORTE" DROP CONSTRAINT "COD_ENSAMBLE_TRANSPORTE";
       public         postgres    false    292    292            �           2606    16733    CONDUCTORES CONDUCTORES_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."CONDUCTORES"
    ADD CONSTRAINT "CONDUCTORES_pkey" PRIMARY KEY ("COD_CONDUCTOR");
 J   ALTER TABLE ONLY public."CONDUCTORES" DROP CONSTRAINT "CONDUCTORES_pkey";
       public         postgres    false    211            �           2606    16735 *   CONDUCTOR_TIPO_TEL CONDUCTOR_TIPO_TEL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL"
    ADD CONSTRAINT "CONDUCTOR_TIPO_TEL_pkey" PRIMARY KEY ("COD_CONDUCTOR_TIPO_TEL");
 X   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL" DROP CONSTRAINT "CONDUCTOR_TIPO_TEL_pkey";
       public         postgres    false    213            �           2606    16737    CORTES CORTES_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."CORTES"
    ADD CONSTRAINT "CORTES_pkey" PRIMARY KEY ("COD_CORTE");
 @   ALTER TABLE ONLY public."CORTES" DROP CONSTRAINT "CORTES_pkey";
       public         postgres    false    217            �           2606    16739 0   COTIZACION_INVENTARIO COTIZACION_INVENTARIO_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."COTIZACION_INVENTARIO"
    ADD CONSTRAINT "COTIZACION_INVENTARIO_pkey" PRIMARY KEY ("COD_COTINVE");
 ^   ALTER TABLE ONLY public."COTIZACION_INVENTARIO" DROP CONSTRAINT "COTIZACION_INVENTARIO_pkey";
       public         postgres    false    224            �           2606    16741    COTIZACIONES COTIZACION_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."COTIZACIONES"
    ADD CONSTRAINT "COTIZACION_pkey" PRIMARY KEY ("COD_COTIZACION");
 J   ALTER TABLE ONLY public."COTIZACIONES" DROP CONSTRAINT "COTIZACION_pkey";
       public         postgres    false    221            �           2606    16743    DEPARTAMENTO DEPARTAMENTO_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."DEPARTAMENTO"
    ADD CONSTRAINT "DEPARTAMENTO_pkey" PRIMARY KEY ("COD_DEPARTAMENTO");
 L   ALTER TABLE ONLY public."DEPARTAMENTO" DROP CONSTRAINT "DEPARTAMENTO_pkey";
       public         postgres    false    228            �           2606    16745    DESCUENTOS DESCUENTO_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."DESCUENTOS"
    ADD CONSTRAINT "DESCUENTO_pkey" PRIMARY KEY ("COD_DESCUENTO");
 G   ALTER TABLE ONLY public."DESCUENTOS" DROP CONSTRAINT "DESCUENTO_pkey";
       public         postgres    false    231            �           2606    16747    EMPLEADOS EMPLEADOS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."EMPLEADOS"
    ADD CONSTRAINT "EMPLEADOS_pkey" PRIMARY KEY ("COD_EMPLEADO");
 F   ALTER TABLE ONLY public."EMPLEADOS" DROP CONSTRAINT "EMPLEADOS_pkey";
       public         postgres    false    233            �           2606    16749    ENSAMBLES ENSAMBLE_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."ENSAMBLES"
    ADD CONSTRAINT "ENSAMBLE_pkey" PRIMARY KEY ("COD_ENSAMBLE");
 E   ALTER TABLE ONLY public."ENSAMBLES" DROP CONSTRAINT "ENSAMBLE_pkey";
       public         postgres    false    236            �           2606    16751 2   INVENTARIO_PROVEEDORES INVENTARIO_PROVEEDORES_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES"
    ADD CONSTRAINT "INVENTARIO_PROVEEDORES_pkey" PRIMARY KEY ("COD_INVENT_PROVEE");
 `   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES" DROP CONSTRAINT "INVENTARIO_PROVEEDORES_pkey";
       public         postgres    false    242            �           2606    16753    INVENTARIO INVENTARIO_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."INVENTARIO"
    ADD CONSTRAINT "INVENTARIO_pkey" PRIMARY KEY ("COD_INVENTARIO");
 H   ALTER TABLE ONLY public."INVENTARIO" DROP CONSTRAINT "INVENTARIO_pkey";
       public         postgres    false    239            �           2606    16755    MEDIDAS MEDIDAS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."MEDIDAS"
    ADD CONSTRAINT "MEDIDAS_pkey" PRIMARY KEY ("COD_MEDIDA");
 B   ALTER TABLE ONLY public."MEDIDAS" DROP CONSTRAINT "MEDIDAS_pkey";
       public         postgres    false    246            �           2606    16759    PAIS PAIS_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."PAIS"
    ADD CONSTRAINT "PAIS_pkey" PRIMARY KEY ("COD_PAIS");
 <   ALTER TABLE ONLY public."PAIS" DROP CONSTRAINT "PAIS_pkey";
       public         postgres    false    249            �           2606    16761 $   PDTE_PRODUCCION PDTE_PRODUCCION_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."PDTE_PRODUCCION"
    ADD CONSTRAINT "PDTE_PRODUCCION_pkey" PRIMARY KEY ("COD_PDTE_PRODUCCION");
 R   ALTER TABLE ONLY public."PDTE_PRODUCCION" DROP CONSTRAINT "PDTE_PRODUCCION_pkey";
       public         postgres    false    251            �           2606    16763    PEDIDOS PEDIDOS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."PEDIDOS"
    ADD CONSTRAINT "PEDIDOS_pkey" PRIMARY KEY ("COD_PEDIDO");
 B   ALTER TABLE ONLY public."PEDIDOS" DROP CONSTRAINT "PEDIDOS_pkey";
       public         postgres    false    254            �           2606    16765    PROVEEDORES PROVEEDORES_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."PROVEEDORES"
    ADD CONSTRAINT "PROVEEDORES_pkey" PRIMARY KEY ("COD_PROVEEDOR");
 J   ALTER TABLE ONLY public."PROVEEDORES" DROP CONSTRAINT "PROVEEDORES_pkey";
       public         postgres    false    257            �           2606    16767 *   PROVEEDOR_TIPO_TEL PROVEEDOR_TIPO_TEL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."PROVEEDOR_TIPO_TEL"
    ADD CONSTRAINT "PROVEEDOR_TIPO_TEL_pkey" PRIMARY KEY ("COD_PROVEEDOR_TIPO_TEL");
 X   ALTER TABLE ONLY public."PROVEEDOR_TIPO_TEL" DROP CONSTRAINT "PROVEEDOR_TIPO_TEL_pkey";
       public         postgres    false    260            �           2606    16769    SOBRANTES SOBRANTES_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."SOBRANTES"
    ADD CONSTRAINT "SOBRANTES_pkey" PRIMARY KEY ("COD_SOBRANTE");
 F   ALTER TABLE ONLY public."SOBRANTES" DROP CONSTRAINT "SOBRANTES_pkey";
       public         postgres    false    264            �           2606    16771     TIPO_PRODUCTO TIPO_PRODUCTO_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."TIPO_PRODUCTO"
    ADD CONSTRAINT "TIPO_PRODUCTO_pkey" PRIMARY KEY ("COD_TIPO_PRODUCTO");
 N   ALTER TABLE ONLY public."TIPO_PRODUCTO" DROP CONSTRAINT "TIPO_PRODUCTO_pkey";
       public         postgres    false    267            �           2606    16773     TIPO_TELEFONO TIPO_TELEFONO_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."TIPO_TELEFONO"
    ADD CONSTRAINT "TIPO_TELEFONO_pkey" PRIMARY KEY ("COD_TIPO_TELEFONO");
 N   ALTER TABLE ONLY public."TIPO_TELEFONO" DROP CONSTRAINT "TIPO_TELEFONO_pkey";
       public         postgres    false    270            �           2606    16775    TRANSPORTES TRANSPORTE_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."TRANSPORTES"
    ADD CONSTRAINT "TRANSPORTE_pkey" PRIMARY KEY ("COD_TRANSPORTE");
 I   ALTER TABLE ONLY public."TRANSPORTES" DROP CONSTRAINT "TRANSPORTE_pkey";
       public         postgres    false    273            �           1259    16776    fki_COD_BARRIO    INDEX     O   CREATE INDEX "fki_COD_BARRIO" ON public."CLIENTES" USING btree ("COD_BARRIO");
 $   DROP INDEX public."fki_COD_BARRIO";
       public         postgres    false    204            �           1259    16972    fki_COD_CIUDAD    INDEX     M   CREATE INDEX "fki_COD_CIUDAD" ON public."BARRIO" USING btree ("COD_CIUDAD");
 $   DROP INDEX public."fki_COD_CIUDAD";
       public         postgres    false    197            �           1259    16777    fki_COD_CLIENTE    INDEX     ^   CREATE INDEX "fki_COD_CLIENTE" ON public."CLIENTE_TIPO_TELEFONO" USING btree ("COD_CLIENTE");
 %   DROP INDEX public."fki_COD_CLIENTE";
       public         postgres    false    207            �           1259    16779    fki_COD_CONDUCTOR    INDEX     X   CREATE INDEX "fki_COD_CONDUCTOR" ON public."TRANSPORTES" USING btree ("COD_CONDUCTOR");
 '   DROP INDEX public."fki_COD_CONDUCTOR";
       public         postgres    false    273            �           1259    16780    fki_COD_CORTE    INDEX     N   CREATE INDEX "fki_COD_CORTE" ON public."SOBRANTES" USING btree ("COD_CORTE");
 #   DROP INDEX public."fki_COD_CORTE";
       public         postgres    false    264            �           1259    16781    fki_COD_COTIZACION    INDEX     W   CREATE INDEX "fki_COD_COTIZACION" ON public."CATALOGO" USING btree ("COD_COTIZACION");
 (   DROP INDEX public."fki_COD_COTIZACION";
       public         postgres    false    199            �           1259    16782    fki_COD_DESCUENTO    INDEX     S   CREATE INDEX "fki_COD_DESCUENTO" ON public."CORTES" USING btree ("COD_DESCUENTO");
 '   DROP INDEX public."fki_COD_DESCUENTO";
       public         postgres    false    217            �           1259    16785    fki_COD_INVENTARIO    INDEX     d   CREATE INDEX "fki_COD_INVENTARIO" ON public."COTIZACION_INVENTARIO" USING btree ("COD_INVENTARIO");
 (   DROP INDEX public."fki_COD_INVENTARIO";
       public         postgres    false    224            �           1259    16786    fki_COD_PAIS    INDEX     P   CREATE INDEX "fki_COD_PAIS" ON public."TIPO_TELEFONO" USING btree ("COD_PAIS");
 "   DROP INDEX public."fki_COD_PAIS";
       public         postgres    false    270            �           1259    16787    fki_COD_PDTE_PRODUCCION    INDEX     c   CREATE INDEX "fki_COD_PDTE_PRODUCCION" ON public."INVENTARIO" USING btree ("COD_PDTE_PRODUCCION");
 -   DROP INDEX public."fki_COD_PDTE_PRODUCCION";
       public         postgres    false    239            �           1259    16788    fki_COD_PEDIDO    INDEX     V   CREATE INDEX "fki_COD_PEDIDO" ON public."PDTE_PRODUCCION" USING btree ("COD_PEDIDO");
 $   DROP INDEX public."fki_COD_PEDIDO";
       public         postgres    false    251            �           1259    16789    fki_COD_PROVEEDOR    INDEX     c   CREATE INDEX "fki_COD_PROVEEDOR" ON public."INVENTARIO_PROVEEDORES" USING btree ("COD_PROVEEDOR");
 '   DROP INDEX public."fki_COD_PROVEEDOR";
       public         postgres    false    242            �           1259    16791    fki_COD_TIPO_PRODUCTO    INDEX     [   CREATE INDEX "fki_COD_TIPO_PRODUCTO" ON public."CORTES" USING btree ("COD_TIPO_PRODUCTO");
 +   DROP INDEX public."fki_COD_TIPO_PRODUCTO";
       public         postgres    false    217            �           1259    16792    fki_COD_TIPO_TELEFONO    INDEX     j   CREATE INDEX "fki_COD_TIPO_TELEFONO" ON public."CLIENTE_TIPO_TELEFONO" USING btree ("COD_TIPO_TELEFONO");
 +   DROP INDEX public."fki_COD_TIPO_TELEFONO";
       public         postgres    false    207                       2606    16793    CLIENTES COD_BARRIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."CLIENTES"
    ADD CONSTRAINT "COD_BARRIO" FOREIGN KEY ("COD_BARRIO") REFERENCES public."BARRIO"("COD_BARRIO");
 A   ALTER TABLE ONLY public."CLIENTES" DROP CONSTRAINT "COD_BARRIO";
       public       postgres    false    197    204    2998                       2606    16798    PROVEEDORES COD_BARRIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROVEEDORES"
    ADD CONSTRAINT "COD_BARRIO" FOREIGN KEY ("COD_BARRIO") REFERENCES public."BARRIO"("COD_BARRIO");
 D   ALTER TABLE ONLY public."PROVEEDORES" DROP CONSTRAINT "COD_BARRIO";
       public       postgres    false    2998    257    197            �           0    0 (   CONSTRAINT "COD_BARRIO" ON "PROVEEDORES"    COMMENT     b   COMMENT ON CONSTRAINT "COD_BARRIO" ON public."PROVEEDORES" IS 'LLAVE FORANEA DE LA TABLA BARRIO';
            public       postgres    false    3096                       2606    16803    EMPLEADOS COD_BARRIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."EMPLEADOS"
    ADD CONSTRAINT "COD_BARRIO" FOREIGN KEY ("COD_BARRIO") REFERENCES public."BARRIO"("COD_BARRIO");
 B   ALTER TABLE ONLY public."EMPLEADOS" DROP CONSTRAINT "COD_BARRIO";
       public       postgres    false    197    2998    233            �           0    0 &   CONSTRAINT "COD_BARRIO" ON "EMPLEADOS"    COMMENT     a   COMMENT ON CONSTRAINT "COD_BARRIO" ON public."EMPLEADOS" IS 'LLAVE FORANEA DE LA TABLA  BARRIO';
            public       postgres    false    3088                       2606    17133    CONDUCTORES COD_BARRIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."CONDUCTORES"
    ADD CONSTRAINT "COD_BARRIO" FOREIGN KEY ("COD_BARRIO") REFERENCES public."BARRIO"("COD_BARRIO") NOT VALID;
 D   ALTER TABLE ONLY public."CONDUCTORES" DROP CONSTRAINT "COD_BARRIO";
       public       postgres    false    197    211    2998            #           2606    17161    BARRIO_CLIENTES COD_BARRIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."BARRIO_CLIENTES"
    ADD CONSTRAINT "COD_BARRIO" FOREIGN KEY ("COD_BARRIO") REFERENCES public."BARRIO"("COD_BARRIO") ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public."BARRIO_CLIENTES" DROP CONSTRAINT "COD_BARRIO";
       public       postgres    false    2998    288    197                       2606    16967    BARRIO COD_CIUDAD    FK CONSTRAINT     �   ALTER TABLE ONLY public."BARRIO"
    ADD CONSTRAINT "COD_CIUDAD" FOREIGN KEY ("COD_CIUDAD") REFERENCES public."CIUDAD"("COD_CIUDAD") ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public."BARRIO" DROP CONSTRAINT "COD_CIUDAD";
       public       postgres    false    3004    202    197                       2606    16808 !   CLIENTE_TIPO_TELEFONO COD_CLIENTE    FK CONSTRAINT     �   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO"
    ADD CONSTRAINT "COD_CLIENTE" FOREIGN KEY ("COD_CLIENTE") REFERENCES public."CLIENTES"("COD_CLIENTE");
 O   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO" DROP CONSTRAINT "COD_CLIENTE";
       public       postgres    false    207    204    3006                       2606    16813    COTIZACIONES COD_CLIENTE    FK CONSTRAINT     �   ALTER TABLE ONLY public."COTIZACIONES"
    ADD CONSTRAINT "COD_CLIENTE" FOREIGN KEY ("COD_CLIENTE") REFERENCES public."CLIENTES"("COD_CLIENTE");
 F   ALTER TABLE ONLY public."COTIZACIONES" DROP CONSTRAINT "COD_CLIENTE";
       public       postgres    false    221    3006    204            �           0    0 *   CONSTRAINT "COD_CLIENTE" ON "COTIZACIONES"    COMMENT     e   COMMENT ON CONSTRAINT "COD_CLIENTE" ON public."COTIZACIONES" IS 'LLAVE FORANEA DE LA TABLA CLIENTE';
            public       postgres    false    3084            $           2606    17166    BARRIO_CLIENTES COD_CLIENTE    FK CONSTRAINT     �   ALTER TABLE ONLY public."BARRIO_CLIENTES"
    ADD CONSTRAINT "COD_CLIENTE" FOREIGN KEY ("COD_CLIENTE") REFERENCES public."CLIENTES"("COD_CLIENTE") ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public."BARRIO_CLIENTES" DROP CONSTRAINT "COD_CLIENTE";
       public       postgres    false    288    3006    204                       2606    16823     CONDUCTOR_TIPO_TEL COD_CONDUCTOR    FK CONSTRAINT     �   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL"
    ADD CONSTRAINT "COD_CONDUCTOR" FOREIGN KEY ("COD_CONDUCTOR_TIPO_TEL") REFERENCES public."CONDUCTORES"("COD_CONDUCTOR");
 N   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL" DROP CONSTRAINT "COD_CONDUCTOR";
       public       postgres    false    211    3013    213            �           0    0 2   CONSTRAINT "COD_CONDUCTOR" ON "CONDUCTOR_TIPO_TEL"    COMMENT     q   COMMENT ON CONSTRAINT "COD_CONDUCTOR" ON public."CONDUCTOR_TIPO_TEL" IS 'LLAVE FORANEA DE LA TABLA CONDUCTORES';
            public       postgres    false    3080                       2606    16828    TRANSPORTES COD_CONDUCTOR    FK CONSTRAINT     �   ALTER TABLE ONLY public."TRANSPORTES"
    ADD CONSTRAINT "COD_CONDUCTOR" FOREIGN KEY ("COD_CONDUCTOR") REFERENCES public."CONDUCTORES"("COD_CONDUCTOR");
 G   ALTER TABLE ONLY public."TRANSPORTES" DROP CONSTRAINT "COD_CONDUCTOR";
       public       postgres    false    3013    273    211            �           0    0 +   CONSTRAINT "COD_CONDUCTOR" ON "TRANSPORTES"    COMMENT     j   COMMENT ON CONSTRAINT "COD_CONDUCTOR" ON public."TRANSPORTES" IS 'LLAVE FORANEA DE LA TABLA CONDUCTORES';
            public       postgres    false    3102                       2606    16833    SOBRANTES COD_CORTE    FK CONSTRAINT     �   ALTER TABLE ONLY public."SOBRANTES"
    ADD CONSTRAINT "COD_CORTE" FOREIGN KEY ("COD_CORTE") REFERENCES public."CORTES"("COD_CORTE");
 A   ALTER TABLE ONLY public."SOBRANTES" DROP CONSTRAINT "COD_CORTE";
       public       postgres    false    3017    217    264            �           0    0 %   CONSTRAINT "COD_CORTE" ON "SOBRANTES"    COMMENT     _   COMMENT ON CONSTRAINT "COD_CORTE" ON public."SOBRANTES" IS 'LLAVE FORANEA DE LA TABLA CORTES';
            public       postgres    false    3098                       2606    16838    ENSAMBLES COD_CORTE    FK CONSTRAINT     �   ALTER TABLE ONLY public."ENSAMBLES"
    ADD CONSTRAINT "COD_CORTE" FOREIGN KEY ("COD_CORTE") REFERENCES public."CORTES"("COD_CORTE");
 A   ALTER TABLE ONLY public."ENSAMBLES" DROP CONSTRAINT "COD_CORTE";
       public       postgres    false    236    217    3017            �           0    0 %   CONSTRAINT "COD_CORTE" ON "ENSAMBLES"    COMMENT     _   COMMENT ON CONSTRAINT "COD_CORTE" ON public."ENSAMBLES" IS 'LLAVE FORANEA DE LA TABLA CORTES';
            public       postgres    false    3089                       2606    16843    CATALOGO COD_COTIZACION    FK CONSTRAINT     �   ALTER TABLE ONLY public."CATALOGO"
    ADD CONSTRAINT "COD_COTIZACION" FOREIGN KEY ("COD_COTIZACION") REFERENCES public."COTIZACIONES"("COD_COTIZACION");
 E   ALTER TABLE ONLY public."CATALOGO" DROP CONSTRAINT "COD_COTIZACION";
       public       postgres    false    3021    221    199            �           0    0 )   CONSTRAINT "COD_COTIZACION" ON "CATALOGO"    COMMENT     g   COMMENT ON CONSTRAINT "COD_COTIZACION" ON public."CATALOGO" IS 'LLAVE FORANEA DE LA TABLA COTIZACION';
            public       postgres    false    3074                       2606    16848    MEDIDAS COD_COTIZACION    FK CONSTRAINT     �   ALTER TABLE ONLY public."MEDIDAS"
    ADD CONSTRAINT "COD_COTIZACION" FOREIGN KEY ("COD_COTIZACION") REFERENCES public."COTIZACIONES"("COD_COTIZACION");
 D   ALTER TABLE ONLY public."MEDIDAS" DROP CONSTRAINT "COD_COTIZACION";
       public       postgres    false    246    3021    221            �           0    0 (   CONSTRAINT "COD_COTIZACION" ON "MEDIDAS"    COMMENT     f   COMMENT ON CONSTRAINT "COD_COTIZACION" ON public."MEDIDAS" IS 'LLAVE FORANEA DE LA TABLA COTIZACION';
            public       postgres    false    3093                       2606    16853 $   COTIZACION_INVENTARIO COD_COTIZACION    FK CONSTRAINT     �   ALTER TABLE ONLY public."COTIZACION_INVENTARIO"
    ADD CONSTRAINT "COD_COTIZACION" FOREIGN KEY ("COD_COTIZACION") REFERENCES public."COTIZACIONES"("COD_COTIZACION");
 R   ALTER TABLE ONLY public."COTIZACION_INVENTARIO" DROP CONSTRAINT "COD_COTIZACION";
       public       postgres    false    3021    224    221            �           0    0 6   CONSTRAINT "COD_COTIZACION" ON "COTIZACION_INVENTARIO"    COMMENT     h   COMMENT ON CONSTRAINT "COD_COTIZACION" ON public."COTIZACION_INVENTARIO" IS 'LLAVE FORANEA COTIZACION';
            public       postgres    false    3085                       2606    16858    PEDIDOS COD_COTIZACION    FK CONSTRAINT     �   ALTER TABLE ONLY public."PEDIDOS"
    ADD CONSTRAINT "COD_COTIZACION" FOREIGN KEY ("COD_COTIZACION") REFERENCES public."COTIZACIONES"("COD_COTIZACION");
 D   ALTER TABLE ONLY public."PEDIDOS" DROP CONSTRAINT "COD_COTIZACION";
       public       postgres    false    254    221    3021            �           0    0 (   CONSTRAINT "COD_COTIZACION" ON "PEDIDOS"    COMMENT     f   COMMENT ON CONSTRAINT "COD_COTIZACION" ON public."PEDIDOS" IS 'LLAVE FORANEA DE LA TABLA COTIZACION';
            public       postgres    false    3095                       2606    16954    CIUDAD COD_DEPARAMENTO    FK CONSTRAINT     �   ALTER TABLE ONLY public."CIUDAD"
    ADD CONSTRAINT "COD_DEPARAMENTO" FOREIGN KEY ("COD_DEPARTAMENTO") REFERENCES public."DEPARTAMENTO"("COD_DEPARTAMENTO") ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public."CIUDAD" DROP CONSTRAINT "COD_DEPARAMENTO";
       public       postgres    false    3026    228    202            
           2606    16863    CORTES COD_DESCUENTO    FK CONSTRAINT     �   ALTER TABLE ONLY public."CORTES"
    ADD CONSTRAINT "COD_DESCUENTO" FOREIGN KEY ("COD_DESCUENTO") REFERENCES public."DESCUENTOS"("COD_DESCUENTO");
 B   ALTER TABLE ONLY public."CORTES" DROP CONSTRAINT "COD_DESCUENTO";
       public       postgres    false    231    3028    217            �           0    0 &   CONSTRAINT "COD_DESCUENTO" ON "CORTES"    COMMENT     Z   COMMENT ON CONSTRAINT "COD_DESCUENTO" ON public."CORTES" IS 'LLAVE FORANEA DE DESCUENTO';
            public       postgres    false    3082                       2606    17067    EMPLEADO_OFICINA COD_EMPLEADO    FK CONSTRAINT     �   ALTER TABLE ONLY public."EMPLEADO_OFICINA"
    ADD CONSTRAINT "COD_EMPLEADO" FOREIGN KEY ("COD_EMPLEADO") REFERENCES public."EMPLEADOS"("COD_EMPLEADO") ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."EMPLEADO_OFICINA" DROP CONSTRAINT "COD_EMPLEADO";
       public       postgres    false    277    233    3030                        2606    17083    EMPLEADO_OPERARIO COD_EMPLEADO    FK CONSTRAINT     �   ALTER TABLE ONLY public."EMPLEADO_OPERARIO"
    ADD CONSTRAINT "COD_EMPLEADO" FOREIGN KEY ("COD_EMPLEADO") REFERENCES public."EMPLEADOS"("COD_EMPLEADO") ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."EMPLEADO_OPERARIO" DROP CONSTRAINT "COD_EMPLEADO";
       public       postgres    false    233    280    3030            "           2606    17121    OPERARIO_TIPO_TEL COD_EMPLEADO    FK CONSTRAINT     �   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL"
    ADD CONSTRAINT "COD_EMPLEADO" FOREIGN KEY ("COD_EMPLEADO") REFERENCES public."EMPLEADOS"("COD_EMPLEADO") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 L   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL" DROP CONSTRAINT "COD_EMPLEADO";
       public       postgres    false    284    233    3030            %           2606    17209 !   ENSAMBLES_TRANSPORTE COD_ENSAMBLE    FK CONSTRAINT     �   ALTER TABLE ONLY public."ENSAMBLES_TRANSPORTE"
    ADD CONSTRAINT "COD_ENSAMBLE" FOREIGN KEY ("COD_ENSAMBLE") REFERENCES public."ENSAMBLES"("COD_ENSAMBLE") ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."ENSAMBLES_TRANSPORTE" DROP CONSTRAINT "COD_ENSAMBLE";
       public       postgres    false    292    3032    236                       2606    16878 $   COTIZACION_INVENTARIO COD_INVENTARIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."COTIZACION_INVENTARIO"
    ADD CONSTRAINT "COD_INVENTARIO" FOREIGN KEY ("COD_INVENTARIO") REFERENCES public."INVENTARIO"("COD_INVENTARIO");
 R   ALTER TABLE ONLY public."COTIZACION_INVENTARIO" DROP CONSTRAINT "COD_INVENTARIO";
       public       postgres    false    224    239    3034            �           0    0 6   CONSTRAINT "COD_INVENTARIO" ON "COTIZACION_INVENTARIO"    COMMENT     t   COMMENT ON CONSTRAINT "COD_INVENTARIO" ON public."COTIZACION_INVENTARIO" IS 'LLAVE FORANEA DE LA TABLA INVENTARIO';
            public       postgres    false    3086                       2606    16883 %   INVENTARIO_PROVEEDORES COD_INVENTARIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES"
    ADD CONSTRAINT "COD_INVENTARIO" FOREIGN KEY ("COD_INVENTARIO") REFERENCES public."INVENTARIO"("COD_INVENTARIO");
 S   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES" DROP CONSTRAINT "COD_INVENTARIO";
       public       postgres    false    3034    239    242            �           0    0 7   CONSTRAINT "COD_INVENTARIO" ON "INVENTARIO_PROVEEDORES"    COMMENT     u   COMMENT ON CONSTRAINT "COD_INVENTARIO" ON public."INVENTARIO_PROVEEDORES" IS 'LLAVE FORANEA DE LA TABLA INVENTARIO';
            public       postgres    false    3091                       2606    17179    SOBRANTES COD_INVENTARIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."SOBRANTES"
    ADD CONSTRAINT "COD_INVENTARIO" FOREIGN KEY ("COD_INVENTARIO") REFERENCES public."INVENTARIO"("COD_INVENTARIO") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY public."SOBRANTES" DROP CONSTRAINT "COD_INVENTARIO";
       public       postgres    false    3034    264    239                       2606    16888    TIPO_TELEFONO COD_PAIS    FK CONSTRAINT     �   ALTER TABLE ONLY public."TIPO_TELEFONO"
    ADD CONSTRAINT "COD_PAIS" FOREIGN KEY ("COD_PAIS") REFERENCES public."PAIS"("COD_PAIS");
 D   ALTER TABLE ONLY public."TIPO_TELEFONO" DROP CONSTRAINT "COD_PAIS";
       public       postgres    false    3042    249    270                       2606    16893    DEPARTAMENTO COD_PAIS    FK CONSTRAINT     �   ALTER TABLE ONLY public."DEPARTAMENTO"
    ADD CONSTRAINT "COD_PAIS" FOREIGN KEY ("COD_PAIS") REFERENCES public."PAIS"("COD_PAIS");
 C   ALTER TABLE ONLY public."DEPARTAMENTO" DROP CONSTRAINT "COD_PAIS";
       public       postgres    false    249    3042    228            �           0    0 '   CONSTRAINT "COD_PAIS" ON "DEPARTAMENTO"    COMMENT     _   COMMENT ON CONSTRAINT "COD_PAIS" ON public."DEPARTAMENTO" IS 'LLAVE FORANEA DE LA TABLA PAIS';
            public       postgres    false    3087                       2606    16898    INVENTARIO COD_PDTE_PRODUCCION    FK CONSTRAINT     �   ALTER TABLE ONLY public."INVENTARIO"
    ADD CONSTRAINT "COD_PDTE_PRODUCCION" FOREIGN KEY ("COD_PDTE_PRODUCCION") REFERENCES public."PDTE_PRODUCCION"("COD_PDTE_PRODUCCION");
 L   ALTER TABLE ONLY public."INVENTARIO" DROP CONSTRAINT "COD_PDTE_PRODUCCION";
       public       postgres    false    239    3044    251            �           0    0 0   CONSTRAINT "COD_PDTE_PRODUCCION" ON "INVENTARIO"    COMMENT     s   COMMENT ON CONSTRAINT "COD_PDTE_PRODUCCION" ON public."INVENTARIO" IS 'LLAVE FORANEA DE LA TABLA PDTE_PRODUCCION';
            public       postgres    false    3090                       2606    16903 !   TIPO_PRODUCTO COD_PDTE_PRODUCCION    FK CONSTRAINT     �   ALTER TABLE ONLY public."TIPO_PRODUCTO"
    ADD CONSTRAINT "COD_PDTE_PRODUCCION" FOREIGN KEY ("COD_PDTE_PRODUCCION") REFERENCES public."PDTE_PRODUCCION"("COD_PDTE_PRODUCCION");
 O   ALTER TABLE ONLY public."TIPO_PRODUCTO" DROP CONSTRAINT "COD_PDTE_PRODUCCION";
       public       postgres    false    267    251    3044            �           0    0 3   CONSTRAINT "COD_PDTE_PRODUCCION" ON "TIPO_PRODUCTO"    COMMENT     v   COMMENT ON CONSTRAINT "COD_PDTE_PRODUCCION" ON public."TIPO_PRODUCTO" IS 'LLAVE FORANEA DE LA TABLA PDTE_PRODUCCION';
            public       postgres    false    3100                       2606    16908    PDTE_PRODUCCION COD_PEDIDO    FK CONSTRAINT     �   ALTER TABLE ONLY public."PDTE_PRODUCCION"
    ADD CONSTRAINT "COD_PEDIDO" FOREIGN KEY ("COD_PEDIDO") REFERENCES public."PEDIDOS"("COD_PEDIDO");
 H   ALTER TABLE ONLY public."PDTE_PRODUCCION" DROP CONSTRAINT "COD_PEDIDO";
       public       postgres    false    251    254    3047            �           0    0 ,   CONSTRAINT "COD_PEDIDO" ON "PDTE_PRODUCCION"    COMMENT     h   COMMENT ON CONSTRAINT "COD_PEDIDO" ON public."PDTE_PRODUCCION" IS 'LLAVE FORANEA DE LA TABLA  PEDIDOS';
            public       postgres    false    3094                       2606    16913 $   INVENTARIO_PROVEEDORES COD_PROVEEDOR    FK CONSTRAINT     �   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES"
    ADD CONSTRAINT "COD_PROVEEDOR" FOREIGN KEY ("COD_PROVEEDOR") REFERENCES public."PROVEEDORES"("COD_PROVEEDOR");
 R   ALTER TABLE ONLY public."INVENTARIO_PROVEEDORES" DROP CONSTRAINT "COD_PROVEEDOR";
       public       postgres    false    242    257    3049            �           0    0 6   CONSTRAINT "COD_PROVEEDOR" ON "INVENTARIO_PROVEEDORES"    COMMENT     s   COMMENT ON CONSTRAINT "COD_PROVEEDOR" ON public."INVENTARIO_PROVEEDORES" IS 'LLAVE FORANEA DE LA TABLA PROVEEDOR';
            public       postgres    false    3092                       2606    16923    CORTES COD_TIPO_PRODUCTO    FK CONSTRAINT     �   ALTER TABLE ONLY public."CORTES"
    ADD CONSTRAINT "COD_TIPO_PRODUCTO" FOREIGN KEY ("COD_TIPO_PRODUCTO") REFERENCES public."TIPO_PRODUCTO"("COD_TIPO_PRODUCTO");
 F   ALTER TABLE ONLY public."CORTES" DROP CONSTRAINT "COD_TIPO_PRODUCTO";
       public       postgres    false    217    267    3056            �           0    0 *   CONSTRAINT "COD_TIPO_PRODUCTO" ON "CORTES"    COMMENT     l   COMMENT ON CONSTRAINT "COD_TIPO_PRODUCTO" ON public."CORTES" IS 'LLAVE FORANEA DE LA  TABLA TIPO_PRODUCTO';
            public       postgres    false    3083                       2606    16928 '   CLIENTE_TIPO_TELEFONO COD_TIPO_TELEFONO    FK CONSTRAINT     �   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO"
    ADD CONSTRAINT "COD_TIPO_TELEFONO" FOREIGN KEY ("COD_TIPO_TELEFONO") REFERENCES public."TIPO_TELEFONO"("COD_TIPO_TELEFONO");
 U   ALTER TABLE ONLY public."CLIENTE_TIPO_TELEFONO" DROP CONSTRAINT "COD_TIPO_TELEFONO";
       public       postgres    false    207    270    3058            �           0    0 9   CONSTRAINT "COD_TIPO_TELEFONO" ON "CLIENTE_TIPO_TELEFONO"    COMMENT     {   COMMENT ON CONSTRAINT "COD_TIPO_TELEFONO" ON public."CLIENTE_TIPO_TELEFONO" IS 'LLAVE FORANEA DE LA TABLA  TIPO_TELEFONO';
            public       postgres    false    3078                       2606    16933 $   PROVEEDOR_TIPO_TEL COD_TIPO_TELEFONO    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROVEEDOR_TIPO_TEL"
    ADD CONSTRAINT "COD_TIPO_TELEFONO" FOREIGN KEY ("COD_TIPO_TELEFONO") REFERENCES public."TIPO_TELEFONO"("COD_TIPO_TELEFONO");
 R   ALTER TABLE ONLY public."PROVEEDOR_TIPO_TEL" DROP CONSTRAINT "COD_TIPO_TELEFONO";
       public       postgres    false    3058    270    260            	           2606    16938 $   CONDUCTOR_TIPO_TEL COD_TIPO_TELEFONO    FK CONSTRAINT     �   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL"
    ADD CONSTRAINT "COD_TIPO_TELEFONO" FOREIGN KEY ("COD_TIPO_TELEFONO") REFERENCES public."TIPO_TELEFONO"("COD_TIPO_TELEFONO");
 R   ALTER TABLE ONLY public."CONDUCTOR_TIPO_TEL" DROP CONSTRAINT "COD_TIPO_TELEFONO";
       public       postgres    false    3058    213    270            �           0    0 6   CONSTRAINT "COD_TIPO_TELEFONO" ON "CONDUCTOR_TIPO_TEL"    COMMENT     k   COMMENT ON CONSTRAINT "COD_TIPO_TELEFONO" ON public."CONDUCTOR_TIPO_TEL" IS 'LLAVE FORANEA TIPO_TELEFONO';
            public       postgres    false    3081            !           2606    17116 #   OPERARIO_TIPO_TEL COD_TIPO_TELEFONO    FK CONSTRAINT     �   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL"
    ADD CONSTRAINT "COD_TIPO_TELEFONO" FOREIGN KEY ("COD_TIPO_TELEFONO") REFERENCES public."TIPO_TELEFONO"("COD_TIPO_TELEFONO") NOT VALID;
 Q   ALTER TABLE ONLY public."OPERARIO_TIPO_TEL" DROP CONSTRAINT "COD_TIPO_TELEFONO";
       public       postgres    false    284    270    3058            &           2606    17214 #   ENSAMBLES_TRANSPORTE COD_TRANSPORTE    FK CONSTRAINT     �   ALTER TABLE ONLY public."ENSAMBLES_TRANSPORTE"
    ADD CONSTRAINT "COD_TRANSPORTE" FOREIGN KEY ("COD_TRANSPORTE") REFERENCES public."TRANSPORTES"("COD_TRANSPORTE") ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."ENSAMBLES_TRANSPORTE" DROP CONSTRAINT "COD_TRANSPORTE";
       public       postgres    false    3061    292    273            �   N   x�3�V
v�S�r�����W��4�2
�8*x����	?gOG��1g���_H�?�c��q�9�N���&\1z\\\ ��      �   W   x�M�9
�@@�:9E�:B��n�Ȉ��?�ka���%{od4�����,��$nds4�˪Z%i�9��C�V������>8�O���      �   I  x�őMN1��3���Q�@ v��nL�KI�&v����l�*Q��>?o��Ǵ]�����n�$i�Y3�
��NAI�F��9p9%��N�;��z�x(����s	9ZQ0��_�H��O��i;o�f��KT8�d��?1�\�lܡH�f�J-�����0�[�"��7�^�>LvLq��X��Q4%�fwO�4'���^5���y<^p�d��=��ihsJ�$}j���ʀ����x��J6���$��u�*G��!��j�TF�#P7�*�4@�G�B�Nm�fIi�������~w���`��?ot�χe��l$�      �   6   x�3�tv
qt��4�2�t�v�u�4�2�p����M8\�\!�=... 0
�      �   �   x�%�1o!�g�1��HY�TQ"uI�.YH����w���^;փ�g4�߀��ݴC�)�nд}d�,�{Ω.�L+�ܭS&��w9�w7�i��,J}�i�eV��F���� �m�+�S,�x�N��Iy-Z��ߘI�]}H�r�vT<���&�i*�GN��\�ċN��WM���F�&�I��W\�p��M���f�7k�tWI      �   C   x�%��	�0ѳTL�׮^҉I�1s{H����n��R�CJ~��*���[+"�u�}����      �   �   x�m�Ak�@��o�г�U76G5��C,m�u�Ku����w
�^z������t[V/�ʓ�:�=T���E���.����]��Yb,ʉ�a[V=�E��,8�xam���dJ�$�֤h�i$����jɊJ,��J?�1�ӹl���+�h���SkrԴ#���a����L#R���?�"v;����KC�H��BAt_}�rh�~��ȷ{c�7�ELY      �   >   x����@���0��)����\�%��`$e�ʆb�S��)d�b79S����6���=�      �   D   x�3�41=����8����PE-LA�Ɯ@1�(P���(f�iRh�@AC��=... 0       �   �   x�M�A�0���)�6�t���J5M�`���R�#q1� a7����G�(�	j$�6j�-]KUP'Q�A�M��線&�Z�׏V�z�`t�$>�l���!��0E�������c+X�1���a	������N�n��yD���-�      �       x�3�4�4�2�4��`҄ӈӈ+F��� 4�w      �   F   x�3��vr�qq�4�2�s��qUpq�Qpvu�s:���x�9�:�L8�B<�C=A�=... .k1      �   O   x�3�4��30�ѵ0�2�47�p���9�@<g� G'G.#NCK�K.SNS���c���B@�kP�#W� ���      �   �  x�]����0�ϓ�@�9Q;���hK
���2MF`)8Ԏ��O�	]�՞lY����F�Ҡm���/�w�����a��ИX��;�_�Z:s	��?	]�qZ�B�vѼT�u�"S:�BJY� `�4U���٧��b�F����ʠ=9�G	�?��i�:c�������Ftm0����X�pe���8��TAS���;̾���zw�,W"Ӫ��ԐA�>��ygi$ᅬ���ܹG>�����3��pL��'7���Q��ɭ�S�f�:��zW��"�R*����M5��+��)R��vVx7jCw���<Y��3�e�l�g�k�`n��8k,��X�)��J��}��z���h;�P�����YӢ�����'���h����<��[��9;�窩�r� %��-�I�_�z��O�(��]��      �   '   x�3�4�4�420�2�BSK ˔Ә��� Ȋ���� ^a$      �      x�3�4�41 .N#NS0+F��� 0 �      �   J   x�3�4�420��54�5���wv��2�4�p���x����rs#ԛq���z�9��s�`7(F��� ��      �      x�3�4�420��54�5������� "<      �   b   x�=�A
� �����@FZO4���Y����H
ھ��%<\q�QN�s�M�Ȓ��r:
�����xd=�&�T�ջWǮ�wF椘��Ƙ�i�      �   !   x�3�4�4�2�F\�@Ҙ˄������ 4xr      �   :   x�5�� 0��d��c��?G%h?��D�D��vQa���J���GG��)��2��� .�9�      �   @   x����0�7*&c	�@/鿎�ߛ�	#)�U6�NQ��(e
d�5b79S��n�垷�= ~�7y      �   F   x�3�v����u�t��2�vrw����9��\�\�B]}�<�� G?G_ Ӕ���54��+F��� XlO      �   !   x�3�4�420��54�52�2�4F���qqq e��      �   '   x�3�4�,�2�4�L�2�4�&��@SN ;F��� asM      �     x����J�0�u�ܚ��i�.�Pa ��θr� �IS�d��{]	����	#���_C�f�TӶ+���zp�=�wZ� �*�BA����<���a�B���L$ox˘TT��9\��\�m��),���M�F0�[݆�o�+rUI+8�|09��_�i�1�h}����a��FdE��J�I������zO��T[��D��(㬨pŘ�]��1,��w��O�[s�KE���>G��R��9��;���0v��S{�슢� i�J      �   ?   x����0���b�08��$��Fb�T��t'PnK�l���8C��A��~�(���w��3�      �   "   x�3�4�4200�4�2�4�05�4����� 0�|      �   $   x�3�u
q�4�2�t�qtv�s�4����� U~]      �   !   x�3�������4�2�v���1c���� e<E      �   F   x�3�4��V01t�2�4�rrT05�2�4�t��S0�t�2�#�\�MݸL�j\�=�M"�b���� �;�     