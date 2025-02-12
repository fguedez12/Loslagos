PGDMP      5    	        	    {            grlldb    16.0    16.0 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    grlldb    DATABASE     �   CREATE DATABASE grlldb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_United States.1252';
    DROP DATABASE grlldb;
                postgres    false                        2615    16921    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    5            �           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    5            �            1259    16984 
   bannerhome    TABLE     �   CREATE TABLE public.bannerhome (
    idbannerhome integer NOT NULL,
    titulo character varying(45),
    img character varying(45)
);
    DROP TABLE public.bannerhome;
       public         heap    postgres    false    5            �            1259    17080    bannerhome_has_usuario    TABLE     �   CREATE TABLE public.bannerhome_has_usuario (
    bannerhome_idbannerhome integer NOT NULL,
    usuario_idusuario integer NOT NULL
);
 *   DROP TABLE public.bannerhome_has_usuario;
       public         heap    postgres    false    5            �            1259    16983    bannerhome_idbannerhome_seq    SEQUENCE     �   CREATE SEQUENCE public.bannerhome_idbannerhome_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.bannerhome_idbannerhome_seq;
       public          postgres    false    230    5            �           0    0    bannerhome_idbannerhome_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.bannerhome_idbannerhome_seq OWNED BY public.bannerhome.idbannerhome;
          public          postgres    false    229            �            1259    17156    bitacora    TABLE     �   CREATE TABLE public.bitacora (
    idbitacora integer NOT NULL,
    accion character varying(45),
    tabla character varying(45),
    usuario_idusuario integer NOT NULL
);
    DROP TABLE public.bitacora;
       public         heap    postgres    false    5            �            1259    17155    bitacora_idbitacora_seq    SEQUENCE     �   CREATE SEQUENCE public.bitacora_idbitacora_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.bitacora_idbitacora_seq;
       public          postgres    false    5    248            �           0    0    bitacora_idbitacora_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.bitacora_idbitacora_seq OWNED BY public.bitacora.idbitacora;
          public          postgres    false    247                       1259    17373    consejor    TABLE     z   CREATE TABLE public.consejor (
    idconsejor integer NOT NULL,
    titulo character varying(45),
    descripcion text
);
    DROP TABLE public.consejor;
       public         heap    postgres    false    5                       1259    17372    consejor_idconsejor_seq    SEQUENCE     �   CREATE SEQUENCE public.consejor_idconsejor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.consejor_idconsejor_seq;
       public          postgres    false    286    5            �           0    0    consejor_idconsejor_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.consejor_idconsejor_seq OWNED BY public.consejor.idconsejor;
          public          postgres    false    285            &           1259    17410    consejoractas    TABLE     f  CREATE TABLE public.consejoractas (
    idconsejoractas integer NOT NULL,
    nombre character varying(45),
    fechareunion date,
    hora time without time zone,
    provincia character varying(45),
    comuna character varying(45),
    lugar character varying(45),
    numerosesion character varying(45),
    consejoractascol integer,
    archivo text
);
 !   DROP TABLE public.consejoractas;
       public         heap    postgres    false    5            %           1259    17409 !   consejoractas_idconsejoractas_seq    SEQUENCE     �   CREATE SEQUENCE public.consejoractas_idconsejoractas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.consejoractas_idconsejoractas_seq;
       public          postgres    false    294    5            �           0    0 !   consejoractas_idconsejoractas_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.consejoractas_idconsejoractas_seq OWNED BY public.consejoractas.idconsejoractas;
          public          postgres    false    293            (           1259    17419    consejorcertificadoa    TABLE     �   CREATE TABLE public.consejorcertificadoa (
    idconsejorcertificadoa integer NOT NULL,
    nombre character varying(45),
    descripcion character varying(45),
    fecha date,
    archivo text
);
 (   DROP TABLE public.consejorcertificadoa;
       public         heap    postgres    false    5            '           1259    17418 /   consejorcertificadoa_idconsejorcertificadoa_seq    SEQUENCE     �   CREATE SEQUENCE public.consejorcertificadoa_idconsejorcertificadoa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.consejorcertificadoa_idconsejorcertificadoa_seq;
       public          postgres    false    296    5            �           0    0 /   consejorcertificadoa_idconsejorcertificadoa_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.consejorcertificadoa_idconsejorcertificadoa_seq OWNED BY public.consejorcertificadoa.idconsejorcertificadoa;
          public          postgres    false    295            "           1259    17389    consejorcomuna    TABLE     p   CREATE TABLE public.consejorcomuna (
    idconsejorcomuna integer NOT NULL,
    nombre character varying(45)
);
 "   DROP TABLE public.consejorcomuna;
       public         heap    postgres    false    5            !           1259    17388 #   consejorcomuna_idconsejorcomuna_seq    SEQUENCE     �   CREATE SEQUENCE public.consejorcomuna_idconsejorcomuna_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.consejorcomuna_idconsejorcomuna_seq;
       public          postgres    false    5    290            �           0    0 #   consejorcomuna_idconsejorcomuna_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.consejorcomuna_idconsejorcomuna_seq OWNED BY public.consejorcomuna.idconsejorcomuna;
          public          postgres    false    289            $           1259    17396    consejorconsejeros    TABLE     _  CREATE TABLE public.consejorconsejeros (
    idconsejorconsejeros integer NOT NULL,
    nombre character varying(45),
    partidop character varying(45),
    region character varying(45),
    provincia character varying(45),
    comuna character varying(45),
    email character varying(45),
    fono character varying(45),
    institucion character varying(45),
    cargo character varying(45),
    actividades character varying(45),
    periododelconsejal character varying(45),
    consejorconsejeroscol character varying(45),
    comisiones text,
    consejorcomuna_idconsejorcomuna integer NOT NULL
);
 &   DROP TABLE public.consejorconsejeros;
       public         heap    postgres    false    5            #           1259    17395 +   consejorconsejeros_idconsejorconsejeros_seq    SEQUENCE     �   CREATE SEQUENCE public.consejorconsejeros_idconsejorconsejeros_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.consejorconsejeros_idconsejorconsejeros_seq;
       public          postgres    false    292    5            �           0    0 +   consejorconsejeros_idconsejorconsejeros_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.consejorconsejeros_idconsejorconsejeros_seq OWNED BY public.consejorconsejeros.idconsejorconsejeros;
          public          postgres    false    291                       1259    17364    consejorintro    TABLE     �   CREATE TABLE public.consejorintro (
    idconsejorintro integer NOT NULL,
    titulo character varying(45),
    descripcion text
);
 !   DROP TABLE public.consejorintro;
       public         heap    postgres    false    5                       1259    17363 !   consejorintro_idconsejorintro_seq    SEQUENCE     �   CREATE SEQUENCE public.consejorintro_idconsejorintro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.consejorintro_idconsejorintro_seq;
       public          postgres    false    5    284            �           0    0 !   consejorintro_idconsejorintro_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.consejorintro_idconsejorintro_seq OWNED BY public.consejorintro.idconsejorintro;
          public          postgres    false    283                        1259    17382    consejorpresidentec    TABLE     X   CREATE TABLE public.consejorpresidentec (
    idconsejorpresidentec integer NOT NULL
);
 '   DROP TABLE public.consejorpresidentec;
       public         heap    postgres    false    5                       1259    17381 -   consejorpresidentec_idconsejorpresidentec_seq    SEQUENCE     �   CREATE SEQUENCE public.consejorpresidentec_idconsejorpresidentec_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.consejorpresidentec_idconsejorpresidentec_seq;
       public          postgres    false    288    5            �           0    0 -   consejorpresidentec_idconsejorpresidentec_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.consejorpresidentec_idconsejorpresidentec_seq OWNED BY public.consejorpresidentec.idconsejorpresidentec;
          public          postgres    false    287            *           1259    17428    consejorresumeng    TABLE     �   CREATE TABLE public.consejorresumeng (
    idconsejorresumeng integer NOT NULL,
    "año" character varying(45),
    titulo character varying(45),
    archivo text
);
 $   DROP TABLE public.consejorresumeng;
       public         heap    postgres    false    5            )           1259    17427 '   consejorresumeng_idconsejorresumeng_seq    SEQUENCE     �   CREATE SEQUENCE public.consejorresumeng_idconsejorresumeng_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.consejorresumeng_idconsejorresumeng_seq;
       public          postgres    false    5    298            �           0    0 '   consejorresumeng_idconsejorresumeng_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.consejorresumeng_idconsejorresumeng_seq OWNED BY public.consejorresumeng.idconsejorresumeng;
          public          postgres    false    297            .           1259    17444    consejortablas    TABLE     �   CREATE TABLE public.consejortablas (
    idconsejortablas integer NOT NULL,
    nombre character varying(45),
    tablasesion_idtablasesion integer NOT NULL
);
 "   DROP TABLE public.consejortablas;
       public         heap    postgres    false    5            -           1259    17443 #   consejortablas_idconsejortablas_seq    SEQUENCE     �   CREATE SEQUENCE public.consejortablas_idconsejortablas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.consejortablas_idconsejortablas_seq;
       public          postgres    false    302    5            �           0    0 #   consejortablas_idconsejortablas_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.consejortablas_idconsejortablas_seq OWNED BY public.consejortablas.idconsejortablas;
          public          postgres    false    301                       1259    17224 	   datosdley    TABLE     �   CREATE TABLE public.datosdley (
    iddatosdley integer NOT NULL,
    titulo character varying(45),
    descripcion character varying(45),
    gobiernorley_idley integer NOT NULL,
    documentoley text
);
    DROP TABLE public.datosdley;
       public         heap    postgres    false    5                       1259    17223    datosdley_iddatosdley_seq    SEQUENCE     �   CREATE SEQUENCE public.datosdley_iddatosdley_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.datosdley_iddatosdley_seq;
       public          postgres    false    264    5            �           0    0    datosdley_iddatosdley_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.datosdley_iddatosdley_seq OWNED BY public.datosdley.iddatosdley;
          public          postgres    false    263            �            1259    17010    departamento    TABLE     �   CREATE TABLE public.departamento (
    iddepartamento integer NOT NULL,
    nombre character varying(45),
    division_iddivision integer NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false    5            �            1259    17009    departamento_iddepartamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_iddepartamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.departamento_iddepartamento_seq;
       public          postgres    false    236    5            �           0    0    departamento_iddepartamento_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.departamento_iddepartamento_seq OWNED BY public.departamento.iddepartamento;
          public          postgres    false    235            �            1259    16998    division    TABLE     �   CREATE TABLE public.division (
    iddivision integer NOT NULL,
    nombre character varying(45),
    institucion_idinstitucion integer NOT NULL
);
    DROP TABLE public.division;
       public         heap    postgres    false    5            �            1259    16997    division_iddivision_seq    SEQUENCE     �   CREATE SEQUENCE public.division_iddivision_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.division_iddivision_seq;
       public          postgres    false    234    5            �           0    0    division_iddivision_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.division_iddivision_seq OWNED BY public.division.iddivision;
          public          postgres    false    233            7           1259    17490    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false    5            6           1259    17489    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    311    5            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    310            �            1259    16956    fotografias    TABLE     �   CREATE TABLE public.fotografias (
    idfotografias integer NOT NULL,
    url character varying(45),
    fotografiascol character varying(45),
    galeriafotografica_idgaleriafotografica integer NOT NULL
);
    DROP TABLE public.fotografias;
       public         heap    postgres    false    5            �            1259    16955    fotografias_idfotografias_seq    SEQUENCE     �   CREATE SEQUENCE public.fotografias_idfotografias_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.fotografias_idfotografias_seq;
       public          postgres    false    224    5            �           0    0    fotografias_idfotografias_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.fotografias_idfotografias_seq OWNED BY public.fotografias.idfotografias;
          public          postgres    false    223            �            1259    17034    funcionario    TABLE     �  CREATE TABLE public.funcionario (
    idfuncionario integer NOT NULL,
    nombre_completo character varying(45),
    rut character varying(45),
    email character varying(45),
    telefono character varying(45),
    usuario_idusuario integer NOT NULL,
    institucion_idinstitucion integer NOT NULL,
    division_iddivision integer NOT NULL,
    departamento_iddepartamento integer NOT NULL,
    sexo_idsexo integer NOT NULL
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false    5            �            1259    17033    funcionario_idfuncionario_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionario_idfuncionario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.funcionario_idfuncionario_seq;
       public          postgres    false    5    240            �           0    0    funcionario_idfuncionario_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.funcionario_idfuncionario_seq OWNED BY public.funcionario.idfuncionario;
          public          postgres    false    239            �            1259    16949    galeriafotografica    TABLE     x   CREATE TABLE public.galeriafotografica (
    idgaleriafotografica integer NOT NULL,
    titulo character varying(45)
);
 &   DROP TABLE public.galeriafotografica;
       public         heap    postgres    false    5            �            1259    17095    galeriafotografica_has_usuario    TABLE     �   CREATE TABLE public.galeriafotografica_has_usuario (
    galeriafotografica_idgaleriafotografica integer NOT NULL,
    usuario_idusuario integer NOT NULL
);
 2   DROP TABLE public.galeriafotografica_has_usuario;
       public         heap    postgres    false    5            �            1259    16948 +   galeriafotografica_idgaleriafotografica_seq    SEQUENCE     �   CREATE SEQUENCE public.galeriafotografica_idgaleriafotografica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.galeriafotografica_idgaleriafotografica_seq;
       public          postgres    false    5    222            �           0    0 +   galeriafotografica_idgaleriafotografica_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.galeriafotografica_idgaleriafotografica_seq OWNED BY public.galeriafotografica.idgaleriafotografica;
          public          postgres    false    221            �            1259    17175 
   gobiernora    TABLE     �   CREATE TABLE public.gobiernora (
    idgobiernora integer NOT NULL,
    titulo character varying(45),
    descripcion character varying(45),
    img character varying(45)
);
    DROP TABLE public.gobiernora;
       public         heap    postgres    false    5            �            1259    17174    gobiernora_idgobiernora_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernora_idgobiernora_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.gobiernora_idgobiernora_seq;
       public          postgres    false    252    5            �           0    0    gobiernora_idgobiernora_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.gobiernora_idgobiernora_seq OWNED BY public.gobiernora.idgobiernora;
          public          postgres    false    251                       1259    17252    gobiernorasamblecc    TABLE     �   CREATE TABLE public.gobiernorasamblecc (
    idgobiernorasamblecc integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 &   DROP TABLE public.gobiernorasamblecc;
       public         heap    postgres    false    5                       1259    17251 +   gobiernorasamblecc_idgobiernorasamblecc_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorasamblecc_idgobiernorasamblecc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.gobiernorasamblecc_idgobiernorasamblecc_seq;
       public          postgres    false    268    5            �           0    0 +   gobiernorasamblecc_idgobiernorasamblecc_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.gobiernorasamblecc_idgobiernorasamblecc_seq OWNED BY public.gobiernorasamblecc.idgobiernorasamblecc;
          public          postgres    false    267                       1259    17336    gobiernorcomiteregionalcti    TABLE     �   CREATE TABLE public.gobiernorcomiteregionalcti (
    idgobiernorcomiteregionalcti integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 .   DROP TABLE public.gobiernorcomiteregionalcti;
       public         heap    postgres    false    5                       1259    17335 ;   gobiernorcomiteregionalcti_idgobiernorcomiteregionalcti_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorcomiteregionalcti_idgobiernorcomiteregionalcti_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE public.gobiernorcomiteregionalcti_idgobiernorcomiteregionalcti_seq;
       public          postgres    false    280    5            �           0    0 ;   gobiernorcomiteregionalcti_idgobiernorcomiteregionalcti_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.gobiernorcomiteregionalcti_idgobiernorcomiteregionalcti_seq OWNED BY public.gobiernorcomiteregionalcti.idgobiernorcomiteregionalcti;
          public          postgres    false    279                       1259    17294    gobiernorcompromisogi    TABLE     �   CREATE TABLE public.gobiernorcompromisogi (
    idgobiernorcompromisogi integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 )   DROP TABLE public.gobiernorcompromisogi;
       public         heap    postgres    false    5                       1259    17293 1   gobiernorcompromisogi_idgobiernorcompromisogi_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorcompromisogi_idgobiernorcompromisogi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.gobiernorcompromisogi_idgobiernorcompromisogi_seq;
       public          postgres    false    5    274            �           0    0 1   gobiernorcompromisogi_idgobiernorcompromisogi_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.gobiernorcompromisogi_idgobiernorcompromisogi_seq OWNED BY public.gobiernorcompromisogi.idgobiernorcompromisogi;
          public          postgres    false    273                       1259    17322    gobiernorconsursop    TABLE     �   CREATE TABLE public.gobiernorconsursop (
    idgobiernorconsursop integer NOT NULL,
    texto character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 &   DROP TABLE public.gobiernorconsursop;
       public         heap    postgres    false    5                       1259    17321 +   gobiernorconsursop_idgobiernorconsursop_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorconsursop_idgobiernorconsursop_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.gobiernorconsursop_idgobiernorconsursop_seq;
       public          postgres    false    5    278            �           0    0 +   gobiernorconsursop_idgobiernorconsursop_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.gobiernorconsursop_idgobiernorconsursop_seq OWNED BY public.gobiernorconsursop.idgobiernorconsursop;
          public          postgres    false    277                       1259    17212    gobiernordocumentogestion    TABLE       CREATE TABLE public.gobiernordocumentogestion (
    idgobiernordocumentogestion integer NOT NULL,
    titulo character varying(45),
    descripcion character varying(45),
    img character varying(45),
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 -   DROP TABLE public.gobiernordocumentogestion;
       public         heap    postgres    false    5                       1259    17211 9   gobiernordocumentogestion_idgobiernordocumentogestion_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernordocumentogestion_idgobiernordocumentogestion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.gobiernordocumentogestion_idgobiernordocumentogestion_seq;
       public          postgres    false    262    5            �           0    0 9   gobiernordocumentogestion_idgobiernordocumentogestion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.gobiernordocumentogestion_idgobiernordocumentogestion_seq OWNED BY public.gobiernordocumentogestion.idgobiernordocumentogestion;
          public          postgres    false    261                       1259    17203    gobiernordocumentos    TABLE     �   CREATE TABLE public.gobiernordocumentos (
    idgobiernordocumentos integer NOT NULL,
    titulo character varying(45),
    url text
);
 '   DROP TABLE public.gobiernordocumentos;
       public         heap    postgres    false    5                       1259    17202 -   gobiernordocumentos_idgobiernordocumentos_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernordocumentos_idgobiernordocumentos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.gobiernordocumentos_idgobiernordocumentos_seq;
       public          postgres    false    5    260            �           0    0 -   gobiernordocumentos_idgobiernordocumentos_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.gobiernordocumentos_idgobiernordocumentos_seq OWNED BY public.gobiernordocumentos.idgobiernordocumentos;
          public          postgres    false    259            
           1259    17238    gobiernorgestionp    TABLE     �   CREATE TABLE public.gobiernorgestionp (
    idgobiernorgestionp integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 %   DROP TABLE public.gobiernorgestionp;
       public         heap    postgres    false    5            	           1259    17237 )   gobiernorgestionp_idgobiernorgestionp_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorgestionp_idgobiernorgestionp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.gobiernorgestionp_idgobiernorgestionp_seq;
       public          postgres    false    5    266            �           0    0 )   gobiernorgestionp_idgobiernorgestionp_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.gobiernorgestionp_idgobiernorgestionp_seq OWNED BY public.gobiernorgestionp.idgobiernorgestionp;
          public          postgres    false    265            �            1259    17168    gobiernorintroduccion    TABLE     �   CREATE TABLE public.gobiernorintroduccion (
    idgobiernorintroduccion integer NOT NULL,
    titulo character varying(45),
    descripcion character varying(45),
    img character varying(45)
);
 )   DROP TABLE public.gobiernorintroduccion;
       public         heap    postgres    false    5            �            1259    17167 1   gobiernorintroduccion_idgobiernorintroduccion_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorintroduccion_idgobiernorintroduccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.gobiernorintroduccion_idgobiernorintroduccion_seq;
       public          postgres    false    250    5            �           0    0 1   gobiernorintroduccion_idgobiernorintroduccion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.gobiernorintroduccion_idgobiernorintroduccion_seq OWNED BY public.gobiernorintroduccion.idgobiernorintroduccion;
          public          postgres    false    249                        1259    17189    gobiernorley    TABLE     �   CREATE TABLE public.gobiernorley (
    idley integer NOT NULL,
    nombre character varying(45),
    descripcion character varying(45),
    img character varying(45)
);
     DROP TABLE public.gobiernorley;
       public         heap    postgres    false    5            �            1259    17188    gobiernorley_idley_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorley_idley_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.gobiernorley_idley_seq;
       public          postgres    false    5    256            �           0    0    gobiernorley_idley_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.gobiernorley_idley_seq OWNED BY public.gobiernorley.idley;
          public          postgres    false    255            �            1259    17182    gobiernormision    TABLE     �   CREATE TABLE public.gobiernormision (
    idmision integer NOT NULL,
    nombre character varying(45),
    descripcion character varying(45),
    img character varying(45)
);
 #   DROP TABLE public.gobiernormision;
       public         heap    postgres    false    5            �            1259    17181    gobiernormision_idmision_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernormision_idmision_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.gobiernormision_idmision_seq;
       public          postgres    false    254    5            �           0    0    gobiernormision_idmision_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.gobiernormision_idmision_seq OWNED BY public.gobiernormision.idmision;
          public          postgres    false    253                       1259    17196    gobiernororganigrama    TABLE     �   CREATE TABLE public.gobiernororganigrama (
    idorganigrama integer NOT NULL,
    titulo character varying(45),
    descripcion character varying(45),
    organigramacol character varying(45),
    "´documento" character varying(45)
);
 (   DROP TABLE public.gobiernororganigrama;
       public         heap    postgres    false    5                       1259    17195 &   gobiernororganigrama_idorganigrama_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernororganigrama_idorganigrama_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.gobiernororganigrama_idorganigrama_seq;
       public          postgres    false    5    258            �           0    0 &   gobiernororganigrama_idorganigrama_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.gobiernororganigrama_idorganigrama_seq OWNED BY public.gobiernororganigrama.idorganigrama;
          public          postgres    false    257                       1259    17308    gobiernorpoliticarpm    TABLE     �   CREATE TABLE public.gobiernorpoliticarpm (
    idgobiernorpoliticarpm integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 (   DROP TABLE public.gobiernorpoliticarpm;
       public         heap    postgres    false    5                       1259    17307 /   gobiernorpoliticarpm_idgobiernorpoliticarpm_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorpoliticarpm_idgobiernorpoliticarpm_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.gobiernorpoliticarpm_idgobiernorpoliticarpm_seq;
       public          postgres    false    5    276            �           0    0 /   gobiernorpoliticarpm_idgobiernorpoliticarpm_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.gobiernorpoliticarpm_idgobiernorpoliticarpm_seq OWNED BY public.gobiernorpoliticarpm.idgobiernorpoliticarpm;
          public          postgres    false    275                       1259    17280    gobiernorpoliticasrpm    TABLE     �   CREATE TABLE public.gobiernorpoliticasrpm (
    idgobiernorpoliticasrpm integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 )   DROP TABLE public.gobiernorpoliticasrpm;
       public         heap    postgres    false    5                       1259    17279 1   gobiernorpoliticasrpm_idgobiernorpoliticasrpm_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorpoliticasrpm_idgobiernorpoliticasrpm_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.gobiernorpoliticasrpm_idgobiernorpoliticasrpm_seq;
       public          postgres    false    272    5            �           0    0 1   gobiernorpoliticasrpm_idgobiernorpoliticasrpm_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.gobiernorpoliticasrpm_idgobiernorpoliticasrpm_seq OWNED BY public.gobiernorpoliticasrpm.idgobiernorpoliticasrpm;
          public          postgres    false    271                       1259    17266    gobiernorpoliticasrsh    TABLE     �   CREATE TABLE public.gobiernorpoliticasrsh (
    idgobiernorpoliticasrsh integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 )   DROP TABLE public.gobiernorpoliticasrsh;
       public         heap    postgres    false    5                       1259    17265 1   gobiernorpoliticasrsh_idgobiernorpoliticasrsh_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernorpoliticasrsh_idgobiernorpoliticasrsh_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.gobiernorpoliticasrsh_idgobiernorpoliticasrsh_seq;
       public          postgres    false    270    5            �           0    0 1   gobiernorpoliticasrsh_idgobiernorpoliticasrsh_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.gobiernorpoliticasrsh_idgobiernorpoliticasrsh_seq OWNED BY public.gobiernorpoliticasrsh.idgobiernorpoliticasrsh;
          public          postgres    false    269                       1259    17350    gobiernortramitesdigitales    TABLE     �   CREATE TABLE public.gobiernortramitesdigitales (
    idgobiernortramitesdigitales integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    gobiernordocumentos_idgobiernordocumentos integer NOT NULL
);
 .   DROP TABLE public.gobiernortramitesdigitales;
       public         heap    postgres    false    5                       1259    17349 ;   gobiernortramitesdigitales_idgobiernortramitesdigitales_seq    SEQUENCE     �   CREATE SEQUENCE public.gobiernortramitesdigitales_idgobiernortramitesdigitales_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE public.gobiernortramitesdigitales_idgobiernortramitesdigitales_seq;
       public          postgres    false    282    5            �           0    0 ;   gobiernortramitesdigitales_idgobiernortramitesdigitales_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.gobiernortramitesdigitales_idgobiernortramitesdigitales_seq OWNED BY public.gobiernortramitesdigitales.idgobiernortramitesdigitales;
          public          postgres    false    281            �            1259    16991    institucion    TABLE     j   CREATE TABLE public.institucion (
    idinstitucion integer NOT NULL,
    nombre character varying(45)
);
    DROP TABLE public.institucion;
       public         heap    postgres    false    5            �            1259    16990    institucion_idinstitucion_seq    SEQUENCE     �   CREATE SEQUENCE public.institucion_idinstitucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.institucion_idinstitucion_seq;
       public          postgres    false    232    5            �           0    0    institucion_idinstitucion_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.institucion_idinstitucion_seq OWNED BY public.institucion.idinstitucion;
          public          postgres    false    231            2           1259    17466 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    5            1           1259    17465    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    306    5            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    305            �            1259    16940    noticia    TABLE     �   CREATE TABLE public.noticia (
    idnoticia integer NOT NULL,
    nombre character varying(45),
    descripcion text,
    img character varying(45),
    fecha date
);
    DROP TABLE public.noticia;
       public         heap    postgres    false    5            �            1259    17125    noticia_has_usuario    TABLE     |   CREATE TABLE public.noticia_has_usuario (
    noticia_idnoticia integer NOT NULL,
    usuario_idusuario integer NOT NULL
);
 '   DROP TABLE public.noticia_has_usuario;
       public         heap    postgres    false    5            �            1259    16939    noticia_idnoticia_seq    SEQUENCE     �   CREATE SEQUENCE public.noticia_idnoticia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.noticia_idnoticia_seq;
       public          postgres    false    5    220            �           0    0    noticia_idnoticia_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.noticia_idnoticia_seq OWNED BY public.noticia.idnoticia;
          public          postgres    false    219            5           1259    17483    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false    5            9           1259    17502    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false    5            8           1259    17501    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    5    313            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    312            0           1259    17456    regionlintro    TABLE     �   CREATE TABLE public.regionlintro (
    idregionlintro integer NOT NULL,
    titulo character varying(45),
    descripcion text
);
     DROP TABLE public.regionlintro;
       public         heap    postgres    false    5            /           1259    17455    regionlintro_idregionlintro_seq    SEQUENCE     �   CREATE SEQUENCE public.regionlintro_idregionlintro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.regionlintro_idregionlintro_seq;
       public          postgres    false    5    304            �           0    0    regionlintro_idregionlintro_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.regionlintro_idregionlintro_seq OWNED BY public.regionlintro.idregionlintro;
          public          postgres    false    303            �            1259    17022    sexo    TABLE     �   CREATE TABLE public.sexo (
    idsexo integer NOT NULL,
    nombre character varying(45),
    departamento_iddepartamento integer NOT NULL
);
    DROP TABLE public.sexo;
       public         heap    postgres    false    5            �            1259    17021    sexo_idsexo_seq    SEQUENCE     �   CREATE SEQUENCE public.sexo_idsexo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sexo_idsexo_seq;
       public          postgres    false    238    5            �           0    0    sexo_idsexo_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sexo_idsexo_seq OWNED BY public.sexo.idsexo;
          public          postgres    false    237            �            1259    16931    slider    TABLE     �   CREATE TABLE public.slider (
    idslider integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    url character varying(45),
    img character varying(45)
);
    DROP TABLE public.slider;
       public         heap    postgres    false    5            �            1259    17140    slider_has_usuario    TABLE     y   CREATE TABLE public.slider_has_usuario (
    slider_idslider integer NOT NULL,
    usuario_idusuario integer NOT NULL
);
 &   DROP TABLE public.slider_has_usuario;
       public         heap    postgres    false    5            �            1259    16930    slider_idslider_seq    SEQUENCE     �   CREATE SEQUENCE public.slider_idslider_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.slider_idslider_seq;
       public          postgres    false    5    218            �           0    0    slider_idslider_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.slider_idslider_seq OWNED BY public.slider.idslider;
          public          postgres    false    217            ,           1259    17437    tablasesion    TABLE     H   CREATE TABLE public.tablasesion (
    idtablasesion integer NOT NULL
);
    DROP TABLE public.tablasesion;
       public         heap    postgres    false    5            +           1259    17436    tablasesion_idtablasesion_seq    SEQUENCE     �   CREATE SEQUENCE public.tablasesion_idtablasesion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tablasesion_idtablasesion_seq;
       public          postgres    false    300    5            �           0    0    tablasesion_idtablasesion_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tablasesion_idtablasesion_seq OWNED BY public.tablasesion.idtablasesion;
          public          postgres    false    299            �            1259    16975    tramitesdigitales    TABLE     �   CREATE TABLE public.tramitesdigitales (
    idtramitesdigitales integer NOT NULL,
    titulo character varying(45),
    descripcion text,
    icono character varying(45),
    url text
);
 %   DROP TABLE public.tramitesdigitales;
       public         heap    postgres    false    5            �            1259    17065    tramitesdigitales_has_usuario    TABLE     �   CREATE TABLE public.tramitesdigitales_has_usuario (
    tramitesdigitales_idtramitesdigitales integer NOT NULL,
    usuario_idusuario integer NOT NULL
);
 1   DROP TABLE public.tramitesdigitales_has_usuario;
       public         heap    postgres    false    5            �            1259    16974 )   tramitesdigitales_idtramitesdigitales_seq    SEQUENCE     �   CREATE SEQUENCE public.tramitesdigitales_idtramitesdigitales_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.tramitesdigitales_idtramitesdigitales_seq;
       public          postgres    false    5    228            �           0    0 )   tramitesdigitales_idtramitesdigitales_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.tramitesdigitales_idtramitesdigitales_seq OWNED BY public.tramitesdigitales.idtramitesdigitales;
          public          postgres    false    227            4           1259    17473    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false    5            3           1259    17472    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    308    5            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    307            �            1259    16924    usuario    TABLE     �   CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    nombreuser character varying(45),
    clave character varying(45),
    status integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    5            �            1259    16923    usuario_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    5    216            �           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;
          public          postgres    false    215            �            1259    16968    videos    TABLE     �   CREATE TABLE public.videos (
    idvideos integer NOT NULL,
    titulo character varying(45),
    fecha date,
    videoscol character varying(45),
    url character varying(45)
);
    DROP TABLE public.videos;
       public         heap    postgres    false    5            �            1259    17110    videos_has_usuario    TABLE     y   CREATE TABLE public.videos_has_usuario (
    videos_idvideos integer NOT NULL,
    usuario_idusuario integer NOT NULL
);
 &   DROP TABLE public.videos_has_usuario;
       public         heap    postgres    false    5            �            1259    16967    videos_idvideos_seq    SEQUENCE     �   CREATE SEQUENCE public.videos_idvideos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.videos_idvideos_seq;
       public          postgres    false    226    5                        0    0    videos_idvideos_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.videos_idvideos_seq OWNED BY public.videos.idvideos;
          public          postgres    false    225                       2604    16987    bannerhome idbannerhome    DEFAULT     �   ALTER TABLE ONLY public.bannerhome ALTER COLUMN idbannerhome SET DEFAULT nextval('public.bannerhome_idbannerhome_seq'::regclass);
 F   ALTER TABLE public.bannerhome ALTER COLUMN idbannerhome DROP DEFAULT;
       public          postgres    false    229    230    230            $           2604    17159    bitacora idbitacora    DEFAULT     z   ALTER TABLE ONLY public.bitacora ALTER COLUMN idbitacora SET DEFAULT nextval('public.bitacora_idbitacora_seq'::regclass);
 B   ALTER TABLE public.bitacora ALTER COLUMN idbitacora DROP DEFAULT;
       public          postgres    false    248    247    248            7           2604    17376    consejor idconsejor    DEFAULT     z   ALTER TABLE ONLY public.consejor ALTER COLUMN idconsejor SET DEFAULT nextval('public.consejor_idconsejor_seq'::regclass);
 B   ALTER TABLE public.consejor ALTER COLUMN idconsejor DROP DEFAULT;
       public          postgres    false    286    285    286            ;           2604    17413    consejoractas idconsejoractas    DEFAULT     �   ALTER TABLE ONLY public.consejoractas ALTER COLUMN idconsejoractas SET DEFAULT nextval('public.consejoractas_idconsejoractas_seq'::regclass);
 L   ALTER TABLE public.consejoractas ALTER COLUMN idconsejoractas DROP DEFAULT;
       public          postgres    false    293    294    294            <           2604    17422 +   consejorcertificadoa idconsejorcertificadoa    DEFAULT     �   ALTER TABLE ONLY public.consejorcertificadoa ALTER COLUMN idconsejorcertificadoa SET DEFAULT nextval('public.consejorcertificadoa_idconsejorcertificadoa_seq'::regclass);
 Z   ALTER TABLE public.consejorcertificadoa ALTER COLUMN idconsejorcertificadoa DROP DEFAULT;
       public          postgres    false    296    295    296            9           2604    17392    consejorcomuna idconsejorcomuna    DEFAULT     �   ALTER TABLE ONLY public.consejorcomuna ALTER COLUMN idconsejorcomuna SET DEFAULT nextval('public.consejorcomuna_idconsejorcomuna_seq'::regclass);
 N   ALTER TABLE public.consejorcomuna ALTER COLUMN idconsejorcomuna DROP DEFAULT;
       public          postgres    false    290    289    290            :           2604    17399 '   consejorconsejeros idconsejorconsejeros    DEFAULT     �   ALTER TABLE ONLY public.consejorconsejeros ALTER COLUMN idconsejorconsejeros SET DEFAULT nextval('public.consejorconsejeros_idconsejorconsejeros_seq'::regclass);
 V   ALTER TABLE public.consejorconsejeros ALTER COLUMN idconsejorconsejeros DROP DEFAULT;
       public          postgres    false    291    292    292            6           2604    17367    consejorintro idconsejorintro    DEFAULT     �   ALTER TABLE ONLY public.consejorintro ALTER COLUMN idconsejorintro SET DEFAULT nextval('public.consejorintro_idconsejorintro_seq'::regclass);
 L   ALTER TABLE public.consejorintro ALTER COLUMN idconsejorintro DROP DEFAULT;
       public          postgres    false    284    283    284            8           2604    17385 )   consejorpresidentec idconsejorpresidentec    DEFAULT     �   ALTER TABLE ONLY public.consejorpresidentec ALTER COLUMN idconsejorpresidentec SET DEFAULT nextval('public.consejorpresidentec_idconsejorpresidentec_seq'::regclass);
 X   ALTER TABLE public.consejorpresidentec ALTER COLUMN idconsejorpresidentec DROP DEFAULT;
       public          postgres    false    288    287    288            =           2604    17431 #   consejorresumeng idconsejorresumeng    DEFAULT     �   ALTER TABLE ONLY public.consejorresumeng ALTER COLUMN idconsejorresumeng SET DEFAULT nextval('public.consejorresumeng_idconsejorresumeng_seq'::regclass);
 R   ALTER TABLE public.consejorresumeng ALTER COLUMN idconsejorresumeng DROP DEFAULT;
       public          postgres    false    298    297    298            ?           2604    17447    consejortablas idconsejortablas    DEFAULT     �   ALTER TABLE ONLY public.consejortablas ALTER COLUMN idconsejortablas SET DEFAULT nextval('public.consejortablas_idconsejortablas_seq'::regclass);
 N   ALTER TABLE public.consejortablas ALTER COLUMN idconsejortablas DROP DEFAULT;
       public          postgres    false    302    301    302            ,           2604    17227    datosdley iddatosdley    DEFAULT     ~   ALTER TABLE ONLY public.datosdley ALTER COLUMN iddatosdley SET DEFAULT nextval('public.datosdley_iddatosdley_seq'::regclass);
 D   ALTER TABLE public.datosdley ALTER COLUMN iddatosdley DROP DEFAULT;
       public          postgres    false    263    264    264            !           2604    17013    departamento iddepartamento    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN iddepartamento SET DEFAULT nextval('public.departamento_iddepartamento_seq'::regclass);
 J   ALTER TABLE public.departamento ALTER COLUMN iddepartamento DROP DEFAULT;
       public          postgres    false    235    236    236                        2604    17001    division iddivision    DEFAULT     z   ALTER TABLE ONLY public.division ALTER COLUMN iddivision SET DEFAULT nextval('public.division_iddivision_seq'::regclass);
 B   ALTER TABLE public.division ALTER COLUMN iddivision DROP DEFAULT;
       public          postgres    false    234    233    234            C           2604    17493    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310    311                       2604    16959    fotografias idfotografias    DEFAULT     �   ALTER TABLE ONLY public.fotografias ALTER COLUMN idfotografias SET DEFAULT nextval('public.fotografias_idfotografias_seq'::regclass);
 H   ALTER TABLE public.fotografias ALTER COLUMN idfotografias DROP DEFAULT;
       public          postgres    false    224    223    224            #           2604    17037    funcionario idfuncionario    DEFAULT     �   ALTER TABLE ONLY public.funcionario ALTER COLUMN idfuncionario SET DEFAULT nextval('public.funcionario_idfuncionario_seq'::regclass);
 H   ALTER TABLE public.funcionario ALTER COLUMN idfuncionario DROP DEFAULT;
       public          postgres    false    240    239    240                       2604    16952 '   galeriafotografica idgaleriafotografica    DEFAULT     �   ALTER TABLE ONLY public.galeriafotografica ALTER COLUMN idgaleriafotografica SET DEFAULT nextval('public.galeriafotografica_idgaleriafotografica_seq'::regclass);
 V   ALTER TABLE public.galeriafotografica ALTER COLUMN idgaleriafotografica DROP DEFAULT;
       public          postgres    false    221    222    222            &           2604    17178    gobiernora idgobiernora    DEFAULT     �   ALTER TABLE ONLY public.gobiernora ALTER COLUMN idgobiernora SET DEFAULT nextval('public.gobiernora_idgobiernora_seq'::regclass);
 F   ALTER TABLE public.gobiernora ALTER COLUMN idgobiernora DROP DEFAULT;
       public          postgres    false    252    251    252            .           2604    17255 '   gobiernorasamblecc idgobiernorasamblecc    DEFAULT     �   ALTER TABLE ONLY public.gobiernorasamblecc ALTER COLUMN idgobiernorasamblecc SET DEFAULT nextval('public.gobiernorasamblecc_idgobiernorasamblecc_seq'::regclass);
 V   ALTER TABLE public.gobiernorasamblecc ALTER COLUMN idgobiernorasamblecc DROP DEFAULT;
       public          postgres    false    267    268    268            4           2604    17339 7   gobiernorcomiteregionalcti idgobiernorcomiteregionalcti    DEFAULT     �   ALTER TABLE ONLY public.gobiernorcomiteregionalcti ALTER COLUMN idgobiernorcomiteregionalcti SET DEFAULT nextval('public.gobiernorcomiteregionalcti_idgobiernorcomiteregionalcti_seq'::regclass);
 f   ALTER TABLE public.gobiernorcomiteregionalcti ALTER COLUMN idgobiernorcomiteregionalcti DROP DEFAULT;
       public          postgres    false    279    280    280            1           2604    17297 -   gobiernorcompromisogi idgobiernorcompromisogi    DEFAULT     �   ALTER TABLE ONLY public.gobiernorcompromisogi ALTER COLUMN idgobiernorcompromisogi SET DEFAULT nextval('public.gobiernorcompromisogi_idgobiernorcompromisogi_seq'::regclass);
 \   ALTER TABLE public.gobiernorcompromisogi ALTER COLUMN idgobiernorcompromisogi DROP DEFAULT;
       public          postgres    false    274    273    274            3           2604    17325 '   gobiernorconsursop idgobiernorconsursop    DEFAULT     �   ALTER TABLE ONLY public.gobiernorconsursop ALTER COLUMN idgobiernorconsursop SET DEFAULT nextval('public.gobiernorconsursop_idgobiernorconsursop_seq'::regclass);
 V   ALTER TABLE public.gobiernorconsursop ALTER COLUMN idgobiernorconsursop DROP DEFAULT;
       public          postgres    false    278    277    278            +           2604    17215 5   gobiernordocumentogestion idgobiernordocumentogestion    DEFAULT     �   ALTER TABLE ONLY public.gobiernordocumentogestion ALTER COLUMN idgobiernordocumentogestion SET DEFAULT nextval('public.gobiernordocumentogestion_idgobiernordocumentogestion_seq'::regclass);
 d   ALTER TABLE public.gobiernordocumentogestion ALTER COLUMN idgobiernordocumentogestion DROP DEFAULT;
       public          postgres    false    262    261    262            *           2604    17206 )   gobiernordocumentos idgobiernordocumentos    DEFAULT     �   ALTER TABLE ONLY public.gobiernordocumentos ALTER COLUMN idgobiernordocumentos SET DEFAULT nextval('public.gobiernordocumentos_idgobiernordocumentos_seq'::regclass);
 X   ALTER TABLE public.gobiernordocumentos ALTER COLUMN idgobiernordocumentos DROP DEFAULT;
       public          postgres    false    259    260    260            -           2604    17241 %   gobiernorgestionp idgobiernorgestionp    DEFAULT     �   ALTER TABLE ONLY public.gobiernorgestionp ALTER COLUMN idgobiernorgestionp SET DEFAULT nextval('public.gobiernorgestionp_idgobiernorgestionp_seq'::regclass);
 T   ALTER TABLE public.gobiernorgestionp ALTER COLUMN idgobiernorgestionp DROP DEFAULT;
       public          postgres    false    265    266    266            %           2604    17171 -   gobiernorintroduccion idgobiernorintroduccion    DEFAULT     �   ALTER TABLE ONLY public.gobiernorintroduccion ALTER COLUMN idgobiernorintroduccion SET DEFAULT nextval('public.gobiernorintroduccion_idgobiernorintroduccion_seq'::regclass);
 \   ALTER TABLE public.gobiernorintroduccion ALTER COLUMN idgobiernorintroduccion DROP DEFAULT;
       public          postgres    false    249    250    250            (           2604    17192    gobiernorley idley    DEFAULT     x   ALTER TABLE ONLY public.gobiernorley ALTER COLUMN idley SET DEFAULT nextval('public.gobiernorley_idley_seq'::regclass);
 A   ALTER TABLE public.gobiernorley ALTER COLUMN idley DROP DEFAULT;
       public          postgres    false    256    255    256            '           2604    17185    gobiernormision idmision    DEFAULT     �   ALTER TABLE ONLY public.gobiernormision ALTER COLUMN idmision SET DEFAULT nextval('public.gobiernormision_idmision_seq'::regclass);
 G   ALTER TABLE public.gobiernormision ALTER COLUMN idmision DROP DEFAULT;
       public          postgres    false    254    253    254            )           2604    17199 "   gobiernororganigrama idorganigrama    DEFAULT     �   ALTER TABLE ONLY public.gobiernororganigrama ALTER COLUMN idorganigrama SET DEFAULT nextval('public.gobiernororganigrama_idorganigrama_seq'::regclass);
 Q   ALTER TABLE public.gobiernororganigrama ALTER COLUMN idorganigrama DROP DEFAULT;
       public          postgres    false    257    258    258            2           2604    17311 +   gobiernorpoliticarpm idgobiernorpoliticarpm    DEFAULT     �   ALTER TABLE ONLY public.gobiernorpoliticarpm ALTER COLUMN idgobiernorpoliticarpm SET DEFAULT nextval('public.gobiernorpoliticarpm_idgobiernorpoliticarpm_seq'::regclass);
 Z   ALTER TABLE public.gobiernorpoliticarpm ALTER COLUMN idgobiernorpoliticarpm DROP DEFAULT;
       public          postgres    false    276    275    276            0           2604    17283 -   gobiernorpoliticasrpm idgobiernorpoliticasrpm    DEFAULT     �   ALTER TABLE ONLY public.gobiernorpoliticasrpm ALTER COLUMN idgobiernorpoliticasrpm SET DEFAULT nextval('public.gobiernorpoliticasrpm_idgobiernorpoliticasrpm_seq'::regclass);
 \   ALTER TABLE public.gobiernorpoliticasrpm ALTER COLUMN idgobiernorpoliticasrpm DROP DEFAULT;
       public          postgres    false    272    271    272            /           2604    17269 -   gobiernorpoliticasrsh idgobiernorpoliticasrsh    DEFAULT     �   ALTER TABLE ONLY public.gobiernorpoliticasrsh ALTER COLUMN idgobiernorpoliticasrsh SET DEFAULT nextval('public.gobiernorpoliticasrsh_idgobiernorpoliticasrsh_seq'::regclass);
 \   ALTER TABLE public.gobiernorpoliticasrsh ALTER COLUMN idgobiernorpoliticasrsh DROP DEFAULT;
       public          postgres    false    269    270    270            5           2604    17353 7   gobiernortramitesdigitales idgobiernortramitesdigitales    DEFAULT     �   ALTER TABLE ONLY public.gobiernortramitesdigitales ALTER COLUMN idgobiernortramitesdigitales SET DEFAULT nextval('public.gobiernortramitesdigitales_idgobiernortramitesdigitales_seq'::regclass);
 f   ALTER TABLE public.gobiernortramitesdigitales ALTER COLUMN idgobiernortramitesdigitales DROP DEFAULT;
       public          postgres    false    281    282    282                       2604    16994    institucion idinstitucion    DEFAULT     �   ALTER TABLE ONLY public.institucion ALTER COLUMN idinstitucion SET DEFAULT nextval('public.institucion_idinstitucion_seq'::regclass);
 H   ALTER TABLE public.institucion ALTER COLUMN idinstitucion DROP DEFAULT;
       public          postgres    false    231    232    232            A           2604    17469    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    305    306                       2604    16943    noticia idnoticia    DEFAULT     v   ALTER TABLE ONLY public.noticia ALTER COLUMN idnoticia SET DEFAULT nextval('public.noticia_idnoticia_seq'::regclass);
 @   ALTER TABLE public.noticia ALTER COLUMN idnoticia DROP DEFAULT;
       public          postgres    false    220    219    220            E           2604    17505    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312    313            @           2604    17459    regionlintro idregionlintro    DEFAULT     �   ALTER TABLE ONLY public.regionlintro ALTER COLUMN idregionlintro SET DEFAULT nextval('public.regionlintro_idregionlintro_seq'::regclass);
 J   ALTER TABLE public.regionlintro ALTER COLUMN idregionlintro DROP DEFAULT;
       public          postgres    false    303    304    304            "           2604    17025    sexo idsexo    DEFAULT     j   ALTER TABLE ONLY public.sexo ALTER COLUMN idsexo SET DEFAULT nextval('public.sexo_idsexo_seq'::regclass);
 :   ALTER TABLE public.sexo ALTER COLUMN idsexo DROP DEFAULT;
       public          postgres    false    238    237    238                       2604    16934    slider idslider    DEFAULT     r   ALTER TABLE ONLY public.slider ALTER COLUMN idslider SET DEFAULT nextval('public.slider_idslider_seq'::regclass);
 >   ALTER TABLE public.slider ALTER COLUMN idslider DROP DEFAULT;
       public          postgres    false    218    217    218            >           2604    17440    tablasesion idtablasesion    DEFAULT     �   ALTER TABLE ONLY public.tablasesion ALTER COLUMN idtablasesion SET DEFAULT nextval('public.tablasesion_idtablasesion_seq'::regclass);
 H   ALTER TABLE public.tablasesion ALTER COLUMN idtablasesion DROP DEFAULT;
       public          postgres    false    299    300    300                       2604    16978 %   tramitesdigitales idtramitesdigitales    DEFAULT     �   ALTER TABLE ONLY public.tramitesdigitales ALTER COLUMN idtramitesdigitales SET DEFAULT nextval('public.tramitesdigitales_idtramitesdigitales_seq'::regclass);
 T   ALTER TABLE public.tramitesdigitales ALTER COLUMN idtramitesdigitales DROP DEFAULT;
       public          postgres    false    227    228    228            B           2604    17476    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    308    308                       2604    16927    usuario idusuario    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    216    215    216                       2604    16971    videos idvideos    DEFAULT     r   ALTER TABLE ONLY public.videos ALTER COLUMN idvideos SET DEFAULT nextval('public.videos_idvideos_seq'::regclass);
 >   ALTER TABLE public.videos ALTER COLUMN idvideos DROP DEFAULT;
       public          postgres    false    225    226    226            w          0    16984 
   bannerhome 
   TABLE DATA           ?   COPY public.bannerhome (idbannerhome, titulo, img) FROM stdin;
    public          postgres    false    230   {      �          0    17080    bannerhome_has_usuario 
   TABLE DATA           \   COPY public.bannerhome_has_usuario (bannerhome_idbannerhome, usuario_idusuario) FROM stdin;
    public          postgres    false    242   �      �          0    17156    bitacora 
   TABLE DATA           P   COPY public.bitacora (idbitacora, accion, tabla, usuario_idusuario) FROM stdin;
    public          postgres    false    248   �      �          0    17373    consejor 
   TABLE DATA           C   COPY public.consejor (idconsejor, titulo, descripcion) FROM stdin;
    public          postgres    false    286   �      �          0    17410    consejoractas 
   TABLE DATA           �   COPY public.consejoractas (idconsejoractas, nombre, fechareunion, hora, provincia, comuna, lugar, numerosesion, consejoractascol, archivo) FROM stdin;
    public          postgres    false    294   �      �          0    17419    consejorcertificadoa 
   TABLE DATA           k   COPY public.consejorcertificadoa (idconsejorcertificadoa, nombre, descripcion, fecha, archivo) FROM stdin;
    public          postgres    false    296         �          0    17389    consejorcomuna 
   TABLE DATA           B   COPY public.consejorcomuna (idconsejorcomuna, nombre) FROM stdin;
    public          postgres    false    290   )      �          0    17396    consejorconsejeros 
   TABLE DATA           �   COPY public.consejorconsejeros (idconsejorconsejeros, nombre, partidop, region, provincia, comuna, email, fono, institucion, cargo, actividades, periododelconsejal, consejorconsejeroscol, comisiones, consejorcomuna_idconsejorcomuna) FROM stdin;
    public          postgres    false    292   F      �          0    17364    consejorintro 
   TABLE DATA           M   COPY public.consejorintro (idconsejorintro, titulo, descripcion) FROM stdin;
    public          postgres    false    284   c      �          0    17382    consejorpresidentec 
   TABLE DATA           D   COPY public.consejorpresidentec (idconsejorpresidentec) FROM stdin;
    public          postgres    false    288   �      �          0    17428    consejorresumeng 
   TABLE DATA           W   COPY public.consejorresumeng (idconsejorresumeng, "año", titulo, archivo) FROM stdin;
    public          postgres    false    298   �      �          0    17444    consejortablas 
   TABLE DATA           ]   COPY public.consejortablas (idconsejortablas, nombre, tablasesion_idtablasesion) FROM stdin;
    public          postgres    false    302   �      �          0    17224 	   datosdley 
   TABLE DATA           g   COPY public.datosdley (iddatosdley, titulo, descripcion, gobiernorley_idley, documentoley) FROM stdin;
    public          postgres    false    264   �      }          0    17010    departamento 
   TABLE DATA           S   COPY public.departamento (iddepartamento, nombre, division_iddivision) FROM stdin;
    public          postgres    false    236   �      {          0    16998    division 
   TABLE DATA           Q   COPY public.division (iddivision, nombre, institucion_idinstitucion) FROM stdin;
    public          postgres    false    234         �          0    17490    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    311   .      q          0    16956    fotografias 
   TABLE DATA           r   COPY public.fotografias (idfotografias, url, fotografiascol, galeriafotografica_idgaleriafotografica) FROM stdin;
    public          postgres    false    224   K      �          0    17034    funcionario 
   TABLE DATA           �   COPY public.funcionario (idfuncionario, nombre_completo, rut, email, telefono, usuario_idusuario, institucion_idinstitucion, division_iddivision, departamento_iddepartamento, sexo_idsexo) FROM stdin;
    public          postgres    false    240   h      o          0    16949    galeriafotografica 
   TABLE DATA           J   COPY public.galeriafotografica (idgaleriafotografica, titulo) FROM stdin;
    public          postgres    false    222   �      �          0    17095    galeriafotografica_has_usuario 
   TABLE DATA           t   COPY public.galeriafotografica_has_usuario (galeriafotografica_idgaleriafotografica, usuario_idusuario) FROM stdin;
    public          postgres    false    243   �      �          0    17175 
   gobiernora 
   TABLE DATA           L   COPY public.gobiernora (idgobiernora, titulo, descripcion, img) FROM stdin;
    public          postgres    false    252   �      �          0    17252    gobiernorasamblecc 
   TABLE DATA           �   COPY public.gobiernorasamblecc (idgobiernorasamblecc, titulo, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    268   �      �          0    17336    gobiernorcomiteregionalcti 
   TABLE DATA           �   COPY public.gobiernorcomiteregionalcti (idgobiernorcomiteregionalcti, titulo, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    280   �      �          0    17294    gobiernorcompromisogi 
   TABLE DATA           �   COPY public.gobiernorcompromisogi (idgobiernorcompromisogi, titulo, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    274         �          0    17322    gobiernorconsursop 
   TABLE DATA           �   COPY public.gobiernorconsursop (idgobiernorconsursop, texto, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    278   3      �          0    17212    gobiernordocumentogestion 
   TABLE DATA           �   COPY public.gobiernordocumentogestion (idgobiernordocumentogestion, titulo, descripcion, img, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    262   P      �          0    17203    gobiernordocumentos 
   TABLE DATA           Q   COPY public.gobiernordocumentos (idgobiernordocumentos, titulo, url) FROM stdin;
    public          postgres    false    260   m      �          0    17238    gobiernorgestionp 
   TABLE DATA           �   COPY public.gobiernorgestionp (idgobiernorgestionp, titulo, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    266   �      �          0    17168    gobiernorintroduccion 
   TABLE DATA           b   COPY public.gobiernorintroduccion (idgobiernorintroduccion, titulo, descripcion, img) FROM stdin;
    public          postgres    false    250   �      �          0    17189    gobiernorley 
   TABLE DATA           G   COPY public.gobiernorley (idley, nombre, descripcion, img) FROM stdin;
    public          postgres    false    256   �      �          0    17182    gobiernormision 
   TABLE DATA           M   COPY public.gobiernormision (idmision, nombre, descripcion, img) FROM stdin;
    public          postgres    false    254   �      �          0    17196    gobiernororganigrama 
   TABLE DATA           q   COPY public.gobiernororganigrama (idorganigrama, titulo, descripcion, organigramacol, "´documento") FROM stdin;
    public          postgres    false    258   �      �          0    17308    gobiernorpoliticarpm 
   TABLE DATA           �   COPY public.gobiernorpoliticarpm (idgobiernorpoliticarpm, titulo, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    276   	      �          0    17280    gobiernorpoliticasrpm 
   TABLE DATA           �   COPY public.gobiernorpoliticasrpm (idgobiernorpoliticasrpm, titulo, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    272   8	      �          0    17266    gobiernorpoliticasrsh 
   TABLE DATA           �   COPY public.gobiernorpoliticasrsh (idgobiernorpoliticasrsh, titulo, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    270   U	      �          0    17350    gobiernortramitesdigitales 
   TABLE DATA           �   COPY public.gobiernortramitesdigitales (idgobiernortramitesdigitales, titulo, descripcion, gobiernordocumentos_idgobiernordocumentos) FROM stdin;
    public          postgres    false    282   r	      y          0    16991    institucion 
   TABLE DATA           <   COPY public.institucion (idinstitucion, nombre) FROM stdin;
    public          postgres    false    232   �	      �          0    17466 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    306   �	      m          0    16940    noticia 
   TABLE DATA           M   COPY public.noticia (idnoticia, nombre, descripcion, img, fecha) FROM stdin;
    public          postgres    false    220   4
      �          0    17125    noticia_has_usuario 
   TABLE DATA           S   COPY public.noticia_has_usuario (noticia_idnoticia, usuario_idusuario) FROM stdin;
    public          postgres    false    245   Q
      �          0    17483    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    309   n
      �          0    17502    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    313   �
      �          0    17456    regionlintro 
   TABLE DATA           K   COPY public.regionlintro (idregionlintro, titulo, descripcion) FROM stdin;
    public          postgres    false    304   �
                0    17022    sexo 
   TABLE DATA           K   COPY public.sexo (idsexo, nombre, departamento_iddepartamento) FROM stdin;
    public          postgres    false    238   �
      k          0    16931    slider 
   TABLE DATA           I   COPY public.slider (idslider, titulo, descripcion, url, img) FROM stdin;
    public          postgres    false    218   �
      �          0    17140    slider_has_usuario 
   TABLE DATA           P   COPY public.slider_has_usuario (slider_idslider, usuario_idusuario) FROM stdin;
    public          postgres    false    246   �
      �          0    17437    tablasesion 
   TABLE DATA           4   COPY public.tablasesion (idtablasesion) FROM stdin;
    public          postgres    false    300         u          0    16975    tramitesdigitales 
   TABLE DATA           a   COPY public.tramitesdigitales (idtramitesdigitales, titulo, descripcion, icono, url) FROM stdin;
    public          postgres    false    228   9      �          0    17065    tramitesdigitales_has_usuario 
   TABLE DATA           q   COPY public.tramitesdigitales_has_usuario (tramitesdigitales_idtramitesdigitales, usuario_idusuario) FROM stdin;
    public          postgres    false    241   V      �          0    17473    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    308   s      i          0    16924    usuario 
   TABLE DATA           G   COPY public.usuario (idusuario, nombreuser, clave, status) FROM stdin;
    public          postgres    false    216   �      s          0    16968    videos 
   TABLE DATA           I   COPY public.videos (idvideos, titulo, fecha, videoscol, url) FROM stdin;
    public          postgres    false    226   �      �          0    17110    videos_has_usuario 
   TABLE DATA           P   COPY public.videos_has_usuario (videos_idvideos, usuario_idusuario) FROM stdin;
    public          postgres    false    244   �                 0    0    bannerhome_idbannerhome_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.bannerhome_idbannerhome_seq', 1, false);
          public          postgres    false    229                       0    0    bitacora_idbitacora_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.bitacora_idbitacora_seq', 1, false);
          public          postgres    false    247                       0    0    consejor_idconsejor_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.consejor_idconsejor_seq', 1, false);
          public          postgres    false    285                       0    0 !   consejoractas_idconsejoractas_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.consejoractas_idconsejoractas_seq', 1, false);
          public          postgres    false    293                       0    0 /   consejorcertificadoa_idconsejorcertificadoa_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.consejorcertificadoa_idconsejorcertificadoa_seq', 1, false);
          public          postgres    false    295                       0    0 #   consejorcomuna_idconsejorcomuna_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.consejorcomuna_idconsejorcomuna_seq', 1, false);
          public          postgres    false    289                       0    0 +   consejorconsejeros_idconsejorconsejeros_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.consejorconsejeros_idconsejorconsejeros_seq', 1, false);
          public          postgres    false    291                       0    0 !   consejorintro_idconsejorintro_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.consejorintro_idconsejorintro_seq', 1, false);
          public          postgres    false    283            	           0    0 -   consejorpresidentec_idconsejorpresidentec_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.consejorpresidentec_idconsejorpresidentec_seq', 1, false);
          public          postgres    false    287            
           0    0 '   consejorresumeng_idconsejorresumeng_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.consejorresumeng_idconsejorresumeng_seq', 1, false);
          public          postgres    false    297                       0    0 #   consejortablas_idconsejortablas_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.consejortablas_idconsejortablas_seq', 1, false);
          public          postgres    false    301                       0    0    datosdley_iddatosdley_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.datosdley_iddatosdley_seq', 1, false);
          public          postgres    false    263                       0    0    departamento_iddepartamento_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.departamento_iddepartamento_seq', 1, false);
          public          postgres    false    235                       0    0    division_iddivision_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.division_iddivision_seq', 1, false);
          public          postgres    false    233                       0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    310                       0    0    fotografias_idfotografias_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.fotografias_idfotografias_seq', 1, false);
          public          postgres    false    223                       0    0    funcionario_idfuncionario_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.funcionario_idfuncionario_seq', 1, false);
          public          postgres    false    239                       0    0 +   galeriafotografica_idgaleriafotografica_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.galeriafotografica_idgaleriafotografica_seq', 1, false);
          public          postgres    false    221                       0    0    gobiernora_idgobiernora_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.gobiernora_idgobiernora_seq', 1, false);
          public          postgres    false    251                       0    0 +   gobiernorasamblecc_idgobiernorasamblecc_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.gobiernorasamblecc_idgobiernorasamblecc_seq', 1, false);
          public          postgres    false    267                       0    0 ;   gobiernorcomiteregionalcti_idgobiernorcomiteregionalcti_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public.gobiernorcomiteregionalcti_idgobiernorcomiteregionalcti_seq', 1, false);
          public          postgres    false    279                       0    0 1   gobiernorcompromisogi_idgobiernorcompromisogi_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.gobiernorcompromisogi_idgobiernorcompromisogi_seq', 1, false);
          public          postgres    false    273                       0    0 +   gobiernorconsursop_idgobiernorconsursop_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.gobiernorconsursop_idgobiernorconsursop_seq', 1, false);
          public          postgres    false    277                       0    0 9   gobiernordocumentogestion_idgobiernordocumentogestion_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.gobiernordocumentogestion_idgobiernordocumentogestion_seq', 1, false);
          public          postgres    false    261                       0    0 -   gobiernordocumentos_idgobiernordocumentos_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.gobiernordocumentos_idgobiernordocumentos_seq', 1, false);
          public          postgres    false    259                       0    0 )   gobiernorgestionp_idgobiernorgestionp_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.gobiernorgestionp_idgobiernorgestionp_seq', 1, false);
          public          postgres    false    265                       0    0 1   gobiernorintroduccion_idgobiernorintroduccion_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.gobiernorintroduccion_idgobiernorintroduccion_seq', 1, false);
          public          postgres    false    249                       0    0    gobiernorley_idley_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.gobiernorley_idley_seq', 1, false);
          public          postgres    false    255                       0    0    gobiernormision_idmision_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.gobiernormision_idmision_seq', 1, false);
          public          postgres    false    253                       0    0 &   gobiernororganigrama_idorganigrama_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.gobiernororganigrama_idorganigrama_seq', 1, false);
          public          postgres    false    257                       0    0 /   gobiernorpoliticarpm_idgobiernorpoliticarpm_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.gobiernorpoliticarpm_idgobiernorpoliticarpm_seq', 1, false);
          public          postgres    false    275                        0    0 1   gobiernorpoliticasrpm_idgobiernorpoliticasrpm_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.gobiernorpoliticasrpm_idgobiernorpoliticasrpm_seq', 1, false);
          public          postgres    false    271            !           0    0 1   gobiernorpoliticasrsh_idgobiernorpoliticasrsh_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.gobiernorpoliticasrsh_idgobiernorpoliticasrsh_seq', 1, false);
          public          postgres    false    269            "           0    0 ;   gobiernortramitesdigitales_idgobiernortramitesdigitales_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public.gobiernortramitesdigitales_idgobiernortramitesdigitales_seq', 1, false);
          public          postgres    false    281            #           0    0    institucion_idinstitucion_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.institucion_idinstitucion_seq', 1, false);
          public          postgres    false    231            $           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);
          public          postgres    false    305            %           0    0    noticia_idnoticia_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.noticia_idnoticia_seq', 1, false);
          public          postgres    false    219            &           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    312            '           0    0    regionlintro_idregionlintro_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.regionlintro_idregionlintro_seq', 1, false);
          public          postgres    false    303            (           0    0    sexo_idsexo_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sexo_idsexo_seq', 1, false);
          public          postgres    false    237            )           0    0    slider_idslider_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.slider_idslider_seq', 1, false);
          public          postgres    false    217            *           0    0    tablasesion_idtablasesion_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tablasesion_idtablasesion_seq', 1, false);
          public          postgres    false    299            +           0    0 )   tramitesdigitales_idtramitesdigitales_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.tramitesdigitales_idtramitesdigitales_seq', 1, false);
          public          postgres    false    227            ,           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    307            -           0    0    usuario_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 1, false);
          public          postgres    false    215            .           0    0    videos_idvideos_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.videos_idvideos_seq', 1, false);
          public          postgres    false    225            c           2606    17084 2   bannerhome_has_usuario bannerhome_has_usuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.bannerhome_has_usuario
    ADD CONSTRAINT bannerhome_has_usuario_pkey PRIMARY KEY (bannerhome_idbannerhome, usuario_idusuario);
 \   ALTER TABLE ONLY public.bannerhome_has_usuario DROP CONSTRAINT bannerhome_has_usuario_pkey;
       public            postgres    false    242    242            U           2606    16989    bannerhome bannerhome_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.bannerhome
    ADD CONSTRAINT bannerhome_pkey PRIMARY KEY (idbannerhome);
 D   ALTER TABLE ONLY public.bannerhome DROP CONSTRAINT bannerhome_pkey;
       public            postgres    false    230            m           2606    17161    bitacora bitacora_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT bitacora_pkey PRIMARY KEY (idbitacora);
 @   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT bitacora_pkey;
       public            postgres    false    248            �           2606    17380    consejor consejor_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.consejor
    ADD CONSTRAINT consejor_pkey PRIMARY KEY (idconsejor);
 @   ALTER TABLE ONLY public.consejor DROP CONSTRAINT consejor_pkey;
       public            postgres    false    286            �           2606    17417     consejoractas consejoractas_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.consejoractas
    ADD CONSTRAINT consejoractas_pkey PRIMARY KEY (idconsejoractas);
 J   ALTER TABLE ONLY public.consejoractas DROP CONSTRAINT consejoractas_pkey;
       public            postgres    false    294            �           2606    17426 .   consejorcertificadoa consejorcertificadoa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.consejorcertificadoa
    ADD CONSTRAINT consejorcertificadoa_pkey PRIMARY KEY (idconsejorcertificadoa);
 X   ALTER TABLE ONLY public.consejorcertificadoa DROP CONSTRAINT consejorcertificadoa_pkey;
       public            postgres    false    296            �           2606    17394 "   consejorcomuna consejorcomuna_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.consejorcomuna
    ADD CONSTRAINT consejorcomuna_pkey PRIMARY KEY (idconsejorcomuna);
 L   ALTER TABLE ONLY public.consejorcomuna DROP CONSTRAINT consejorcomuna_pkey;
       public            postgres    false    290            �           2606    17403 *   consejorconsejeros consejorconsejeros_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.consejorconsejeros
    ADD CONSTRAINT consejorconsejeros_pkey PRIMARY KEY (idconsejorconsejeros);
 T   ALTER TABLE ONLY public.consejorconsejeros DROP CONSTRAINT consejorconsejeros_pkey;
       public            postgres    false    292            �           2606    17371     consejorintro consejorintro_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.consejorintro
    ADD CONSTRAINT consejorintro_pkey PRIMARY KEY (idconsejorintro);
 J   ALTER TABLE ONLY public.consejorintro DROP CONSTRAINT consejorintro_pkey;
       public            postgres    false    284            �           2606    17387 ,   consejorpresidentec consejorpresidentec_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.consejorpresidentec
    ADD CONSTRAINT consejorpresidentec_pkey PRIMARY KEY (idconsejorpresidentec);
 V   ALTER TABLE ONLY public.consejorpresidentec DROP CONSTRAINT consejorpresidentec_pkey;
       public            postgres    false    288            �           2606    17435 &   consejorresumeng consejorresumeng_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.consejorresumeng
    ADD CONSTRAINT consejorresumeng_pkey PRIMARY KEY (idconsejorresumeng);
 P   ALTER TABLE ONLY public.consejorresumeng DROP CONSTRAINT consejorresumeng_pkey;
       public            postgres    false    298            �           2606    17449 "   consejortablas consejortablas_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.consejortablas
    ADD CONSTRAINT consejortablas_pkey PRIMARY KEY (idconsejortablas);
 L   ALTER TABLE ONLY public.consejortablas DROP CONSTRAINT consejortablas_pkey;
       public            postgres    false    302            }           2606    17231    datosdley datosdley_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.datosdley
    ADD CONSTRAINT datosdley_pkey PRIMARY KEY (iddatosdley);
 B   ALTER TABLE ONLY public.datosdley DROP CONSTRAINT datosdley_pkey;
       public            postgres    false    264            [           2606    17015    departamento departamento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (iddepartamento);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    236            Y           2606    17003    division division_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.division
    ADD CONSTRAINT division_pkey PRIMARY KEY (iddivision);
 @   ALTER TABLE ONLY public.division DROP CONSTRAINT division_pkey;
       public            postgres    false    234            �           2606    17498    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    311            �           2606    17500 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    311            O           2606    16961    fotografias fotografias_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.fotografias
    ADD CONSTRAINT fotografias_pkey PRIMARY KEY (idfotografias);
 F   ALTER TABLE ONLY public.fotografias DROP CONSTRAINT fotografias_pkey;
       public            postgres    false    224            _           2606    17039    funcionario funcionario_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (idfuncionario);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    240            e           2606    17099 B   galeriafotografica_has_usuario galeriafotografica_has_usuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.galeriafotografica_has_usuario
    ADD CONSTRAINT galeriafotografica_has_usuario_pkey PRIMARY KEY (galeriafotografica_idgaleriafotografica, usuario_idusuario);
 l   ALTER TABLE ONLY public.galeriafotografica_has_usuario DROP CONSTRAINT galeriafotografica_has_usuario_pkey;
       public            postgres    false    243    243            M           2606    16954 *   galeriafotografica galeriafotografica_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.galeriafotografica
    ADD CONSTRAINT galeriafotografica_pkey PRIMARY KEY (idgaleriafotografica);
 T   ALTER TABLE ONLY public.galeriafotografica DROP CONSTRAINT galeriafotografica_pkey;
       public            postgres    false    222            q           2606    17180    gobiernora gobiernora_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.gobiernora
    ADD CONSTRAINT gobiernora_pkey PRIMARY KEY (idgobiernora);
 D   ALTER TABLE ONLY public.gobiernora DROP CONSTRAINT gobiernora_pkey;
       public            postgres    false    252            �           2606    17259 *   gobiernorasamblecc gobiernorasamblecc_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.gobiernorasamblecc
    ADD CONSTRAINT gobiernorasamblecc_pkey PRIMARY KEY (idgobiernorasamblecc);
 T   ALTER TABLE ONLY public.gobiernorasamblecc DROP CONSTRAINT gobiernorasamblecc_pkey;
       public            postgres    false    268            �           2606    17343 :   gobiernorcomiteregionalcti gobiernorcomiteregionalcti_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorcomiteregionalcti
    ADD CONSTRAINT gobiernorcomiteregionalcti_pkey PRIMARY KEY (idgobiernorcomiteregionalcti);
 d   ALTER TABLE ONLY public.gobiernorcomiteregionalcti DROP CONSTRAINT gobiernorcomiteregionalcti_pkey;
       public            postgres    false    280            �           2606    17301 0   gobiernorcompromisogi gobiernorcompromisogi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorcompromisogi
    ADD CONSTRAINT gobiernorcompromisogi_pkey PRIMARY KEY (idgobiernorcompromisogi);
 Z   ALTER TABLE ONLY public.gobiernorcompromisogi DROP CONSTRAINT gobiernorcompromisogi_pkey;
       public            postgres    false    274            �           2606    17329 *   gobiernorconsursop gobiernorconsursop_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.gobiernorconsursop
    ADD CONSTRAINT gobiernorconsursop_pkey PRIMARY KEY (idgobiernorconsursop);
 T   ALTER TABLE ONLY public.gobiernorconsursop DROP CONSTRAINT gobiernorconsursop_pkey;
       public            postgres    false    278            {           2606    17217 8   gobiernordocumentogestion gobiernordocumentogestion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gobiernordocumentogestion
    ADD CONSTRAINT gobiernordocumentogestion_pkey PRIMARY KEY (idgobiernordocumentogestion);
 b   ALTER TABLE ONLY public.gobiernordocumentogestion DROP CONSTRAINT gobiernordocumentogestion_pkey;
       public            postgres    false    262            y           2606    17210 ,   gobiernordocumentos gobiernordocumentos_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.gobiernordocumentos
    ADD CONSTRAINT gobiernordocumentos_pkey PRIMARY KEY (idgobiernordocumentos);
 V   ALTER TABLE ONLY public.gobiernordocumentos DROP CONSTRAINT gobiernordocumentos_pkey;
       public            postgres    false    260                       2606    17245 (   gobiernorgestionp gobiernorgestionp_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.gobiernorgestionp
    ADD CONSTRAINT gobiernorgestionp_pkey PRIMARY KEY (idgobiernorgestionp);
 R   ALTER TABLE ONLY public.gobiernorgestionp DROP CONSTRAINT gobiernorgestionp_pkey;
       public            postgres    false    266            o           2606    17173 0   gobiernorintroduccion gobiernorintroduccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorintroduccion
    ADD CONSTRAINT gobiernorintroduccion_pkey PRIMARY KEY (idgobiernorintroduccion);
 Z   ALTER TABLE ONLY public.gobiernorintroduccion DROP CONSTRAINT gobiernorintroduccion_pkey;
       public            postgres    false    250            u           2606    17194    gobiernorley gobiernorley_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.gobiernorley
    ADD CONSTRAINT gobiernorley_pkey PRIMARY KEY (idley);
 H   ALTER TABLE ONLY public.gobiernorley DROP CONSTRAINT gobiernorley_pkey;
       public            postgres    false    256            s           2606    17187 $   gobiernormision gobiernormision_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.gobiernormision
    ADD CONSTRAINT gobiernormision_pkey PRIMARY KEY (idmision);
 N   ALTER TABLE ONLY public.gobiernormision DROP CONSTRAINT gobiernormision_pkey;
       public            postgres    false    254            w           2606    17201 .   gobiernororganigrama gobiernororganigrama_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.gobiernororganigrama
    ADD CONSTRAINT gobiernororganigrama_pkey PRIMARY KEY (idorganigrama);
 X   ALTER TABLE ONLY public.gobiernororganigrama DROP CONSTRAINT gobiernororganigrama_pkey;
       public            postgres    false    258            �           2606    17315 .   gobiernorpoliticarpm gobiernorpoliticarpm_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorpoliticarpm
    ADD CONSTRAINT gobiernorpoliticarpm_pkey PRIMARY KEY (idgobiernorpoliticarpm);
 X   ALTER TABLE ONLY public.gobiernorpoliticarpm DROP CONSTRAINT gobiernorpoliticarpm_pkey;
       public            postgres    false    276            �           2606    17287 0   gobiernorpoliticasrpm gobiernorpoliticasrpm_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorpoliticasrpm
    ADD CONSTRAINT gobiernorpoliticasrpm_pkey PRIMARY KEY (idgobiernorpoliticasrpm);
 Z   ALTER TABLE ONLY public.gobiernorpoliticasrpm DROP CONSTRAINT gobiernorpoliticasrpm_pkey;
       public            postgres    false    272            �           2606    17273 0   gobiernorpoliticasrsh gobiernorpoliticasrsh_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorpoliticasrsh
    ADD CONSTRAINT gobiernorpoliticasrsh_pkey PRIMARY KEY (idgobiernorpoliticasrsh);
 Z   ALTER TABLE ONLY public.gobiernorpoliticasrsh DROP CONSTRAINT gobiernorpoliticasrsh_pkey;
       public            postgres    false    270            �           2606    17357 :   gobiernortramitesdigitales gobiernortramitesdigitales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gobiernortramitesdigitales
    ADD CONSTRAINT gobiernortramitesdigitales_pkey PRIMARY KEY (idgobiernortramitesdigitales);
 d   ALTER TABLE ONLY public.gobiernortramitesdigitales DROP CONSTRAINT gobiernortramitesdigitales_pkey;
       public            postgres    false    282            W           2606    16996    institucion institucion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.institucion
    ADD CONSTRAINT institucion_pkey PRIMARY KEY (idinstitucion);
 F   ALTER TABLE ONLY public.institucion DROP CONSTRAINT institucion_pkey;
       public            postgres    false    232            �           2606    17471    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    306            i           2606    17129 ,   noticia_has_usuario noticia_has_usuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.noticia_has_usuario
    ADD CONSTRAINT noticia_has_usuario_pkey PRIMARY KEY (noticia_idnoticia, usuario_idusuario);
 V   ALTER TABLE ONLY public.noticia_has_usuario DROP CONSTRAINT noticia_has_usuario_pkey;
       public            postgres    false    245    245            K           2606    16947    noticia noticia_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (idnoticia);
 >   ALTER TABLE ONLY public.noticia DROP CONSTRAINT noticia_pkey;
       public            postgres    false    220            �           2606    17509 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    313            �           2606    17512 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    313            �           2606    17463    regionlintro regionlintro_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.regionlintro
    ADD CONSTRAINT regionlintro_pkey PRIMARY KEY (idregionlintro);
 H   ALTER TABLE ONLY public.regionlintro DROP CONSTRAINT regionlintro_pkey;
       public            postgres    false    304            ]           2606    17027    sexo sexo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT sexo_pkey PRIMARY KEY (idsexo);
 8   ALTER TABLE ONLY public.sexo DROP CONSTRAINT sexo_pkey;
       public            postgres    false    238            k           2606    17144 *   slider_has_usuario slider_has_usuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.slider_has_usuario
    ADD CONSTRAINT slider_has_usuario_pkey PRIMARY KEY (slider_idslider, usuario_idusuario);
 T   ALTER TABLE ONLY public.slider_has_usuario DROP CONSTRAINT slider_has_usuario_pkey;
       public            postgres    false    246    246            I           2606    16938    slider slider_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.slider
    ADD CONSTRAINT slider_pkey PRIMARY KEY (idslider);
 <   ALTER TABLE ONLY public.slider DROP CONSTRAINT slider_pkey;
       public            postgres    false    218            �           2606    17442    tablasesion tablasesion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tablasesion
    ADD CONSTRAINT tablasesion_pkey PRIMARY KEY (idtablasesion);
 F   ALTER TABLE ONLY public.tablasesion DROP CONSTRAINT tablasesion_pkey;
       public            postgres    false    300            a           2606    17069 @   tramitesdigitales_has_usuario tramitesdigitales_has_usuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tramitesdigitales_has_usuario
    ADD CONSTRAINT tramitesdigitales_has_usuario_pkey PRIMARY KEY (tramitesdigitales_idtramitesdigitales, usuario_idusuario);
 j   ALTER TABLE ONLY public.tramitesdigitales_has_usuario DROP CONSTRAINT tramitesdigitales_has_usuario_pkey;
       public            postgres    false    241    241            S           2606    16982 (   tramitesdigitales tramitesdigitales_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.tramitesdigitales
    ADD CONSTRAINT tramitesdigitales_pkey PRIMARY KEY (idtramitesdigitales);
 R   ALTER TABLE ONLY public.tramitesdigitales DROP CONSTRAINT tramitesdigitales_pkey;
       public            postgres    false    228            �           2606    17482    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    308            �           2606    17480    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    308            G           2606    16929    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    216            g           2606    17114 *   videos_has_usuario videos_has_usuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.videos_has_usuario
    ADD CONSTRAINT videos_has_usuario_pkey PRIMARY KEY (videos_idvideos, usuario_idusuario);
 T   ALTER TABLE ONLY public.videos_has_usuario DROP CONSTRAINT videos_has_usuario_pkey;
       public            postgres    false    244    244            Q           2606    16973    videos videos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (idvideos);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    226            �           1259    17488    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    309            �           1259    17510 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    313    313            �           2606    17085 <   bannerhome_has_usuario fk_bannerhome_has_usuario_bannerhome1    FK CONSTRAINT     �   ALTER TABLE ONLY public.bannerhome_has_usuario
    ADD CONSTRAINT fk_bannerhome_has_usuario_bannerhome1 FOREIGN KEY (bannerhome_idbannerhome) REFERENCES public.bannerhome(idbannerhome);
 f   ALTER TABLE ONLY public.bannerhome_has_usuario DROP CONSTRAINT fk_bannerhome_has_usuario_bannerhome1;
       public          postgres    false    230    242    4949            �           2606    17090 9   bannerhome_has_usuario fk_bannerhome_has_usuario_usuario1    FK CONSTRAINT     �   ALTER TABLE ONLY public.bannerhome_has_usuario
    ADD CONSTRAINT fk_bannerhome_has_usuario_usuario1 FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 c   ALTER TABLE ONLY public.bannerhome_has_usuario DROP CONSTRAINT fk_bannerhome_has_usuario_usuario1;
       public          postgres    false    4935    242    216            �           2606    17162    bitacora fk_bitacora_usuario1    FK CONSTRAINT     �   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_bitacora_usuario1 FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 G   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_bitacora_usuario1;
       public          postgres    false    216    4935    248            �           2606    17404 8   consejorconsejeros fk_consejorconsejeros_consejorcomuna1    FK CONSTRAINT     �   ALTER TABLE ONLY public.consejorconsejeros
    ADD CONSTRAINT fk_consejorconsejeros_consejorcomuna1 FOREIGN KEY (consejorcomuna_idconsejorcomuna) REFERENCES public.consejorcomuna(idconsejorcomuna);
 b   ALTER TABLE ONLY public.consejorconsejeros DROP CONSTRAINT fk_consejorconsejeros_consejorcomuna1;
       public          postgres    false    5015    292    290            �           2606    17450 -   consejortablas fk_consejortablas_tablasesion1    FK CONSTRAINT     �   ALTER TABLE ONLY public.consejortablas
    ADD CONSTRAINT fk_consejortablas_tablasesion1 FOREIGN KEY (tablasesion_idtablasesion) REFERENCES public.tablasesion(idtablasesion);
 W   ALTER TABLE ONLY public.consejortablas DROP CONSTRAINT fk_consejortablas_tablasesion1;
       public          postgres    false    5025    300    302            �           2606    17232 $   datosdley fk_datosdley_gobiernorley1    FK CONSTRAINT     �   ALTER TABLE ONLY public.datosdley
    ADD CONSTRAINT fk_datosdley_gobiernorley1 FOREIGN KEY (gobiernorley_idley) REFERENCES public.gobiernorley(idley);
 N   ALTER TABLE ONLY public.datosdley DROP CONSTRAINT fk_datosdley_gobiernorley1;
       public          postgres    false    256    4981    264            �           2606    17016 &   departamento fk_departamento_division1    FK CONSTRAINT     �   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT fk_departamento_division1 FOREIGN KEY (division_iddivision) REFERENCES public.division(iddivision);
 P   ALTER TABLE ONLY public.departamento DROP CONSTRAINT fk_departamento_division1;
       public          postgres    false    236    4953    234            �           2606    17004 !   division fk_division_institucion1    FK CONSTRAINT     �   ALTER TABLE ONLY public.division
    ADD CONSTRAINT fk_division_institucion1 FOREIGN KEY (institucion_idinstitucion) REFERENCES public.institucion(idinstitucion);
 K   ALTER TABLE ONLY public.division DROP CONSTRAINT fk_division_institucion1;
       public          postgres    false    232    234    4951            �           2606    16962 -   fotografias fk_fotografias_galeriafotografica    FK CONSTRAINT     �   ALTER TABLE ONLY public.fotografias
    ADD CONSTRAINT fk_fotografias_galeriafotografica FOREIGN KEY (galeriafotografica_idgaleriafotografica) REFERENCES public.galeriafotografica(idgaleriafotografica);
 W   ALTER TABLE ONLY public.fotografias DROP CONSTRAINT fk_fotografias_galeriafotografica;
       public          postgres    false    224    4941    222            �           2606    17055 (   funcionario fk_funcionario_departamento1    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_funcionario_departamento1 FOREIGN KEY (departamento_iddepartamento) REFERENCES public.departamento(iddepartamento);
 R   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_funcionario_departamento1;
       public          postgres    false    4955    240    236            �           2606    17050 $   funcionario fk_funcionario_division1    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_funcionario_division1 FOREIGN KEY (division_iddivision) REFERENCES public.division(iddivision);
 N   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_funcionario_division1;
       public          postgres    false    4953    240    234            �           2606    17045 '   funcionario fk_funcionario_institucion1    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_funcionario_institucion1 FOREIGN KEY (institucion_idinstitucion) REFERENCES public.institucion(idinstitucion);
 Q   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_funcionario_institucion1;
       public          postgres    false    232    4951    240            �           2606    17060     funcionario fk_funcionario_sexo1    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_funcionario_sexo1 FOREIGN KEY (sexo_idsexo) REFERENCES public.sexo(idsexo);
 J   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_funcionario_sexo1;
       public          postgres    false    238    4957    240            �           2606    17040 #   funcionario fk_funcionario_usuario1    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_funcionario_usuario1 FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 M   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_funcionario_usuario1;
       public          postgres    false    216    4935    240            �           2606    17100 T   galeriafotografica_has_usuario fk_galeriafotografica_has_usuario_galeriafotografica1    FK CONSTRAINT     �   ALTER TABLE ONLY public.galeriafotografica_has_usuario
    ADD CONSTRAINT fk_galeriafotografica_has_usuario_galeriafotografica1 FOREIGN KEY (galeriafotografica_idgaleriafotografica) REFERENCES public.galeriafotografica(idgaleriafotografica);
 ~   ALTER TABLE ONLY public.galeriafotografica_has_usuario DROP CONSTRAINT fk_galeriafotografica_has_usuario_galeriafotografica1;
       public          postgres    false    4941    243    222            �           2606    17105 I   galeriafotografica_has_usuario fk_galeriafotografica_has_usuario_usuario1    FK CONSTRAINT     �   ALTER TABLE ONLY public.galeriafotografica_has_usuario
    ADD CONSTRAINT fk_galeriafotografica_has_usuario_usuario1 FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 s   ALTER TABLE ONLY public.galeriafotografica_has_usuario DROP CONSTRAINT fk_galeriafotografica_has_usuario_usuario1;
       public          postgres    false    243    4935    216            �           2606    17260 =   gobiernorasamblecc fk_gobiernorasamblecc_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorasamblecc
    ADD CONSTRAINT fk_gobiernorasamblecc_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 g   ALTER TABLE ONLY public.gobiernorasamblecc DROP CONSTRAINT fk_gobiernorasamblecc_gobiernordocumentos1;
       public          postgres    false    4985    268    260            �           2606    17344 M   gobiernorcomiteregionalcti fk_gobiernorcomiteregionalcti_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorcomiteregionalcti
    ADD CONSTRAINT fk_gobiernorcomiteregionalcti_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 w   ALTER TABLE ONLY public.gobiernorcomiteregionalcti DROP CONSTRAINT fk_gobiernorcomiteregionalcti_gobiernordocumentos1;
       public          postgres    false    280    260    4985            �           2606    17302 C   gobiernorcompromisogi fk_gobiernorcompromisogi_gobiernordocumentos2    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorcompromisogi
    ADD CONSTRAINT fk_gobiernorcompromisogi_gobiernordocumentos2 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 m   ALTER TABLE ONLY public.gobiernorcompromisogi DROP CONSTRAINT fk_gobiernorcompromisogi_gobiernordocumentos2;
       public          postgres    false    4985    274    260            �           2606    17330 =   gobiernorconsursop fk_gobiernorconsursop_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorconsursop
    ADD CONSTRAINT fk_gobiernorconsursop_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 g   ALTER TABLE ONLY public.gobiernorconsursop DROP CONSTRAINT fk_gobiernorconsursop_gobiernordocumentos1;
       public          postgres    false    278    260    4985            �           2606    17218 K   gobiernordocumentogestion fk_gobiernordocumentogestion_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernordocumentogestion
    ADD CONSTRAINT fk_gobiernordocumentogestion_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 u   ALTER TABLE ONLY public.gobiernordocumentogestion DROP CONSTRAINT fk_gobiernordocumentogestion_gobiernordocumentos1;
       public          postgres    false    262    4985    260            �           2606    17246 ;   gobiernorgestionp fk_gobiernorgestionp_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorgestionp
    ADD CONSTRAINT fk_gobiernorgestionp_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 e   ALTER TABLE ONLY public.gobiernorgestionp DROP CONSTRAINT fk_gobiernorgestionp_gobiernordocumentos1;
       public          postgres    false    4985    260    266            �           2606    17316 A   gobiernorpoliticarpm fk_gobiernorpoliticarpm_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorpoliticarpm
    ADD CONSTRAINT fk_gobiernorpoliticarpm_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 k   ALTER TABLE ONLY public.gobiernorpoliticarpm DROP CONSTRAINT fk_gobiernorpoliticarpm_gobiernordocumentos1;
       public          postgres    false    4985    276    260            �           2606    17288 C   gobiernorpoliticasrpm fk_gobiernorpoliticasrpm_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorpoliticasrpm
    ADD CONSTRAINT fk_gobiernorpoliticasrpm_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 m   ALTER TABLE ONLY public.gobiernorpoliticasrpm DROP CONSTRAINT fk_gobiernorpoliticasrpm_gobiernordocumentos1;
       public          postgres    false    272    4985    260            �           2606    17274 C   gobiernorpoliticasrsh fk_gobiernorpoliticasrsh_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernorpoliticasrsh
    ADD CONSTRAINT fk_gobiernorpoliticasrsh_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 m   ALTER TABLE ONLY public.gobiernorpoliticasrsh DROP CONSTRAINT fk_gobiernorpoliticasrsh_gobiernordocumentos1;
       public          postgres    false    4985    260    270            �           2606    17358 M   gobiernortramitesdigitales fk_gobiernortramitesdigitales_gobiernordocumentos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.gobiernortramitesdigitales
    ADD CONSTRAINT fk_gobiernortramitesdigitales_gobiernordocumentos1 FOREIGN KEY (gobiernordocumentos_idgobiernordocumentos) REFERENCES public.gobiernordocumentos(idgobiernordocumentos);
 w   ALTER TABLE ONLY public.gobiernortramitesdigitales DROP CONSTRAINT fk_gobiernortramitesdigitales_gobiernordocumentos1;
       public          postgres    false    282    260    4985            �           2606    17130 3   noticia_has_usuario fk_noticia_has_usuario_noticia1    FK CONSTRAINT     �   ALTER TABLE ONLY public.noticia_has_usuario
    ADD CONSTRAINT fk_noticia_has_usuario_noticia1 FOREIGN KEY (noticia_idnoticia) REFERENCES public.noticia(idnoticia);
 ]   ALTER TABLE ONLY public.noticia_has_usuario DROP CONSTRAINT fk_noticia_has_usuario_noticia1;
       public          postgres    false    245    4939    220            �           2606    17135 3   noticia_has_usuario fk_noticia_has_usuario_usuario1    FK CONSTRAINT     �   ALTER TABLE ONLY public.noticia_has_usuario
    ADD CONSTRAINT fk_noticia_has_usuario_usuario1 FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 ]   ALTER TABLE ONLY public.noticia_has_usuario DROP CONSTRAINT fk_noticia_has_usuario_usuario1;
       public          postgres    false    216    245    4935            �           2606    17028    sexo fk_sexo_departamento1    FK CONSTRAINT     �   ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT fk_sexo_departamento1 FOREIGN KEY (departamento_iddepartamento) REFERENCES public.departamento(iddepartamento);
 D   ALTER TABLE ONLY public.sexo DROP CONSTRAINT fk_sexo_departamento1;
       public          postgres    false    238    4955    236            �           2606    17145 0   slider_has_usuario fk_slider_has_usuario_slider1    FK CONSTRAINT     �   ALTER TABLE ONLY public.slider_has_usuario
    ADD CONSTRAINT fk_slider_has_usuario_slider1 FOREIGN KEY (slider_idslider) REFERENCES public.slider(idslider);
 Z   ALTER TABLE ONLY public.slider_has_usuario DROP CONSTRAINT fk_slider_has_usuario_slider1;
       public          postgres    false    4937    246    218            �           2606    17150 1   slider_has_usuario fk_slider_has_usuario_usuario1    FK CONSTRAINT     �   ALTER TABLE ONLY public.slider_has_usuario
    ADD CONSTRAINT fk_slider_has_usuario_usuario1 FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 [   ALTER TABLE ONLY public.slider_has_usuario DROP CONSTRAINT fk_slider_has_usuario_usuario1;
       public          postgres    false    216    4935    246            �           2606    17070 Q   tramitesdigitales_has_usuario fk_tramitesdigitales_has_usuario_tramitesdigitales1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tramitesdigitales_has_usuario
    ADD CONSTRAINT fk_tramitesdigitales_has_usuario_tramitesdigitales1 FOREIGN KEY (tramitesdigitales_idtramitesdigitales) REFERENCES public.tramitesdigitales(idtramitesdigitales);
 {   ALTER TABLE ONLY public.tramitesdigitales_has_usuario DROP CONSTRAINT fk_tramitesdigitales_has_usuario_tramitesdigitales1;
       public          postgres    false    4947    241    228            �           2606    17075 G   tramitesdigitales_has_usuario fk_tramitesdigitales_has_usuario_usuario1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tramitesdigitales_has_usuario
    ADD CONSTRAINT fk_tramitesdigitales_has_usuario_usuario1 FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 q   ALTER TABLE ONLY public.tramitesdigitales_has_usuario DROP CONSTRAINT fk_tramitesdigitales_has_usuario_usuario1;
       public          postgres    false    4935    241    216            �           2606    17120 1   videos_has_usuario fk_videos_has_usuario_usuario1    FK CONSTRAINT     �   ALTER TABLE ONLY public.videos_has_usuario
    ADD CONSTRAINT fk_videos_has_usuario_usuario1 FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 [   ALTER TABLE ONLY public.videos_has_usuario DROP CONSTRAINT fk_videos_has_usuario_usuario1;
       public          postgres    false    216    4935    244            �           2606    17115 0   videos_has_usuario fk_videos_has_usuario_videos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.videos_has_usuario
    ADD CONSTRAINT fk_videos_has_usuario_videos1 FOREIGN KEY (videos_idvideos) REFERENCES public.videos(idvideos);
 Z   ALTER TABLE ONLY public.videos_has_usuario DROP CONSTRAINT fk_videos_has_usuario_videos1;
       public          postgres    false    4945    244    226            w      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      }      x������ � �      {      x������ � �      �      x������ � �      q      x������ � �      �      x������ � �      o      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      y      x������ � �      �   x   x�U�A�0��1U��P���2��(��T�~I�����]S�,y�9��!d�"��dE�1JGƝA��oV��<!�Jiʽ*=�5/ʓ�(^il���Z�w���퓴r� �)i������(6>}      m      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      k      x������ � �      �      x������ � �      �      x������ � �      u      x������ � �      �      x������ � �      �      x������ � �      i      x������ � �      s      x������ � �      �      x������ � �     