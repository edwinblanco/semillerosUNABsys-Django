--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Ubuntu 14.6-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.6

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

--
-- Name: heroku_ext; Type: SCHEMA; Schema: -; Owner: ub35df37omk60o
--

CREATE SCHEMA heroku_ext;


ALTER SCHEMA heroku_ext OWNER TO ub35df37omk60o;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_honeypot_loginattempt; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.admin_honeypot_loginattempt (
    id bigint NOT NULL,
    username character varying(255),
    ip_address inet,
    session_key character varying(50),
    user_agent text,
    "timestamp" timestamp with time zone NOT NULL,
    path text
);


ALTER TABLE public.admin_honeypot_loginattempt OWNER TO hgmenwrwkjrpsu;

--
-- Name: admin_honeypot_loginattempt_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.admin_honeypot_loginattempt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_honeypot_loginattempt_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: admin_honeypot_loginattempt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.admin_honeypot_loginattempt_id_seq OWNED BY public.admin_honeypot_loginattempt.id;


--
-- Name: asignacion_evaluador_asignacionevaluacion; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.asignacion_evaluador_asignacionevaluacion (
    id bigint NOT NULL,
    fecha_asignacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    asignacion_calificada1 boolean NOT NULL,
    asignacion_calificada2 boolean NOT NULL,
    proyecto_id bigint
);


ALTER TABLE public.asignacion_evaluador_asignacionevaluacion OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.asignacion_evaluador_asignacionevaluacion_evaluadores (
    id bigint NOT NULL,
    asignacionevaluacion_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.asignacion_evaluador_asignacionevaluacion_evaluadores OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.asignacion_evaluador_asignacionevaluacion_evaluadores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignacion_evaluador_asignacionevaluacion_evaluadores_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.asignacion_evaluador_asignacionevaluacion_evaluadores_id_seq OWNED BY public.asignacion_evaluador_asignacionevaluacion_evaluadores.id;


--
-- Name: asignacion_evaluador_asignacionevaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.asignacion_evaluador_asignacionevaluacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignacion_evaluador_asignacionevaluacion_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_asignacionevaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.asignacion_evaluador_asignacionevaluacion_id_seq OWNED BY public.asignacion_evaluador_asignacionevaluacion.id;


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.asignacion_evaluador_asignacionevaluacioninngeniatec (
    id bigint NOT NULL,
    fecha_asignacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    proyecto_id bigint,
    asignacion_calificada1 boolean NOT NULL
);


ALTER TABLE public.asignacion_evaluador_asignacionevaluacioninngeniatec OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 (
    id bigint NOT NULL,
    asignacionevaluacioninngeniatec_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_eva_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.asignacion_evaluador_asignacionevaluacioninngeniatec_eva_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignacion_evaluador_asignacionevaluacioninngeniatec_eva_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_eva_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.asignacion_evaluador_asignacionevaluacioninngeniatec_eva_id_seq OWNED BY public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515.id;


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.asignacion_evaluador_asignacionevaluacioninngeniatec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignacion_evaluador_asignacionevaluacioninngeniatec_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.asignacion_evaluador_asignacionevaluacioninngeniatec_id_seq OWNED BY public.asignacion_evaluador_asignacionevaluacioninngeniatec.id;


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 (
    id bigint NOT NULL,
    historiacambiosasignacionsemilleros_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_historiacambiosasignacionsemillero_id_seq1; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq1 OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_historiacambiosasignacionsemillero_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq1 OWNED BY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1.id;


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va9048; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 (
    id bigint NOT NULL,
    historiacambiosasignacionsemilleros_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_historiacambiosasignacionsemillero_id_seq2; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq2 OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_historiacambiosasignacionsemillero_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq2 OWNED BY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048.id;


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.asignacion_evaluador_historiacambiosasignacionsemilleros (
    id bigint NOT NULL,
    observaciones character varying(10000),
    fecha_creacion timestamp with time zone NOT NULL,
    proyecto_id bigint NOT NULL
);


ALTER TABLE public.asignacion_evaluador_historiacambiosasignacionsemilleros OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.asignacion_evaluador_historiacambiosasignacionsemilleros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignacion_evaluador_historiacambiosasignacionsemilleros_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.asignacion_evaluador_historiacambiosasignacionsemilleros_id_seq OWNED BY public.asignacion_evaluador_historiacambiosasignacionsemilleros.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO hgmenwrwkjrpsu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO hgmenwrwkjrpsu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO hgmenwrwkjrpsu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: carrera_app_programa; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.carrera_app_programa (
    id bigint NOT NULL,
    nombre character varying(1000) NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.carrera_app_programa OWNER TO hgmenwrwkjrpsu;

--
-- Name: carrera_app_programa_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.carrera_app_programa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrera_app_programa_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: carrera_app_programa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.carrera_app_programa_id_seq OWNED BY public.carrera_app_programa.id;


--
-- Name: carrera_app_universidad; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.carrera_app_universidad (
    id bigint NOT NULL,
    universidad character varying(1000) NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.carrera_app_universidad OWNER TO hgmenwrwkjrpsu;

--
-- Name: carrera_app_universidad_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.carrera_app_universidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrera_app_universidad_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: carrera_app_universidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.carrera_app_universidad_id_seq OWNED BY public.carrera_app_universidad.id;


--
-- Name: config_inngeniatec_app_configpaginainngeniatec; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.config_inngeniatec_app_configpaginainngeniatec (
    id bigint NOT NULL,
    titulo_principal character varying(1000) NOT NULL,
    titulo_principal2 character varying(1000) NOT NULL,
    parrafo_principal2 text NOT NULL,
    titulo_secundario1 character varying(1000) NOT NULL,
    parrafo_secundario1 text NOT NULL,
    titulo_secundario2 character varying(1000) NOT NULL,
    parrafo_secundario2 text NOT NULL,
    correo_contacto character varying(200) NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.config_inngeniatec_app_configpaginainngeniatec OWNER TO hgmenwrwkjrpsu;

--
-- Name: config_inngeniatec_app_configpaginainngeniatec_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.config_inngeniatec_app_configpaginainngeniatec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.config_inngeniatec_app_configpaginainngeniatec_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: config_inngeniatec_app_configpaginainngeniatec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.config_inngeniatec_app_configpaginainngeniatec_id_seq OWNED BY public.config_inngeniatec_app_configpaginainngeniatec.id;


--
-- Name: config_inngeniatec_app_fechainngeniatec; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.config_inngeniatec_app_fechainngeniatec (
    id bigint NOT NULL,
    descripcion character varying(1000) NOT NULL,
    fecha date NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.config_inngeniatec_app_fechainngeniatec OWNER TO hgmenwrwkjrpsu;

--
-- Name: config_inngeniatec_app_fechainngeniatec_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.config_inngeniatec_app_fechainngeniatec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.config_inngeniatec_app_fechainngeniatec_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: config_inngeniatec_app_fechainngeniatec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.config_inngeniatec_app_fechainngeniatec_id_seq OWNED BY public.config_inngeniatec_app_fechainngeniatec.id;


--
-- Name: config_semilleros_app_configpaginasemilleros; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.config_semilleros_app_configpaginasemilleros (
    id bigint NOT NULL,
    titulo_principal character varying(1000) NOT NULL,
    terminos_convocatoria_url character varying(250) NOT NULL,
    plantilla_inscripcion_url character varying(250) NOT NULL,
    formato_carta_aval_url character varying(250) NOT NULL,
    video_guia_inscripcion_url character varying(250) NOT NULL,
    titulo_secundario1 character varying(1000) NOT NULL,
    parrafo_secundario1 text NOT NULL,
    titulo_secundario2 character varying(1000) NOT NULL,
    parrafo_secundario2 text NOT NULL,
    correo_contacto character varying(200) NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.config_semilleros_app_configpaginasemilleros OWNER TO hgmenwrwkjrpsu;

--
-- Name: config_semilleros_app_configpaginasemilleros_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.config_semilleros_app_configpaginasemilleros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.config_semilleros_app_configpaginasemilleros_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: config_semilleros_app_configpaginasemilleros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.config_semilleros_app_configpaginasemilleros_id_seq OWNED BY public.config_semilleros_app_configpaginasemilleros.id;


--
-- Name: config_semilleros_app_fechasemilleros; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.config_semilleros_app_fechasemilleros (
    id bigint NOT NULL,
    descripcion character varying(1000) NOT NULL,
    fecha date NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.config_semilleros_app_fechasemilleros OWNER TO hgmenwrwkjrpsu;

--
-- Name: config_semilleros_app_fechasemilleros_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.config_semilleros_app_fechasemilleros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.config_semilleros_app_fechasemilleros_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: config_semilleros_app_fechasemilleros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.config_semilleros_app_fechasemilleros_id_seq OWNED BY public.config_semilleros_app_fechasemilleros.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO hgmenwrwkjrpsu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO hgmenwrwkjrpsu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO hgmenwrwkjrpsu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO hgmenwrwkjrpsu;

--
-- Name: dynamic_models_fieldschema; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.dynamic_models_fieldschema (
    id integer NOT NULL,
    name character varying(63) NOT NULL,
    data_type character varying(16) NOT NULL,
    "null" boolean NOT NULL,
    "unique" boolean NOT NULL,
    max_length integer,
    model_schema_id integer NOT NULL,
    CONSTRAINT dynamic_models_fieldschema_max_length_check CHECK ((max_length >= 0))
);


ALTER TABLE public.dynamic_models_fieldschema OWNER TO hgmenwrwkjrpsu;

--
-- Name: dynamic_models_fieldschema_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.dynamic_models_fieldschema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dynamic_models_fieldschema_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: dynamic_models_fieldschema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.dynamic_models_fieldschema_id_seq OWNED BY public.dynamic_models_fieldschema.id;


--
-- Name: dynamic_models_modelschema; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.dynamic_models_modelschema (
    id integer NOT NULL,
    name character varying(32) NOT NULL
);


ALTER TABLE public.dynamic_models_modelschema OWNER TO hgmenwrwkjrpsu;

--
-- Name: dynamic_models_modelschema_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.dynamic_models_modelschema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dynamic_models_modelschema_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: dynamic_models_modelschema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.dynamic_models_modelschema_id_seq OWNED BY public.dynamic_models_modelschema.id;


--
-- Name: evaluaciones_orales_activacioncalificacionoral; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_orales_activacioncalificacionoral (
    id bigint NOT NULL,
    descripcion character varying(1000) NOT NULL,
    activacion_calificacion_oral boolean NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL
);


ALTER TABLE public.evaluaciones_orales_activacioncalificacionoral OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_orales_activacioncalificacionoral_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_orales_activacioncalificacionoral_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_orales_activacioncalificacionoral_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_orales_activacioncalificacionoral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_orales_activacioncalificacionoral_id_seq OWNED BY public.evaluaciones_orales_activacioncalificacionoral.id;


--
-- Name: evaluaciones_orales_calificacionfinalproyecto; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_orales_calificacionfinalproyecto (
    id bigint NOT NULL,
    fecha_calificacion timestamp with time zone NOT NULL,
    evaluacion_oral_id bigint,
    evaluacion_preseleccion_id bigint
);


ALTER TABLE public.evaluaciones_orales_calificacionfinalproyecto OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_orales_calificacionfinalproyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_orales_calificacionfinalproyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_orales_calificacionfinalproyecto_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_orales_calificacionfinalproyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_orales_calificacionfinalproyecto_id_seq OWNED BY public.evaluaciones_orales_calificacionfinalproyecto.id;


--
-- Name: evaluaciones_orales_evaluacionoral; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_orales_evaluacionoral (
    id bigint NOT NULL,
    dominio_tematico double precision NOT NULL,
    expresion_oral double precision NOT NULL,
    "creatividad_dise├▒o" double precision NOT NULL,
    observaciones character varying(1500) NOT NULL,
    is_calificado boolean NOT NULL,
    fecha_evaluacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    evaluador_id bigint,
    proyecto_id bigint
);


ALTER TABLE public.evaluaciones_orales_evaluacionoral OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_orales_evaluacionoral_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_orales_evaluacionoral_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_orales_evaluacionoral_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_orales_evaluacionoral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_orales_evaluacionoral_id_seq OWNED BY public.evaluaciones_orales_evaluacionoral.id;


--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeniateca306; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_preseleccion_activacioncalificacioninngeniateca306 (
    id bigint NOT NULL,
    descripcion character varying(1000) NOT NULL,
    activacion_calificacion_inngeriatec1 boolean NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL
);


ALTER TABLE public.evaluaciones_preseleccion_activacioncalificacioninngeniateca306 OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeni_id_seq1; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_preseleccion_activacioncalificacioninngeni_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_preseleccion_activacioncalificacioninngeni_id_seq1 OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeni_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_preseleccion_activacioncalificacioninngeni_id_seq1 OWNED BY public.evaluaciones_preseleccion_activacioncalificacioninngeniateca306.id;


--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1 (
    id bigint NOT NULL,
    descripcion character varying(1000) NOT NULL,
    activacion_calificacion_inngeriatec1 boolean NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL
);


ALTER TABLE public.evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1 OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngenia_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_preseleccion_activacioncalificacioninngenia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_preseleccion_activacioncalificacioninngenia_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngenia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_preseleccion_activacioncalificacioninngenia_id_seq OWNED BY public.evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1.id;


--
-- Name: evaluaciones_preseleccion_activacioncalificacionpreseleccion; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_preseleccion_activacioncalificacionpreseleccion (
    id bigint NOT NULL,
    descripcion character varying(1000) NOT NULL,
    activacion_calificacion_preseleccion boolean NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL
);


ALTER TABLE public.evaluaciones_preseleccion_activacioncalificacionpreseleccion OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_activacioncalificacionpreselec_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_preseleccion_activacioncalificacionpreselec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_preseleccion_activacioncalificacionpreselec_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_activacioncalificacionpreselec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_preseleccion_activacioncalificacionpreselec_id_seq OWNED BY public.evaluaciones_preseleccion_activacioncalificacionpreseleccion.id;


--
-- Name: evaluaciones_preseleccion_evaluacionpreseleccion; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_preseleccion_evaluacionpreseleccion (
    id bigint NOT NULL,
    presentacion_escrita double precision NOT NULL,
    estructura_texto double precision NOT NULL,
    fuentes_consultadas double precision NOT NULL,
    observaciones1 character varying(1500) NOT NULL,
    resumen_introduccion double precision NOT NULL,
    objetivos double precision NOT NULL,
    pertinencia_innovacion double precision NOT NULL,
    referente_teorico double precision NOT NULL,
    propuesta_metodologia double precision NOT NULL,
    resultados_preliminares double precision NOT NULL,
    discucion_preliminar double precision NOT NULL,
    observaciones2 character varying(1500) NOT NULL,
    is_calificado boolean NOT NULL,
    fecha_evaluacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    evaluador_id bigint,
    proyecto_id bigint
);


ALTER TABLE public.evaluaciones_preseleccion_evaluacionpreseleccion OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_evaluacionpreseleccion_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_preseleccion_evaluacionpreseleccion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_preseleccion_evaluacionpreseleccion_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_evaluacionpreseleccion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_preseleccion_evaluacionpreseleccion_id_seq OWNED BY public.evaluaciones_preseleccion_evaluacionpreseleccion.id;


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatec; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_preseleccion_valoracionproyectoingeniatec (
    id bigint NOT NULL,
    aplicacion_escenario_real double precision NOT NULL,
    originadidad_innovacion double precision NOT NULL,
    calidad_tecnica double precision NOT NULL,
    estudio_viablididad double precision NOT NULL,
    fecha_evaluacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    evaluador_id bigint,
    proyecto_id bigint,
    is_calificado boolean NOT NULL
);


ALTER TABLE public.evaluaciones_preseleccion_valoracionproyectoingeniatec OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatec_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_preseleccion_valoracionproyectoingeniatec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_preseleccion_valoracionproyectoingeniatec_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_preseleccion_valoracionproyectoingeniatec_id_seq OWNED BY public.evaluaciones_preseleccion_valoracionproyectoingeniatec.id;


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b (
    id bigint NOT NULL,
    aplicacion_escenario_real double precision NOT NULL,
    originadidad_innovacion double precision NOT NULL,
    calidad_tecnica double precision NOT NULL,
    estudio_viablididad double precision NOT NULL,
    is_calificado boolean NOT NULL,
    fecha_evaluacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    evaluador_id bigint,
    proyecto_id bigint
);


ALTER TABLE public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatecpr_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.evaluaciones_preseleccion_valoracionproyectoingeniatecpr_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_preseleccion_valoracionproyectoingeniatecpr_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatecpr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.evaluaciones_preseleccion_valoracionproyectoingeniatecpr_id_seq OWNED BY public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b.id;


--
-- Name: proyectos_app_activacionconvocatoria; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_activacionconvocatoria (
    id bigint NOT NULL,
    descripcion character varying(1000) NOT NULL,
    activacion_convocatoria boolean NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL
);


ALTER TABLE public.proyectos_app_activacionconvocatoria OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_activacionconvocatoria_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_activacionconvocatoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_activacionconvocatoria_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_activacionconvocatoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_activacionconvocatoria_id_seq OWNED BY public.proyectos_app_activacionconvocatoria.id;


--
-- Name: proyectos_app_activacionconvocatoriainngeniatec; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_activacionconvocatoriainngeniatec (
    id bigint NOT NULL,
    descripcion character varying(1000) NOT NULL,
    activacion_convocatoria boolean NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL
);


ALTER TABLE public.proyectos_app_activacionconvocatoriainngeniatec OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_activacionconvocatoriainngeniatec_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_activacionconvocatoriainngeniatec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_activacionconvocatoriainngeniatec_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_activacionconvocatoriainngeniatec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_activacionconvocatoriainngeniatec_id_seq OWNED BY public.proyectos_app_activacionconvocatoriainngeniatec.id;


--
-- Name: proyectos_app_periodo; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_periodo (
    id bigint NOT NULL,
    anio integer NOT NULL,
    semestre character varying(250) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.proyectos_app_periodo OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_periodo_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_periodo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_periodo_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_periodo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_periodo_id_seq OWNED BY public.proyectos_app_periodo.id;


--
-- Name: proyectos_app_proyecto; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_proyecto (
    id bigint NOT NULL,
    titulo character varying(1000) NOT NULL,
    modalidad_aprticipacion character varying(1000) NOT NULL,
    url_video character varying(1000) NOT NULL,
    proyecto_pdf character varying(1000) NOT NULL,
    carta_aval_pdf character varying(1000) NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    semillero_id bigint,
    tematica_id bigint,
    es_finalista boolean NOT NULL,
    periodo_id bigint
);


ALTER TABLE public.proyectos_app_proyecto OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyecto_autores; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_proyecto_autores (
    id bigint NOT NULL,
    proyecto_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.proyectos_app_proyecto_autores OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyecto_autores_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_proyecto_autores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_proyecto_autores_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyecto_autores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_proyecto_autores_id_seq OWNED BY public.proyectos_app_proyecto_autores.id;


--
-- Name: proyectos_app_proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_proyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_proyecto_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_proyecto_id_seq OWNED BY public.proyectos_app_proyecto.id;


--
-- Name: proyectos_app_proyecto_tutores; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_proyecto_tutores (
    id bigint NOT NULL,
    proyecto_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.proyectos_app_proyecto_tutores OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyecto_tutores_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_proyecto_tutores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_proyecto_tutores_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyecto_tutores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_proyecto_tutores_id_seq OWNED BY public.proyectos_app_proyecto_tutores.id;


--
-- Name: proyectos_app_proyectoinngeniatec; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_proyectoinngeniatec (
    id bigint NOT NULL,
    titulo character varying(10000) NOT NULL,
    programa_integrantes character varying(1000) NOT NULL,
    palabras_clave character varying(10000) NOT NULL,
    resumen text NOT NULL,
    url_video character varying(10000),
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    email_contacto character varying(1000),
    categoria character varying(250) NOT NULL,
    es_finalista boolean NOT NULL,
    periodo_id bigint
);


ALTER TABLE public.proyectos_app_proyectoinngeniatec OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyectoinngeniatec_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_proyectoinngeniatec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_proyectoinngeniatec_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyectoinngeniatec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_proyectoinngeniatec_id_seq OWNED BY public.proyectos_app_proyectoinngeniatec.id;


--
-- Name: proyectos_app_proyectoinngeniatec_integrantes; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_proyectoinngeniatec_integrantes (
    id bigint NOT NULL,
    proyectoinngeniatec_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.proyectos_app_proyectoinngeniatec_integrantes OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyectoinngeniatec_integrantes_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_proyectoinngeniatec_integrantes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_proyectoinngeniatec_integrantes_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyectoinngeniatec_integrantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_proyectoinngeniatec_integrantes_id_seq OWNED BY public.proyectos_app_proyectoinngeniatec_integrantes.id;


--
-- Name: proyectos_app_proyectoinngeniatec_tutores; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.proyectos_app_proyectoinngeniatec_tutores (
    id bigint NOT NULL,
    proyectoinngeniatec_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.proyectos_app_proyectoinngeniatec_tutores OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyectoinngeniatec_tutores_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.proyectos_app_proyectoinngeniatec_tutores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_app_proyectoinngeniatec_tutores_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: proyectos_app_proyectoinngeniatec_tutores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.proyectos_app_proyectoinngeniatec_tutores_id_seq OWNED BY public.proyectos_app_proyectoinngeniatec_tutores.id;


--
-- Name: semillero_app_semillero; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.semillero_app_semillero (
    id bigint NOT NULL,
    nombre character varying(1000) NOT NULL,
    "grupo_investigaci├│" character varying(1000),
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.semillero_app_semillero OWNER TO hgmenwrwkjrpsu;

--
-- Name: semillero_app_semillero_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.semillero_app_semillero_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.semillero_app_semillero_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: semillero_app_semillero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.semillero_app_semillero_id_seq OWNED BY public.semillero_app_semillero.id;


--
-- Name: tematica_app_tematica; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.tematica_app_tematica (
    id bigint NOT NULL,
    titulo_tematica character varying(1000) NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_actualizacion timestamp with time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.tematica_app_tematica OWNER TO hgmenwrwkjrpsu;

--
-- Name: tematica_app_tematica_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.tematica_app_tematica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tematica_app_tematica_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: tematica_app_tematica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.tematica_app_tematica_id_seq OWNED BY public.tematica_app_tematica.id;


--
-- Name: usuarios_app_usuario; Type: TABLE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE TABLE public.usuarios_app_usuario (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    nombres character varying(1000) NOT NULL,
    apellidos character varying(1000) NOT NULL,
    correo_institicional character varying(1000) NOT NULL,
    username character varying(1000) NOT NULL,
    no_documento integer NOT NULL,
    id_iniversidad character varying(1000) NOT NULL,
    is_autor boolean NOT NULL,
    is_evaluador boolean NOT NULL,
    is_tutor boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_admin boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superadmin boolean NOT NULL,
    programa_academico_id bigint,
    universidad_id bigint
);


ALTER TABLE public.usuarios_app_usuario OWNER TO hgmenwrwkjrpsu;

--
-- Name: usuarios_app_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE SEQUENCE public.usuarios_app_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_app_usuario_id_seq OWNER TO hgmenwrwkjrpsu;

--
-- Name: usuarios_app_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER SEQUENCE public.usuarios_app_usuario_id_seq OWNED BY public.usuarios_app_usuario.id;


--
-- Name: admin_honeypot_loginattempt id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.admin_honeypot_loginattempt ALTER COLUMN id SET DEFAULT nextval('public.admin_honeypot_loginattempt_id_seq'::regclass);


--
-- Name: asignacion_evaluador_asignacionevaluacion id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacion ALTER COLUMN id SET DEFAULT nextval('public.asignacion_evaluador_asignacionevaluacion_id_seq'::regclass);


--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacion_evaluadores ALTER COLUMN id SET DEFAULT nextval('public.asignacion_evaluador_asignacionevaluacion_evaluadores_id_seq'::regclass);


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacioninngeniatec ALTER COLUMN id SET DEFAULT nextval('public.asignacion_evaluador_asignacionevaluacioninngeniatec_id_seq'::regclass);


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 ALTER COLUMN id SET DEFAULT nextval('public.asignacion_evaluador_asignacionevaluacioninngeniatec_eva_id_seq'::regclass);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros ALTER COLUMN id SET DEFAULT nextval('public.asignacion_evaluador_historiacambiosasignacionsemilleros_id_seq'::regclass);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 ALTER COLUMN id SET DEFAULT nextval('public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq1'::regclass);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 ALTER COLUMN id SET DEFAULT nextval('public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq2'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: carrera_app_programa id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.carrera_app_programa ALTER COLUMN id SET DEFAULT nextval('public.carrera_app_programa_id_seq'::regclass);


--
-- Name: carrera_app_universidad id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.carrera_app_universidad ALTER COLUMN id SET DEFAULT nextval('public.carrera_app_universidad_id_seq'::regclass);


--
-- Name: config_inngeniatec_app_configpaginainngeniatec id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.config_inngeniatec_app_configpaginainngeniatec ALTER COLUMN id SET DEFAULT nextval('public.config_inngeniatec_app_configpaginainngeniatec_id_seq'::regclass);


--
-- Name: config_inngeniatec_app_fechainngeniatec id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.config_inngeniatec_app_fechainngeniatec ALTER COLUMN id SET DEFAULT nextval('public.config_inngeniatec_app_fechainngeniatec_id_seq'::regclass);


--
-- Name: config_semilleros_app_configpaginasemilleros id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.config_semilleros_app_configpaginasemilleros ALTER COLUMN id SET DEFAULT nextval('public.config_semilleros_app_configpaginasemilleros_id_seq'::regclass);


--
-- Name: config_semilleros_app_fechasemilleros id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.config_semilleros_app_fechasemilleros ALTER COLUMN id SET DEFAULT nextval('public.config_semilleros_app_fechasemilleros_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: dynamic_models_fieldschema id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.dynamic_models_fieldschema ALTER COLUMN id SET DEFAULT nextval('public.dynamic_models_fieldschema_id_seq'::regclass);


--
-- Name: dynamic_models_modelschema id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.dynamic_models_modelschema ALTER COLUMN id SET DEFAULT nextval('public.dynamic_models_modelschema_id_seq'::regclass);


--
-- Name: evaluaciones_orales_activacioncalificacionoral id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_activacioncalificacionoral ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_orales_activacioncalificacionoral_id_seq'::regclass);


--
-- Name: evaluaciones_orales_calificacionfinalproyecto id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_calificacionfinalproyecto ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_orales_calificacionfinalproyecto_id_seq'::regclass);


--
-- Name: evaluaciones_orales_evaluacionoral id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_evaluacionoral ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_orales_evaluacionoral_id_seq'::regclass);


--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1 id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1 ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_preseleccion_activacioncalificacioninngenia_id_seq'::regclass);


--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeniateca306 id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_activacioncalificacioninngeniateca306 ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_preseleccion_activacioncalificacioninngeni_id_seq1'::regclass);


--
-- Name: evaluaciones_preseleccion_activacioncalificacionpreseleccion id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_activacioncalificacionpreseleccion ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_preseleccion_activacioncalificacionpreselec_id_seq'::regclass);


--
-- Name: evaluaciones_preseleccion_evaluacionpreseleccion id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_evaluacionpreseleccion ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_preseleccion_evaluacionpreseleccion_id_seq'::regclass);


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatec id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_valoracionproyectoingeniatec ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_preseleccion_valoracionproyectoingeniatec_id_seq'::regclass);


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b ALTER COLUMN id SET DEFAULT nextval('public.evaluaciones_preseleccion_valoracionproyectoingeniatecpr_id_seq'::regclass);


--
-- Name: proyectos_app_activacionconvocatoria id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_activacionconvocatoria ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_activacionconvocatoria_id_seq'::regclass);


--
-- Name: proyectos_app_activacionconvocatoriainngeniatec id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_activacionconvocatoriainngeniatec ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_activacionconvocatoriainngeniatec_id_seq'::regclass);


--
-- Name: proyectos_app_periodo id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_periodo ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_periodo_id_seq'::regclass);


--
-- Name: proyectos_app_proyecto id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_proyecto_id_seq'::regclass);


--
-- Name: proyectos_app_proyecto_autores id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_autores ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_proyecto_autores_id_seq'::regclass);


--
-- Name: proyectos_app_proyecto_tutores id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_tutores ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_proyecto_tutores_id_seq'::regclass);


--
-- Name: proyectos_app_proyectoinngeniatec id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_proyectoinngeniatec_id_seq'::regclass);


--
-- Name: proyectos_app_proyectoinngeniatec_integrantes id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_integrantes ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_proyectoinngeniatec_integrantes_id_seq'::regclass);


--
-- Name: proyectos_app_proyectoinngeniatec_tutores id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_tutores ALTER COLUMN id SET DEFAULT nextval('public.proyectos_app_proyectoinngeniatec_tutores_id_seq'::regclass);


--
-- Name: semillero_app_semillero id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.semillero_app_semillero ALTER COLUMN id SET DEFAULT nextval('public.semillero_app_semillero_id_seq'::regclass);


--
-- Name: tematica_app_tematica id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.tematica_app_tematica ALTER COLUMN id SET DEFAULT nextval('public.tematica_app_tematica_id_seq'::regclass);


--
-- Name: usuarios_app_usuario id; Type: DEFAULT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.usuarios_app_usuario ALTER COLUMN id SET DEFAULT nextval('public.usuarios_app_usuario_id_seq'::regclass);


--
-- Data for Name: admin_honeypot_loginattempt; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.admin_honeypot_loginattempt (id, username, ip_address, session_key, user_agent, "timestamp", path) FROM stdin;
\.


--
-- Data for Name: asignacion_evaluador_asignacionevaluacion; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.asignacion_evaluador_asignacionevaluacion (id, fecha_asignacion, fecha_actualizacion, asignacion_calificada1, asignacion_calificada2, proyecto_id) FROM stdin;
35	2022-09-22 16:05:35.374144+00	2022-09-22 16:12:16.790205+00	f	t	83
29	2022-09-22 15:53:39.12849+00	2022-09-22 16:12:36.631124+00	f	t	81
46	2022-09-22 16:18:06.29906+00	2022-09-22 16:18:06.30744+00	f	f	89
47	2022-09-22 16:19:21.223594+00	2022-09-22 16:19:21.231551+00	f	f	86
23	2022-09-22 15:48:55.334664+00	2022-09-22 16:43:00.065901+00	f	t	88
49	2022-09-22 20:12:44.012708+00	2022-10-05 09:29:08.714635+00	f	f	50
41	2022-09-22 16:13:43.167098+00	2022-10-05 20:56:05.629588+00	f	f	78
48	2022-09-22 16:20:11.835209+00	2022-10-05 22:18:47.561635+00	f	f	85
26	2022-09-22 15:51:13.103085+00	2022-09-23 14:29:53.71173+00	f	f	59
44	2022-09-22 16:16:48.31595+00	2022-09-23 14:30:34.698884+00	f	f	95
17	2022-09-22 15:44:37.190912+00	2022-10-05 22:59:48.400017+00	f	f	52
14	2022-09-22 15:40:52.298422+00	2022-09-22 15:40:52.309773+00	f	f	62
15	2022-09-22 15:43:11.477394+00	2022-10-05 23:00:23.4954+00	f	f	55
16	2022-09-22 15:44:04.548142+00	2022-10-05 23:02:06.794762+00	f	f	54
18	2022-09-22 15:45:14.794562+00	2022-10-05 23:02:46.051302+00	f	f	51
19	2022-09-22 15:45:51.997153+00	2022-10-05 23:03:46.897743+00	f	f	66
45	2022-09-22 16:17:34.068896+00	2022-10-05 23:05:08.589655+00	f	f	94
22	2022-09-22 15:48:21.574286+00	2022-09-22 15:48:21.583681+00	f	f	91
20	2022-09-22 15:46:43.188836+00	2022-10-06 14:54:57.04355+00	f	f	63
24	2022-09-22 15:49:37.830438+00	2022-09-22 15:49:37.841054+00	f	f	71
36	2022-09-22 16:06:51.166638+00	2022-09-27 13:43:24.187398+00	f	f	79
28	2022-09-22 15:52:56.238052+00	2022-09-22 15:52:56.247756+00	f	f	82
30	2022-09-22 16:02:11.41084+00	2022-09-22 16:02:11.419594+00	f	f	80
32	2022-09-22 16:03:20.190922+00	2022-09-27 14:45:11.408131+00	f	f	97
34	2022-09-22 16:04:37.829641+00	2022-09-22 16:04:37.839082+00	f	f	90
37	2022-09-22 16:07:37.721817+00	2022-09-22 16:07:37.730801+00	f	f	75
38	2022-09-22 16:08:16.574845+00	2022-09-22 16:08:16.582864+00	f	f	72
39	2022-09-22 16:08:48.194128+00	2022-09-22 16:08:48.202888+00	f	f	61
40	2022-09-22 16:09:32.723666+00	2022-09-22 16:09:32.73151+00	f	f	84
33	2022-09-22 16:03:56.049283+00	2022-09-22 16:09:53.413219+00	f	t	93
42	2022-09-22 16:14:52.038253+00	2022-09-27 14:46:33.543819+00	f	f	67
43	2022-09-22 16:15:59.073455+00	2022-09-27 15:53:33.499972+00	f	f	98
21	2022-09-22 15:47:20.118386+00	2022-09-27 16:08:11.790551+00	f	f	57
25	2022-09-22 15:50:42.446474+00	2022-09-27 16:09:55.017448+00	f	f	70
31	2022-09-22 16:02:44.578193+00	2022-09-27 16:23:50.375238+00	f	f	73
27	2022-09-22 15:52:00.513007+00	2022-09-28 22:07:37.576772+00	f	t	99
50	2022-09-29 19:46:55.101327+00	2022-09-30 16:20:58.084343+00	f	f	100
\.


--
-- Data for Name: asignacion_evaluador_asignacionevaluacion_evaluadores; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.asignacion_evaluador_asignacionevaluacion_evaluadores (id, asignacionevaluacion_id, usuario_id) FROM stdin;
19	14	363
20	14	375
21	15	352
23	16	375
24	17	352
25	18	363
32	21	366
33	22	153
34	22	374
35	23	368
36	23	362
37	24	380
38	24	373
40	25	379
42	26	379
43	27	356
45	28	154
46	28	359
47	29	386
48	29	356
49	30	154
50	30	382
52	31	386
54	32	372
55	33	104
56	33	55
57	34	392
58	34	46
59	35	104
60	35	87
61	36	355
63	37	395
64	37	389
65	38	369
66	38	55
67	39	371
68	39	389
69	40	392
70	40	169
73	42	372
74	43	46
75	44	358
77	45	387
78	46	160
79	46	383
80	47	169
81	47	395
82	48	385
84	41	393
85	49	1
89	26	403
90	44	387
93	36	87
94	32	104
95	42	371
97	45	358
98	43	364
99	21	46
100	25	376
101	31	382
102	19	351
105	20	8
106	27	382
112	50	413
114	50	412
126	41	412
127	48	376
128	17	415
129	15	415
130	16	415
131	18	415
132	19	414
133	20	153
\.


--
-- Data for Name: asignacion_evaluador_asignacionevaluacioninngeniatec; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.asignacion_evaluador_asignacionevaluacioninngeniatec (id, fecha_asignacion, fecha_actualizacion, proyecto_id, asignacion_calificada1) FROM stdin;
74	2022-09-22 02:49:32.868092+00	2022-09-22 02:49:32.877008+00	418	f
29	2022-09-22 01:04:06.482279+00	2022-09-22 01:04:06.492294+00	416	f
33	2022-09-22 01:15:55.646474+00	2022-09-22 01:15:55.655855+00	380	f
36	2022-09-22 01:20:55.078158+00	2022-09-22 01:20:55.086976+00	388	f
38	2022-09-22 01:22:59.061503+00	2022-09-22 01:22:59.07107+00	417	f
39	2022-09-22 01:23:48.975984+00	2022-09-22 01:23:48.983377+00	387	f
42	2022-09-22 02:02:06.576725+00	2022-09-22 02:02:06.586091+00	379	f
44	2022-09-22 02:14:03.978718+00	2022-09-22 02:14:04.008997+00	390	f
48	2022-09-22 02:20:48.534909+00	2022-09-22 02:20:48.544264+00	386	f
71	2022-09-22 02:45:33.404329+00	2022-09-22 03:56:02.171852+00	373	t
47	2022-09-22 02:18:58.681685+00	2022-09-22 03:56:19.917786+00	383	t
43	2022-09-22 02:12:47.940821+00	2022-09-22 14:22:56.48736+00	374	t
57	2022-09-22 02:30:24.42006+00	2022-09-22 14:30:47.515546+00	409	t
49	2022-09-22 02:21:57.321904+00	2022-09-22 02:21:57.331121+00	391	f
50	2022-09-22 02:22:49.468648+00	2022-09-22 02:22:49.477837+00	396	f
51	2022-09-22 02:24:59.603374+00	2022-09-22 02:24:59.615935+00	400	f
52	2022-09-22 02:26:04.977927+00	2022-09-22 02:26:04.98738+00	401	f
53	2022-09-22 02:26:40.464054+00	2022-09-22 02:26:40.476197+00	408	f
55	2022-09-22 02:28:54.559289+00	2022-09-22 02:28:54.568374+00	399	f
59	2022-09-22 02:32:20.626951+00	2022-09-22 02:32:20.635919+00	384	f
60	2022-09-22 02:33:45.714555+00	2022-09-22 02:33:45.724383+00	370	f
62	2022-09-22 02:37:16.861702+00	2022-09-22 02:37:16.870964+00	369	f
63	2022-09-22 02:38:08.764772+00	2022-09-22 02:38:08.77378+00	368	f
64	2022-09-22 02:39:52.33049+00	2022-09-22 02:39:52.339611+00	382	f
65	2022-09-22 02:40:54.203439+00	2022-09-22 02:40:54.212671+00	376	f
66	2022-09-22 02:41:34.170574+00	2022-09-22 02:41:34.180559+00	404	f
68	2022-09-22 02:43:05.413656+00	2022-09-22 02:43:05.423044+00	372	f
69	2022-09-22 02:43:45.898899+00	2022-09-22 02:43:45.907937+00	415	f
70	2022-09-22 02:44:28.47769+00	2022-09-22 02:44:28.487734+00	402	f
37	2022-09-22 01:22:01.052422+00	2022-09-22 16:13:31.58765+00	405	t
56	2022-09-22 02:29:37.992914+00	2022-09-22 16:17:47.748052+00	395	t
46	2022-09-22 02:17:30.073093+00	2022-09-22 16:18:45.207119+00	419	t
41	2022-09-22 01:57:14.348099+00	2022-09-22 16:22:36.210895+00	378	t
40	2022-09-22 01:25:26.330877+00	2022-09-22 16:25:24.810926+00	385	t
79	2022-09-22 19:59:35.636601+00	2022-09-22 19:59:36.079503+00	414	f
73	2022-09-22 02:48:31.654158+00	2022-09-23 06:35:40.604859+00	377	t
32	2022-09-22 01:14:53.557292+00	2022-09-23 21:22:56.084494+00	407	f
31	2022-09-22 01:13:19.399054+00	2022-09-23 21:23:24.317634+00	413	f
72	2022-09-22 02:46:22.400437+00	2022-09-27 13:39:21.982389+00	406	f
34	2022-09-22 01:17:48.831406+00	2022-09-27 15:42:43.899962+00	393	f
61	2022-09-22 02:36:04.714941+00	2022-09-27 15:47:08.625625+00	371	f
80	2022-10-05 22:22:49.057427+00	2022-10-05 22:22:49.075136+00	392	f
81	2022-10-05 22:23:41.660239+00	2022-10-05 22:23:41.672317+00	394	f
82	2022-10-05 22:24:02.205132+00	2022-10-05 22:24:02.214563+00	412	f
45	2022-09-22 02:15:39.318415+00	2022-10-05 23:10:31.420509+00	410	f
67	2022-09-22 02:42:06.802613+00	2022-10-05 23:11:19.583085+00	403	f
58	2022-09-22 02:31:16.057678+00	2022-10-05 23:11:51.63756+00	420	f
35	2022-09-22 01:19:25.186457+00	2022-10-06 21:39:06.618528+00	375	f
30	2022-09-22 01:12:00.831677+00	2022-10-06 21:39:37.821701+00	389	f
54	2022-09-22 02:28:08.163954+00	2022-10-06 21:56:40.28459+00	398	f
\.


--
-- Data for Name: asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 (id, asignacionevaluacioninngeniatec_id, usuario_id) FROM stdin;
34	29	360
35	29	351
37	30	351
38	31	392
40	32	376
42	33	364
43	33	358
44	34	353
47	35	391
48	36	385
49	36	383
50	37	104
51	37	113
52	38	113
53	38	391
54	39	152
55	39	391
56	40	104
57	40	391
58	41	104
59	41	169
60	42	376
61	42	364
62	43	160
63	43	387
64	44	160
65	44	364
67	45	383
68	46	393
69	46	370
70	47	55
71	47	87
72	48	152
73	48	113
74	49	152
75	49	113
76	50	352
77	50	363
78	51	352
79	51	373
80	52	113
81	52	55
82	53	352
83	53	363
85	54	396
86	55	396
87	55	372
88	56	104
89	56	152
90	57	387
91	57	364
93	58	383
94	59	392
95	59	355
96	60	384
97	60	367
99	61	359
100	62	384
101	62	367
102	63	376
103	63	379
104	64	169
105	64	364
106	65	169
107	65	364
108	66	371
109	66	365
110	67	396
112	68	392
113	68	395
114	69	113
115	69	355
116	70	377
117	70	357
118	71	113
119	71	87
122	73	87
123	74	376
124	74	46
130	79	1
132	73	104
133	32	160
134	31	160
135	72	87
136	72	55
137	34	358
138	61	376
139	80	381
140	80	414
141	81	381
142	81	414
143	82	381
144	82	414
145	45	46
146	67	376
147	58	46
148	35	418
149	30	418
150	54	113
\.


--
-- Data for Name: asignacion_evaluador_historiacambiosasignacionsemilleros; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.asignacion_evaluador_historiacambiosasignacionsemilleros (id, observaciones, fecha_creacion, proyecto_id) FROM stdin;
3	Se enfermo edwin	2022-10-05 09:27:56.685969+00	50
4	Regreso el enfermo	2022-10-05 09:29:07.055883+00	50
5	Sin observaciones	2022-10-05 20:56:03.908703+00	78
6	El profe Feisar no pudo presentarse en el evento	2022-10-05 22:18:47.508563+00	85
7		2022-10-05 22:59:48.363453+00	52
8		2022-10-05 23:00:23.46224+00	55
9		2022-10-05 23:02:06.762465+00	54
10		2022-10-05 23:02:46.02263+00	51
11		2022-10-05 23:03:46.868719+00	66
12		2022-10-05 23:05:08.558926+00	94
13		2022-10-06 14:54:57.001965+00	63
\.


--
-- Data for Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 (id, historiacambiosasignacionsemilleros_id, usuario_id) FROM stdin;
3	3	1
4	4	1
5	5	377
6	5	393
7	6	385
8	6	365
9	7	352
10	7	390
11	8	352
12	8	390
13	9	390
14	9	375
15	10	363
16	10	390
17	11	366
18	11	351
19	12	394
20	12	387
21	12	358
22	13	8
23	13	367
\.


--
-- Data for Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va9048; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 (id, historiacambiosasignacionsemilleros_id, usuario_id) FROM stdin;
2	3	1
3	4	1
5	5	393
6	5	412
7	6	376
8	6	385
9	7	352
10	7	415
11	8	352
12	8	415
13	9	415
14	9	375
15	10	363
16	10	415
17	11	414
18	11	351
19	12	387
20	12	358
21	13	8
22	13	153
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add tematica	6	add_tematica
22	Can change tematica	6	change_tematica
23	Can delete tematica	6	delete_tematica
24	Can view tematica	6	view_tematica
25	Can add semillero	7	add_semillero
26	Can change semillero	7	change_semillero
27	Can delete semillero	7	delete_semillero
28	Can view semillero	7	view_semillero
29	Can add programa	8	add_programa
30	Can change programa	8	change_programa
31	Can delete programa	8	delete_programa
32	Can view programa	8	view_programa
33	Can add universidad	9	add_universidad
34	Can change universidad	9	change_universidad
35	Can delete universidad	9	delete_universidad
36	Can view universidad	9	view_universidad
37	Can add usuario	10	add_usuario
38	Can change usuario	10	change_usuario
39	Can delete usuario	10	delete_usuario
40	Can view usuario	10	view_usuario
41	Can add proyecto	11	add_proyecto
42	Can change proyecto	11	change_proyecto
43	Can delete proyecto	11	delete_proyecto
44	Can view proyecto	11	view_proyecto
45	Can add activacion calificacion oral	12	add_activacioncalificacionoral
46	Can change activacion calificacion oral	12	change_activacioncalificacionoral
47	Can delete activacion calificacion oral	12	delete_activacioncalificacionoral
48	Can view activacion calificacion oral	12	view_activacioncalificacionoral
49	Can add evaluacion oral	13	add_evaluacionoral
50	Can change evaluacion oral	13	change_evaluacionoral
51	Can delete evaluacion oral	13	delete_evaluacionoral
52	Can view evaluacion oral	13	view_evaluacionoral
53	Can add calificacion final proyecto	14	add_calificacionfinalproyecto
54	Can change calificacion final proyecto	14	change_calificacionfinalproyecto
55	Can delete calificacion final proyecto	14	delete_calificacionfinalproyecto
56	Can view calificacion final proyecto	14	view_calificacionfinalproyecto
57	Can add evaluacion preseleccion	15	add_evaluacionpreseleccion
58	Can change evaluacion preseleccion	15	change_evaluacionpreseleccion
59	Can delete evaluacion preseleccion	15	delete_evaluacionpreseleccion
60	Can view evaluacion preseleccion	15	view_evaluacionpreseleccion
61	Can add asignacion evaluacion	16	add_asignacionevaluacion
62	Can change asignacion evaluacion	16	change_asignacionevaluacion
63	Can delete asignacion evaluacion	16	delete_asignacionevaluacion
64	Can view asignacion evaluacion	16	view_asignacionevaluacion
65	Can add login attempt	17	add_loginattempt
66	Can change login attempt	17	change_loginattempt
67	Can delete login attempt	17	delete_loginattempt
68	Can view login attempt	17	view_loginattempt
69	Can add activacion convocatoria	18	add_activacionconvocatoria
70	Can change activacion convocatoria	18	change_activacionconvocatoria
71	Can delete activacion convocatoria	18	delete_activacionconvocatoria
72	Can view activacion convocatoria	18	view_activacionconvocatoria
73	Can add proyecto inngeniatec	19	add_proyectoinngeniatec
74	Can change proyecto inngeniatec	19	change_proyectoinngeniatec
75	Can delete proyecto inngeniatec	19	delete_proyectoinngeniatec
76	Can view proyecto inngeniatec	19	view_proyectoinngeniatec
77	Can add Valoraci├│n Inngeniatec	20	add_valoracionproyectoingeniatec
78	Can change Valoraci├│n Inngeniatec	20	change_valoracionproyectoingeniatec
79	Can delete Valoraci├│n Inngeniatec	20	delete_valoracionproyectoingeniatec
80	Can view Valoraci├│n Inngeniatec	20	view_valoracionproyectoingeniatec
81	Can add Asignaci├│n de Valorador inngeniatec	21	add_asignacionevaluacioninngeniatec
82	Can change Asignaci├│n de Valorador inngeniatec	21	change_asignacionevaluacioninngeniatec
83	Can delete Asignaci├│n de Valorador inngeniatec	21	delete_asignacionevaluacioninngeniatec
84	Can view Asignaci├│n de Valorador inngeniatec	21	view_asignacionevaluacioninngeniatec
85	Can add activacion calificacion preseleccion	22	add_activacioncalificacionpreseleccion
86	Can change activacion calificacion preseleccion	22	change_activacioncalificacionpreseleccion
87	Can delete activacion calificacion preseleccion	22	delete_activacioncalificacionpreseleccion
88	Can view activacion calificacion preseleccion	22	view_activacioncalificacionpreseleccion
89	Can add Historia de cambios en la asignaci├│n de valoradores de Semilleros	23	add_historiacambiosasignacionsemilleros
90	Can change Historia de cambios en la asignaci├│n de valoradores de Semilleros	23	change_historiacambiosasignacionsemilleros
91	Can delete Historia de cambios en la asignaci├│n de valoradores de Semilleros	23	delete_historiacambiosasignacionsemilleros
92	Can view Historia de cambios en la asignaci├│n de valoradores de Semilleros	23	view_historiacambiosasignacionsemilleros
93	Can add Valoraci├│n Inngeniatec evento en vivo	24	add_valoracionproyectoingeniatecpresencial
94	Can change Valoraci├│n Inngeniatec evento en vivo	24	change_valoracionproyectoingeniatecpresencial
95	Can delete Valoraci├│n Inngeniatec evento en vivo	24	delete_valoracionproyectoingeniatecpresencial
96	Can view Valoraci├│n Inngeniatec evento en vivo	24	view_valoracionproyectoingeniatecpresencial
97	Can add activacion calificacion inngeniatec primera fase	25	add_activacioncalificacioninngeniatecprimerafase
98	Can change activacion calificacion inngeniatec primera fase	25	change_activacioncalificacioninngeniatecprimerafase
99	Can delete activacion calificacion inngeniatec primera fase	25	delete_activacioncalificacioninngeniatecprimerafase
100	Can view activacion calificacion inngeniatec primera fase	25	view_activacioncalificacioninngeniatecprimerafase
101	Can add activacion calificacion inngeniatec segunda fase	26	add_activacioncalificacioninngeniatecsegundafase
102	Can change activacion calificacion inngeniatec segunda fase	26	change_activacioncalificacioninngeniatecsegundafase
103	Can delete activacion calificacion inngeniatec segunda fase	26	delete_activacioncalificacioninngeniatecsegundafase
104	Can view activacion calificacion inngeniatec segunda fase	26	view_activacioncalificacioninngeniatecsegundafase
105	Can add config pagina semilleros	27	add_configpaginasemilleros
106	Can change config pagina semilleros	27	change_configpaginasemilleros
107	Can delete config pagina semilleros	27	delete_configpaginasemilleros
108	Can view config pagina semilleros	27	view_configpaginasemilleros
109	Can add fecha semilleros	28	add_fechasemilleros
110	Can change fecha semilleros	28	change_fechasemilleros
111	Can delete fecha semilleros	28	delete_fechasemilleros
112	Can view fecha semilleros	28	view_fechasemilleros
113	Can add model schema	29	add_modelschema
114	Can change model schema	29	change_modelschema
115	Can delete model schema	29	delete_modelschema
116	Can view model schema	29	view_modelschema
117	Can add field schema	30	add_fieldschema
118	Can change field schema	30	change_fieldschema
119	Can delete field schema	30	delete_fieldschema
120	Can view field schema	30	view_fieldschema
121	Can add periodo	31	add_periodo
122	Can change periodo	31	change_periodo
123	Can delete periodo	31	delete_periodo
124	Can view periodo	31	view_periodo
125	Can add activacion convocatoria inngeniatec	32	add_activacionconvocatoriainngeniatec
126	Can change activacion convocatoria inngeniatec	32	change_activacionconvocatoriainngeniatec
127	Can delete activacion convocatoria inngeniatec	32	delete_activacionconvocatoriainngeniatec
128	Can view activacion convocatoria inngeniatec	32	view_activacionconvocatoriainngeniatec
129	Can add config pagina inngeniatec	33	add_configpaginainngeniatec
130	Can change config pagina inngeniatec	33	change_configpaginainngeniatec
131	Can delete config pagina inngeniatec	33	delete_configpaginainngeniatec
132	Can view config pagina inngeniatec	33	view_configpaginainngeniatec
133	Can add fecha inngeniatec	34	add_fechainngeniatec
134	Can change fecha inngeniatec	34	change_fechainngeniatec
135	Can delete fecha inngeniatec	34	delete_fechainngeniatec
136	Can view fecha inngeniatec	34	view_fechainngeniatec
\.


--
-- Data for Name: carrera_app_programa; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.carrera_app_programa (id, nombre, fecha_creacion, fecha_actualizacion, is_active) FROM stdin;
1	Ingenier├¡a de mercados	2022-08-02 10:47:58.33442+00	2022-08-02 10:47:58.334436+00	t
2	Administraci├│n de Empresas	2022-08-04 17:43:17.335942+00	2022-08-04 17:43:17.335957+00	t
3	Ingenier├¡a Biom├®dica	2022-08-04 17:46:33.35001+00	2022-08-04 17:46:33.350026+00	t
4	Ingenier├¡a de Sistemas	2022-08-04 17:46:52.560731+00	2022-08-04 17:46:52.560746+00	t
5	Ingenier├¡a en Energ├¡a	2022-08-04 17:47:08.219509+00	2022-08-04 17:47:08.21953+00	t
6	Ingenier├¡a Financiera	2022-08-04 17:47:30.778293+00	2022-08-04 17:47:30.778311+00	t
7	Ingenier├¡a Industrial	2022-08-04 17:47:54.003221+00	2022-08-04 17:47:54.003237+00	t
8	Ingenier├¡a Mecatr├│nica	2022-08-04 17:48:08.16709+00	2022-08-04 17:48:08.167105+00	t
9	Ingenier├¡a ambiental	2022-08-09 02:06:04.744333+00	2022-08-09 02:06:04.744348+00	t
10	Optometr├¡a	2022-08-12 14:40:57.562492+00	2022-08-12 14:40:57.562509+00	t
11	Arquitectura	2022-09-01 01:02:36.050062+00	2022-09-01 01:02:36.050079+00	t
12	Ingenier├¡a Agroindustrial	2022-09-01 21:14:44.233502+00	2022-09-01 21:14:44.23352+00	t
13	Ingenier├¡a Civil	2022-09-07 16:27:22.662059+00	2022-09-07 16:27:22.662076+00	t
14	Ingenieria de Telecomunicaciones	2022-09-07 22:22:38.570707+00	2022-09-07 22:22:38.570728+00	t
15	Dise├▒o industrial	2022-09-08 12:47:44.741561+00	2022-09-08 12:47:44.741577+00	t
16	Medicina	2022-09-08 19:19:50.168659+00	2022-09-08 19:19:50.168676+00	t
\.


--
-- Data for Name: carrera_app_universidad; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.carrera_app_universidad (id, universidad, fecha_creacion, fecha_actualizacion, is_active) FROM stdin;
1	Universidad Nacional de Colombia	2022-08-02 10:47:58.315457+00	2022-08-02 10:47:58.315472+00	t
2	Universidad Aut├│noma de Bucaramanga	2022-08-04 17:49:52.687472+00	2022-08-04 17:49:52.687488+00	t
3	Universidad Industrial de Santander	2022-08-04 17:50:15.571999+00	2022-08-04 17:50:15.572015+00	t
4	Universidad Cooperativa De Colombia	2022-08-04 17:50:38.405412+00	2022-08-04 17:50:38.405428+00	t
5	Unidades Tecnol├│gicas de Santander	2022-08-04 17:50:58.44368+00	2022-08-04 17:50:58.443696+00	t
6	Universidad de Investigaci├│n y Desarrollo	2022-08-04 17:52:40.352154+00	2022-08-04 17:52:40.35217+00	t
7	Universidad De Santander	2022-08-04 17:53:04.397077+00	2022-08-04 17:53:04.397093+00	t
8	Universidad Santo Tom├ís	2022-08-04 17:53:52.398819+00	2022-08-04 17:53:52.398836+00	t
9	Universidad Pontificia Bolivariana	2022-08-04 17:54:19.2967+00	2022-08-04 17:54:19.296721+00	t
10	Universidad Nacional Abierta y a Distancia	2022-08-04 17:55:40.077494+00	2022-08-04 17:55:40.07751+00	t
11	Universidad Manuela Beltr├ín	2022-08-04 17:56:12.394789+00	2022-08-04 17:56:12.394806+00	t
\.


--
-- Data for Name: config_inngeniatec_app_configpaginainngeniatec; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.config_inngeniatec_app_configpaginainngeniatec (id, titulo_principal, titulo_principal2, parrafo_principal2, titulo_secundario1, parrafo_secundario1, titulo_secundario2, parrafo_secundario2, correo_contacto, fecha_creacion, fecha_actualizacion, is_active) FROM stdin;
1	INNGENIATEC 2023	Conoce m├ís!	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has s	┬┐De qu├® se trata?	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.	┬┐Como participar?	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.	admin@gmail.com	2022-11-22 13:27:01.339979+00	2022-11-22 13:27:01.339995+00	t
\.


--
-- Data for Name: config_inngeniatec_app_fechainngeniatec; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.config_inngeniatec_app_fechainngeniatec (id, descripcion, fecha, fecha_creacion, fecha_actualizacion, is_active) FROM stdin;
\.


--
-- Data for Name: config_semilleros_app_configpaginasemilleros; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.config_semilleros_app_configpaginasemilleros (id, titulo_principal, terminos_convocatoria_url, plantilla_inscripcion_url, formato_carta_aval_url, video_guia_inscripcion_url, titulo_secundario1, parrafo_secundario1, titulo_secundario2, parrafo_secundario2, correo_contacto, fecha_creacion, fecha_actualizacion, is_active) FROM stdin;
1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2022	https://res.cloudinary.com/dwhvz3t4j/raw/upload/v1660888070/media/files/archivos/Terminos_convocatoria_encuentro_semilleros_2022.docx	https://res.cloudinary.com/dwhvz3t4j/raw/upload/v1660888745/media/files/archivos/Plantilla_de_inscripcion_para_el_Encuentro.docx	https://res.cloudinary.com/dwhvz3t4j/raw/upload/v1660888745/media/files/archivos/Modelo_Carta_Aval.docx	https://www.youtube.com/embed/gi19YcwBC6g	Inscribe tu proyecto para participar en la semana de Ingenier├¡a Unab	En el marco de la semana de ingenier├¡a UNAB 2022 se llevar├í a cabo la XVI edici├│n del encuentro de semilleros de investigaci├│n correspondientes al ├írea de Ingenier├¡a y Ciencias b├ísicas. La Facultad de Ingenier├¡a y la Direcci├│n de Investigaciones UNAB convoca a los estudiantes miembros Semilleros de Investigaci├│n de las Instituciones de Educaci├│n Superior a inscribir las investigaciones que realizan en su proceso de formaci├│n. Con la participaci├│n de otras Universidades se articula la creaci├│n de espacios acad├®micos que favorezcan la identificaci├│n de oportunidades de trabajo colaborativo entre los miembros de la comunidad acad├®mica de la regi├│n.	Gu├¡a para inscribirte e inscribir tu proyecto:	Para participar con tu proyecto debes iniciar sesi├│n en la plataforma de Semilleros UNAB, si a├║n no tienes cuenta puedes crear una a continuaci├│n:	investigacionesingenieria@unab.edu.co	2022-11-16 03:05:05.702247+00	2022-11-22 15:34:59.35793+00	t
\.


--
-- Data for Name: config_semilleros_app_fechasemilleros; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.config_semilleros_app_fechasemilleros (id, descripcion, fecha, fecha_creacion, fecha_actualizacion, is_active) FROM stdin;
1	Apertura de convocatoria:	2023-02-07	2022-11-16 14:32:39.363857+00	2022-11-16 14:32:39.363876+00	t
2	Cierre de convocatoria:	2022-11-10	2022-11-22 16:04:28.05615+00	2022-11-22 16:05:01.397546+00	t
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-08-02 10:52:33.400518+00	1	Sistemas de informaci├│n e ingenier├¡a de software	1	[{"added": {}}]	6	1
2	2022-08-02 10:52:47.867546+00	1	XV ENCUENTRO SEMILLEROS DE INVESTIGACI├ôN	1	[{"added": {}}]	7	1
3	2022-08-02 10:53:09.508159+00	1	1 Permiso para activar la calificaci├│n oral	1	[{"added": {}}]	12	1
4	2022-08-02 10:55:41.221254+00	1	Edwin Blanco Guerrero | eblanco265@unab.edu.co	2	[{"changed": {"fields": ["Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is tutor"]}}]	10	1
5	2022-08-04 17:29:20.681967+00	8	titulo proyecto prueba 1m2	3		11	1
6	2022-08-04 17:32:34.579906+00	7	titulo proyecto pruebaaaaaaaaaaa	3		11	1
7	2022-08-04 17:32:34.582633+00	6	titulo proyecto prueba 2000000000	3		11	1
8	2022-08-04 17:32:34.584251+00	5	titulo proyecto pruebaaaaaaaaaaa	3		11	1
9	2022-08-04 17:32:34.586567+00	4	titulo proyecto pruebaaaaaaaaaaa	3		11	1
10	2022-08-04 17:32:34.591372+00	3	titulo proyecto prueba 1m	3		11	1
11	2022-08-04 17:32:34.593471+00	2	titulo proyecto prueba	3		11	1
12	2022-08-04 17:32:34.595631+00	1	titulo proyecto prueba	3		11	1
13	2022-08-04 17:43:17.338939+00	2	Administraci├│n de Empresas 	1	[{"added": {}}]	8	1
14	2022-08-04 17:46:33.351389+00	3	Ingenier├¡a Biom├®dica 	1	[{"added": {}}]	8	1
15	2022-08-04 17:46:52.562102+00	4	Ingenier├¡a de Sistemas 	1	[{"added": {}}]	8	1
16	2022-08-04 17:47:08.220877+00	5	Ingenier├¡a en Energ├¡a 	1	[{"added": {}}]	8	1
17	2022-08-04 17:47:30.782898+00	6	Ingenier├¡a Financiera 	1	[{"added": {}}]	8	1
18	2022-08-04 17:47:54.00477+00	7	Ingenier├¡a Industrial 	1	[{"added": {}}]	8	1
19	2022-08-04 17:48:08.168509+00	8	Ingenier├¡a Mecatr├│nica 	1	[{"added": {}}]	8	1
20	2022-08-04 17:49:52.690196+00	2	Universidad Aut├│noma de Bucaramanga	1	[{"added": {}}]	9	1
21	2022-08-04 17:50:15.573444+00	3	Universidad Industrial de Santander	1	[{"added": {}}]	9	1
22	2022-08-04 17:50:38.406831+00	4	Universidad Cooperativa De Colombia	1	[{"added": {}}]	9	1
23	2022-08-04 17:50:58.445199+00	5	Unidades Tecnol├│gicas de Santander	1	[{"added": {}}]	9	1
24	2022-08-04 17:52:40.353539+00	6	Universidad de Investigaci├│n y Desarrollo	1	[{"added": {}}]	9	1
25	2022-08-04 17:53:04.398312+00	7	Universidad De Santander	1	[{"added": {}}]	9	1
26	2022-08-04 17:53:52.400079+00	8	Universidad Santo Tom├ís	1	[{"added": {}}]	9	1
27	2022-08-04 17:54:19.298564+00	9	Universidad Pontificia Bolivariana	1	[{"added": {}}]	9	1
28	2022-08-04 17:55:40.079053+00	10	Universidad Nacional Abierta y a Distancia	1	[{"added": {}}]	9	1
29	2022-08-04 17:56:12.396202+00	11	Universidad Manuela Beltr├ín	1	[{"added": {}}]	9	1
30	2022-08-04 18:01:39.435859+00	2	Telem├ítica	1	[{"added": {}}]	6	1
31	2022-08-04 18:01:55.517306+00	3	Fuentes energ├®ticas, transformaci├│n de energ├¡a, Eficiencia energ├®tica en procesos y operaciones industriales	1	[{"added": {}}]	6	1
32	2022-08-04 18:02:10.581774+00	4	Creatividad e innovaci├│n	1	[{"added": {}}]	6	1
33	2022-08-04 18:02:33.914605+00	5	Modelamiento, simulaci├│n, dise├▒o mecatr├│nico, automatizaci├│n y control	1	[{"added": {}}]	6	1
34	2022-08-04 18:02:49.697124+00	6	Ingenier├¡a cl├¡nica hospitalaria, biomateriales, bioinstrumentaci├│n y biomec├ínica	1	[{"added": {}}]	6	1
35	2022-08-04 18:03:01.453275+00	7	Optimizaci├│n y operaciones, Manufactura y lean manufacturing	1	[{"added": {}}]	6	1
36	2022-08-04 18:03:16.505431+00	8	Educaci├│n financiera, Inversiones, Finanzas corporativas, Riesgo, cobertura y especulaci├│n	1	[{"added": {}}]	6	1
37	2022-08-04 18:03:35.724655+00	9	Ense├▒anza en ciencias, modelamiento matem├ítico y estad├¡stica aplicada	1	[{"added": {}}]	6	1
38	2022-08-04 18:03:50.794167+00	10	Estudio, intervenci├│n y desarrollo tecnol├│gico con enfoques sist├®micos en instituciones, educaci├│n y tecnolog├¡a	1	[{"added": {}}]	6	1
39	2022-08-04 18:04:01.699398+00	11	Marketing y log├¡stica	1	[{"added": {}}]	6	1
40	2022-08-04 18:04:10.829838+00	12	Biotecnolog├¡a y ambiente	1	[{"added": {}}]	6	1
41	2022-08-04 20:21:19.085695+00	1	XVI ENCUENTRO SEMILLEROS DE INVESTIGACI├ôN	2	[{"changed": {"fields": ["Nombre"]}}]	7	1
42	2022-08-23 16:54:18.94842+00	19	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
43	2022-08-23 16:57:10.321828+00	20	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
44	2022-08-23 17:02:45.436711+00	21	edwinblancog@gmail.com | Semilleros UNAB	3		10	1
45	2022-08-23 17:42:12.600301+00	44	titulo proyecto prueba	3		11	1
46	2022-08-23 17:42:12.602748+00	43	titulo proyecto prueba 2000000000	3		11	1
47	2022-08-23 17:42:12.6044+00	42	titulo proyecto prueba 1m	3		11	1
48	2022-08-23 17:42:12.606726+00	9	titulo proyecto pruebaaaaaaaaaaa	3		11	1
49	2022-08-23 17:42:40.637677+00	46	titulo proyecto prueba	3		11	1
50	2022-08-23 17:42:40.640002+00	45	titulo proyecto pruebaaaaaaaaaaa	3		11	1
51	2022-08-23 19:07:25.25751+00	48	titulo proyecto prueba 1m	3		11	1
52	2022-08-23 19:07:25.261375+00	47	titulo proyecto actualizado	3		11	1
53	2022-08-23 19:07:47.395816+00	22	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
54	2022-08-23 19:23:04.936411+00	23	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
55	2022-08-23 19:28:10.892312+00	24	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
56	2022-08-23 19:38:13.905024+00	25	edwinblancog@gmail.com | sdasd asdasd	3		10	1
57	2022-08-23 19:41:14.643413+00	26	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
58	2022-08-23 20:01:16.25133+00	27	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
59	2022-08-23 20:02:46.68707+00	28	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
60	2022-08-23 20:10:38.358377+00	29	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
61	2022-08-23 20:42:19.363932+00	31	adasdad@unab.edu.co | ooooooooooo ooooooooooo	3		10	1
62	2022-08-23 20:42:19.366583+00	30	edwinblancog@gmail.com | Felipe Cardenas	3		10	1
63	2022-08-23 20:42:33.871812+00	49	titulo proyecto prueba 2m	3		11	1
64	2022-08-24 02:55:10.875956+00	34	edwinblanco2g@gmail.com | Andres Blanco	3		10	1
65	2022-08-24 13:55:00.502464+00	35	eblanco265t@unab.edu.com | Daniela Castro	3		10	1
66	2022-08-24 16:58:59.545536+00	36	eblanco2658989@unab.edu.co | Edwin Guerrero	3		10	1
67	2022-08-24 17:59:34.235302+00	14	cduenas@unab.edu.co | CAMILO ENRIQUE DUE├æAS PUENTES	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
68	2022-08-24 17:59:50.766743+00	15	ksierra756@unab.edu.co | Kevin Andres SierraRojas	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
69	2022-08-24 22:04:42.651522+00	37	 |  	1	[{"added": {}}]	10	1
323	2022-09-21 16:47:03.45851+00	174	 |  	1	[{"added": {}}]	10	1
70	2022-08-24 22:06:52.023638+00	37	ccaceres4@unab.edu.co | Claudia Caceres	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is tutor", "Is admin", "Is staff", "Is active", "Is superadmin"]}}]	10	1
71	2022-08-24 22:07:07.152299+00	1	eblanco265@unab.edu.co | Edwin Blanco Guerrero	2	[]	10	1
72	2022-08-24 22:12:38.555329+00	2	MediaLab	1	[{"added": {}}]	7	37
73	2022-08-24 22:17:56.293416+00	1	AsignacionEvaluacion object (1)	1	[{"added": {}}]	16	37
74	2022-08-25 20:50:04.626753+00	38	mcastrillon336@unab.edu.co | Maria camila Castrillon	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
75	2022-08-25 20:50:38.698066+00	39	edwinblancog@gmail.com | Daniela Castro	3		10	1
76	2022-08-29 20:18:15.45428+00	1	Semillero pendiente por definir	2	[{"changed": {"fields": ["Nombre"]}}]	7	37
77	2022-08-29 20:19:03.168252+00	3	COSUMER	1	[{"added": {}}]	7	37
78	2022-08-29 20:19:19.900355+00	50	titulo proyecto prueba con autores	2	[{"changed": {"fields": ["Semillero"]}}]	11	1
79	2022-08-29 20:23:44.265112+00	4	Corp Finance	1	[{"added": {}}]	7	37
80	2022-08-29 20:24:09.636109+00	5	Risk-Net	1	[{"added": {}}]	7	37
81	2022-08-29 20:24:32.463759+00	6	CREATIVE	1	[{"added": {}}]	7	37
82	2022-08-29 20:24:50.035783+00	7	CREARE	1	[{"added": {}}]	7	37
83	2022-08-29 20:25:13.776532+00	8	BlockChain	1	[{"added": {}}]	7	37
84	2022-08-29 20:27:50.098763+00	9	Instrumentaci├│n y Contro. - SIIMKTK	1	[{"added": {}}]	7	37
85	2022-08-29 20:28:17.881729+00	10	Modelado y Simulaci├│n	1	[{"added": {}}]	7	37
86	2022-08-29 20:28:32.708786+00	11	SIAF	1	[{"added": {}}]	7	37
87	2022-08-29 20:29:45.040555+00	12	BlackSheep	1	[{"added": {}}]	7	37
88	2022-08-29 20:30:23.562766+00	13	Sebiunab	1	[{"added": {}}]	7	37
89	2022-08-29 20:30:44.437401+00	14	SIRED	1	[{"added": {}}]	7	37
90	2022-08-29 20:32:39.376827+00	15	SEMILLERO EN OPTIMIZACI├ôN DE SISTEMAS PRODUCTIVOS Y LOG├ìSTICOS	1	[{"added": {}}]	7	37
91	2022-08-29 20:34:30.209619+00	16	SIMULACION DE PROCESOS Y ENERGIA	1	[{"added": {}}]	7	37
92	2022-08-29 20:35:41.625152+00	17	SIDEM	1	[{"added": {}}]	7	37
93	2022-08-29 20:36:52.537336+00	18	RISE CO	1	[{"added": {}}]	7	37
94	2022-08-29 20:37:34.889319+00	19	Matem├íticas aplicadas	1	[{"added": {}}]	7	37
95	2022-08-29 20:38:36.189485+00	3	CONSUMER	2	[{"changed": {"fields": ["Nombre"]}}]	7	37
96	2022-08-29 20:39:51.654512+00	20	SEMOVIL	1	[{"added": {}}]	7	37
97	2022-08-29 20:40:27.544634+00	21	SEGURIDAD INFORMATICA	1	[{"added": {}}]	7	37
98	2022-08-29 20:41:09.606615+00	22	ENERGIAS RENOVABLES Y EFICIENCIA ENERG├ëTICA	1	[{"added": {}}]	7	37
99	2022-08-29 20:41:30.866867+00	23	INTELIGENCIA ARTIFICIAL	1	[{"added": {}}]	7	37
100	2022-08-29 20:42:08.083915+00	24	SISWEB	1	[{"added": {}}]	7	37
101	2022-08-29 20:43:05.9754+00	25	SISTEMIKA	1	[{"added": {}}]	7	37
102	2022-08-29 20:44:17.002413+00	26	Ecuaciones y Ondas	1	[{"added": {}}]	7	37
103	2022-08-29 21:03:31.770834+00	31	ejemplo	3		7	1
104	2022-08-29 21:16:05.8725+00	2	edwinblanco316@gmail.com | Edwin Guerrero	2	[{"changed": {"fields": ["Is staff"]}}]	10	1
105	2022-08-29 21:16:45.00236+00	2	edwinblanco316@gmail.com | Edwin Guerrero	2	[{"changed": {"fields": ["password"]}}]	10	1
106	2022-08-29 21:17:53.131052+00	2	edwinblanco316@gmail.com | Edwin Guerrero	2	[{"changed": {"fields": ["Is admin"]}}]	10	1
108	2022-08-29 21:52:14.333326+00	48	 |  	1	[{"added": {}}]	10	1
109	2022-08-29 21:54:10.916224+00	48	ppulido843@unab.edu.co | PAULA ANDREA PULIDO MARTINEZ	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is admin", "Is staff", "Is active"]}}]	10	1
110	2022-08-29 22:05:26.745467+00	32	ejemplo	3		7	1
111	2022-08-31 21:09:59.451831+00	56	semilleros.ingenieria.unab@gmail.com | Daniela Castro	3		10	1
112	2022-09-01 14:36:25.84123+00	60	brayansneyder.gomez01@ustabuca.edu.co | Brayan Sneyder G├│mez Remolina	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
113	2022-09-01 14:36:39.366261+00	57	brojas784@unab.edu.co | Brisly Fabiana Rojas Dallos	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
114	2022-09-01 14:38:34.993675+00	55	mmorales267@unab.edu.co | Mario Fernando Morales Cordero	2	[{"changed": {"fields": ["Is active"]}}]	10	37
115	2022-09-01 14:54:09.160259+00	62	semilleros.ingenieria.unab@gmail.com | Semilleros UNAB	3		10	1
116	2022-09-02 14:18:49.017953+00	84	buc19362014@mail.udes.edu.co | Maria Pierina Corredor Labrador	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
117	2022-09-02 14:19:39.764566+00	65	eneyda.abrey@ustabuca.edu.co | ENEYDA ABREU PLATA	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
118	2022-09-02 14:20:20.484408+00	72	buc19362009@mail.udes.edu.co | Carol Yulieth Hoyos Diaz	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
119	2022-09-02 14:55:43.177501+00	60	titulo proyecto pruebaaaaaaaaaaa	3		11	1
120	2022-09-02 14:55:43.21443+00	58	titulo proyecto pruebaaaaaaaaaaa	3		11	1
121	2022-09-02 14:56:25.76368+00	89	adrianagambaperez@gmail.com | Adriana Marcela Gamba P├®rez	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
122	2022-09-02 14:56:38.23556+00	81	buc19362001@mail.udes.edu.co | Celestino Quintero G├│mez	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
123	2022-09-02 14:56:52.658056+00	71	buc19362005@mail.udes.edu.co | Hern├ín Ariza Rallon	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
124	2022-09-02 14:57:06.758392+00	70	buc19362010@mail.udes.edu | Fabi├ín Guillermo Tobo Garc├¡a	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
125	2022-09-02 15:05:01.354929+00	59	Digitalizaci├│n tridimensional de la cavidad orbitaria de restos humanos a trav├®s del m├®todo ├│ptico de proyecci├│n de franjas	2	[]	11	1
126	2022-09-02 15:06:09.730653+00	45	F├¡sica ├ôptica	3		7	1
127	2022-09-02 15:06:09.746706+00	44	F├¡sica ├ôptica	3		7	1
128	2022-09-02 15:06:09.749642+00	43	F├¡sica ├ôptica	3		7	1
129	2022-09-02 15:06:09.751917+00	42	F├¡sica ├ôptica	3		7	1
130	2022-09-02 15:06:09.754468+00	41	F├¡sica ├ôptica	3		7	1
131	2022-09-02 15:06:09.756183+00	40	F├¡sica ├ôptica	3		7	1
132	2022-09-02 15:06:09.758034+00	39	F├¡sica ├ôptica	3		7	1
133	2022-09-02 15:06:09.761969+00	38	F├¡sica ├ôptica	3		7	1
134	2022-09-02 15:06:09.763682+00	37	F├¡sica ├ôptica	3		7	1
135	2022-09-02 15:06:09.765676+00	36	F├¡sica ├ôptica	3		7	1
136	2022-09-02 15:06:18.728672+00	46	F├¡sica ├ôptica	3		7	1
137	2022-09-02 15:07:48.907288+00	57	An├ílisis de los indicadores cuantitativos de las habilidades blandas en la internacionalizaci├│n de las empresas del ├írea metropolitana de Bucaramanga.	2	[{"changed": {"fields": ["Semillero"]}}]	11	1
138	2022-09-02 15:09:05.939811+00	48	CAYPRO Y semillero Cl├║ster	3		7	1
139	2022-09-05 18:13:58.122786+00	2	AsignacionEvaluacion object (2)	3		16	1
140	2022-09-05 22:01:47.860235+00	2	edwinblanco316@gmail.com | Edwin Guerrero	2	[{"changed": {"fields": ["password"]}}]	10	1
142	2022-09-05 22:03:54.29566+00	2	edwinblanco316@gmail.com | Edwin Guerrero	2	[]	10	1
143	2022-09-07 19:18:14.156674+00	114	 |  	1	[{"added": {}}]	10	1
144	2022-09-07 19:19:57.678451+00	114	lcamacho896@unab.edu.co | leidy Camacho	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is tutor", "Is admin", "Is staff", "Is active", "Is superadmin"]}}]	10	1
145	2022-09-07 20:43:10.431687+00	114	lcamacho896@unab.edu.co | leidy Camacho	2	[{"changed": {"fields": ["password"]}}]	10	1
146	2022-09-07 20:43:25.142244+00	114	lcamacho896@unab.edu.co | leidy Camacho	2	[]	10	1
147	2022-09-08 00:58:42.216116+00	65	Comportamiento mec├ínico de suelos para la construcci├│n de tapia pisada en Curit├¡, Barichara y Piedecuesta en funci├│n de su composici├│n granulom├®trica	3		11	1
148	2022-09-08 00:58:42.220394+00	64	Comportamiento mec├ínico de suelos para la construcci├│n de tapia pisada en Curit├¡, Barichara y Piedecuesta en funci├│n de su composici├│n granulom├®trica	3		11	1
149	2022-09-08 01:01:26.266638+00	56	An├ílisis de los indicadores cuantitativos de las habilidades blandas en la internacionalizaci├│n de las empresas del ├írea metropolitana de Bucaramanga.	3		11	1
150	2022-09-08 08:01:08.993173+00	1	eblanco265@unab.edu.co | Edwin Blanco Guerrero	2	[{"changed": {"fields": ["Universidad"]}}]	10	1
151	2022-09-08 15:53:43.137722+00	119	amartinez403@unab.edu.co | Andrea Juliana Mart├¡nez Tello	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
152	2022-09-08 15:53:56.955318+00	134	silvia2164212@uis.edu.co | Silvia Juliana Mart├¡nez Arguello	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
153	2022-09-08 15:54:26.729447+00	131	karen2190470@correo.uis.edu.co | Karen Gabriela R├¡os Carrero	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
154	2022-09-08 15:54:56.762508+00	133	dilan2164296@correo.uis.edu.co | Dilan Jhoanny Mogoll├│n Carre├▒o	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
155	2022-09-08 18:52:51.715096+00	69	Validaci├│n de instrumento para la ruta integradora de emprendimiento en la Universidad Santo Tom├ís Bucaramanga	3		11	1
156	2022-09-08 18:52:52.606533+00	68	Validaci├│n de instrumento para la ruta integradora de emprendimiento en la Universidad Santo Tom├ís Bucaramanga	3		11	1
157	2022-09-08 21:23:25.668888+00	121	francisco.dietes@ustabuca.edu.co | Francisco Javier Dietes Cardenas	2	[{"changed": {"fields": ["Correo institicional"]}}]	10	1
158	2022-09-08 21:24:13.70079+00	121	francisco.dietes@ustabuca.edu.co | Francisco Javier Dietes Cardenas	2	[{"changed": {"fields": ["password"]}}]	10	1
159	2022-09-08 21:24:26.812249+00	121	francisco.dietes@ustabuca.edu.co | Francisco Javier Dietes Cardenas	2	[]	10	1
160	2022-09-08 21:28:03.165965+00	121	francisco.dietes@ustabuca.edu.co | Francisco Javier Dietes Cardenas	2	[{"changed": {"fields": ["Is tutor"]}}]	10	1
161	2022-09-09 00:55:03.826388+00	77	Algoritmo gen├®tico para CFP	3		11	1
162	2022-09-09 00:55:03.831188+00	76	Algoritmo gen├®tico para CFP	3		11	1
163	2022-09-09 00:55:22.180003+00	74	Prototipo Web de Registro y Trazabilidad de  Medicamentos	3		11	1
164	2022-09-09 05:15:04.291509+00	87	Inclusi├│n financiera en Colombia, un enfoque sobre educaci├│n econ├│mica y financiera	3		11	1
165	2022-09-09 13:21:37.302789+00	1	1 Activaci├│n de la convocatoria	1	[{"added": {}}]	18	1
166	2022-09-09 13:25:59.239474+00	1	1 Activaci├│n de la convocatoria	2	[]	18	1
167	2022-09-09 13:35:07.716294+00	1	1 Activaci├│n de la convocatoria	2	[{"changed": {"fields": ["Activacion convocatoria"]}}]	18	1
168	2022-09-09 13:52:40.88096+00	73	Aplicaci┬┤on de t┬┤ecnicas de diagnostico a un plasma generado a partir de fuego excitado por microondas	2	[{"changed": {"fields": ["Semillero"]}}]	11	37
169	2022-09-09 13:54:01.188401+00	58	SISAS Semillero de Investigaci├│n en Aire, Suelos y Sostenibilidad	1	[{"added": {}}]	7	37
170	2022-09-09 13:54:32.970284+00	51	Evaluaci├│n de Ruido Ambiental en el campus UDES con m├│dulo electr├│nico de bajo costo en tiempo real	2	[{"changed": {"fields": ["Semillero"]}}]	11	37
171	2022-09-09 13:54:48.680751+00	52	Estudio comparativo de mediciones de son├│metro y dispositivo electr├│nico SOUDES, caso: Comuna Centro de Bucaramanga	2	[{"changed": {"fields": ["Semillero"]}}]	11	37
172	2022-09-09 14:25:53.808718+00	37	ccaceres4@unab.edu.co | Claudia Isabel C├íceres Becerra	2	[{"changed": {"fields": ["Nombres", "Apellidos"]}}]	10	37
173	2022-09-09 16:13:40.469696+00	92	Software reconocimiento de texto en reportes de equipos biom├®dicos	3		11	114
174	2022-09-09 20:27:15.32704+00	1	1 Activaci├│n de la convocatoria	2	[{"changed": {"fields": ["Activacion convocatoria"]}}]	18	1
175	2022-09-11 21:03:22.923795+00	96	Interfaz grafica de usuario para el conteo de c├®lulas por medio de procesamiento de im├ígenes	3		11	1
176	2022-09-11 21:04:44.701118+00	158	Acaste5@unab.edu.co | Andres Felipe Castellanos Solano	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
177	2022-09-12 05:30:40.347775+00	1	1 Activaci├│n de la convocatoria	2	[{"changed": {"fields": ["Activacion convocatoria"]}}]	18	1
178	2022-09-12 13:23:46.479193+00	1	1 Activaci├│n de la convocatoria	2	[{"changed": {"fields": ["Activacion convocatoria"]}}]	18	1
179	2022-09-12 15:15:28.935865+00	158	Acaste5@unab.edu.co | Andres Felipe Castellanos Solano	3		10	37
180	2022-09-12 19:01:26.61503+00	160	ygamba@unaba.edu.co | Yamid Gabriel Gamba Gonz├ílez	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
181	2022-09-12 19:02:01.099509+00	167	acastellanos565@unab.edu.co | Andres felipe Castellanos Solano	2	[{"changed": {"fields": ["Is autor", "Is active"]}}]	10	1
182	2022-09-12 20:42:48.065407+00	73	Aplicaci├│n de t├®cnicas de diagnostico a un plasma generado a partir de fuego excitado por microondas	2	[{"changed": {"fields": ["Titulo"]}}]	11	1
183	2022-09-12 20:44:38.710466+00	168	 |  	1	[{"added": {}}]	10	1
184	2022-09-12 20:45:33.875104+00	168	carizmendi@unab.edu.co | Carlos Julio Arizmendi	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is tutor", "Is active"]}}]	10	1
185	2022-09-12 20:46:51.526731+00	86	Asistente Virtual para el programa de Ingnier├¡a Mecatr├│nica	2	[{"changed": {"fields": ["Tutores"]}}]	11	1
186	2022-09-14 19:40:42.812549+00	54	Estudio sobre la afectaci├│n del factor clim├ítico en el cultivo de r├íbano ubicado en la huerta perteneciente al programa de Ingenier├¡a Agroindustrial de la Universidad de Santander	2	[{"changed": {"fields": ["Semillero"]}}]	11	37
187	2022-09-14 19:40:52.613592+00	33	AGROINSO	3		7	1
188	2022-09-14 19:41:44.454898+00	52	INAES	3		7	1
189	2022-09-14 19:41:52.77592+00	51	INAES	3		7	1
190	2022-09-14 21:03:01.638215+00	114	lcamacho896@unab.edu.co | leidy Camacho	2	[{"changed": {"fields": ["password"]}}]	10	1
191	2022-09-15 19:18:42.565372+00	1	1 Activaci├│n de la convocatoria	2	[{"changed": {"fields": ["Activacion convocatoria"]}}]	18	1
224	2022-09-19 15:14:20.318626+00	368	Evaluaci├│n de Estrategias para Promover la Adopci├│n de las Tecnolog├¡as IoT en las Pymes. Un Enfoque de Din├ímica de Sistemas	1	new through import_export	19	1
225	2022-09-19 15:14:20.405664+00	369	Estudio din├ímico sist├®mico acerca del aumento en la incidencia de las enfermedades de salud mental consecuencia de la pandemia COVID-19	1	new through import_export	19	1
226	2022-09-19 15:14:20.487887+00	370	Propuesta de evaluaci├│n din├ímica sist├®mica de una estrategia terap├®utica basada en nanotecnolog├¡a en el comportamiento poblacional de pacientes con c├íncer de mama en Colombia.	1	new through import_export	19	1
227	2022-09-19 15:14:20.574174+00	371	Evaluaci├│n de los efectos de la adopci├│n de energ├¡a renovable en la producci├│n de hidrocarburos	1	new through import_export	19	1
228	2022-09-19 15:14:20.660186+00	372	DESARROLLO DE UN ROBOT OPERADO A DISTANCIA PARA LA B├ÜSQUEDA DE SUPERVIVIENTES EN ESTRUCTURAS COLAPSADAS DE DIF├ìCIL ACCESO	1	new through import_export	19	1
229	2022-09-19 15:14:20.745443+00	373	DESARROLLO DE UNA TINTA DE BIOMATERIAL A BASE DE ALGINATO,├üCIDO HIALUR├ôNICO Y PLASMA POBRE EN PLAQUETAS COMO POSIBLE TRATAMIENTO  PARA LAS ├ÜLCERAS CR├ôNICAS DE PIE DIABETICO.  	1	new through import_export	19	1
230	2022-09-19 15:14:20.830493+00	374	Calculate Pi	1	new through import_export	19	1
231	2022-09-19 15:14:20.920865+00	375	An├ílisis de las ondas cerebrales ante est├¡mulos de comida y su significado, mediante el Brainwave starter kit	1	new through import_export	19	1
232	2022-09-19 15:14:21.009292+00	376	Quaesitor- Plataforma Tecnol├│gica de b├║squeda interactiva soportada en dispositivos m├│viles	1	new through import_export	19	1
233	2022-09-19 15:14:21.094918+00	377	Desarrollo de un test in vitro para la evaluaci├│n de la maduraci├│n de monocitos a macr├│fagos como posible predictor de una respuesta pro inflamatoria en implantes mamarios	1	new through import_export	19	1
234	2022-09-19 15:14:21.177136+00	378	Animal friend	1	new through import_export	19	1
235	2022-09-19 15:14:21.266387+00	379	Mi bus Unab	1	new through import_export	19	1
236	2022-09-19 15:14:21.3472+00	380	Planner-U	1	new through import_export	19	1
237	2022-09-19 15:14:21.431029+00	381	Preferencias en collares para mascotas	1	new through import_export	19	1
238	2022-09-19 15:14:21.513625+00	382	Prototipo de aplicaci├│n m├│vil utilizando una herramienta de desarrollo multiplataforma para trabajadores de servicios independientes\n	1	new through import_export	19	1
239	2022-09-19 15:14:21.61857+00	383	Demostraci├│n del acople excitaci├│n-contracci├│n del m├║sculo card├¡aco para la representaci├│n del potencial de acci├│n a trav├®s de una interfaz gr├ífica	1	new through import_export	19	1
240	2022-09-19 15:14:21.703739+00	384	DISE├æO E IMPLEMENTACI├ôN DE UN SISTEMA DE CONTROL PARA UN INTERCAMBIADOR DE CALOR	1	new through import_export	19	1
241	2022-09-19 15:14:21.786195+00	385	Prototipo de monitor de presi├│n arterial no invasiva.	1	new through import_export	19	1
242	2022-09-19 15:14:21.876533+00	386	An├ílisis Biomec├ínico del Pie Diab├®tico Respecto al Pie Normal Mediante un Registro Est├ítico en P-Walk.	1	new through import_export	19	1
243	2022-09-19 15:14:21.96076+00	387	Filtro purificador de a├¡re hecho a base de matriz de seda y cloroplastos 	1	new through import_export	19	1
244	2022-09-19 15:14:22.043572+00	388	Desarrollo de un Sistema de Identificaci├│n de Melanomas en Piel Mediante Algoritmos de Inteligencia Artificial	1	new through import_export	19	1
245	2022-09-19 15:14:22.131656+00	389	An├ílisis Conjoint  Bebidas Carbonatadas	1	new through import_export	19	1
246	2022-09-19 15:14:22.215683+00	390	Web de motos Auteco	1	new through import_export	19	1
247	2022-09-19 15:14:22.29834+00	391	An├ílisis Biomec├ínico del Pie Plano Durante el Apoyo Est├ítico Mediante la Plataforma P-Walk en Estudiante de la UNAB	1	new through import_export	19	1
248	2022-09-19 15:14:22.382902+00	392	Ecommerce para Caf├® Sensaciones	1	new through import_export	19	1
249	2022-09-19 15:14:22.471295+00	393	An├ílisis de datos inmobiliarios	1	new through import_export	19	1
250	2022-09-19 15:14:22.553001+00	394	COFFEE COMPANY	1	new through import_export	19	1
251	2022-09-19 15:14:22.639417+00	395	Dise├▒o e implementaci├│n de un prototipo que controle el acceso y permita la toma de temperatura corporal en la sede principal del Colegio Adventista Libertad mediante el uso del lector de c├®dula con t	1	new through import_export	19	1
252	2022-09-19 15:14:22.726506+00	396	Caracterizaci├│n fisicoqu├¡mica y evaluaci├│n de la moringa oleifera para la purificaci├│n del agua	1	new through import_export	19	1
253	2022-09-19 15:14:22.815457+00	397	An├ílsis de datos inmobiliarios\n	1	new through import_export	19	1
254	2022-09-19 15:14:22.899408+00	398	Dise├▒o y an├ílisis de un nuevo sistema de estabilizaci├│n para el robot b├¡pedo.	1	new through import_export	19	1
255	2022-09-19 15:14:22.983908+00	399	DISE├æO Y CONSTRUCCI├ôN DE PR├ôTESIS DE MIEMBRO SUPERIOR A LA MEDIDA, UTILIZANDO TECNOLOG├ìAS 4.0 EN DISE├æO Y PROTOTIPADO 	1	new through import_export	19	1
256	2022-09-19 15:14:23.0673+00	400	DISE├æO DE UN HUERTO INTELIGENTE AUTOMATIZADO A BAJO COSTO CON ARDUINO	1	new through import_export	19	1
257	2022-09-19 15:14:23.17275+00	401	PROTOTIPO DE UNA PR├ôTESIS ROB├ôTICA CON UN GRADO DE LIBERTAD MEDIANTE EL USO DE ELECTROMIOGRAF├ìA	1	new through import_export	19	1
258	2022-09-19 15:14:23.255435+00	402	SCOOTER ELIPTICA CON ASISTENCIA ELECTRICA	1	new through import_export	19	1
259	2022-09-19 15:14:23.338697+00	403	Prototipo de una m├íquina selectora de semilla sacha inchi	1	new through import_export	19	1
260	2022-09-19 15:14:23.419819+00	404	DISE├æO DE UN SISTEMA PARA EL REGISTRO DE LA POSICI├ôN DE LOS CICLISTAS DE RUTA USANDO SENSORES INERCIALES PARA POTENCIAR EL GESTO DEPORTIVO.	1	new through import_export	19	1
261	2022-09-19 15:14:23.505424+00	405	Desarrollo de un prototipo de interfaz en Matlab para la identificaci├│n de melanomas en la piel empleando t├®cnicas de procesamiento de im├ígenes e inteligencia artificial 	1	new through import_export	19	1
262	2022-09-19 15:14:23.59069+00	406	Desarrollo de un ap├│sito tipo hidrogel de plasma pobre en plaquetas y col├ígeno extra├¡do de piel de tilapia con potencial uso para el tratamiento de ├║lceras cr├│nicas de pie diab├®tico	1	new through import_export	19	1
324	2022-09-21 16:47:57.416791+00	174	 |  	3		10	1
263	2022-09-19 15:14:23.680464+00	407	Software de simulaci├│n en realidad virtual para el aprendizaje de programaci├│n de microcontroladores	1	new through import_export	19	1
264	2022-09-19 15:14:23.763984+00	408	Aprovechamiento del epicarpio de mangostino como colorante natural para cosm├®ticos  	1	new through import_export	19	1
265	2022-09-19 15:14:23.847791+00	409	Asistente Virtual para el programa de Ingenier├¡a Mecatr├│nica UNAB	1	new through import_export	19	1
266	2022-09-19 15:14:23.931497+00	410	Obesapp	1	new through import_export	19	1
267	2022-09-19 15:14:24.016446+00	411	ASESOR├ìA EN EDUCACI├ôN FINANCIERA (AEF)	1	new through import_export	19	1
268	2022-09-19 15:14:24.099449+00	412	Xtreme adventure 	1	new through import_export	19	1
269	2022-09-19 15:14:24.184429+00	413	Robot Solucionador de Una Cara del Cubo Rubik	1	new through import_export	19	1
270	2022-09-19 15:14:24.269191+00	414	Karta Di Busan	1	new through import_export	19	1
271	2022-09-19 15:14:24.355338+00	415	Desarrollo de un prototipo de Ba├▒o Seco con agitaci├│n para procesamiento de muestras bacteriol├│gicas (Tipo E. coli) e implementaci├│n en el laboratorio de farmacolog├¡a UNAB	1	new through import_export	19	1
272	2022-09-19 15:14:24.439676+00	416	Preferencias en collares para mascotas	1	new through import_export	19	1
273	2022-09-19 15:14:24.524266+00	417	CUB├ìCULO DE DESINFECCI├ôN CON RAYOS UV Y PER├ôXIDO DE HIDR├ôGENO DE CUERPO COMPLETO\n\nPARA HOSPITALES	1	new through import_export	19	1
274	2022-09-19 15:14:24.607236+00	418	TG2_VIDEOJUEGO SERIO PARA ENSE├æANZA DE LOS CONCEPTOS B├üSICOS DE CIBERSEGURIDAD EN NI├æOS DE EDUCACI├ôN PRIMARIA	1	new through import_export	19	1
275	2022-09-19 15:14:24.693511+00	419	Sostenibilidad ambiental en la UNAB con base a los ODS	1	new through import_export	19	1
276	2022-09-19 15:14:24.778979+00	420	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	1	new through import_export	19	1
277	2022-09-19 17:08:14.79641+00	7	AsignacionEvaluacion object (7)	3		16	1
278	2022-09-19 18:03:12.960943+00	1	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
279	2022-09-19 18:31:07.298481+00	2	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
280	2022-09-19 18:41:09.697867+00	3	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
281	2022-09-19 18:49:56.131888+00	6	AsignacionEvaluacion object (6)	3		16	1
282	2022-09-19 18:49:56.227455+00	5	AsignacionEvaluacion object (5)	3		16	1
283	2022-09-19 18:49:56.328357+00	4	AsignacionEvaluacion object (4)	3		16	1
284	2022-09-19 18:49:56.42966+00	3	AsignacionEvaluacion object (3)	3		16	1
285	2022-09-19 18:49:56.530377+00	1	AsignacionEvaluacion object (1)	3		16	1
286	2022-09-19 18:52:43.755434+00	1	titulo proyecto prueba con autores	3		15	1
287	2022-09-19 18:54:26.504651+00	3	Dise├▒o de un modelo de simulaci├│n para la validaci├│n del funcionamiento de una planta de limpieza y clasificaci├│n de frutos c├¡tricos en el departamento de Santander.	3		15	1
288	2022-09-19 18:54:26.600592+00	2	titulo proyecto prueba con autores	3		15	1
289	2022-09-19 18:56:01.251259+00	9	AsignacionEvaluacion object (9)	3		16	1
290	2022-09-19 19:05:40.073753+00	4	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
291	2022-09-19 19:07:57.490422+00	1	AsignacionEvaluacionInngeniatec object (1)	3		21	1
292	2022-09-19 19:10:32.868131+00	3	AsignacionEvaluacionInngeniatec object (3)	3		21	1
293	2022-09-19 19:27:11.590795+00	4	AsignacionEvaluacionInngeniatec object (4)	1	[{"added": {}}]	21	1
294	2022-09-19 19:28:34.465079+00	4	AsignacionEvaluacionInngeniatec object (4)	3		21	1
295	2022-09-19 20:30:23.827369+00	5	AsignacionEvaluacionInngeniatec object (5)	1	[{"added": {}}]	21	1
296	2022-09-20 03:16:45.13137+00	7	Sostenibilidad ambiental en la UNAB con base a los ODS	3		20	1
297	2022-09-20 03:16:45.134706+00	5	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
298	2022-09-20 03:17:45.35336+00	6	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
299	2022-09-20 03:18:01.796716+00	5	AsignacionEvaluacionInngeniatec object (5)	3		21	1
300	2022-09-20 03:18:01.799633+00	2	AsignacionEvaluacionInngeniatec object (2)	3		21	1
301	2022-09-20 03:18:10.591093+00	6	AsignacionEvaluacionInngeniatec object (6)	1	[{"added": {}}]	21	1
302	2022-09-20 06:09:06.724119+00	8	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
303	2022-09-20 06:09:24.931949+00	6	AsignacionEvaluacionInngeniatec object (6)	2	[{"changed": {"fields": ["Asignacion calificada1"]}}]	21	1
304	2022-09-20 06:12:48.863968+00	9	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
305	2022-09-20 06:13:08.452793+00	6	AsignacionEvaluacionInngeniatec object (6)	2	[{"changed": {"fields": ["Asignacion calificada1"]}}]	21	1
306	2022-09-20 06:28:31.227985+00	7	AsignacionEvaluacionInngeniatec object (7)	3		21	1
307	2022-09-20 06:28:31.325839+00	6	AsignacionEvaluacionInngeniatec object (6)	3		21	1
308	2022-09-20 06:41:26.433783+00	12	AsignacionEvaluacionInngeniatec object (12)	3		21	1
309	2022-09-20 06:41:26.523238+00	11	AsignacionEvaluacionInngeniatec object (11)	3		21	1
310	2022-09-20 06:41:26.611465+00	10	AsignacionEvaluacionInngeniatec object (10)	3		21	1
311	2022-09-20 06:41:26.698692+00	9	AsignacionEvaluacionInngeniatec object (9)	3		21	1
312	2022-09-20 06:41:26.786316+00	8	AsignacionEvaluacionInngeniatec object (8)	3		21	1
313	2022-09-20 06:47:45.98079+00	16	AsignacionEvaluacionInngeniatec object (16)	3		21	1
314	2022-09-20 06:47:46.071214+00	15	AsignacionEvaluacionInngeniatec object (15)	3		21	1
315	2022-09-20 06:47:46.174008+00	14	AsignacionEvaluacionInngeniatec object (14)	3		21	1
316	2022-09-20 06:47:46.322229+00	13	AsignacionEvaluacionInngeniatec object (13)	3		21	1
317	2022-09-20 06:49:19.940865+00	17	AsignacionEvaluacionInngeniatec object (17)	3		21	1
318	2022-09-20 06:49:37.523805+00	18	AsignacionEvaluacionInngeniatec object (18)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
319	2022-09-20 06:55:27.74885+00	18	AsignacionEvaluacionInngeniatec object (18)	3		21	1
320	2022-09-21 16:41:14.992985+00	173	 |  	1	[{"added": {}}]	10	1
321	2022-09-21 16:42:04.433673+00	173	prueba123@gmail.com | asdasd asdasd	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is evaluador", "Is tutor", "Is active"]}}]	10	1
322	2022-09-21 16:42:46.657394+00	173	prueba123@gmail.com | asdasd asdasd	3		10	1
325	2022-09-21 16:51:32.103354+00	175	 |  	1	[{"added": {}}]	10	1
326	2022-09-21 16:52:49.376307+00	175	 |  	3		10	1
327	2022-09-21 16:53:13.10231+00	176	 |  	1	[{"added": {}}]	10	1
328	2022-09-21 16:55:28.261818+00	176	 |  	3		10	1
329	2022-09-21 16:55:53.244608+00	177	 |  	1	[{"added": {}}]	10	1
330	2022-09-21 16:56:45.251879+00	177	 |  	3		10	1
331	2022-09-21 17:01:48.808371+00	180	 |  	1	[{"added": {}}]	10	1
332	2022-09-21 17:02:58.825799+00	180	prueba123@gmail.com | asdasd asda	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is evaluador", "Is active"]}}]	10	1
333	2022-09-21 17:05:49.455652+00	180	prueba123@gmail.com | asdasd asda	3		10	1
334	2022-09-21 17:09:28.998546+00	181	edwinblancog@gmail.com | prueba prueba	3		10	1
335	2022-09-21 17:15:29.329606+00	182	 |  	1	[{"added": {}}]	10	1
336	2022-09-21 17:31:47.524198+00	182	 |  	3		10	1
337	2022-09-21 17:32:10.643476+00	183	 |  	1	[{"added": {}}]	10	1
338	2022-09-21 17:33:25.662788+00	183	prueba123@gmail.com | sadsd asdad	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is evaluador", "Is active"]}}]	10	1
339	2022-09-21 17:34:01.316603+00	183	prueba123@gmail.com | sadsd asdad	3		10	1
340	2022-09-21 17:34:37.735517+00	184	 |  	1	[{"added": {}}]	10	1
341	2022-09-21 17:35:20.86663+00	184	 |  	3		10	1
342	2022-09-21 17:45:48.131935+00	185	 |  	1	[{"added": {}}]	10	1
343	2022-09-21 17:49:24.658979+00	185	 |  	3		10	1
344	2022-09-21 17:49:52.73317+00	186	 |  	1	[{"added": {}}]	10	1
345	2022-09-21 17:50:27.612391+00	186	prueba123@gmail.com | sdasd asdasd	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
346	2022-09-21 18:05:01.235917+00	186	prueba123@gmail.com | sdasd asdasd	3		10	1
347	2022-09-21 18:05:40.722307+00	187	 |  	1	[{"added": {}}]	10	1
348	2022-09-21 18:06:18.922253+00	187	 |  	3		10	1
349	2022-09-21 18:09:56.8616+00	188	 |  	1	[{"added": {}}]	10	1
350	2022-09-21 18:17:48.919265+00	188	 |  	3		10	1
351	2022-09-21 18:18:14.042039+00	189	 |  	1	[{"added": {}}]	10	1
352	2022-09-21 18:19:02.080126+00	189	prueba123@gmail.com | adsadasd asdasd	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
353	2022-09-21 18:31:00.15576+00	189	prueba123@gmail.com | adsadasd asdasd	3		10	1
354	2022-09-21 18:31:25.474434+00	190	 |  	1	[{"added": {}}]	10	1
355	2022-09-21 18:32:06.571742+00	190	prueba123@gmail.com | asdasd asasd	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is superadmin"]}}]	10	1
356	2022-09-21 18:33:37.590881+00	190	prueba123@gmail.com | asdasd asasd	3		10	1
357	2022-09-21 18:34:44.411139+00	191	 |  	1	[{"added": {}}]	10	1
358	2022-09-21 18:39:16.23511+00	191	 |  	3		10	1
359	2022-09-21 18:40:57.962439+00	192	prueba123@gmail.com | asdadasd asdasda	1	[{"added": {}}]	10	1
360	2022-09-21 18:47:55.636919+00	192	prueba123@gmail.com | asdadasd asdasda	3		10	1
361	2022-09-21 18:48:48.542106+00	None	prueba123@gmail.com | prueba prueba	1	[{"added": {}}]	10	1
362	2022-09-21 18:51:56.688449+00	193	prueba123@gmail.com | prueba prueba	1	[{"added": {}}]	10	1
363	2022-09-21 18:55:55.166156+00	193	prueba123@gmail.com | prueba prueba	3		10	1
364	2022-09-21 18:56:39.257706+00	194	prueba123@gmail.com | prueba prueba	1	[{"added": {}}]	10	1
365	2022-09-21 19:00:03.609989+00	194	prueba123@gmail.com | prueba prueba	3		10	1
366	2022-09-21 19:01:21.758192+00	195	prueba123@gmail.com | prueba prueba	1	[{"added": {}}]	10	1
367	2022-09-21 19:02:43.427925+00	195	prueba123@gmail.com | prueba prueba	3		10	1
368	2022-09-21 19:04:52.820369+00	196	edwinblancog@gmail.com | prueba prueba	1	[{"added": {}}]	10	1
369	2022-09-21 19:05:08.69418+00	196	edwinblancog@gmail.com | prueba prueba	3		10	1
370	2022-09-21 19:18:19.092378+00	197	dasdasdaasdadasd@gmail.com | asdad asdad	1	[{"added": {}}]	10	1
371	2022-09-21 19:22:24.188075+00	197	edwinblancog@gmail.com | asdad asdad	2	[{"changed": {"fields": ["Correo institicional"]}}]	10	1
372	2022-09-21 19:27:18.629458+00	198	 |  	1	[{"added": {}}]	10	1
373	2022-09-21 19:29:11.612067+00	198	prueba1234@gmail.com | asdasd asdasd	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
374	2022-09-21 19:33:57.75+00	198	prueba1234@gmail.com | asdasd asdasd	3		10	1
375	2022-09-21 19:33:57.83816+00	197	edwinblancog@gmail.com | asdad asdad	3		10	1
376	2022-09-21 19:36:39.041502+00	199	 |  	1	[{"added": {}}]	10	1
377	2022-09-21 19:37:19.735261+00	199	prueba123@gmail.com | prueba prueba	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
378	2022-09-21 19:38:04.952881+00	200	 |  	1	[{"added": {}}]	10	1
379	2022-09-21 19:39:21.128957+00	200	 |  	3		10	1
380	2022-09-21 19:39:21.219646+00	199	prueba123@gmail.com | prueba prueba	3		10	1
381	2022-09-21 19:43:55.944563+00	201	 |  	1	[{"added": {}}]	10	1
382	2022-09-21 19:44:32.170019+00	201	edwinblancog@gmail.com | NIC SON	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
383	2022-09-21 19:54:22.591603+00	21	AsignacionEvaluacionInngeniatec object (21)	3		21	1
384	2022-09-21 19:54:22.688777+00	20	AsignacionEvaluacionInngeniatec object (20)	3		21	1
385	2022-09-21 19:54:22.781742+00	19	AsignacionEvaluacionInngeniatec object (19)	3		21	1
386	2022-09-21 20:08:43.68413+00	25	AsignacionEvaluacionInngeniatec object (25)	3		21	1
387	2022-09-21 20:08:43.802948+00	24	AsignacionEvaluacionInngeniatec object (24)	3		21	1
388	2022-09-21 20:08:43.902786+00	23	AsignacionEvaluacionInngeniatec object (23)	3		21	1
389	2022-09-21 20:08:44.021258+00	22	AsignacionEvaluacionInngeniatec object (22)	3		21	1
390	2022-09-21 20:54:22.841197+00	10	AsignacionEvaluacion object (10)	3		16	1
391	2022-09-21 20:54:22.936493+00	8	AsignacionEvaluacion object (8)	3		16	1
392	2022-09-21 20:54:42.904295+00	27	AsignacionEvaluacionInngeniatec object (27)	3		21	1
393	2022-09-21 20:54:42.991357+00	26	AsignacionEvaluacionInngeniatec object (26)	3		21	1
394	2022-09-21 20:55:21.768586+00	201	edwinblancog@gmail.com | NIC SON	3		10	1
395	2022-09-21 20:55:54.925995+00	114	lcamacho896@unab.edu.co | leidy Camacho	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
396	2022-09-21 21:38:40.254967+00	12	AsignacionEvaluacion object (12)	3		16	1
397	2022-09-21 21:38:40.347679+00	11	AsignacionEvaluacion object (11)	3		16	1
398	2022-09-21 21:43:18.521337+00	202	 |  	1	[{"added": {}}]	10	1
399	2022-09-21 21:43:53.631366+00	202	edwinblancog@gmail.com | prueba prueba	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
400	2022-09-21 21:53:11.867619+00	13	AsignacionEvaluacion object (13)	3		16	1
401	2022-09-21 22:31:43.745607+00	204	pruebaexcel@gmail.com | Prueba Excel Aplellido Excel	1	new through import_export	10	1
402	2022-09-21 22:32:39.914191+00	204	pruebaexcel@gmail.com | Prueba Excel Aplellido Excel	2	[{"changed": {"fields": ["Username", "Is autor", "Is active"]}}]	10	1
403	2022-09-21 22:35:28.36199+00	204	edwinblanco3164@gmail.com | Prueba Excel Aplellido Excel	2	[{"changed": {"fields": ["Correo institicional", "Is evaluador"]}}]	10	1
404	2022-09-21 22:36:00.322758+00	204	edwinblanco3164@gmail.com | Prueba Excel Aplellido Excel	3		10	1
405	2022-09-21 22:57:16.244874+00	160	ygamba@unab.edu.co | Yamid Gabriel Gamba Gonz├ílez	2	[{"changed": {"fields": ["Correo institicional"]}}]	10	1
406	2022-09-21 23:04:39.260289+00	202	edwinblancog@gmail.com | prueba prueba	3		10	1
407	2022-09-21 23:16:17.404718+00	351	asegura@unab.edu.co | Adolfo  Segura  Moya	1	new through import_export	10	1
408	2022-09-21 23:16:17.497173+00	352	ameneses2@unab.edu.co | Alexander  Meneses Jacome	1	new through import_export	10	1
409	2022-09-21 23:16:17.590378+00	353	adiaz@unab.edu.co | Alfredo Antonio D├¡az Claros	1	new through import_export	10	1
410	2022-09-21 23:16:17.68334+00	354	agalindo144@unab.edu.co | Ana Lisbeth Galindo Noguera	1	new through import_export	10	1
411	2022-09-21 23:16:17.777357+00	355	amunozm@unab.edu.co | Antonio Faustino Mu├▒oz Moner	1	new through import_export	10	1
412	2022-09-21 23:16:17.870729+00	356	cdiaz23@unab.edu.co | Carlos Alirio D├¡az Gonz├ílez	1	new through import_export	10	1
413	2022-09-21 23:16:17.965095+00	357	cforero3@unab.edu.co | Carlos Adolfo Forero Gonz├ílez	1	new through import_export	10	1
414	2022-09-21 23:16:18.058309+00	358	csuarezh@unab.edu.co | Carolina  Su├írez Hern├índez	1	new through import_export	10	1
415	2022-09-21 23:16:18.155359+00	359	cacevedo@unab.edu.co | C├®sar Yobany Acevedo Arenas	1	new through import_export	10	1
416	2022-09-21 23:16:18.246709+00	360	cramirez@unab.edu.co | Claudia Janeth Ramirez Beltr├ín	1	new through import_export	10	1
417	2022-09-21 23:16:18.340035+00	361	dcarvajalino@unab.edu.co | Duvan Alexis Carvajalino Ramos	1	new through import_export	10	1
418	2022-09-21 23:16:18.43441+00	362	etorrado@unab.edu.co | Edinson  Torrado Picon	1	new through import_export	10	1
419	2022-09-21 23:16:18.528617+00	363	ezafra@unab.edu.co | Edwin Ernesto Zafra Reyes	1	new through import_export	10	1
420	2022-09-21 23:16:18.647638+00	364	fsuarez120@unab.edu.co | Fabi├ín Enrique Su├írez Carvajal	1	new through import_export	10	1
421	2022-09-21 23:16:18.792984+00	365	fmoreno4@unab.edu.co | Feisar Enrique Moreno Corzo	1	new through import_export	10	1
422	2022-09-21 23:16:18.912404+00	366	fmanrique580@unab.edu.co | Francy Andrea Manrique Lesmes	1	new through import_export	10	1
423	2022-09-21 23:16:19.032015+00	367	gariza@unab.edu.co | Gerly Carolina Ariza Zabala	1	new through import_export	10	1
424	2022-09-21 23:16:19.150017+00	368	gmacias@unab.edu.co | Gloria Ines Macias Villalba	1	new through import_export	10	1
425	2022-09-21 23:16:19.239331+00	369	gbruges@unab.edu.co | Gustavo Antonio Bruges Morales	1	new through import_export	10	1
426	2022-09-21 23:16:19.333167+00	370	hmahecha@unab.edu.co | Heidy Stephanie Maecha Antolinez	1	new through import_export	10	1
427	2022-09-21 23:16:19.426653+00	371	hgonzalez3@unab.edu.co | Hern├ín  Gonz├ílez Acu├▒a	1	new through import_export	10	1
428	2022-09-21 23:16:19.52095+00	372	hgonzalez7@unab.edu.co | Hern├índo  Gonzalez Acevedo	1	new through import_export	10	1
429	2022-09-21 23:16:19.6147+00	373	ibarragan@unab.edu.co | Isabel Cristina Barrag├ín Arias	1	new through import_export	10	1
430	2022-09-21 23:16:19.70885+00	374	jrico1@unab.edu.co | Jaime ├üngel Rico Arias	1	new through import_export	10	1
431	2022-09-21 23:16:19.802224+00	375	jduran697@unab.edu.co | Jasmin Lorena Duran Ortiz	1	new through import_export	10	1
432	2022-09-21 23:16:19.896794+00	376	jpinzon408@unab.edu.co | Javier  Pinz├│n Castellanos	1	new through import_export	10	1
433	2022-09-21 23:16:19.990979+00	377	jmaradey@unab.edu.co | Jessica Gissella Maradey Lazaro	1	new through import_export	10	1
434	2022-09-21 23:16:20.084336+00	378	japarra@unab.edu.co | Jorge Andrick Parra Valencia	1	new through import_export	10	1
435	2022-09-21 23:16:20.177348+00	379	jcabrerc@unab.edu.co | Jos├® Daniel Cabrera Cruz	1	new through import_export	10	1
436	2022-09-21 23:16:20.272014+00	380	jflorezr@unab.edu.co | Jose Luis Flores Rueda	1	new through import_export	10	1
437	2022-09-21 23:16:20.365362+00	381	jneira746@unab.edu.co | Juan Pablo Neira Vesga	1	new through import_export	10	1
438	2022-09-21 23:16:20.46062+00	382	lpacheco560@unab.edu.co | Leonardo Esteban Pacheco Sandoval	1	new through import_export	10	1
439	2022-09-21 23:16:20.553992+00	383	ltalero@unab.edu.co | Leonardo Hern├ín Talero Sarmiento	1	new through import_export	10	1
440	2022-09-21 23:16:20.646509+00	384	lgelvez@unab.edu.co | Lilia Nayibe G├®lvez Pinto	1	new through import_export	10	1
441	2022-09-21 23:16:20.741879+00	385	mcalderon@unab.edu.co | Maritza Liliana Calder├│n Benavides	1	new through import_export	10	1
442	2022-09-21 23:16:20.835254+00	386	lmendoza630@unab.edu.co | Luis Sebastian Mendoza Castellanos	1	new through import_export	10	1
443	2022-09-21 23:16:20.928665+00	387	mcadena@unab.edu.co | Miguel Antonio Cadena Carter	1	new through import_export	10	1
444	2022-09-21 23:16:21.023445+00	388	ngarcia142@unab.edu.co | Natalia  Garc├¡a Corredor	1	new through import_export	10	1
445	2022-09-21 23:16:21.116678+00	389	nchio@unab.edu.co | Nayibe  Chio Cho	1	new through import_export	10	1
446	2022-09-21 23:16:21.21035+00	390	nrojas34@unab.edu.co | Norma Yadira Rojas Aguilar	1	new through import_export	10	1
447	2022-09-21 23:16:21.304352+00	391	ogelvez437@unab.edu.co | Oscar Mauricio Gelvez Lizarazo	1	new through import_export	10	1
448	2022-09-21 23:16:21.397714+00	392	orueda741@unab.edu.co | Oscar Eduardo Rueda S├ínchez	1	new through import_export	10	1
449	2022-09-21 23:16:21.495555+00	393	pde@unab.edu.co | Paola Andrea De Antonio Boada	1	new through import_export	10	1
450	2022-09-21 23:16:21.585845+00	394	rsarmiento@unab.edu.co | Roman Eduardo Sarmiento Porras	1	new through import_export	10	1
451	2022-09-21 23:16:21.67986+00	395	sroa@unab.edu.co | Sebastian  Roa Prada	1	new through import_export	10	1
452	2022-09-21 23:16:21.775961+00	396	sardila180@unab.edu.co | Sergio Andres Ardila G├│mez	1	new through import_export	10	1
453	2022-09-21 23:16:21.870145+00	397	ymunoz294@unab.edu.co | Yecid Alfonso Mu├▒oz Maldonado	1	new through import_export	10	1
454	2022-09-21 23:16:21.967409+00	398	yparada294@unab.edu.co | Yudy Alexandra Parada Hern├índez	1	new through import_export	10	1
455	2022-09-21 23:46:33.613207+00	351	asegura@unab.edu.co | Adolfo Segura  Moya	2	[{"changed": {"fields": ["Nombres", "Is evaluador"]}}]	10	1
456	2022-09-21 23:47:09.559954+00	2	edwinblanco316@gmail.com | Edwin Guerrero	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
457	2022-09-21 23:49:06.330066+00	352	ameneses2@unab.edu.co | Alexander Meneses Jacome	2	[{"changed": {"fields": ["Nombres", "Is evaluador"]}}]	10	1
458	2022-09-21 23:50:25.059672+00	353	adiaz@unab.edu.co | Alfredo Antonio D├¡az Claros	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
459	2022-09-21 23:50:51.274575+00	354	agalindo144@unab.edu.co | Ana Lisbeth Galindo Noguera	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
460	2022-09-21 23:51:21.590075+00	355	amunozm@unab.edu.co | Antonio Faustino Mu├▒oz Moner	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
461	2022-09-21 23:55:08.349809+00	113	cmoncada@unab.edu.co | CAMILO ENRIQUE MONCADA GUAYAZAN	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
462	2022-09-21 23:55:42.113313+00	356	cdiaz23@unab.edu.co | Carlos Alirio D├¡az Gonz├ílez	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
463	2022-09-21 23:58:23.519393+00	168	carizmendi@unab.edu.co | Carlos Julio Arizmendi	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
464	2022-09-21 23:58:53.281752+00	357	cforero3@unab.edu.co | Carlos Adolfo Forero Gonz├ílez	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
465	2022-09-22 00:00:43.715375+00	358	csuarezh@unab.edu.co | Carolina Su├írez Hern├índez	2	[{"changed": {"fields": ["Nombres", "Is evaluador"]}}]	10	1
466	2022-09-22 00:03:53.048321+00	358	csuarezh@unab.edu.co | Carolina Su├írez Hern├índez	2	[{"changed": {"fields": ["password"]}}]	10	1
467	2022-09-22 00:04:47.710098+00	351	asegura@unab.edu.co | Adolfo Segura  Moya	2	[{"changed": {"fields": ["password"]}}]	10	1
468	2022-09-22 00:05:30.667656+00	352	ameneses2@unab.edu.co | Alexander Meneses Jacome	2	[{"changed": {"fields": ["password"]}}]	10	1
469	2022-09-22 00:05:55.788158+00	353	adiaz@unab.edu.co | Alfredo Antonio D├¡az Claros	2	[{"changed": {"fields": ["password"]}}]	10	1
470	2022-09-22 00:06:32.019333+00	354	agalindo144@unab.edu.co | Ana Lisbeth Galindo Noguera	2	[{"changed": {"fields": ["password"]}}]	10	1
471	2022-09-22 00:06:57.643907+00	355	amunozm@unab.edu.co | Antonio Faustino Mu├▒oz Moner	2	[{"changed": {"fields": ["password"]}}]	10	1
472	2022-09-22 00:07:51.704659+00	356	cdiaz23@unab.edu.co | Carlos Alirio D├¡az Gonz├ílez	2	[{"changed": {"fields": ["password"]}}]	10	1
473	2022-09-22 00:08:25.036037+00	357	cforero3@unab.edu.co | Carlos Adolfo Forero Gonz├ílez	2	[{"changed": {"fields": ["password"]}}]	10	1
474	2022-09-22 00:09:56.275916+00	359	cacevedo@unab.edu.co | C├®sar Yobany Acevedo Arenas	2	[{"changed": {"fields": ["password"]}}]	10	1
475	2022-09-22 00:10:03.760497+00	359	cacevedo@unab.edu.co | C├®sar Yobany Acevedo Arenas	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
476	2022-09-22 00:11:00.20102+00	360	cramirez@unab.edu.co | Claudia Janeth Ramirez Beltr├ín	2	[{"changed": {"fields": ["password"]}}]	10	1
477	2022-09-22 00:11:12.230583+00	360	cramirez@unab.edu.co | Claudia Janeth Ramirez Beltr├ín	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
478	2022-09-22 00:11:59.33354+00	361	dcarvajalino@unab.edu.co | Duvan Alexis Carvajalino Ramos	2	[{"changed": {"fields": ["password"]}}]	10	1
479	2022-09-22 00:12:04.808912+00	361	dcarvajalino@unab.edu.co | Duvan Alexis Carvajalino Ramos	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
480	2022-09-22 00:13:23.261217+00	362	etorrado@unab.edu.co | Edinson  Torrado Picon	2	[{"changed": {"fields": ["password"]}}]	10	1
481	2022-09-22 00:13:33.094882+00	362	etorrado@unab.edu.co | Edinson Torrado Picon	2	[{"changed": {"fields": ["Nombres", "Is evaluador"]}}]	10	1
482	2022-09-22 00:14:21.885103+00	363	ezafra@unab.edu.co | Edwin Ernesto Zafra Reyes	2	[{"changed": {"fields": ["password"]}}]	10	1
483	2022-09-22 00:14:26.717622+00	363	ezafra@unab.edu.co | Edwin Ernesto Zafra Reyes	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
484	2022-09-22 00:15:05.119128+00	364	fsuarez120@unab.edu.co | Fabi├ín Enrique Su├írez Carvajal	2	[{"changed": {"fields": ["password"]}}]	10	1
485	2022-09-22 00:15:09.695533+00	364	fsuarez120@unab.edu.co | Fabi├ín Enrique Su├írez Carvajal	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
486	2022-09-22 00:16:02.717753+00	365	fmoreno4@unab.edu.co | Feisar Enrique Moreno Corzo	2	[{"changed": {"fields": ["password"]}}]	10	1
487	2022-09-22 00:16:06.705795+00	365	fmoreno4@unab.edu.co | Feisar Enrique Moreno Corzo	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
488	2022-09-22 00:16:37.04276+00	366	fmanrique580@unab.edu.co | Francy Andrea Manrique Lesmes	2	[{"changed": {"fields": ["password"]}}]	10	1
489	2022-09-22 00:17:18.108324+00	366	fmanrique580@unab.edu.co | Francy Andrea Manrique Lesmes	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
490	2022-09-22 00:17:47.245724+00	367	gariza@unab.edu.co | Gerly Carolina Ariza Zabala	2	[{"changed": {"fields": ["password"]}}]	10	1
491	2022-09-22 00:18:13.638499+00	367	gariza@unab.edu.co | Gerly Carolina Ariza Zabala	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
492	2022-09-22 00:18:43.572671+00	368	gmacias@unab.edu.co | Gloria Ines Macias Villalba	2	[{"changed": {"fields": ["password"]}}]	10	1
493	2022-09-22 00:18:56.616521+00	368	gmacias@unab.edu.co | Gloria Ines Macias Villalba	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
494	2022-09-22 00:19:28.177073+00	369	gbruges@unab.edu.co | Gustavo Antonio Bruges Morales	2	[{"changed": {"fields": ["password"]}}]	10	1
495	2022-09-22 00:19:37.145978+00	369	gbruges@unab.edu.co | Gustavo Antonio Bruges Morales	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
496	2022-09-22 00:20:11.599492+00	370	hmahecha@unab.edu.co | Heidy Stephanie Maecha Antolinez	2	[{"changed": {"fields": ["password"]}}]	10	1
497	2022-09-22 00:20:24.113961+00	370	hmahecha@unab.edu.co | Heidy Stephanie Maecha Antolinez	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
498	2022-09-22 00:21:21.062703+00	372	hgonzalez7@unab.edu.co | Hern├índo  Gonzalez Acevedo	2	[{"changed": {"fields": ["password"]}}]	10	1
499	2022-09-22 00:21:35.386472+00	372	hgonzalez7@unab.edu.co | Hern├índo Gonzalez Acevedo	2	[{"changed": {"fields": ["Nombres", "Programa academico", "Is evaluador"]}}]	10	1
500	2022-09-22 00:22:02.711832+00	371	hgonzalez3@unab.edu.co | Hern├ín  Gonz├ílez Acu├▒a	2	[{"changed": {"fields": ["password"]}}]	10	1
549	2022-09-22 00:45:44.349606+00	401	edwinblancog@gmail.com | eeee eee	1	new through import_export	10	1
501	2022-09-22 00:22:11.277622+00	371	hgonzalez3@unab.edu.co | Hern├ín Gonz├ílez Acu├▒a	2	[{"changed": {"fields": ["Nombres", "Programa academico", "Is evaluador"]}}]	10	1
502	2022-09-22 00:22:41.097546+00	373	ibarragan@unab.edu.co | Isabel Cristina Barrag├ín Arias	2	[{"changed": {"fields": ["password"]}}]	10	1
503	2022-09-22 00:22:51.766974+00	373	ibarragan@unab.edu.co | Isabel Cristina Barrag├ín Arias	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
504	2022-09-22 00:23:24.311814+00	374	jrico1@unab.edu.co | Jaime ├üngel Rico Arias	2	[{"changed": {"fields": ["password"]}}]	10	1
505	2022-09-22 00:23:32.941816+00	374	jrico1@unab.edu.co | Jaime ├üngel Rico Arias	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
506	2022-09-22 00:23:56.600018+00	375	jduran697@unab.edu.co | Jasmin Lorena Duran Ortiz	2	[{"changed": {"fields": ["password"]}}]	10	1
507	2022-09-22 00:24:04.071149+00	375	jduran697@unab.edu.co | Jasmin Lorena Duran Ortiz	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
508	2022-09-22 00:24:45.741494+00	376	jpinzon408@unab.edu.co | Javier  Pinz├│n Castellanos	2	[{"changed": {"fields": ["password"]}}]	10	1
509	2022-09-22 00:24:58.789484+00	376	jpinzon408@unab.edu.co | Javier Pinz├│n Castellanos	2	[{"changed": {"fields": ["Nombres", "Programa academico", "Is evaluador"]}}]	10	1
510	2022-09-22 00:25:23.05573+00	377	jmaradey@unab.edu.co | Jessica Gissella Maradey Lazaro	2	[{"changed": {"fields": ["password"]}}]	10	1
511	2022-09-22 00:25:32.03737+00	377	jmaradey@unab.edu.co | Jessica Gissella Maradey Lazaro	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
512	2022-09-22 00:26:22.611172+00	169	jpardo1@unab.edu.co | Johlver Jose Pardo Garcia	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
513	2022-09-22 00:26:50.66671+00	378	japarra@unab.edu.co | Jorge Andrick Parra Valencia	2	[{"changed": {"fields": ["password"]}}]	10	1
514	2022-09-22 00:27:00.465254+00	378	japarra@unab.edu.co | Jorge Andrick Parra Valencia	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
515	2022-09-22 00:27:23.073893+00	379	jcabrerc@unab.edu.co | Jos├® Daniel Cabrera Cruz	2	[{"changed": {"fields": ["password"]}}]	10	1
516	2022-09-22 00:27:34.375079+00	379	jcabrerc@unab.edu.co | Jos├® Daniel Cabrera Cruz	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
517	2022-09-22 00:28:17.454487+00	380	jflorezr@unab.edu.co | Jose Luis Flores Rueda	2	[{"changed": {"fields": ["password"]}}]	10	1
518	2022-09-22 00:28:25.238583+00	380	jflorezr@unab.edu.co | Jose Luis Flores Rueda	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
519	2022-09-22 00:28:53.943263+00	381	jneira746@unab.edu.co | Juan Pablo Neira Vesga	2	[{"changed": {"fields": ["password"]}}]	10	1
520	2022-09-22 00:29:08.310005+00	381	jneira746@unab.edu.co | Juan Pablo Neira Vesga	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
521	2022-09-22 00:29:31.262551+00	46	jsdiaz@unab.edu.co | Julian Santiago Santoyo Diaz	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
522	2022-09-22 00:30:08.250268+00	382	lpacheco560@unab.edu.co | Leonardo Esteban Pacheco Sandoval	2	[{"changed": {"fields": ["password"]}}]	10	1
523	2022-09-22 00:30:21.423407+00	382	lpacheco560@unab.edu.co | Leonardo Esteban Pacheco Sandoval	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
524	2022-09-22 00:30:44.232506+00	383	ltalero@unab.edu.co | Leonardo Hern├ín Talero Sarmiento	2	[{"changed": {"fields": ["password"]}}]	10	1
525	2022-09-22 00:30:54.901345+00	383	ltalero@unab.edu.co | Leonardo Hern├ín Talero Sarmiento	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
526	2022-09-22 00:31:20.493174+00	384	lgelvez@unab.edu.co | Lilia Nayibe G├®lvez Pinto	2	[{"changed": {"fields": ["password"]}}]	10	1
527	2022-09-22 00:31:33.650803+00	384	lgelvez@unab.edu.co | Lilia Nayibe G├®lvez Pinto	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
528	2022-09-22 00:32:09.504295+00	385	mcalderon@unab.edu.co | Maritza Liliana Calder├│n Benavides	2	[{"changed": {"fields": ["password"]}}]	10	1
529	2022-09-22 00:32:17.473372+00	385	mcalderon@unab.edu.co | Maritza Liliana Calder├│n Benavides	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
530	2022-09-22 00:33:09.47569+00	154	ljaimes9@unab.edu.co | LUIS EDUARDO JAIMES REATIGA	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
531	2022-09-22 00:33:32.50462+00	386	lmendoza630@unab.edu.co | Luis Sebastian Mendoza Castellanos	2	[{"changed": {"fields": ["password"]}}]	10	1
532	2022-09-22 00:33:43.089132+00	386	lmendoza630@unab.edu.co | Luis Sebastian Mendoza Castellanos	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
533	2022-09-22 00:34:09.168917+00	87	lamado175@unab.edu.co | Lusvin Javier Amado Forero	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
534	2022-09-22 00:34:34.453069+00	104	mfranco20@unab.edu.co | Manuel Franco Arias	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
535	2022-09-22 00:35:07.777977+00	153	mserran5@unab.edu.co | Mar├¡a Eugenia Serrano Acevedo	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
536	2022-09-22 00:35:45.938978+00	55	mmorales267@unab.edu.co | Mario Fernando Morales Cordero	2	[{"changed": {"fields": ["Is autor", "Is evaluador"]}}]	10	1
537	2022-09-22 00:36:14.559863+00	387	mcadena@unab.edu.co | Miguel Antonio Cadena Carter	2	[{"changed": {"fields": ["password"]}}]	10	1
538	2022-09-22 00:36:28.151229+00	387	mcadena@unab.edu.co | Miguel Antonio Cadena Carter	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
539	2022-09-22 00:39:10.708627+00	399	 |  	1	[{"added": {}}]	10	1
540	2022-09-22 00:39:37.799607+00	399	edwinblancog@gmail.com | pepita pepita	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is active"]}}]	10	1
541	2022-09-22 00:40:16.807974+00	399	edwinblancog@gmail.com | pepita pepita	2	[{"changed": {"fields": ["Programa academico", "Universidad", "Is evaluador"]}}]	10	1
542	2022-09-22 00:41:15.225566+00	399	edwinblancog@gmail.com | pepita pepita	3		10	1
543	2022-09-22 00:42:14.193389+00	388	ngarcia142@unab.edu.co | Natalia  Garc├¡a Corredor	2	[{"changed": {"fields": ["password"]}}]	10	1
544	2022-09-22 00:42:30.477111+00	388	ngarcia142@unab.edu.co | Natalia Garc├¡a Corredor	2	[{"changed": {"fields": ["Nombres", "Programa academico", "Is evaluador"]}}]	10	1
545	2022-09-22 00:43:00.574174+00	389	nchio@unab.edu.co | Nayibe  Chio Cho	2	[{"changed": {"fields": ["password"]}}]	10	1
546	2022-09-22 00:43:18.335433+00	389	nchio@unab.edu.co | Nayibe Chio Cho	2	[{"changed": {"fields": ["Nombres", "Programa academico", "Is evaluador"]}}]	10	1
547	2022-09-22 00:43:46.51048+00	390	nrojas34@unab.edu.co | Norma Yadira Rojas Aguilar	2	[{"changed": {"fields": ["password"]}}]	10	1
548	2022-09-22 00:43:52.85034+00	390	nrojas34@unab.edu.co | Norma Yadira Rojas Aguilar	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
550	2022-09-22 00:46:23.425415+00	401	edwinblancog@gmail.com | eeee eee	2	[{"changed": {"fields": ["password"]}}]	10	1
551	2022-09-22 00:46:36.44855+00	401	edwinblancog@gmail.com | eeee eee	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
552	2022-09-22 00:48:18.119282+00	401	edwinblancog@gmail.com | eeee eee	3		10	1
553	2022-09-22 00:48:57.838131+00	391	ogelvez437@unab.edu.co | Oscar Mauricio Gelvez Lizarazo	2	[{"changed": {"fields": ["password"]}}]	10	1
554	2022-09-22 00:49:11.086128+00	391	ogelvez437@unab.edu.co | Oscar Mauricio Gelvez Lizarazo	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
555	2022-09-22 00:49:36.037526+00	392	orueda741@unab.edu.co | Oscar Eduardo Rueda S├ínchez	2	[{"changed": {"fields": ["password"]}}]	10	1
556	2022-09-22 00:49:45.322662+00	392	orueda741@unab.edu.co | Oscar Eduardo Rueda S├ínchez	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
557	2022-09-22 00:50:55.801322+00	393	pde@unab.edu.co | Paola Andrea De Antonio Boada	2	[{"changed": {"fields": ["password"]}}]	10	1
558	2022-09-22 00:51:03.694327+00	393	pde@unab.edu.co | Paola Andrea De Antonio Boada	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
559	2022-09-22 00:51:29.870049+00	394	rsarmiento@unab.edu.co | Roman Eduardo Sarmiento Porras	2	[{"changed": {"fields": ["password"]}}]	10	1
560	2022-09-22 00:51:37.870815+00	394	rsarmiento@unab.edu.co | Roman Eduardo Sarmiento Porras	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
561	2022-09-22 00:52:05.887563+00	395	sroa@unab.edu.co | Sebastian  Roa Prada	2	[{"changed": {"fields": ["password"]}}]	10	1
562	2022-09-22 00:52:13.6433+00	395	sroa@unab.edu.co | Sebastian Roa Prada	2	[{"changed": {"fields": ["Nombres", "Programa academico", "Is evaluador"]}}]	10	1
563	2022-09-22 00:52:45.75363+00	396	sardila180@unab.edu.co | Sergio Andres Ardila G├│mez	2	[{"changed": {"fields": ["password"]}}]	10	1
564	2022-09-22 00:52:56.809956+00	396	sardila180@unab.edu.co | Sergio Andres Ardila G├│mez	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
565	2022-09-22 00:53:50.740926+00	152	VSOLARTE@unab.edu.co | VICTOR ALFONSO SOLARTE DAVID	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
566	2022-09-22 00:54:08.146424+00	160	ygamba@unab.edu.co | Yamid Gabriel Gamba Gonz├ílez	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
567	2022-09-22 00:54:31.528332+00	397	ymunoz294@unab.edu.co | Yecid Alfonso Mu├▒oz Maldonado	2	[{"changed": {"fields": ["password"]}}]	10	1
568	2022-09-22 00:54:39.661196+00	397	ymunoz294@unab.edu.co | Yecid Alfonso Mu├▒oz Maldonado	2	[{"changed": {"fields": ["Programa academico", "Is evaluador"]}}]	10	1
569	2022-09-22 00:55:08.325637+00	398	yparada294@unab.edu.co | Yudy Alexandra Parada Hern├índez	2	[{"changed": {"fields": ["password"]}}]	10	1
570	2022-09-22 00:55:28.145326+00	398	yparada294@unab.edu.co | Yudy Alexandra Parada Hern├índez	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
571	2022-09-22 01:00:29.854883+00	28	AsignacionEvaluacionInngeniatec object (28)	3		21	1
572	2022-09-22 02:23:37.520277+00	10	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	3		20	1
573	2022-09-22 13:36:53.615435+00	152	vsolarte@unab.edu.co | VICTOR ALFONSO SOLARTE DAVID	2	[{"changed": {"fields": ["Correo institicional", "Username"]}}]	10	1
574	2022-09-22 15:25:55.094187+00	17	Xtreme adventure 	3		20	1
575	2022-09-22 15:27:32.390322+00	75	AsignacionEvaluacionInngeniatec object (75)	2	[{"changed": {"fields": ["Asignacion calificada1"]}}]	21	1
576	2022-09-22 15:29:33.78443+00	18	Xtreme adventure 	3		20	1
577	2022-09-22 15:30:02.031136+00	75	AsignacionEvaluacionInngeniatec object (75)	3		21	1
578	2022-09-22 15:31:19.686017+00	76	AsignacionEvaluacionInngeniatec object (76)	3		21	1
579	2022-09-22 15:36:58.696372+00	77	AsignacionEvaluacionInngeniatec object (77)	3		21	1
580	2022-09-22 16:22:47.785584+00	4	EVALUACI├ôN DE ALTERNATIVAS PARA EL DIMENSIONAMIENTO Y MANTENIMIENTO DE LA INSTALACI├ôN FOTOVOLTAICA EN CENS	3		15	1
581	2022-09-22 19:26:46.207753+00	41	AsignacionEvaluacion object (41)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
582	2022-09-22 19:35:50.351002+00	2	edwinblanco316@gmail.com | Edwin Guerrero	2	[{"changed": {"fields": ["password"]}}]	10	1
583	2022-09-23 04:22:14.715302+00	1	1 Activaci├│n de la convocatoria	2	[{"changed": {"fields": ["Activacion convocatoria"]}}]	18	1
584	2022-09-23 04:22:32.024124+00	1	1 Activaci├│n de la convocatoria	2	[{"changed": {"fields": ["Activacion convocatoria"]}}]	18	1
585	2022-09-23 04:40:36.731772+00	15	AsignacionEvaluacion object (15)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
586	2022-09-23 06:35:40.615941+00	73	AsignacionEvaluacionInngeniatec object (73)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
587	2022-09-23 14:07:49.411831+00	26	AsignacionEvaluacion object (26)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
588	2022-09-23 14:16:47.625213+00	25	AsignacionEvaluacion object (25)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
589	2022-09-23 14:25:42.69907+00	403	 |  	1	[{"added": {}}]	10	1
590	2022-09-23 14:28:23.625376+00	403	dpabon180@unab.edu.co | Dudbil Olvasada Pabon Ria├▒o	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
591	2022-09-23 14:29:53.71512+00	26	AsignacionEvaluacion object (26)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
592	2022-09-23 14:30:34.701948+00	44	AsignacionEvaluacion object (44)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
593	2022-09-23 14:31:26.984456+00	43	AsignacionEvaluacion object (43)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
594	2022-09-23 14:36:21.828063+00	17	AsignacionEvaluacion object (17)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
595	2022-09-23 21:22:56.090947+00	32	AsignacionEvaluacionInngeniatec object (32)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
596	2022-09-23 21:23:24.322264+00	31	AsignacionEvaluacionInngeniatec object (31)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
597	2022-09-26 04:12:27.647671+00	20	Dise├▒o e implementaci├│n de un prototipo que controle el acceso y permita la toma de temperatura corporal en la sede principal del Colegio Adventista Libertad mediante el uso del lector de c├®dula con t	3		20	1
598	2022-09-26 15:55:35.146228+00	51	Preferencias en collares para mascotas	3		20	1
599	2022-09-27 00:53:01.501327+00	404	 |  	1	[{"added": {}}]	10	1
600	2022-09-27 00:53:52.572476+00	404	1234abcd@gmail.com | asdasd asdasd	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is active"]}}]	10	1
601	2022-09-27 00:57:45.518139+00	404	1234abcd@gmail.com | asdasd asdasd	3		10	1
602	2022-09-27 13:38:28.093561+00	72	AsignacionEvaluacionInngeniatec object (72)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	37
603	2022-09-27 13:39:21.98677+00	72	AsignacionEvaluacionInngeniatec object (72)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	37
604	2022-09-27 13:43:24.196574+00	36	AsignacionEvaluacion object (36)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
605	2022-09-27 14:45:11.413553+00	32	AsignacionEvaluacion object (32)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
606	2022-09-27 14:46:33.549048+00	42	AsignacionEvaluacion object (42)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
607	2022-09-27 15:42:43.909302+00	34	AsignacionEvaluacionInngeniatec object (34)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	37
608	2022-09-27 15:47:08.63153+00	61	AsignacionEvaluacionInngeniatec object (61)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	37
609	2022-09-27 15:49:48.373912+00	45	AsignacionEvaluacion object (45)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
610	2022-09-27 15:53:33.505677+00	43	AsignacionEvaluacion object (43)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
611	2022-09-27 16:08:11.795895+00	21	AsignacionEvaluacion object (21)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
612	2022-09-27 16:09:55.022432+00	25	AsignacionEvaluacion object (25)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
613	2022-09-27 16:23:50.381485+00	31	AsignacionEvaluacion object (31)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
614	2022-09-27 22:51:51.827655+00	19	AsignacionEvaluacion object (19)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
615	2022-09-28 12:38:14.674997+00	20	AsignacionEvaluacion object (20)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
616	2022-09-28 13:15:39.744057+00	8	macero22@unab.edu.co | Mario Jonatan Acero Caballero	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	37
617	2022-09-28 13:16:11.079708+00	20	AsignacionEvaluacion object (20)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	37
618	2022-09-28 15:38:30.01686+00	114	lcamacho896@unab.edu.co | leidy Camacho	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
619	2022-09-28 17:29:34.439041+00	50	EVALUACI├ôN DE ALTERNATIVAS PARA EL DIMENSIONAMIENTO Y MANTENIMIENTO DE LA INSTALACI├ôN FOTOVOLTAICA EN CENS	2	[{"changed": {"fields": ["Observaciones1", "Observaciones2"]}}]	15	1
620	2022-09-28 17:30:22.09314+00	29	Dise├▒o de un modelo de simulaci├│n para la validaci├│n del funcionamiento de una planta de limpieza y clasificaci├│n de frutos c├¡tricos en el departamento de Santander.	2	[{"changed": {"fields": ["Observaciones1", "Observaciones2"]}}]	15	1
621	2022-09-28 18:08:45.449351+00	15	Robot Financiero Avanzado en MT4 & MT5. Compra y Venta de Divisas	2	[{"changed": {"fields": ["Observaciones1"]}}]	15	1
622	2022-09-28 18:13:08.199886+00	90	Desarrollo de un prototipo de Ba├▒o Seco con agitaci├│n para procesamiento de muestras bacteriol├│gicas (Tipo E. coli) e implementaci├│n en el laboratorio de farmacolog├¡a UNAB	3		20	1
623	2022-09-28 22:05:43.036571+00	50	EVALUACI├ôN DE ALTERNATIVAS PARA EL DIMENSIONAMIENTO Y MANTENIMIENTO DE LA INSTALACI├ôN FOTOVOLTAICA EN CENS	3		15	1
624	2022-09-28 22:07:37.586028+00	27	AsignacionEvaluacion object (27)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
625	2022-09-28 22:09:03.087869+00	397	ymunoz294@unab.edu.co | Yecid Alfonso Mu├▒oz Maldonado	2	[{"changed": {"fields": ["Is tutor"]}}]	10	1
626	2022-09-28 22:10:48.686325+00	99	EVALUACI├ôN DE ALTERNATIVAS PARA EL DIMENSIONAMIENTO Y MANTENIMIENTO DE LA INSTALACI├ôN FOTOVOLTAICA EN CENS	2	[{"changed": {"fields": ["Tutores"]}}]	11	1
627	2022-09-28 22:18:07.976011+00	405	 |  	1	[{"added": {}}]	10	1
628	2022-09-28 22:19:47.613665+00	405	wcaceres84@unab.edu.co | Wilmer Andrey C├íceres Carvajal	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is active"]}}]	10	1
629	2022-09-28 22:21:36.855518+00	99	EVALUACI├ôN DE ALTERNATIVAS PARA EL DIMENSIONAMIENTO Y MANTENIMIENTO DE LA INSTALACI├ôN FOTOVOLTAICA EN CENS	2	[{"changed": {"fields": ["Autores"]}}]	11	1
630	2022-09-28 22:31:00.863775+00	406	semilleros.ingenieria.unab@gmail.com | Daniela G	3		10	1
631	2022-09-29 17:04:57.004183+00	59	HOSHIN	1	[{"added": {}}]	7	114
632	2022-09-29 17:14:22.778705+00	407	 |  	1	[{"added": {}}]	10	1
633	2022-09-29 17:15:27.199006+00	407	apalomino6@udi.edu.co | Alejandra Palomino Rinc├│n	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is active"]}}]	10	1
634	2022-09-29 17:16:34.418246+00	408	 |  	1	[{"added": {}}]	10	1
635	2022-09-29 17:17:30.967061+00	408	carauz1@udi.edu.co | Carlos Daniel Arauz Sanjuan	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is active"]}}]	10	1
636	2022-09-29 17:18:05.722622+00	409	 |  	1	[{"added": {}}]	10	1
637	2022-09-29 17:18:52.224167+00	409	jbarajas4@udi.edu.co | Johan Sebasti├ín Barajas Carrillo	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is active"]}}]	10	1
638	2022-09-29 17:19:19.398098+00	410	 |  	1	[{"added": {}}]	10	1
639	2022-09-29 17:20:12.849413+00	410	ysandoval2@udi.edu.co | Yojhan Ricardo Sandoval Ram├¡rez	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is active"]}}]	10	1
640	2022-09-29 17:20:40.535961+00	411	 |  	1	[{"added": {}}]	10	1
641	2022-09-29 17:21:27.408732+00	411	ysepulveda1@udi.edu.co | YOLANDA SEP├ÜLVEDA MUJICA	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is tutor", "Is active"]}}]	10	1
642	2022-09-29 17:37:08.209388+00	100	INDUSTRIA 4.0 Y ECONOM├ìA CIRCULAR EN EL SECTOR  SERVICIOS	1	[{"added": {}}]	11	1
643	2022-09-29 17:39:13.555953+00	100	INDUSTRIA 4.0 Y ECONOM├ìA CIRCULAR EN EL SECTOR  SERVICIOS	2	[{"changed": {"fields": ["Semillero"]}}]	11	1
644	2022-09-29 20:30:38.039593+00	50	AsignacionEvaluacion object (50)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
645	2022-09-29 21:10:44.789504+00	100	INDUSTRIA 4.0 Y ECONOM├ìA CIRCULAR EN EL SECTOR  SERVICIOS	2	[{"changed": {"fields": ["Url video"]}}]	11	114
646	2022-09-29 22:24:20.618973+00	50	AsignacionEvaluacion object (50)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
647	2022-09-29 22:32:27.073909+00	412	 |  	1	[{"added": {}}]	10	1
648	2022-09-29 22:34:21.688536+00	412	fgomez45@unab.edu.co | Fabio Gomez	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
649	2022-09-29 22:35:03.355062+00	50	AsignacionEvaluacion object (50)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
650	2022-09-30 15:15:51.654917+00	413	 |  	1	[{"added": {}}]	10	1
735	2022-10-05 20:28:42.210938+00	78	Algoritmo gen├®tico para CFP	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
651	2022-09-30 15:16:39.632425+00	413	eduardo.carrillo@unab.edu.co | Eduardo Carrillo	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
652	2022-09-30 15:17:29.406724+00	50	AsignacionEvaluacion object (50)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
653	2022-09-30 15:25:25.363891+00	50	AsignacionEvaluacion object (50)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
654	2022-09-30 15:52:45.662514+00	77	INDUSTRIA 4.0 Y ECONOM├ìA CIRCULAR EN EL SECTOR  SERVICIOS	2	[{"changed": {"fields": ["Presentacion escrita"]}}]	15	1
655	2022-09-30 15:53:08.020094+00	77	INDUSTRIA 4.0 Y ECONOM├ìA CIRCULAR EN EL SECTOR  SERVICIOS	2	[{"changed": {"fields": ["Discucion preliminar"]}}]	15	1
656	2022-09-30 16:20:58.094119+00	50	AsignacionEvaluacion object (50)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
657	2022-10-04 23:14:57.557644+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
658	2022-10-04 23:16:48.585004+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
659	2022-10-04 23:18:22.46646+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
660	2022-10-04 23:19:33.500001+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
661	2022-10-05 03:58:30.199772+00	2	edwinblanco316@gmail.com | EdwinPrueba Guerrero	2	[{"changed": {"fields": ["Nombres"]}}]	10	1
662	2022-10-05 04:08:47.073661+00	1	titulo proyecto prueba con autores	3		13	1
663	2022-10-05 04:09:16.341644+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
664	2022-10-05 04:10:42.425064+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Asignacion calificada1"]}}]	16	1
665	2022-10-05 04:27:51.29213+00	1	1 Activar bot├│n de calificar para la parte de preselecci├│n de proyectos de semilleros	1	[{"added": {}}]	22	1
666	2022-10-05 04:34:04.52949+00	1	1 Activar bot├│n de calificar para la parte de preselecci├│n de proyectos de semilleros	2	[]	22	1
667	2022-10-05 04:35:18.541099+00	1	1 Activar bot├│n de calificar para la parte de preselecci├│n de proyectos de semilleros	2	[]	22	1
668	2022-10-05 04:36:31.164243+00	1	1 Activar bot├│n de calificar para la parte de preselecci├│n de proyectos de semilleros	2	[{"changed": {"fields": ["Activacion calificacion preseleccion"]}}]	22	1
669	2022-10-05 04:36:57.119535+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
670	2022-10-05 04:39:38.395642+00	1	1 Activar bot├│n de calificar para la parte de preselecci├│n de proyectos de semilleros	2	[{"changed": {"fields": ["Activacion calificacion preseleccion"]}}]	22	1
671	2022-10-05 04:40:48.558445+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
672	2022-10-05 04:51:49.22416+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
673	2022-10-05 04:53:57.351022+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
674	2022-10-05 05:13:55.280293+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
675	2022-10-05 05:19:00.842693+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
676	2022-10-05 05:21:48.168457+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
677	2022-10-05 05:25:15.10682+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
678	2022-10-05 05:28:05.229306+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
679	2022-10-05 05:29:32.101046+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
680	2022-10-05 05:31:05.178641+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
681	2022-10-05 05:32:06.613011+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
682	2022-10-05 05:33:38.48255+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
683	2022-10-05 05:35:32.307466+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
684	2022-10-05 05:36:17.528495+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
685	2022-10-05 05:38:36.938167+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
686	2022-10-05 05:39:23.256474+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
687	2022-10-05 05:42:03.831097+00	49	AsignacionEvaluacion object (49)	2	[{"changed": {"fields": ["Evaluadores"]}}]	16	1
688	2022-10-05 09:23:46.245231+00	1	HistoriaCambiosAsignacionSemilleros object (1)	3		23	1
689	2022-10-05 09:24:52.231732+00	2	HistoriaCambiosAsignacionSemilleros object (2)	3		23	1
690	2022-10-05 19:02:46.706737+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
691	2022-10-05 19:41:55.255193+00	1	1 Activar bot├│n de calificar para la primera fase de proyectos de Inngeniatec	1	[{"added": {}}]	25	1
692	2022-10-05 19:42:48.804733+00	1	1 Activar bot├│n de calificar para la presentaci├│n en vivo de proyectos de Inngeniatec	1	[{"added": {}}]	26	1
693	2022-10-05 20:00:31.660517+00	405	Desarrollo de un prototipo de interfaz en Matlab para la identificaci├│n de melanomas en la piel empleando t├®cnicas de procesamiento de im├ígenes e inteligencia artificial	2	[{"changed": {"fields": ["Titulo", "Integrantes", "Tutor", "Resumen", "Es finalista"]}}]	19	1
694	2022-10-05 20:00:57.954949+00	407	Software de simulaci├│n en realidad virtual para el aprendizaje de programaci├│n de microcontroladores	2	[{"changed": {"fields": ["Resumen", "Es finalista"]}}]	19	1
695	2022-10-05 20:01:29.679331+00	380	Planner-U	2	[{"changed": {"fields": ["Resumen", "Es finalista"]}}]	19	1
696	2022-10-05 20:02:34.502513+00	413	Robot Solucionador de Una Cara del Cubo Rubik	2	[{"changed": {"fields": ["Resumen", "Url video", "Es finalista"]}}]	19	1
697	2022-10-05 20:03:33.036049+00	416	Preferencias en collares para mascotas	2	[{"changed": {"fields": ["Resumen", "Es finalista"]}}]	19	1
698	2022-10-05 20:03:44.995577+00	381	Preferencias en collares para mascotas	2	[{"changed": {"fields": ["Resumen", "Es finalista"]}}]	19	1
699	2022-10-05 20:04:27.846582+00	388	Desarrollo de un Sistema de Identificaci├│n de Melanomas en Piel Mediante Algoritmos de Inteligencia Artificial	2	[{"changed": {"fields": ["Es finalista"]}}]	19	1
700	2022-10-05 20:05:47.847114+00	375	An├ílisis de las ondas cerebrales ante est├¡mulos de comida y su significado, mediante el Brainwave starter kit	2	[{"changed": {"fields": ["Integrantes", "Es finalista"]}}]	19	1
701	2022-10-05 20:06:29.214891+00	389	An├ílisis Conjoint  Bebidas Carbonatadas	2	[{"changed": {"fields": ["Resumen", "Es finalista"]}}]	19	1
702	2022-10-05 20:07:46.136627+00	383	Demostraci├│n del acople excitaci├│n-contracci├│n del m├║sculo card├¡aco para la representaci├│n del potencial de acci├│n a trav├®s de una interfaz gr├ífica	2	[{"changed": {"fields": ["Integrantes", "Palabras clave", "Resumen", "Es finalista"]}}]	19	1
703	2022-10-05 20:08:16.510804+00	390	Web de motos Auteco	2	[{"changed": {"fields": ["Es finalista"]}}]	19	1
704	2022-10-05 20:08:42.448313+00	417	CUB├ìCULO DE DESINFECCI├ôN CON RAYOS UV Y PER├ôXIDO DE HIDR├ôGENO DE CUERPO COMPLETOPARA HOSPITALES	2	[{"changed": {"fields": ["Titulo", "Tutor", "Palabras clave", "Resumen", "Es finalista"]}}]	19	1
705	2022-10-05 20:09:09.376372+00	379	Mi bus Unab	2	[{"changed": {"fields": ["Integrantes", "Programa integrantes", "Es finalista"]}}]	19	1
706	2022-10-05 20:09:30.584903+00	385	Prototipo de monitor de presi├│n arterial no invasiva.	2	[{"changed": {"fields": ["Palabras clave", "Resumen", "Es finalista"]}}]	19	1
707	2022-10-05 20:10:00.504339+00	374	Calculate Pi	2	[{"changed": {"fields": ["Palabras clave", "Es finalista"]}}]	19	1
708	2022-10-05 20:10:32.385253+00	387	Filtro purificador de a├¡re hecho a base de matriz de seda y cloroplastos	2	[{"changed": {"fields": ["Titulo", "Programa integrantes", "Tutor", "Resumen", "Es finalista"]}}]	19	1
709	2022-10-05 20:11:11.655958+00	410	Obesapp	2	[{"changed": {"fields": ["Tutor", "Palabras clave", "Es finalista"]}}]	19	1
710	2022-10-05 20:11:48.472467+00	392	Ecommerce para Caf├® Sensaciones	2	[{"changed": {"fields": ["Integrantes", "Programa integrantes", "Tutor", "Resumen", "Es finalista"]}}]	19	1
711	2022-10-05 20:12:12.612514+00	394	COFFEE COMPANY	2	[{"changed": {"fields": ["Integrantes", "Palabras clave", "Es finalista"]}}]	19	1
712	2022-10-05 20:12:34.573574+00	412	Xtreme adventure	2	[{"changed": {"fields": ["Titulo", "Integrantes", "Programa integrantes", "Palabras clave", "Resumen", "Es finalista"]}}]	19	1
713	2022-10-05 20:13:07.72848+00	399	DISE├æO Y CONSTRUCCI├ôN DE PR├ôTESIS DE MIEMBRO SUPERIOR A LA MEDIDA, UTILIZANDO TECNOLOG├ìAS 4.0 EN DISE├æO Y PROTOTIPADO	2	[{"changed": {"fields": ["Titulo", "Programa integrantes", "Tutor", "Palabras clave", "Resumen", "Url video", "Es finalista"]}}]	19	1
714	2022-10-05 20:13:27.731377+00	408	Aprovechamiento del epicarpio de mangostino como colorante natural para cosm├®ticos	2	[{"changed": {"fields": ["Titulo", "Tutor", "Palabras clave", "Resumen", "Url video", "Es finalista"]}}]	19	1
715	2022-10-05 20:13:53.39583+00	400	DISE├æO DE UN HUERTO INTELIGENTE AUTOMATIZADO A BAJO COSTO CON ARDUINO	2	[{"changed": {"fields": ["Integrantes", "Programa integrantes", "Tutor", "Resumen", "Url video", "Es finalista"]}}]	19	1
716	2022-10-05 20:14:21.633381+00	398	Dise├▒o y an├ílisis de un nuevo sistema de estabilizaci├│n para el robot b├¡pedo.	2	[{"changed": {"fields": ["Tutor", "Palabras clave", "Resumen", "Url video", "Es finalista"]}}]	19	1
717	2022-10-05 20:14:51.01469+00	396	Caracterizaci├│n fisicoqu├¡mica y evaluaci├│n de la moringa oleifera para la purificaci├│n del agua	2	[{"changed": {"fields": ["Email contacto", "Integrantes", "Palabras clave", "Resumen", "Url video", "Es finalista"]}}]	19	1
718	2022-10-05 20:15:23.048497+00	401	PROTOTIPO DE UNA PR├ôTESIS ROB├ôTICA CON UN GRADO DE LIBERTAD MEDIANTE EL USO DE ELECTROMIOGRAF├ìA	2	[{"changed": {"fields": ["Email contacto", "Integrantes", "Programa integrantes", "Tutor", "Palabras clave", "Url video", "Es finalista"]}}]	19	1
719	2022-10-05 20:16:02.386717+00	395	Dise├▒o e implementaci├│n de un prototipo que controle el acceso y permita la toma de temperatura corporal en la sede principal del Colegio Adventista Libertad mediante el uso del lector de c├®dula con t	2	[{"changed": {"fields": ["Programa integrantes", "Tutor", "Resumen", "Url video", "Es finalista"]}}]	19	1
720	2022-10-05 20:16:43.283506+00	403	Prototipo de una m├íquina selectora de semilla sacha inchi	2	[{"changed": {"fields": ["Resumen", "Es finalista"]}}]	19	1
721	2022-10-05 20:17:01.058672+00	420	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	2	[{"changed": {"fields": ["Resumen", "Es finalista"]}}]	19	1
722	2022-10-05 20:17:19.451617+00	377	Desarrollo de un test in vitro para la evaluaci├│n de la maduraci├│n de monocitos a macr├│fagos como posible predictor de una respuesta pro inflamatoria en implantes mamarios	2	[{"changed": {"fields": ["Es finalista"]}}]	19	1
723	2022-10-05 20:17:37.69485+00	368	Evaluaci├│n de Estrategias para Promover la Adopci├│n de las Tecnolog├¡as IoT en las Pymes. Un Enfoque de Din├ímica de Sistemas	2	[{"changed": {"fields": ["Integrantes", "Programa integrantes", "Tutor", "Palabras clave", "Resumen", "Es finalista"]}}]	19	1
724	2022-10-05 20:18:11.254243+00	406	Desarrollo de un ap├│sito tipo hidrogel de plasma pobre en plaquetas y col├ígeno extra├¡do de piel de tilapia con potencial uso para el tratamiento de ├║lceras cr├│nicas de pie diab├®tico	2	[{"changed": {"fields": ["Resumen", "Es finalista"]}}]	19	1
725	2022-10-05 20:18:36.354217+00	373	DESARROLLO DE UNA TINTA DE BIOMATERIAL A BASE DE ALGINATO,├üCIDO HIALUR├ôNICO Y PLASMA POBRE EN PLAQUETAS COMO POSIBLE TRATAMIENTO  PARA LAS ├ÜLCERAS CR├ôNICAS DE PIE DIABETICO.	2	[{"changed": {"fields": ["Titulo", "Es finalista"]}}]	19	1
726	2022-10-05 20:18:54.855705+00	372	DESARROLLO DE UN ROBOT OPERADO A DISTANCIA PARA LA B├ÜSQUEDA DE SUPERVIVIENTES EN ESTRUCTURAS COLAPSADAS DE DIF├ìCIL ACCESO	2	[{"changed": {"fields": ["Es finalista"]}}]	19	1
727	2022-10-05 20:19:31.663655+00	409	Asistente Virtual para el programa de Ingenier├¡a Mecatr├│nica UNAB	2	[{"changed": {"fields": ["Es finalista"]}}]	19	1
728	2022-10-05 20:22:32.177067+00	66	Comportamiento mec├ínico de suelos para la construcci├│n de tapia pisada en Curit├¡, Barichara y Piedecuesta en funci├│n de su composici├│n granulom├®trica	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
729	2022-10-05 20:23:01.488759+00	63	Eco-eficacia de la estabilizaci├│n mec├ínica de la tapia  pisada a partir de mallas de refuerzo de botellas PET	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
730	2022-10-05 20:23:32.182191+00	88	Inclusi├│n financiera en Colombia, un enfoque sobre educaci├│n econ├│mica y financiera	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
731	2022-10-05 20:24:05.263757+00	91	Dise├▒o de un modelo de financiamiento colaborativo fintech para emprendimientos del sector agroindustrial	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
732	2022-10-05 20:24:29.224325+00	71	Robot Financiero Avanzado en MT4 & MT5. Compra y Venta de Divisas	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
733	2022-10-05 20:24:54.744511+00	59	Digitalizaci├│n tridimensional de la cavidad orbitaria de restos humanos a trav├®s del m├®todo ├│ptico de proyecci├│n de franjas	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
734	2022-10-05 20:25:35.656607+00	70	Validaci├│n de instrumento para la ruta integradora de emprendimiento en la Universidad Santo Tom├ís Bucaramanga	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
736	2022-10-05 20:29:14.084788+00	78	Un algoritmo gen├®tico para el  problema de formaci├│n de celdas de manufactura  considerando el movimiento de trabajadores (PFCMT)	2	[{"changed": {"fields": ["Titulo"]}}]	11	1
737	2022-10-05 20:30:38.450877+00	52	Estudio comparativo de mediciones de son├│metro y dispositivo electr├│nico SOUDES, caso: Comuna Centro de Bucaramanga	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
738	2022-10-05 20:31:02.065849+00	55	Impacto de las altas precipitaciones sobre un cultivo de lechuga crespa ubicado en la huerta del programa de Ingenier├¡a Agroindustrial de la Universidad de Santander	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
739	2022-10-05 20:31:32.20337+00	54	Estudio sobre la afectaci├│n del factor clim├ítico en el cultivo de r├íbano ubicado en la huerta perteneciente al programa de Ingenier├¡a Agroindustrial de la Universidad de Santander	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
740	2022-10-05 20:31:55.536661+00	75	Prototipo Web de Registro y Trazabilidad de  Medicamentos	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
741	2022-10-05 20:32:42.201551+00	83	Desarrollo de un ap├│sito tipo hidrogel de plasma pobre en plaquetas y col├ígeno extra├¡do de piel de tilapia con potencial uso para el tratamiento de ├║lceras cr├│nicas de pie diab├®tico	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
742	2022-10-05 20:33:16.296428+00	90	Software para reconocimiento de texto en reportes de equipos biom├®dicos	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
743	2022-10-05 20:33:42.949326+00	84	Dise├▒o de un modelo de simulaci├│n para la validaci├│n del funcionamiento de una planta de limpieza y clasificaci├│n de frutos c├¡tricos en el departamento de Santander.	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
744	2022-10-05 20:34:17.630291+00	80	DETERMINACI├ôN DE CURVAS DE DEMANDA ENERG├ëTICA DE LOS EQUIPOS DE ACONDICIONAMIENTO DE AIRE EN EL CAMPUS EL JARD├ìN DE LA UNAB	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
745	2022-10-05 20:34:40.913523+00	99	EVALUACI├ôN DE ALTERNATIVAS PARA EL DIMENSIONAMIENTO Y MANTENIMIENTO DE LA INSTALACI├ôN FOTOVOLTAICA EN CENS	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
746	2022-10-05 20:35:07.425986+00	81	CONSUMO ENERG├ëTICO DE LOS EQUIPOS DE ACONDICIONAMIENTO DE AIRE DEL EDIFICIO DE INGENIER├ìAS DE LA UNAB	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
747	2022-10-05 20:35:32.677761+00	82	Dise├▒o y construcci├│n de un sistema para realizar hidr├│lisis.	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
748	2022-10-05 20:36:59.952308+00	86	Asistente Virtual para el programa de Ingnier├¡a Mecatr├│nica UNAB	2	[{"changed": {"fields": ["Titulo", "Es finalista"]}}]	11	1
749	2022-10-05 20:37:28.739649+00	98	Prototipo de videojuego en realidad virtual para el aprendizaje de una lengua extranjera	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
750	2022-10-05 20:37:58.362827+00	85	Clasificaci├│n de im├ígenes de animales usando Deep Learning	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
751	2022-10-05 20:38:42.860816+00	89	Registro de asistencia a eventos mediante reconocimiento facial	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
752	2022-10-05 20:39:57.976894+00	73	Aplicaci├│n de t├®cnicas de diagnostico a un plasma generado a partir de fuego excitado por microondas	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
753	2022-10-05 20:40:24.282618+00	100	INDUSTRIA 4.0 Y ECONOM├ìA CIRCULAR EN EL SECTOR  SERVICIOS	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
754	2022-10-05 20:40:59.205115+00	72	Expansi├│n de c├®lulas madre mesenquimales en condiciones hip├│xicas en medio no xenog├®nico en PRP y PPP	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
755	2022-10-05 20:41:21.093373+00	51	Evaluaci├│n de Ruido Ambiental en el campus UDES con m├│dulo electr├│nico de bajo costo en tiempo real	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
756	2022-10-05 20:41:47.199667+00	62	Recursos did├ícticos desde la arquitectura que identifican la flora nativa en el ├írea metropolitana de Bucaramanga	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
757	2022-10-05 20:42:19.829963+00	67	Soluci├│n al problema de ruteo de veh├¡culos de flota heterog├®nea con transbordo lateral mediante la metaheur├¡stica de algoritmo gen├®tico.	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
758	2022-10-05 20:42:45.774173+00	79	Sistema de sincron├¡a entre equipos de monitoreo de variables fisiol├│gicas	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
759	2022-10-05 20:47:41.98074+00	1	1 Activar bot├│n de calificar para la presentaci├│n en vivo de proyectos de Inngeniatec	2	[{"changed": {"fields": ["Activacion calificacion inngeriatec1"]}}]	26	1
760	2022-10-05 20:50:29.735099+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
761	2022-10-05 20:51:58.81478+00	50	titulo proyecto prueba con autores	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
762	2022-10-05 20:53:00.18671+00	50	titulo proyecto prueba con autores	2	[{"changed": {"fields": ["Es finalista"]}}]	11	1
763	2022-10-05 21:04:20.762867+00	1	1 Activar bot├│n de calificar para la presentaci├│n en vivo de proyectos de Inngeniatec	2	[{"changed": {"fields": ["Activacion calificacion inngeriatec1"]}}]	26	1
764	2022-10-05 21:04:39.669049+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
765	2022-10-05 22:14:49.583348+00	78	AsignacionEvaluacionInngeniatec object (78)	3		21	1
766	2022-10-05 22:15:37.640942+00	28	Xtreme adventure	3		20	1
767	2022-10-05 22:15:37.644966+00	25	Xtreme adventure	3		20	1
768	2022-10-05 22:16:06.517066+00	4	Xtreme adventure	3		24	1
769	2022-10-05 22:16:06.526481+00	1	Xtreme adventure	3		24	1
770	2022-10-05 22:20:24.128753+00	414	 |  	1	[{"added": {}}]	10	1
771	2022-10-05 22:21:21.783234+00	414	gbueno103@unab.edu.co | GLORIA ESPERANZA BUENO SANDOVAL	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
772	2022-10-05 22:56:09.145254+00	415	 |  	1	[{"added": {}}]	10	1
773	2022-10-05 22:57:08.028575+00	415	tguarin23@unab.edu.co | TATIANA CONSTANZA GUARIN CORREDOR	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
774	2022-10-05 23:10:31.427036+00	45	AsignacionEvaluacionInngeniatec object (45)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
775	2022-10-05 23:11:19.588857+00	67	AsignacionEvaluacionInngeniatec object (67)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
776	2022-10-05 23:11:51.644609+00	58	AsignacionEvaluacionInngeniatec object (58)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
777	2022-10-06 14:09:21.061344+00	1	1 Permiso para activar la calificaci├│n oral	2	[{"changed": {"fields": ["Activacion calificacion oral"]}}]	12	1
778	2022-10-06 14:44:26.134994+00	3	Karta Di Busan	2	[{"changed": {"fields": ["Aplicacion escenario real", "Originadidad innovacion", "Calidad tecnica", "Estudio viablididad"]}}]	24	1
779	2022-10-06 14:44:49.447651+00	2	Karta Di Busan	2	[{"changed": {"fields": ["Aplicacion escenario real", "Originadidad innovacion", "Calidad tecnica", "Estudio viablididad"]}}]	24	1
780	2022-10-06 18:32:41.146143+00	1	1 Activar bot├│n de calificar para la presentaci├│n en vivo de proyectos de Inngeniatec	2	[{"changed": {"fields": ["Activacion calificacion inngeriatec1"]}}]	26	1
781	2022-10-06 21:03:36.50464+00	6	An├ílisis Conjoint  Bebidas Carbonatadas	3		24	37
782	2022-10-06 21:36:47.685809+00	418	 |  	1	[{"added": {}}]	10	1
783	2022-10-06 21:37:47.720128+00	418	lalferez@unab.edu.co | Luis Gerardo Alferez	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo institicional", "Id iniversidad", "Programa academico", "Universidad", "Is autor", "Is evaluador", "Is active"]}}]	10	1
784	2022-10-06 21:39:06.62875+00	35	AsignacionEvaluacionInngeniatec object (35)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
785	2022-10-06 21:39:37.827892+00	30	AsignacionEvaluacionInngeniatec object (30)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
786	2022-10-06 21:56:40.290517+00	54	AsignacionEvaluacionInngeniatec object (54)	2	[{"changed": {"fields": ["Evaluadores"]}}]	21	1
787	2022-11-16 03:05:05.707087+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2023	1	[{"added": {}}]	27	1
788	2022-11-16 03:06:12.62786+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2023	2	[{"changed": {"fields": ["Video guia inscripcion url"]}}]	27	1
789	2022-11-16 03:06:49.357446+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2023	2	[{"changed": {"fields": ["Video guia inscripcion url"]}}]	27	1
790	2022-11-16 03:11:55.198327+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2023	2	[{"changed": {"fields": ["Video guia inscripcion url"]}}]	27	1
791	2022-11-16 03:12:23.83748+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2023	2	[{"changed": {"fields": ["Video guia inscripcion url"]}}]	27	1
792	2022-11-16 03:15:41.257184+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2023	2	[]	27	1
793	2022-11-16 03:16:27.799308+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2023	2	[{"changed": {"fields": ["Video guia inscripcion url"]}}]	27	1
794	2022-11-16 03:17:09.500988+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2023	2	[{"changed": {"fields": ["Video guia inscripcion url"]}}]	27	1
795	2022-11-16 14:32:39.370045+00	1	Apertura de convocatoria:	1	[{"added": {}}]	28	1
796	2022-11-16 14:40:33.866139+00	1	eblanco265@unab.edu.co | Edwin Blanco Guerrero	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
797	2022-11-16 16:34:00.844379+00	1	eblanco265@unab.edu.co | Edwin Blanco Guerrero	2	[{"changed": {"fields": ["Is evaluador"]}}]	10	1
798	2022-11-20 06:03:39.971972+00	1	1 Activaci├│n de la convocatoria Inngeniatec	1	[{"added": {}}]	32	1
799	2022-11-20 06:05:25.356259+00	1	2022 Segundo semestre	1	[{"added": {}}]	31	1
800	2022-11-20 06:06:20.80586+00	2	2022 Primer semestre	1	[{"added": {}}]	31	1
801	2022-11-20 06:14:28.465738+00	2	edwinblanco316@gmail.com | EdwinPrueba Guerrero	3		10	1
802	2022-11-22 13:27:01.344148+00	1	INNGENIATEC 2023	1	[{"added": {}}]	33	1
803	2022-11-22 15:34:59.363741+00	1	XVII ENCUENTRO DE SEMILLEROS DE INVESTIGACI├ôN FACULTAD DE INGENIER├ìA Y DPTO DE CIENCIAS B├üSICAS - UNAB 2022	2	[{"changed": {"fields": ["Titulo principal"]}}]	27	1
804	2022-11-22 16:04:28.06247+00	2	Cierre de convocatoria (Nuevo plazo):	1	[{"added": {}}]	28	1
805	2022-11-22 16:05:01.400776+00	2	Cierre de convocatoria:	2	[{"changed": {"fields": ["Descripcion"]}}]	28	1
806	2022-11-22 16:07:56.343044+00	1	1 Activaci├│n de la convocatoria	2	[{"changed": {"fields": ["Activacion convocatoria"]}}]	18	1
807	2022-11-22 16:08:14.731175+00	1	1 Activaci├│n de la convocatoria Inngeniatec	2	[]	32	1
808	2022-11-22 16:12:10.706683+00	3	2023 Primer semestre	1	[{"added": {}}]	31	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	tematica_app	tematica
7	semillero_app	semillero
8	carrera_app	programa
9	carrera_app	universidad
10	usuarios_app	usuario
11	proyectos_app	proyecto
12	evaluaciones_orales	activacioncalificacionoral
13	evaluaciones_orales	evaluacionoral
14	evaluaciones_orales	calificacionfinalproyecto
15	evaluaciones_preseleccion	evaluacionpreseleccion
16	asignacion_evaluador	asignacionevaluacion
17	admin_honeypot	loginattempt
18	proyectos_app	activacionconvocatoria
19	proyectos_app	proyectoinngeniatec
20	evaluaciones_preseleccion	valoracionproyectoingeniatec
21	asignacion_evaluador	asignacionevaluacioninngeniatec
22	evaluaciones_preseleccion	activacioncalificacionpreseleccion
23	asignacion_evaluador	historiacambiosasignacionsemilleros
24	evaluaciones_preseleccion	valoracionproyectoingeniatecpresencial
25	evaluaciones_preseleccion	activacioncalificacioninngeniatecprimerafase
26	evaluaciones_preseleccion	activacioncalificacioninngeniatecsegundafase
27	config_semilleros_app	configpaginasemilleros
28	config_semilleros_app	fechasemilleros
29	dynamic_models	modelschema
30	dynamic_models	fieldschema
31	proyectos_app	periodo
32	proyectos_app	activacionconvocatoriainngeniatec
33	config_inngeniatec_app	configpaginainngeniatec
34	config_inngeniatec_app	fechainngeniatec
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	carrera_app	0001_initial	2022-08-02 08:10:09.850843+00
2	usuarios_app	0001_initial	2022-08-02 08:10:11.464353+00
3	contenttypes	0001_initial	2022-08-02 08:10:12.183697+00
4	admin	0001_initial	2022-08-02 08:10:13.611362+00
5	admin	0002_logentry_remove_auto_add	2022-08-02 08:10:13.92137+00
6	admin	0003_logentry_add_action_flag_choices	2022-08-02 08:10:14.416137+00
7	admin_honeypot	0001_initial	2022-08-02 08:10:14.935452+00
8	admin_honeypot	0002_auto_20160208_0854	2022-08-02 08:10:15.336855+00
9	admin_honeypot	0003_alter_loginattempt_id	2022-08-02 08:10:16.353889+00
10	tematica_app	0001_initial	2022-08-02 08:10:16.975973+00
11	semillero_app	0001_initial	2022-08-02 08:10:17.48056+00
12	proyectos_app	0001_initial	2022-08-02 08:10:19.763936+00
13	asignacion_evaluador	0001_initial	2022-08-02 08:10:21.221427+00
14	contenttypes	0002_remove_content_type_name	2022-08-02 08:10:21.789873+00
15	auth	0001_initial	2022-08-02 08:10:23.638618+00
16	auth	0002_alter_permission_name_max_length	2022-08-02 08:10:24.074521+00
17	auth	0003_alter_user_email_max_length	2022-08-02 08:10:24.534674+00
18	auth	0004_alter_user_username_opts	2022-08-02 08:10:24.970594+00
19	auth	0005_alter_user_last_login_null	2022-08-02 08:10:25.402474+00
20	auth	0006_require_contenttypes_0002	2022-08-02 08:10:25.789815+00
21	auth	0007_alter_validators_add_error_messages	2022-08-02 08:10:26.271719+00
22	auth	0008_alter_user_username_max_length	2022-08-02 08:10:26.785152+00
23	auth	0009_alter_user_last_name_max_length	2022-08-02 08:10:27.165255+00
24	auth	0010_alter_group_name_max_length	2022-08-02 08:10:27.714964+00
25	auth	0011_update_proxy_permissions	2022-08-02 08:10:28.173138+00
26	auth	0012_alter_user_first_name_max_length	2022-08-02 08:10:28.620622+00
27	evaluaciones_preseleccion	0001_initial	2022-08-02 08:10:29.640234+00
28	evaluaciones_orales	0001_initial	2022-08-02 08:10:31.232104+00
29	sessions	0001_initial	2022-08-02 08:10:32.02873+00
30	carrera_app	0002_alter_programa_options_alter_universidad_options	2022-08-29 20:58:01.576455+00
31	semillero_app	0002_alter_semillero_grupo_investigaci├│	2022-08-29 20:58:01.977158+00
32	usuarios_app	0002_alter_usuario_options	2022-08-29 20:58:02.344135+00
33	semillero_app	0003_alter_semillero_grupo_investigaci├│	2022-08-29 21:01:01.06717+00
34	carrera_app	0003_alter_universidad_options	2022-09-02 14:41:37.416606+00
35	proyectos_app	0002_alter_proyecto_carta_aval_pdf_and_more	2022-09-02 14:41:38.492552+00
36	proyectos_app	0003_activacionconvocatoria_alter_proyecto_options	2022-09-09 13:19:59.108933+00
37	semillero_app	0004_alter_semillero_options	2022-09-09 13:19:59.522881+00
38	proyectos_app	0004_proyectoinngeniatec	2022-09-19 14:42:39.68061+00
39	proyectos_app	0005_proyectoinngeniatec_email_contacto	2022-09-19 14:47:38.604994+00
40	proyectos_app	0006_proyectoinngeniatec_categoria	2022-09-19 14:54:53.328744+00
41	proyectos_app	0007_alter_proyectoinngeniatec_email_contacto	2022-09-19 14:58:15.936872+00
42	proyectos_app	0008_alter_proyectoinngeniatec_integrantes_and_more	2022-09-19 15:10:24.221276+00
45	asignacion_evaluador	0002_alter_asignacionevaluacion_options	2022-09-19 16:12:45.269117+00
46	carrera_app	0004_alter_programa_options	2022-09-19 16:12:45.718802+00
47	evaluaciones_orales	0002_alter_evaluacionoral_options	2022-09-19 16:12:46.166146+00
48	proyectos_app	0009_alter_proyecto_options_and_more	2022-09-19 16:12:46.548767+00
49	evaluaciones_preseleccion	0002_alter_evaluacionpreseleccion_options_and_more	2022-09-19 16:12:47.598652+00
50	asignacion_evaluador	0003_alter_asignacionevaluacion_options_and_more	2022-09-19 16:22:30.545931+00
51	evaluaciones_preseleccion	0003_alter_valoracionproyectoingeniatec_proyecto	2022-09-19 16:22:31.269269+00
52	asignacion_evaluador	0004_alter_asignacionevaluacioninngeniatec_options	2022-09-19 17:33:25.845004+00
53	evaluaciones_preseleccion	0004_valoracionproyectoingeniatec_is_calificado	2022-09-19 17:33:26.444434+00
54	asignacion_evaluador	0005_asignacionevaluacioninngeniatec_asignacion_calificada1	2022-09-19 18:30:08.901236+00
55	proyectos_app	0010_alter_proyecto_options_and_more	2022-09-22 01:07:37.439164+00
56	evaluaciones_preseleccion	0005_alter_valoracionproyectoingeniatec_estudio_viablididad	2022-09-22 15:17:39.473017+00
57	evaluaciones_preseleccion	0006_activacioncalificacionpreseleccion	2022-10-05 04:25:10.886383+00
58	asignacion_evaluador	0006_historiacambiosasignacionsemilleros	2022-10-05 08:49:15.465832+00
59	asignacion_evaluador	0007_rename_asignacion_historiacambiosasignacionsemilleros_asignacion	2022-10-05 09:11:32.849857+00
60	asignacion_evaluador	0008_remove_historiacambiosasignacionsemilleros_asignacion_and_more	2022-10-05 09:26:55.40551+00
61	evaluaciones_preseleccion	0007_valoracionproyectoingeniatecpresencial	2022-10-05 09:42:47.962045+00
62	evaluaciones_preseleccion	0008_activacioncalificacioninngeniatecprimerafase_and_more	2022-10-05 19:37:30.250116+00
63	proyectos_app	0011_proyecto_es_finalista_and_more	2022-10-05 19:55:04.466729+00
64	config_semilleros_app	0001_initial	2022-11-16 02:34:59.02964+00
65	config_semilleros_app	0002_alter_configpaginasemilleros_parrafo_secundario1_and_more	2022-11-16 02:34:59.047879+00
66	config_semilleros_app	0003_fechasemilleros	2022-11-16 02:34:59.064172+00
67	dynamic_models	0001_initial	2022-11-16 02:34:59.119087+00
68	dynamic_models	0002_remove_modelschema__modified	2022-11-16 02:34:59.131932+00
69	config_inngeniatec_app	0001_initial	2022-11-20 05:54:45.623328+00
70	proyectos_app	0012_remove_proyectoinngeniatec_tutor_and_more	2022-11-20 05:54:45.902525+00
71	proyectos_app	0013_alter_proyectoinngeniatec_resumen	2022-11-20 05:54:45.941637+00
72	proyectos_app	0014_periodo_proyectoinngeniatec_periodo	2022-11-20 05:54:46.007235+00
73	proyectos_app	0015_periodo_slug	2022-11-20 05:54:46.031098+00
74	proyectos_app	0016_alter_periodo_slug	2022-11-20 05:54:46.042991+00
75	proyectos_app	0017_remove_periodo_slug	2022-11-20 05:54:46.058143+00
76	proyectos_app	0018_remove_proyectoinngeniatec_periodo_delete_periodo	2022-11-20 05:54:46.162497+00
77	proyectos_app	0019_periodo_proyectoinngeniatec_periodo	2022-11-20 05:54:46.237121+00
78	proyectos_app	0020_periodo_slug	2022-11-20 05:54:46.282021+00
79	proyectos_app	0021_proyecto_periodo	2022-11-20 05:54:46.359105+00
80	proyectos_app	0022_activacionconvocatoriainngeniatec	2022-11-20 05:54:46.382893+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5qwqaeuwl5vs4zp9pzuqvfbsy23wsmum	.eJxVjDsOwyAQRO9CHSEwX7tMnzOgBS8xSQyWwVWUu8eWXCTNFDNv3ps42NrktoqrSyMZiCKX385DeGI-hvEB-V5oKLmtydMDoeda6a2M-Lqe7J9ggjrtb8at4JYpo3jURqiuY0piUCLEqBlqb8FqL0HuaYMwoUOIPQACGFDcHNKKtaaSXcqpuZZmrA3mxZGBa8245L3VVDBhRS8_XyqARfk:1oLmle:sBe547VluaLR6rLDbWe46oS4HR2h2mPRNOROzIy-ujE	2022-08-24 14:33:06.310183+00
cg75gses2mxdougwo462hp8cu8bjlcdn	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjUxMDM5NzYuODcyNDU5Mn0:1ogbbl:zdVGssMolQaXlzBD2JcU-Fkcp5K40WvFA_Jz_-Tca8s	2022-10-21 00:52:57.162842+00
66znpis5ns2hc70pqsedz8y2kih609wh	eyJ1aWQiOiIxIiwiX3Nlc3Npb25faW5pdF90aW1lc3RhbXBfIjoxNjU5NjQzNzQzLjI5OTEzNjJ9:1oJh9T:2ucyuEys-_lrMD4N81j7bAeidUSvW9RSY-Pcn3NqkW0	2022-08-18 20:09:03.306099+00
97k7zq6z9a2eecqzhvfdso1pzi5eht4p	.eJxVjEEOwiAQRe_C2pBpaQemS_eegTAFLGqpKXRlvLs26UK3_73_XsK6rU52K2G1yYtBoDj9buzGe8g78DeXr4scl1zXxHJX5EGLvCw-PM6H-xeYXJm-78ZxQGCCxjBGR0Rt8LGjqFkRMPZdh0q5NrBn7yFqiNS1igyQMRFhj5ZQSlqyTTlVW9McSnXz04qhQQSjdI8gW9Vr1O8PIyZF5A:1oOhia:zcE-TMWPcqiS9bVvX2AQ7c6uq67Je79WNecmAXmAZiM	2022-09-01 15:46:00.26177+00
6mx30n88xbi9bhx85ctiotsaj951kyy5	.eJxVjEEOwiAQRe_C2hCmzjBtl-49A6EFLGrBFLoy3t026UK3_73_3sLYtU5mLX4x0YleoDj9boMdHz7twN1tumU55lSXOMhdkQct8pqdf14O9y8w2TJtbw6qG5BoQGeZyJMDDdZpaELHmrEhRtAEnVfslGpDaFWrA8AYGDZ7jxZfSszJxBSrqXH2pdr5ZUQPWitAhUiS8ax0c_58ARjART4:1oLmMn:_OekFxqozF4gD4qz9K5q6tuU49klXUx8sF411hHV5cY	2022-08-24 14:07:25.775723+00
486128835d6hmf3glf3swucvfj87yaoj	.eJxVjMsOwiAUBf-FtSHc8u7Svd9ALgUsasEUujL-uzbpQrdn5syLONz67LYWV5cDGYklp9_N43SPZQfhhuVa6VRLX7Onu0IP2uilhvg4H-5fYMY2f9_RJAWJSWXB6xgk1xgmr5jVCDEYprjAADIhBzA4DFKD0BY1eosIOu3RFlvLtbhccnc9L7F1XJ6OjKAUMwK4EZRxzdX7A9p1RcA:1oOiiG:tD2jJMxo0M6joqR9Avn7uircbsg7YR9nIqCUHfSdmV8	2022-09-01 16:49:44.166918+00
zf46z4q6e1g7onlcdxo4ixvofzsq22xm	eyJ1aWQiOiI0MTIiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjQ1NTAzOTkuNDg4NjM3NH0:1oeHb5:0rn5vdq6vGmFxj-KIV6cCQkbaMb56QUf8J9gR_jJo8s	2022-10-14 15:06:39.512412+00
6qdrxmt2iu4dpimozob87yxwrg9aara8	.eJxVjs0OwiAQhN-FsyGldCn06N1nILuwtfhDTaEn47trTQ96ne-byTyFx7VOfi28-BTFIMCKw29IGK6cNxIvmM-zDHOuSyK5KXKnRZ7myLfj7v4NTFimTzuMYJrONWyoQ0JqLVjrjEZm0gAq6i6Q6pFUw2ijbmILI2iC2FsD8fuqcClpzj7lVH1Ndy4V7w8vBmWMck5bUNJ0qne6f70BpgFGng:1oTYWR:D7px102cH5HhsTqhJv7cW94Bpapr9nEyaftnyjUplhE	2022-09-15 00:57:31.676474+00
tzg89ez8ckycsihf7174jf4ktwcenujn	eyJ1aWQiOiIxNjkiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjQyMTEyNDAuMjc3OTMxMn0:1ocrMm:I3zq2D6XI3lFVTLRS16lXP4xIJp8Xu4mwfR6GrMxGS4	2022-10-10 16:54:00.30719+00
jbxpm45x9lafcoybs7xkxcfojbrz736u	.eJxVjEsSwiAQBe_C2qLCCGSSpXvPQPEZDGrACmRleXeNlYVuX_frJzN2bZNZKy0mBTYygezwOzrrb5Q3Eq42Xwr3JbclOb4pfKeVn0ug-2l3_wKTrdPnDXqInqIWioC0swheqk66Hi06j12U3eAgEEoHPRBEUkelffBBKIzwjVaqNZVsUk7NtDRTbXZ-GDYKrQXoHrXgKBV0R3i9Ab5yRvY:1oQVev:oiQpOx-iajVuniGQpStyrUJA9sjrVZGZxYRtBkj7svQ	2022-09-06 15:17:41.877098+00
1miyr9bnnay5i2alq7aucnz21zxvwefl	.eJxVjMsOwiAUBf-FtSG8Cpcu3fsN5PKoRS2YQlfGf9cmXej2zJx5EYdbn93W0upyJCORgyGn39VjuKeyo3jDcq001NLX7Omu0IM2eqkxPc6H-xeYsc3fNxjtrfZBWKOkDGhRJZg0DwIAjAE1TF5alJMSQkVQ3kaeokeTBOPI2B5tqbVci8sld9fzklrH5enIyLVWfOASgHJpGQd4fwCjEEZJ:1ocbnQ:0hP4ggfARDHgGHAQ36pv7PVIr8_594WUHs8tzgq5ikM	2022-10-10 00:16:28.167083+00
lorkk5484vfpy1heoob9pzy99zc7t91d	.eJxVjDkOwyAUBe9CHSGzfYzL9DkDAj7EZIHI4CrK3WNLLpL2zbx5E-vWPtu1xcVmJBMBRk6_o3fhHstO8ObKtdJQS1-yp7tCD9ropWJ8nA_3LzC7Nm_vJBMXToSARgQZBUgExbwCBMe49pAMeqaMZ8mBRlQJ5SYqNigljNB7tMXWci02l9xtz8_Yunu-LJkYADMGuBFUcznwcfx8AaQFRm4:1oTZ9p:kLOT65HmXutonq7AWNfb2mV-T5_nTulro9W4qsrkDBw	2022-09-15 01:38:13.791132+00
gah39wu5rwlr12bei9oiftg34m6sr2vt	.eJxVjDsOwyAQBe9CHSFjEB-X6XMGtAtLTD4QGVxFuXtsyUXSvpl5b-Zh7bNfGy0-RzYxoSw7_a4I4U5lR_EG5Vp5qKUvGfmu8IM2fqmRHufD_TuYoc1bbY2zKWmX0IAxTkFMg0xRDgYGDBqkVTEgCUNq1BpxFIRoBCRJQVnE_bRRa7kWn0vuvucntQ7Pl2eT0HqLnHKKSzlKa9XnCxHvR8g:1oWOHu:PRRinViXrYby6IGCNtUyaqJNnWTThVynot2cjG3yrp4	2022-09-22 20:38:14.348747+00
pialxtailg209kqfu2kz5l4ugs0y43cq	.eJxVjMkOwiAURf-FtSEMZerSvd9AGB4WtWAKXRn_XUm60O05594Xsm7vi90bbDZHNCNB0ekXehfuUIaJN1euFYda-pY9Hgk-bMOXGuFxPtq_g8W1ZawZ8SIJNimSFA8xCB81MSC5UE4lrTlEqR1NkjNIikZNdSLegPniNLFx2qC1XIvNJXfb8wqtu_Vp0UylZGRilClstOBEvj9SU0ZF:1oTl56:QbGf6oG_oRPWo9VW7e7J2pY9rsmQrg4csKzCqpj6P9M	2022-09-15 14:22:08.051042+00
g7nlcylapfdejdv1g1a7t0z5rmbtcbp8	eyJ1aWQiOiIxNDUiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjI2Njc4ODQuMTcwNDg0NX0:1oWNrw:8WsXOXvmyCxdZ3_uuXB7QSIfXt0DthrG5ORpbF5qCe0	2022-09-22 20:11:24.171115+00
q5z415j06giql6ra2apnfkg68gaog8s3	.eJxVjMsOwiAQRf-FtSE8KgMu3fcbmpkBpGogKe3K-O_apAvd3nPOfYkJt7VMW0_LNEdxEVqcfjdCfqS6g3jHemuSW12XmeSuyIN2ObaYntfD_Tso2Mu3zoaYHGYy2isNHqxLmjADa08cHRsGTzRAsJBxQDgHF4yFkFV0FpR4fwD6VDff:1oVffT:ioSbYIDdF7FO8UUst41Au-DbgKyISpWsrIcbwnHwhC4	2022-09-20 20:59:35.331658+00
ld4zq32c6b7km7ioxb4wdeohjjfmdcrj	.eJxVjs0OgjAQhN-lZ9Ns-VkKR-8-Q7NlF6lKMbScjO8uGA56nW_my7yUozWPbk2yuMCqU6Yu1ek39dTfJe6IbxSvs-7nmJfg9V7RB036MrM8zkf3TzBSGre15RYqYzx68WAZsakHbEAQoCYR4KIvqfBiPRYC2Aw8VITSU1szt-b7KklKYY4uxJBdDpOkTNPTqc4gltYWFVgNttqUzfsD2mdHGw:1obTp2:j7aTj8s90TPPkH5SyX5JLrzao6slKlei-mEVALJh7Jg	2022-10-06 21:33:28.097975+00
8jqvor3ifuxkq8meoc8nuluvegb9ow7g	.eJxVjMsOwiAQRf-FtSFAy6tL934DGYapRS01ha6M_65NutDtPeeeFwuwtSlsldaQExuYlOz0O0bAO5WdpBuU68JxKW3Nke8KP2jllyXR43y4f4EJ6vR9OxSUUu89uBHQattZjJi0UIKMcmNU0aEDJCIfjZaQNGkvezuCwM6aPVqp1ryUkEtuoeWZaoP5GdggjZFKKuMsF8Zo38v3B-TPR1c:1oQHJ1:AnAjYH2InxQGvN2tYraK15A_WsUy4kPOugcxWnWoHY0	2022-09-05 23:58:07.156928+00
n478vqonhx4ls9b072oujosxfid52nl3	.eJxVjMsOwiAQRf-FtSEdGKB06d5vIMOjFrXUFLoy_rs26UK395x7XszR1ia31bS6HNnAesNOv6OncE9lJ_FG5brwsJS2Zs93hR-08ssS0-N8uH-Bier0fWPQgSSBjj6B0gRoOhtjP3YQrCTtiRJC573RKJKVEkgEhVKDQm-7cY_WVGteisslN9fynGqj-enYAFoLQGGk4UYBohHvD5vIRkM:1oUBFp:3sJRiJgVqVJG0XSCs68ajWSn13pmue_8-ScU6f6A5Wo	2022-09-16 18:18:57.779617+00
0fhpckoz1kqzjxe5glif1wgs2kfs3uzs	.eJxVjDsOwyAQBe9CHSEwsAaX6XMGBCzE5AORwVWUu0dILpL2zbx5E-v2vtq9xc1mJAtRkpx-R-_CPZZB8ObKtdJQS9-yp0OhB230UjE-zof7F1hdW8fb4ZwEOuEnDToiFwiRY2BeSQaTkNp4o7lCyXRIZjacK0jau-iNTKBHtMXWci02l9xtz8_Yunu-LFk4ADfAODOUTQCzEJ8vpeFGcg:1oTPkD:0vzChG---NtQwrVkkf2YTbg2c93Any9mjnnuC1KYQcQ	2022-09-14 15:35:09.060454+00
kc6y1e78eowrjex2i1mh6lgdhurfc8mz	.eJxVjM0OgyAQhN-Fc0MW1MX12HufgYCslf5AI3hq-u7VxEN7mmTmm-8trFvrbNfCi41BDEJpcfotvRvvnPYl3Fy6ZjnmVJfo5Y7IYy3ykgM_zgf7J5hdmbe3A3KjJhOQnCdojCEKXWBWrQc_Qc_IhAa5MdAhhHYLbrmfcGxDD7RLC5cSc7IxxWprfHKp7vmyYlCISittECSB0g3pzxeA3kYR:1oQHKC:4S1KNqDt9M1pkIoPYZ3Fyu1Pa63Zt2s8irnvFFF90Hs	2022-09-05 23:59:20.929057+00
905tbru1xfod2rj4q0sferrbssjbpjj4	.eJxVjDkOwyAQAP9CHSHAaw6X6fMGtJglJgeODK6i_D1CcpG0M6N5M497W_xeafM5somBYKdfGHC-U-km3rBcVz6vpW058J7ww1Z-WSM9zkf7N1iwLv0LOEYKmMjaAcgk40AKAqMDxoAWUBPIIYxRKRnHpBHnWSptVYI4CNenlWrNa_G55OZbflJt-Hx5NkmtByONcoIbKcEZ-_kCxK1G7A:1oamrq:ygoDMk8bg_aWcof6buQKZsZmhnrChPdUuun4e843cTs	2022-10-04 23:41:30.720492+00
3j5se7pgct79vhnfbzd061jy17hrdob9	.eJxVjMsOwiAQRf-FtSFDLdDp0r3fQAZmYvFBTaEr479rky50e8-556UCrW0Ka5UlZFajQqsOv2OkdJOyEb5Sucw6zaUtOepN0Tut-jyz3E-7-xeYqE7fN3QI4B2YFHEQ8GKip-QjsXgSy4k6duAogRsQOwvOIxKjY-Rke79Fq9Sa5xJyyS20_JDa6PEMajTOdcYCImqDxh59__4AlXBGdw:1oUDP5:IYQ30T9CmmxYjjpFF0X-LVncQ1rkK7SfFv-GOKs4pys	2022-09-16 20:36:39.265448+00
qc0d3rsd4y59outhi0ymffzijpeh27jc	.eJxVjMsOwiAQRf-FtSG0I9PH0r3fQAYYLGrBFLoy_rtt0oVu7zn3vIWhtU5mLbyY6MUodCdOv6Ml9-C0E3-ndMvS5VSXaOWuyIMWec2en5fD_QtMVKbtHcifWVvWDoF8QOo8aXQAoDQ4CkPD3HOwqKxzWm1o04HA2qEH34Y9WriUmJOJKVZT48yl0vwyYmwQ2wYBECV0oKH_fAHPREeo:1oUGcY:EWNwgZtnfR_Qis4tYPps-KRjbfjiVXqpno8SSbGmOiU	2022-09-17 00:02:46.384844+00
osuycqmcguh4bxpo1oce2h3sznr6bbzq	.eJxVjMsOwiAQRf-FtSFQLMN06d5vIANMLT6oKXRl_Hdt0oVu7zn3vISntU1-rbz4nMQg0InD7xgo3rhsJF2pXGYZ59KWHOSmyJ1WeZ4T30-7-xeYqE7ft6MwYnKIEIGtGZlNTzEkhYadGgGMQ41EqHrFqdPH0JG2wKDRREDcopVrzXPxueTmW35wbfR4ejFoazvTKbBa9ugUgnl_AKydRmQ:1oUvZB:OnyslEnBLOoFDGfHzrWkeGP_wrxaTq9zve3sK7grrVU	2022-09-18 19:46:01.599007+00
zg6ghernvoyuwvnun91hwl55zk5owqlj	.eJxVjDkOwyAUBe9CHSGDWV2mzxnQ_ywxWSAyuIpy99iSi6R9M2_exMHaZ7e2uLgcyEQY0-T0uyL4eyw7Cjco10p9LX3JSHeFHrTRSw3xcT7cv8AMbd7exgtEBGaUHxLwISGYwUtumLFWxTBKhTYpYb1MwGzSaDjnAaJmo0YBe7TF1nItLpfcXc_P2Do8X45MTCkuN99YOo5SGCE_X-VlRv8:1oW1bN:8GPDbsGvFJB1HI5hTMNzU4pBvomFZxPGCE82HRemOE8	2022-09-21 20:24:49.384047+00
muc24482l8vuhofhq912st6bgdfmud35	.eJxVjMsOwiAUBf-FtSGAPLt07zeQW7hY1IIpdGX8d9ukC92emTNv4mHtk18bLj5HMhDJyel3HCE8sOwk3qHcKg219CWPdFfoQRu91ojPy-H-BSZo0_YeueMuccFGG0OS1qFVUVqTgDEbk0RgiEkJZpQJOjEDgE5IqZM0kdmwRxu2lmvxueTue56xdZhfngxca66500pRLrbEWXy-ow1Glw:1oRzB1:wwal1cnqCSgX6MNkzxqXvR2V8_PPlHXUqlXoWkUMiW4	2022-09-10 17:00:55.124846+00
9yy51i8w9un2b5zn3pnraz3vi9i19mgx	.eJxVjMsOwiAQRf-FtSEFWga6dO83kBkeFrXUFLoy_rs26UK395x7Xszh1ia31bi6HNjIBDv9boT-HssOwg3LdeF-KW3NxHeFH7TyyxLi43y4f4EJ6_R9J0meNCaSwnQCDCgdBWECLwz5oL30YIh6sAoS9giD1VYqsKkLWkG3R2usNS_F5ZKba3mOteH8dGwUWqtOqMH2XPZmsNa8P3qXRkI:1oXpnu:wE71Tr1kDYUj3lun-k_1oV3oRsGz9I85eycBwAgi7IY	2022-09-26 20:13:14.277394+00
c4ix897dqckmj42qo91f9ts2fev7fogx	.eJxVjDkOwjAURO_iGln_J15T0nMGyysxi41ip0LcnURKAdVIM2_emxi79tmsLS4mBzIRNpDTb-msv8eyL-Fmy7VSX0tfsqM7Qo-10UsN8XE-2D_BbNu8vbmFhJi01JJHhWADH1KSwSuZvPYAng_BieRhdE5vEQGSU1LAwJJkuEtbbC3XYnLJ3fT8jK3b58uQCYVAgVpoRUelcBTs8wWw1UbL:1oRzBi:S4b6_VUdpoEAU67fIG59KO7QIbgOYgag-9v5L6BctH0	2022-09-10 17:01:38.429423+00
85bmjdlaays70xt8cm56irjwn0y9z84i	.eJxVjMsOwiAUBf-FtSGQy7NL934D4XGxqKWm0JXx322TJur2zJx5kbUkMhCwhpyIa9hamasrtXTXy4St--npyMCVEqANY0C1slIasdl-7aNbGy7ut_Fdg493rDtKN1-vM41z7UsJdFfoQRu9zAkf58P9C4y-jdubKR0Eg-gzQPYQBQugRMIM3GCWQWFOMWRmIXNhkWeJ1kRtkrLaRPDk_QEVpEpL:1odYkW:VJ3ZAcGERVepKI5mwy5sXZfLK-51noOLVzXtP6Md8eI	2022-10-12 15:13:24.017664+00
em3nwdtgph3gfyw6rz6fh3em6ac74mu0	.eJxVjMsOwiAQRf-FtSFA6XTo0r3fQIZHLWrBFLoy_rs26UK395x7XszS1ma71bjaFNjIdMdOv6Mjf495J-FG-Vq4L7mtyfFd4Qet_FJCfJwP9y8wU52_b-8CCGGCV4QAgM4IJUKQOOlegSdpOgxGe_AKpRiidKSV0i4OPU3G4x6tsdZUsk05NdvSEmuj5WnZKAEkKCEQuVR66Ay8P38mRi0:1oRzI0:-kCWA7hqo-3Zf_dz5nWIfcmbB92mjOsaUeprf2cBi4o	2022-09-10 17:08:08.155653+00
czr59f7wxw6wc1pur38mr5hl2yo1tk8n	.eJxVjLESwiAQBf-F2mE4JARS2vsNzAEXgxpwAqkc_13jpND27b59Modrm9xaaXEpsoFZzQ6_o8dwo7yReMV8KTyU3Jbk-abwnVZ-LpHup939C0xYp8-7j-CxRz-iGKUySgWI5ih8lFZbSZEIMYxWdAbA9EZGQ0L4DjrjhSL1jVaqNZXsUk7NtTRTbTg_HBtAawkdWND8qKS09vUGeXNGhw:1oUDds:BxqhHR8ne19WPwRInXMSQ1mr6XxH7fpz-ULof772-js	2022-09-16 20:51:56.389161+00
4x79qz8fh8fjfpvvi7uk13o3qnxsffvz	.eJxVjMsOwiAUBf-FtSFcyqtduvcbCFzAohZMoSvjv2uTLnR7Zs68iHVbn-3W4mpzIBMRgpx-R-_wHstOws2Va6VYS1-zp7tCD9ropYb4OB_uX2B2bf6-OUtuBAwgE4Izihk_GGSjgTRC0ELrQTkvfZBMJ0DJ0UuZtMIBvR8A9miLreVabC65256X2LpbnpZMoBQozrliVEsNAtT7A4m8Rks:1oRzr2:gouAyo5_DXHsUBC1aauVnboBZDYOTT4tdBXUPX0NSU4	2022-09-10 17:44:20.80833+00
s1h7ud7hcroyfvsmno2y1hw9l79oz0a5	.eJxVjssOwiAUBf-FtSG8SqFL934DgXvBohZMoSvjv5uaLnR7ZjI5L-L81me3tbi6jGQiUo_k9LsGD_dYdoQ3X66VQi19zYHuCj1oo5eK8XE-3L_A7Nu8hw3jo5IJcDR8sMAFMBaUD5YFmyIimATci2BkGrnQEU2SUhkOVktM31cttpZrcbnk7npeYut-eToyca2lGZhgigprrLLvD4PWRqE:1obLRc:shaVdDEPXF6kRI2SuFGB0qZHDIAtYSq8Xsvq9I4rw94	2022-10-06 12:36:44.314068+00
0jhhfqyspdnt4o04gina5x9qktf22nr3	.eJxVjEEOwiAQRe_C2pAWhint0r1nIANMLWqpKXRlvLs26UK3_73_XsLRVie3FV5dimIQCOL0O3oKd847iTfK10WGJdc1ebkr8qBFXpbIj_Ph_gUmKtP3bXFk8EzgSXVI2o-2xxCiphiCIkQAZQyolmKnOm6h9b1tIo6jt2jY7NHCpaQlu5RTdTXNXCrNTyeGFlE1RhndSN1ZaDS8P9DeRuk:1oTnms:fMLp2fKGEfzuVCSX6tYldvnVOxuzaNe9JqJO7_XoGIw	2022-09-15 17:15:30.461538+00
pkkguy2hmgflg7uskoj5bzoolzj3od4n	.eJxVjMsOwiAUBf-FtSFAeXbp3m8gl3KxqAVT6Mr479qkC92emTMv4mHrs98arj5HMhJnyOl3DDDdsewk3qBcK51q6WsOdFfoQRu91IiP8-H-BWZo8_ctGTKWtA5Cuykhs0a5YTCgkuRWOclNTNEKC06IkBzjEWww6BAmjprDHm3YWq7F55K773nB1mF5ejJyrQU3VmpFrZHKqvcHMuBGIw:1oUKY6:WCObY88bVr2mSuHQCNw6JIwa-R1KzKorM5dcgMjQtCY	2022-09-17 04:14:26.138543+00
rsj6eupqj6arjuvur68lkdeqauzyl4gp	.eJxVjMsOwiAUBf-FtSG8C1269xvIvUAtasEUujL-uzbpQrdn5syLeNj67LeWVp8jGYnS5PQ7IoR7KjuJNyjXSkMtfc1Id4UetNFLjelxPty_wAxt_r7BBmYNKCEjMI4QtbGARtoA4FziRhs0TliNdkJuJXdBKxwGjJgYTLhHW2ot1-Jzyd33vKTWYXl6MnJjhOPSWUmV0Jo58f4AsllG8A:1oXPtH:dZ_rLluDknuv-mqGlk3QKE9EDMEE2NwA-EmmD6HTzTA	2022-09-25 16:33:03.474398+00
x7pyj4hazx68szfllihm51azetoh1rja	.eJxVjMsOwiAQRf-FtSGFDtPH0r3fQAaYWtSCKXRl_Hdt0oVu7zn3vISlrc52K7zaGMQoEMTpd3Tk75x2Em6Urln6nOoandwVedAiLznw43y4f4GZyvx99zgxOCZwpDuk1k39gN6HloL3mhABtDGgFYVOd6xAuaFvAk6T69Gw2aOFS4k52ZhitTUuXCotTytGhdg2umtAS1ADGNTvD9DlRuw:1oXtIo:4W0a7GCTbhdTWcn0csaKnvWeRnTiw6q3_iRfQq-h9_U	2022-09-26 23:57:22.429434+00
o8adagf0y21a63rzvtoqanxwcms9pq79	eyJ1aWQiOiIxNjAiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjQxOTk3MTAuNjY3MjUwNH0:1ocoMo:fxFviLH3fTHBY2Sind4Y_-CRwrpWeHuTYRB22zIkxf4	2022-10-10 13:41:50.688042+00
27y6vl5epcw06zt3o2paa80w2cz9be5i	.eJxVjDkOwyAURO9CHSHAbN9l-pwBfbPEZIHI4CrK3WNLLhJNM5o3M2_icO2zW1tcXA5kJJwxcvpNJ_T3WHYUbliulfpa-pInulfoQRu91BAf56P7dzBjm7c1WJGCAvDMamsiGiNlUJIPzALbTEpMSgRU3EsvuABE5lFpFClpH2A_bbG1XIvLJXfX8zO2js-XIyPXetAwMM2pVrDJfL6JRkZG:1oagZ3:jDt_SBwua30sw_mNMZ_bwflhN5ozw2d1Az7Yrxr8LDo	2022-10-04 16:57:41.663626+00
bd6hgoy5xks8awqq8xukx1084njlw8vg	.eJxVjDkOwjAUBe_iGln-8Z6SnjNY30uIgdgodirE3SFSCmjfzJsXcbj12W0trS5HMhKjyel39Bjuqewk3rBcKw219DV7uiv0oI1eakyP8-H-BWZs8_ctggrIEVT0CaRCEJrZGM3EIFiOyiMmAcx7rcSQLOeAQ5CCK5DCWzbt0ZZay7W4XHJ3PS-pdVyejoyg1CCM1UZTOUghNbw_nLRGVQ:1oVdXP:cLgMkluptM07A5kKDwQuUtlhtqnSicH4n7GITI_W0lo	2022-09-20 18:43:07.552566+00
gasc91ez7vqodxmr2q3ewx2b7nv26i8p	.eJxVjEsSwiAQBe_C2qLCJ0zI0r1noIYwGPyAFcjK8u4aKwvdvu7XT-ZwbbNbKy0uBTYyYIffzeN0pbyBcMF8LnwquS3J803hO638VALdjrv7F5ixzp9311sbQfUyCG1BKOgVaiNEVAB6CEajJ63AmOCRIiqYLEGnvJSmJxW_0Uq1ppJdyqm5lu5UG94fjo3CGGGk1YPlUutOvt6F5UUY:1oS1jd:BribaWssIIy4bA2tsUMddW0vJwq6IcWHRpWonnFUqIE	2022-09-10 19:44:49.252629+00
51bengwradx1gzclxih8ntnf3wiudoo1	.eJxVjDsOwyAQBe9CHSEvixdwmT5nQGBwTD4QGVxFuXtsyUXSzsx7b2bd2ma71rjYFNjAsCd2-qXejfeYdxVuLl8LH0tuS_J8T_hhK7-UEB_no_07mF2dt7XpoiKKZiQAUlrqQM5IVMboCYww_aRBSVLBo5w6RJCghAeAjUmBuJ_WWGsq2aacmm3pGWtzz5dlAxChJoSeOIFGIejzBRdZREs:1obOoW:uN_tuVY3oOMWczKAjLywyWpmzQZ2KwHRpsGXvYamZPg	2022-10-06 16:12:36.633261+00
qfwnifdhems8gd0zabwmgbnihn4ktz5d	.eJxVjDkOwyAUBe9CHSGDWT4u0-cMiOUTkwUig6sod4-QXCTtm3nzJtbtfbV7w83mSBYyGyCn39W7cMcyULy5cq001NK37OlQ6EEbvdSIj_Ph_gVW19bxVjwqkSCA48jilDQCAnAwyfvAtZHcCURkQk8aPDMCZRSKGcmSdCqNaMPWci02l9xtz09s3T1flixMqRm0ljBTzbTiny9QO0Zk:1obSZD:66iknjg4DJQYWUlCTGlH38TNPBYdj9gGQ6grDoNX7aY	2022-10-06 20:13:03.732694+00
z4n2erje316k62ycq7gyz3pesyewhdzx	.eJxVjMsOgjAQRf-la9MwfVCGpXu_oZk-kKoUQ8vK-O9CQqJu7zn3vNiaAuuZNOzEbImlpDnblFO1NU2xVJqelvXQtkIhqtZwaGSDYDab1jratcTF_iS-oyN_j3kn4Ub5OnM_57okx3eFH7Twyxzi43y4f4GRyri9dQwNSAmS0BjtjdDaeewiKpIdeBmNHBp0rcBNAQfDQB6CFqiBOq0Ee38AapRIOw:1oVg3X:C_xwqqdzy2cvtXoGGR-X0OWpC3pfgUf5xv2_k3uz654	2022-09-20 21:24:27.344023+00
p9wl307rmtpes13mv74icnazrjr5gkdo	.eJxVjDsOwyAQBe9CHSGbtYF1mT5nQMsvJokhMriKcvfEkhu3b2beh5kaak0lm5RTMy0toTZa3oZNvZSiQ0ClOIxCjXBhhrY2m62G1STPJqZHdhotuWfIO_EPyvfCXcltTZbvCj9o5bfiw-t6uKeDmer8r5UlcFI5QB0Eik71AE57dHIEkNLG3qFGDc4PGgDiQD5qhSp0fiARPfv-APkLRfs:1oTyZO:T5BvKyvCXbekZw39DKIkUpS5qRGh6xz9_eL7ntOb-o8	2022-09-16 04:46:18.158661+00
7x8ars957a34zdmevseknbc8zizkxjfd	.eJxVjssOwiAURP-FtSHl0gulS_d-A7k8tKgFU-jK-O9a04Vu55yZzJNZWttk1xoXmwIbmenY4Td05G8xbyRcKV8K9yW3JTm-KXynlZ9KiPfj7v4NTFSnTxugJ4pd6J0eoteILhgSqLXQXqKRKmp0aJzrHAEEKXw3KO9lj2clUX9f1VhrKtmmnJptaY610fywbBRKgQAzQM8FoNBgXm98fUX1:1oU7tY:ZSRKs1DEov4mJ5_g0CBaYo3TMIF4ELXsp80u9r-4AMw	2022-09-16 14:43:44.184511+00
njrhqv97lh4fpkk7l5l08cycx8mi5sh5	.eJxVjDkOwjAUBe_iGlnel5T0nMH68XeIgdgodirE3SFSCmjfzJsXCbD1OWwtrSEjGYjx5PQ7jhDvqewEb1CulcZa-ppHuiv0oI1eKqbH-XD_AjO0-fvmMiq00jGPEhMDO7mEzjsOUYKxXESjeJSKOWdBaW-E1ijBSTXhNDKxR1tqLdcScsk99Lyk1mF5BjJwYwSzWghGreKGefn-AGzaRdI:1oTtgr:S5AW_QVzWZ_oLfEXSuwPvTOdohc1sZfV2EwBt0RNgFU	2022-09-15 23:33:41.374398+00
qc1tsfww3j8w3hcxa7j2ndy52b2l2acs	.eJxVjDsOwjAQBe_iGlnsWv6Ekp4zWLteQ8zHQbFTIe5OIlFA-2bevFSkpY9xaXmORdRBObX73ZjSLdcNyJXqZdJpqn0urDdFf2nTp0ny_fh1_wIjtXF9AwCTsCVkBj4n9FbQODAmAGBK7hySXSUgFuNNcM5lGYhtQhQZ_BZtubUy1Vhq6bGXR26dHs-oDuAcgsGAoNH7we7t-wNpY0Y2:1oU8ft:QqzZQoym3KKswUfbHJxg_tKXwaTlOglemU0XIk54WMA	2022-09-16 15:33:41.309828+00
g9rais4314042ee2npbe4bv2utgzqpz4	eyJ1aWQiOiI1NSIsIl9zZXNzaW9uX2luaXRfdGltZXN0YW1wXyI6MTY2MTk3ODQ2MS41MzIyNTg1fQ:1oTUWD:Uj1thdhkfb983liLk6MudHMKAKbyE9tEcNHjVAVQjBE	2022-09-14 20:41:01.579024+00
04us7nf9m7np27rjzrhtxcuaecpcg9rk	.eJxVjMEOwiAQBf-FsyEsLQv06N1vIEsBi1pqCj0Z_12b9KDXN_PmxRxtbXJbjavLgQ3MstPv5mm8x7KDcKNyXfi4lLZmz3eFH7TyyxLi43y4f4GJ6vR9R5MQklBowesYVKcpjB6F1QQxGIFdTwFUog7AkJRKQ68tafKWCHTaozXWmpficsnNtTzH2mh-OjYAYi9QCiM59hqNUu8PZhpGMA:1ocEZ0:PwyYDVEMiRn5duH6zudY-n-bVdGT22PZyRMhzHebnjU	2022-10-08 23:28:02.653022+00
z216t4wy57lm6zw5d5gnh9anlbah10ub	.eJxVjDkOwyAURO9CHSHz2YzL9DkD-mwxWSAyuIpy99iSi2TKmTfvTSyufbZri4vNgUxES3L6LR36eyz7Em5YrpX6WvqSHd0ReqyNXmqIj_PB_glmbPP23kjhYgheInoDyiNAcCkJw9FsCZEbnhh4LZNLkiVtBuHDIAUfQUu-S1tsLddic8nd9vyMrePzZcnElIJBc8UMBS5BjePnC_8VRzM:1oTtH1:ph6L0EmP_dB5RxGr57-xAdLrSzkyOoXVzvoJfdSsfQE	2022-09-15 23:06:59.259864+00
yya8hujjr5re3lelpyezrvizpmhrzpy5	eyJ1aWQiOiIzNjEiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjQyNDM5NTkuMDgxNTQyNX0:1oczsV:GfSiH7iJMi47Q1fE-xKJJAtLq-Y3iNydSiN69ASUgVc	2022-10-11 01:59:19.106464+00
fq2rtk4l1o1uyovi818qcr3tkbuaoia7	.eJxVjDsOwyAQBe9CHaEF8zEu0-cMaDHrmHwgMriKcvfYkoukfTNv3szj2ma_Vlp8imxgQvTs9LsGHO-UdxRvmK-FjyW3JQW-K_yglV9KpMf5cP8CM9Z5eweEUQjSBmOcrHWTgACgHEnoZCcQA-iobB8UkJiMdqEbIVqprYpuc_dopVpTyT7l1HxLT6oNny_PBmGM1E4qbbjUYKVVny-xAkY-:1oW4FM:pV4ddjflr6fqGOLK1VZo0RvuC12nEb9ki3IoXiYMexA	2022-09-21 23:14:16.306688+00
0pwyg7r56t19n2nwc4ayl2fd9qcphnf0	.eJxVjEEOwiAURO_C2pAPbSl06d4zEOB_LGqpKXRlvLtt0kTdTWbevBdbE7KBiU6yE7OFSklztimnamuaqFQ3PS0bhFKNUVq3PYctQtdutFvraNdCi_11fFvvwp3yPuHN5evMw5zrkjzfEX6shV9mpMf5YP8Eoyvj9o4dBESD0CoNrdsSSomInVAEIHpNjWzIGO91DIBRCh_BQxQmSNGTZu8P_6lJ6A:1obqJD:0u3QBH0rgVlSjcxWsvrfem4TSVuivU-H2RxJm_HlHLY	2022-10-07 21:34:07.078026+00
p4ky1v7hh58sxgu6ah1ewbf3s2zkx6dj	.eJxVjMsOwiAQRf-FtSGlMMB06d5vIDxGiw8wha6M_65NutDtPeeeF3N-7bNbGy0uJzYxZdnhdww-3qhsJF19uVQea-lLDnxT-E4bP9VE9-Pu_gVm3-bvewwGRtIWLcmgFckBjLImpZEERVQS8awhCSQlYooyojUgiQQYSHIYtmij1nItLpfcXc8Pat0_no5NQmthxYAguNGIBuH9AWIuRdk:1oSmwR:G3BzurwkQQ5hqhQYcf-6EE96kfWGptn9KQxgWB9-OtE	2022-09-12 22:09:11.855824+00
vjsy6ta1sbvzxyeqnahtbojrzk0rs8nb	.eJxVjssOwiAURP-FtSHALa8u3fsN5PLQohZMoSvjv2tNF7qdc2YyT-Jw7ZNbW1pcjmQklpHDb-gx3FLZSLxiuVQaaulL9nRT6E4bPdWY7sfd_RuYsE2fthADYmJx8NqkoKX00SKXWnMdQFpQSUsvrffMoxAReGBGhQCDPCuQ-vuqpdZyLS6X3F3Pc2od54cjI1cKjDKMKwqgQajXGzc0RcY:1obQ4u:6RPv5Wd1XPAholcBG-HCzDWXJMKB0rW58N-13tnvuFI	2022-10-06 17:33:36.34393+00
4g9alht0t1m5li86a5vpzry0p1oih1c6	.eJxVjDsOwyAQRO9CHSHAZvG6TJ8zIDDrmHwgMriKcvcYyUXSjea9mTezbquL3QqtNgY2Mik6dvptvZvulBoKN5eumU851TV63hR-0MIvOdDjfLh_B4sry742PXZAOFNPiEIhEgQ9gUSPOyEHNMwS9jyH3kucpCYhUCO4xoJqp4VKiTnZmGK1NT6pVPd8WTZKANUrozvJjRrAoPl8AaRHRnM:1oVNLH:f5DBQCVfBKisSMJCW3kWnhg9ZmL3uj1b2OcScXjP0mA	2022-09-20 01:25:31.757992+00
lljo43x4br096t1b427ta5qd7ge9nk2l	.eJxVjDkOwyAUBe9CHSEWm8Vl-pwBfeA7JgtEBldR7h4juUiaV8wbzZs42NritoqrS5FMhDNLTr_UQ7hj7le8Qb4WGkpua_K0K_R4K72UiI_z4f4FFqhLD4uRGSFRDxCFCRJZUAhmUDsOzMvZBm0k2tkbbjiykUWtNZfCKgFyHnq0Yq2pZJdyaq6lJ9YGz5cjE1dKKCulVZTty5n5fAF3RkWq:1oWUVQ:rC8xh0lrrBMDRvq01scRhiATzIm2zaRCxD9B7Uv2GAY	2022-09-23 03:16:36.050486+00
ngnlz7a86ty44q0kpkldiatfsko695kl	.eJxVjDsOAiEUAO9CbQg8Potb2nsG8vi5-AGzsJXx7kqyhbYzk3kRi1tf7NbianMgM-GSkcMvdehvsQwVrlgulfpa-podHQndbaPnGuL9tLd_gwXbMsbAJhDCBJM8SGDOKccnyQElJP0VUaBhwDykqHHSIfEEQXhuXMR0hDFtsbVci80ld9vzI7aOj6clM9catNFCKQqCKcnE-wOGj0Y6:1oWSfr:3s9_oP-IkU4ShhOEckwHFEhFDOjbq46F6rmVev49U7M	2022-09-23 01:19:15.263628+00
s5gk8fi2l4fmyoisyc2syquvgrjh5x1n	.eJxVjDkOwjAQRe_iGlkeL5OlpOcM1ngJMRAbxU6FuDtESgHtf--_F7O0tdluNa42BTayvmOn39GRv8e8k3CjfC3cl9zW5Piu8INWfikhPs6H-xeYqc7ft_boSRFgcBEMEuhODCH0kwA_KEJHFDUI5zrUMg5KAUlvtEIw2g1i2qM11ppKtimnZltaYm20PC0bAdEI0_USuZE9SJDvD5wLRkE:1ogPbO:6FRvT0nmGonKIE2GZR3_jPpIKUlemQABMjX-ZNF_y7s	2022-10-20 12:03:46.569254+00
wny5kopd5u48eugs8xn87zrp9u9veq9n	.eJxVjMsOwiAURP-FtSEU6YXbpXu_gfC4tagFU-jK-O-2SRe6mmTmzHkz69Y22bXSYlNkA-skO_2W3oUH5X2Jd5dvhYeS25I83xF-rJVfS6Tn5WD_BJOr0_Z2Al2QqCOg8yjOWiPGPhJ1ygs_CkNACBrorEUPIqotSJEZIahoBO7SSrWmkm3KqdmWZqrNzS_Lhg5AgtGgNDdC9qjk5wuCB0Yq:1oWT0h:qtyiK1V1PYqjcxACheGX_uo-xq0d27JLpY47ElHMLf0	2022-09-23 01:40:47.854125+00
1th8ier424b1yu0a1ff2kd4k3bbxxwhk	.eJxVjMsOwiAQRf-FtSFlSofSpXu_gQwvi1owha6M_65NutDtPeeeFzO0tdlsNawmeTYxLdjpd7Tk7iHvxN8oXwt3Jbc1Wb4r_KCVX4oPj_Ph_gVmqvP33SmnqI8RUcvoABU4qaUWolME4OOovbdWI9KgAkAIiK7XPcqOpB9Ut0drqDWVbFJOzbS0hNpoeRo2CUQQoMdB8R4AxPj-ACooRa8:1oU7u5:WuLK93oTwZ_GXWcqlnsLjhUtBFcxHbuBNI6ofIWr-Hs	2022-09-16 14:44:17.361901+00
ezh1m8w1tgxevf5uwl6lmt1f8b8fx018	.eJxVjDsOwyAQBe9CHSEvYFhcps8ZEJh1TD4QGVxFuXtsyUXSzsx7b-b82ma3Vlpcimxg0AM7_dLgxzvlXcWbz9fCx5LbkgLfE37Yyi8l0uN8tH8Hs6_ztkZtOqNCnBRYQZFkEGAQQyABQVg5TabrNmqlJETZ94BowYBSaJRGuZ9WqjWV7FJOzbX0pNr88-XYAFoLra3qkINGLYz5fAFlzEU6:1oWOGW:MLPBQiAYUxefSXymuKV2QckxhCLFDp12vWbJk8juS-M	2022-09-22 20:36:48.217777+00
y7lco0vhezv5nvwbolue8fvecl1ibcbw	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjMwOTkzNjUuOTU3MjU1MX0:1oYC7K:-j2qMgA6B1NsgVwcPyv7w-_VrIwX7I_uLKEZSEuNMpo	2022-09-27 20:02:46.251626+00
2mevlpsuunbpsaf8tcd0lxc6i16gzlwh	.eJxVjMsOwiAQRf-FtSGFtjPg0r3fQGZ4WHyAKbgy_rs2caHbe849T-Ho0Rf3aHF1OYi9UGL3uzH5SywbCGcqpyp9LX3NLDdFfmmTxxri9fB1_wILteXzTpo9AyXWygwKDY4QFVNCrwz7AF57NMwT2hETTYSzBatHtGkIMOKwRVtsLdficsnd9XyLrdPt7sReAWhrLNpZop4VArzee79GTw:1oXjc3:LLulSt_R-c1vmzF7GsKNLBOo6Fb8FXKJv6EWYNIoqhU	2022-09-26 13:36:35.766269+00
zsk2b9vxu40tuids910c2iikxgic07uz	.eJxVjMsOwiAQRf-FtSFAKQ-X7v0GMjMMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJUxZnobUSp98VgR7cdpTv0G6zpLmty4RyV-RBu7zOmZ-Xw_07qNDrtzYcdWR2pIL3hGMOVlmIBgZriqUCdiSPnth5rygYsEYNChwxEobixPsDLBk4kg:1oahjY:TB9RuZs3evrJ_A0WrCJJ_g_12nglKrBaJI5DGYKHBy0	2022-10-04 18:12:36.453886+00
h3qjvthyo9qejxx57bzbeytevbfy6asx	.eJxVjEsOwiAUAO_C2hB4pUC7dO8ZyONnUQum0JXx7krShW5nJvMiBve2mL2GzSRPZsIFI6dfatHdQ-7K3zBfC3Ulty1Z2hN62EovxYfH-Wj_BgvWpY-BKRgG7XV0IIBZO1quBAcUEOVXhAE1A-YgBolK-sgj-MFxbQPGCfq0hlpTySbl1ExLa6gN16chM5cS5MgVG6mQCsQk3x-GfkZG:1oWJez:MPiOjwhzNh6RABCU0XeDQkFzbA8YuqIdxrBBIZJhY2E	2022-09-22 15:41:45.541033+00
yt3kwb2rcwxj4nb4irz2h5c4dqkezz2o	.eJxVjcsOwiAQRf-FtSGlUh5duvcbyNAZLGrBFLoy_rsl6UK3556c-2YOtjq7rdDqIrKRCSnY6Zd6mB6U2oR3SLfMp5zqGj1vCj_Wwq8Z6Xk53L_ADGVuYSP1IPRgsddnCD4QnAcdFKDxgDbogN6iHRChg16RER15bamXOxWWWrRQKTEnF1OsrsaFSoXl5dgolOrVXreCa7n_GPX5AvsHR34:1oWJgN:kCxg-TXkuB_TO2ipa2Z4Mllm6RlupafivyX01kCd3xE	2022-09-22 15:43:11.812384+00
59dtiafxgtu2j9l6ufb6hya8lagvb1ps	.eJxVjDkOwjAQRe_iGlle4iUp6TmDNc54iFkcFDsV4u4kUgpo_3vvv1mAtU1hrWkJGdnApNTs9LtGGO-p7AhvUK4zH-fSlhz5rvCDVn6ZMT3Oh_t3MEGdtjo5GMn2DiIpVMqjpOidUGQ8CQWjkIZiFw12QlvqvBIQEQnJavR95_fTmmrNcwm55BZafqba4PkKbJDWKuN0bxTXzm6x-3wB_9VHWw:1oVzQu:a_SlnzGOMIXWPd_6K0V0MLYYEFaeFcomqJ0rPLy8tW4	2022-09-21 18:05:52.46555+00
nhxx6bwa1do310hp5ren09th2trmgyov	.eJxVjEEOwiAQRe_C2pBChynt0r1nIANMLWqpKXRlvLs26UK3_73_XsLRVie3FV5dimIQCOL0O3oKd847iTfK10WGJdc1ebkr8qBFXpbIj_Ph_gUmKtP3bXFk8EzgSXdIrR9tjyHElmIImhABtDGgFcVOd6xA-d42EcfRWzRs9mjhUtKSXcqpuppmLpXmpxODQtTYmM40EsEoC_b9AdFURvg:1oW7hm:N1adlMhLxDvtdgXtrroHqz-Mepi6mvYL9zyeNy321Jk	2022-09-22 02:55:50.767795+00
w7mq75gj6f640n55k2j709oubodsa8x8	e30:1oaXi9:H8TS-Xrl0mVeeorwXSwJbKWGtn9tstdf4wspKBLQ9eI	2022-10-04 07:30:29.270742+00
nvlbkhlorniht9pi671bueu5my140x9v	.eJxVjMsOwiAUBf-FtSHldYEu3fsN5PKoRS2YQlfGf9cmXej2zJx5EYdbn93W0upyJCMRYMnpd_UY7qnsKN6wXCsNtfQ1e7or9KCNXmpMj_Ph_gVmbPP3zRlo6wdjUeqouGU4eS0RkmB64kxEQPSSD4GD4koHZMZzZoOPYCzEtEdbai3X4nLJ3fW8pNZxeToyMgDJhOKDoVYAgIX3B5ZmRj8:1ocXaS:Qlm6vSbI8f3wOY1saQpodcHONTvaGvNFFIQBPawIBjk	2022-10-09 19:46:48.953365+00
m7iu3qcqx1kr02gzvc238o5wilq3c5cz	.eJxVjDsOwjAQBe_iGlmxE3bjlPScwdr1h5iPjWKnQtwdIqWA9s28eQlLa5vtWsNikxeTUOLwuzG5W8gb8FfKlyJdyW1JLDdF7rTKc_Hhftrdv8BMdf6-o2bHQJG1GjuFI_YQFFNEp0Z2Hpx2ODIPaHqMNBAeDRjdo4mdhx67LVpDralkm3JqtqVHqI0eTysmBWCMVoNBaQaloYP3B3tYRkE:1p0ori:7UzD4KlgaaJvsi7VlPv1GXgmG9Z4ahNJF6lOrc07WuQ	2022-12-15 19:04:58.208241+00
oeepzrhggns2e9xv5r2bthtyh008qpxf	.eJxVjDsOwjAQRO_iGlmbNf6lpOcMltdeiPk4KDYV4u4QKQVMOfPmvUSIzz6FZ-MllCxG4ZTY_ZYU05XruuRLrOdZprn2pZBcEbmtTR7nzLfDxv4Jptim75uds0jWsvUpMg4ejCEkr13SGXMyoAi09pkc4gn3eRiAFLN3wIrJrdLGrZW5hlJLD73cufV4fwQxDsYgOFBgJWr4Bt8fgd1GHw:1oTv0t:L90fK2ki0JJR3ibDp6u4iPxsR6HmIdlSCeL33TEpDl0	2022-09-16 00:58:27.286014+00
oge8ht1wqgpcuen3tcgvcwrm3j4ye0ys	.eJxVjEEOwiAURO_C2hAo8IEu3XsG8gtfi1pqCl0Z726bdKHLmXnz3izg2sawVlpCTqxn2rPTbzlgfFDZl3THcpt5nEtb8sB3hB9r5Zc50fN8sH-CEeu4e53tnEUkBKU1CidVAmFBIAgwOl6dQG-iick6u4XORxrQoVNCEhnYpZVqzXMJueQWWp6oNpxegfUSQEmvAYBrtV1l9_kCW3FF2A:1oYauQ:Cjjn7Q-zlClPt-iy3TZul39Ax-MD3yku5p7np0KsNcs	2022-09-28 22:31:06.467291+00
ed45nybd4opsckgb4u1r13u35xf7agnq	.eJxVjDkOwjAQRe_iGllekrEnJT1nsMZLiFkcFDsV4u4kUgpo_3v_vZmjtU1urWlxObKBSaHY6Xf1FO6p7CjeqFxnHubSluz5rvCDVn6ZY3qcD_cvMFGdtndnMfYw-gDeKm800piM6pQQAIhEgBb1mDAEhV3cuhgIpNEyGOuTFnu0plrzXFwuubmWn6k2er4cGyTAlupA9FyCACM_X3hERmo:1oVMa5:nMaNRs0IKt0MnetIoFrvRuh7npTk6CMghjgiYiE9nYs	2022-09-20 00:36:45.192657+00
yty0vcse86fcsuw27qkdgvbeunmty15g	.eJxVjDsOwyAQBe9CHSF-XrDL9DkDWsMSkw-ODK6i3D1CcpG0b-bNm3nc2-L3SpvPkU0MLDv9jjOGO5VO4g3LdeVhLW3LM-8KP2jllzXS43y4f4EF69LfUjqljCUcZZpFVGI0DmJSmrQEguRQmGAwQsA0O-OGEFBAEmQ1gUk9WqnWvBafS26-5SfVhs-XZ5MEUAJGZwU32kg72M8XoPRGxQ:1oTsIY:jw6e8Itmk_GHIe1lt0zH_0oEO0bzIRQ-rGGd4mMIPrk	2022-09-15 22:04:30.444418+00
tsa1sh7m0dkyuf9svnl8siswmghw47dq	.eJxVjMsOwiAQRf-FtSFAKQ-X7v0GMjMMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJUxZnobUSp98VgR7cdpTv0G6zpLmty4RyV-RBu7zOmZ-Xw_07qNDrtzYcdWR2pIL3hGMOVlmIBgZriqUCdiSPnth5rygYsEYNChwxEobixPsDLBk4kg:1oahja:SOqpU5_2GQP1FD0MUcWlzogscLl4zVMgG5LQT96WUEw	2022-10-04 18:12:38.556763+00
ghynwcxny3g6oeb8mi3h28appw5otwhw	eyJ1aWQiOiIzNzUiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjM4NTczODcuODU2NzU2fQ:1obNJT:ILAMXqoB6BrkhovybVsqsyfN5b1Pa8VqTn2wFYsnuTU	2022-10-06 14:36:27.884908+00
q9nou3hblhromj89og7vwqugn8lahw4d	.eJxVjMsOwiAUBf-FtSE8LhS6dO83kAsFi1owha6M_65Nuun2zMz5ENdia7kWl0vuruclto7L25GRay20EYwZypTk1qoLcbj12W0tri5PZCRcSnJaPYZnLDuaHljulYZa-po93RV60EZvdYqv6-GeDmZs879OFi0XPAkzWTUwFAkQNCie5OBTZBIwcCWFMRYC8wqY1t5D8swIqTmQ7w9QsEWU:1oWRXk:3Loy6Y574Cif8GGDXIfVvpuW3PR9GF1vqHdTxLb8ndM	2022-09-23 00:06:48.072988+00
04c4ynycq9jyk5h8cbin9ta0dgjocny3	.eJxVjMsOwiAQRf-FtSHQ0mHo0r3fQKYwWnyAKXRl_Hdt0oUu7z0n5yU8rW32a-XFpyhGYZw4_J4ThRvnjcQr5UuRoeS2pEluitxplacS-X7c3b_ATHXeumg7tERM0BtDCnUfQVlQBAoGE86oyA1hCNGi_Y7OBZ4ICXulmQfYopVrTSX7lFPzLT24Nno8vRg1gEYN6LQEZwCMfX8AW9hF7A:1oSoUF:0nqEmKa0quF87IEhFPc_murORO4wz-fwts6EX1SSRL0	2022-09-12 23:48:11.760369+00
dojq2taziqk7y5cn3qqcqfun78y36e61	.eJxVjDsOwjAQBe_iGlnZ2N51UtJzBsufhZiPg2KnQtwdIqWA9s28eQnn1za5tfLichKjIBCH3zH4eOOykXT15TLLOJe25CA3Re60ytOc-H7c3b_A5Ov0fTOYYQh6UDoa0oiKgToLKfqeOSRKiMZghxrPygRrdcBuAB-tRjDEtEUr15rn4nLJzbX84Nr84-nECIg9EUKnJIHqbW_fH0D0RVs:1oWq1P:mKoGjcILPZ3EZGxIRPqtdXwfi5L2cTDHEXwWGk9GNbI	2022-09-24 02:15:03.77723+00
shxvhjnawdp812gbr83xaydxajxdr3lv	.eJxVjMsOwiAQRf-FtSHlNXS6dO83EChTi1owha6M_65NutDtPeeeF3N-a7PbKq0uRTYwoQw7_a7Bj3fKO4o3n6-FjyW3NQW-K_yglV9KpMf5cP8Cs6_z900QpIEJetBTNwXstCXVRautlwFRou5BjmA8eASjiFRUiEoo2wcggj1aqdZUsks5NdfSQrX55enYIAAkaNTWciGFsfj-ADvaRaE:1oWJ53:0VWFMg3y1CkMTHdI3ZSvj_O22nqQt7yCdLazdLpa0vc	2022-09-22 15:04:37.161334+00
ahcca3njvnharehz70cszeu5e7m71wmc	.eJxVjDsOwyAQBe9CHSHAGLDL9DkDWrxsTD4QGVxFuXtsyUXSvpk3b-ZhbbNfa1x8QjYyKTt2-l0DTPeYd4Q3yNfCp5LbkgLfFX7Qyi8F4-N8uH-BGeq8vaOFicxgIZBCpRxKCs4KRb0joWASsqegQ49adIa0UwICIiGZDt2g3R6tsdZUsk85Nd_SM9YGz5dnozRGGWMH1_PODltKf74APUdd:1oWNtZ:Id6Gcrw2JRPWINgSCKzax7mjyijQ0rpv70U9Tmt_6wA	2022-09-22 20:13:05.43311+00
pwwbsgzn7fuc0wkruixalhey5vqiese1	.eJxVjDsOwyAQRO9CHSHAgI3L9DkDWth1TD4QGVxFuXtsyUVSzsyb92Ye1jb7tdLiE7KRSeXY6bcNEO-U9wlvkK-Fx5LbkgLfEX6slV8K0uN8sH-CGeq8vScXo9PgyOgw6Ehdj8IiGNqCQWFk6BD6TgpNg4QJtZUxAGIv3YRK611aqdZUsk85Nd_Sk2qD58uzUVqrrOikNnwwxgqnPl__lEdO:1oW71l:nJcKh6RdpD4wd0z3eTQTp4Ot1j0o_1HfOvJrqzyprlc	2022-09-22 02:12:25.910874+00
kswrk0djgw53p11pcg79n1syrujc2f4h	.eJxVjDsOwjAQBe_iGlnZ-J-SnjNYa3tDDMRBsVMh7g6RUkD7Zt68mMetTX6rtPqc2MDAADv9rgHjncqO0g3LdeFxKW3Nge8KP2jllyXR43y4f4EJ6_R9WxkgOjcCWiVMHANgj2RDtEYhaAnSmjEoB7qLaKRCqYHIknEoUkK1RyvVmpfic8nNtzxTbTg_PRtAawGdtV3PlXTSCPH-AMuyRso:1oYEZW:tY0MocBA2dLtR5voTbOHc7amsOlcrVlgMyMH9ukSrms	2022-09-27 22:40:02.612616+00
1wx4jat9vvm3u34h99jvg9om4aqutcix	.eJxVjs0OwiAQhN-FsyFs2VLo0bvPQLawtfhDTaEn47trTQ96ne-byTyFp7VOfi28-BRFLxyKw284ULhy3ki8UD7PMsy5LmmQmyJ3WuRpjnw77u7fwERl-rQRVOQQFaFGiC4wAzO6VqHmrmWIBjpnFY6DGTsmagerW2I9YogA9vuqcClpzj7lVH1Ndy6V7g8vejBGY9MZUNJZ1LZxrzeyQkbH:1oZZVa:SUQiIMM5r0kHM1JvLBUKKM8tuf4PbSHjuM6nRx88D5E	2022-10-01 15:13:30.985877+00
923pslhwfm6bcvbxax24mpjsb2zpoiqz	.eJxVjksOAiEQRO_C2pBpYGhx6d4zkAZaB3XADLgy3t1PZqHbelUv9RCe7n3y98aLz0nshHNi8xsGihcuH5LOVE5Vxlr6koP8VORKmzzUxNf92v0TTNSm9zoMo1YER9QOrLWEPAYeHaFJaLdRmxTABGStQMWQyKAlctpF4OQG9X3VuLVci88ld9_zzK3TfPNi9zYqMwCMg7SICIDPF4EERjA:1oVGTm:niCwDHRb0StkDCabanmNyI0voBGZVm9kjVbngcTfeOI	2022-09-19 18:05:50.99879+00
5ntwh86oc5w2ms13tay76h5cwo3jbrnt	.eJxVjMsOwiAUBf-FtSFcKBS6dO83kMvLohZMoSvjv2uTLnR7Zs68iMWtz3ZrcbU5kIkAcHL6XR36eyw7Cjcs10p9LX3Nju4KPWijlxri43y4f4EZ2_x9i4TR4yCHIKNjDEC4ZJiEwSWpOMOgWEJjkhY-CBXEoE0UGozgEpSXao-22FquxeaSu-15ia3j8rRkAqW4HEEKTgFGzbV-fwCxY0Yo:1oVyns:VVLeUbvImSkOzT27PI2wx1y3nOmpkUEQM0vLfyqNVHA	2022-09-21 17:25:32.185502+00
p8q9b7b2zh61k5gnszynouqfk4xu7l7z	.eJxVjEEOwiAURO_C2hBAoNCle89APvCxqAVT6Mp4d9ukC13OzJv3Jg7WPrm14eJyJCPhXJPTb-shPLDsU7xDuVUaaulL9nRH6LE2eq0Rn5eD_RNM0KbtLZlA0NZ6zjxASEYkMEqpIXEewcao7RZZlCJZFBrZRnCpzzYFDEafd2nD1nItLpfcXc8ztg7zy5GRay2UUWww1JpBKvX5AoG_RoA:1oW2KN:ii8LiakkP8G8FCCllQNraRCVvmBQPdHqNDpfSmpw0IE	2022-09-21 21:11:19.023715+00
la6b34iaiegh0l3st6pyqgmsivkebwzs	.eJxVjDsOwjAQBe_iGll21utPSnrOYK0_IgbioNipEHeHSCmgfTNvXszT1ie_tbz6ktjIpEJ2-l0DxXuuO0o3qteFx6X2tQS-K_ygjV-WlB_nw_0LTNSm7zsaCTJhslEPLkubrQpknQhEaAIpFZRGIIUkQErUDsgYoaKLIopszR5tubWyVF9q6b6XObdO89OzUWo9aANGIAdABHh_AFDzRcE:1oWPNp:xDvVoYUDSED0w7-MkPc0LNnPtMLCSE3Fw8g20YMxhnM	2022-09-22 21:48:25.372882+00
1oukmok6up5yyjgsy2833ejlc8i1dcwa	.eJxVjDsOwyAQBe9CHaHl5wWX6XMGtDY4JokhMriKcvfEkhu3b2beh_kaa00l-5RT8y0tsTZa3p71ouskWoOguUVpTXdhnrY2-63G1afAeibAstM60PiMeUfhQfle-FhyW9PAd4UftPJbCfF1PdzTwUx1_tfgwIkRLClSSsWAQGqSEzpDykYyWmkbBJpBkgABk-soIGo0JKUENbLvDyKhRWE:1oWsWG:Ut5IVd3mp8whD7BJJBIPeH2cVQX53PILWUqOCFdorZ0	2022-09-24 04:55:04.888034+00
r14sb0dw4fkd202ut2nase0uoteu3y6i	.eJxVjDkOwyAUBe9CHSGz-PNxmT5nQKwxWSAyuIpy9wjJRdLOzHtvYuzeV7O3uJkcyELYDOT0S53191iGCjdbrpX6WvqWHR0JPWyjlxri43y0fwerbetYe-BTwolrlN4igGBBJzGliEo4KUBY6_XsmAwpOCf5YJFJQOUwoBqnLbaWazG55G56fsbW7fNlyMIAOGiYgdNZMcbx8wVsjEZD:1oWVKU:AQCkI5hyYIAAbRicm5afdJI6WEMK3y6ZzKxJpTksygg	2022-09-23 04:09:22.57512+00
ojpezzo5dukios302n8w1lh9wxafi1rt	.eJxVjMsOwiAQRf-FtSFQmYF26d5vIDwGiw8wha6M_65NutDtPeeeF7Nu7bNdGy02RzYxKSQ7_K7ehRuVDcWrK5fKQy19yZ5vCt9p4-ca6X7a3b_A7Nr8fZPBqEgfUxA0eI3oScgxJHDJB1JB6ZQw-YgGnCKMoNHrMagBDIByuEUbtZZrsbnkbnt-UOvu8bRskoiDkmDMyCVoEAjvDxF3R3I:1oVKJV:KWx7q1jdfymeFlZc97CPMuBKA62IEFgx8ArspwYemYY	2022-09-19 22:11:29.477245+00
bwyajvi4uaspcqme02qs9meiiv39ze0b	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjI5MjAxMjUuODE2ODcyNH0:1oXRUM:gT2U9tW4EDUWtBemE5MntPsdmwqV8sLw227A-l27OkM	2022-09-25 18:15:26.032209+00
g2fcw4974ivix5uubu74647dk8aslmh1	.eJxVjDsOwyAQRO9CHaFdjD-4TJ8zIGCXmHxwZHAV5e6xJRdJN5p5897CurVOdi282ERiFNgqcfptvQt3zvtEN5evswxzrkvyckfksRZ5mYkf54P9E0yuTNs7thCIDIHuBtBuS6QUEbXYMQD2AzeqYWO8H2IAigp9BA8RTVDY87BLC5eS5mxTTtXW9ORS3fNlxYhd1wIYjY0EDQaV-nwB6R9HAw:1ogD0X:qNyKl1mQ9skFCm92AUylTQVo3U0Q5PZ45udSMpa-UfE	2022-10-19 22:36:53.066418+00
axx6thbzd609ynxqdma8al96q6rhy344	eyJ1aWQiOiIzNjkiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjQyOTQzODQuMTgwMDk1N30:1odCzo:J5UZ14vsNsLgnrjZuMtaIcaRyE7MwWznsx4OaNP6Xdg	2022-10-11 15:59:44.180702+00
m4ejvq32ftdx24amywkfbqprganx5mfb	.eJxVjDsOwyAQRO9CHSGDF2xcps8Z0ALrmHwgMriKcvcYyUVSzsyb92YWt7rYrdBqY2ATA9Gz02_r0N8ptSncMF0z9znVNTreEH6shV9yoMf5YP8EC5alvaVTwqMIQgF45bQMbtA09JJMP2sz79mMIwH6gQahNQYntOl8MEL62TRpoVJiTjamWG2NTyoVny_Lph0HpSR0wEcDRiv5-QLdh0cF:1oeI7Q:F_qGox2kxpgmpkAXBJhYaSgG1stNqG5XasZMf3BHtB0	2022-10-14 15:40:04.918045+00
2rz9a0c0v9jkmuq5n6tdjizte32exnqm	.eJxVjMsOwiAUBf-FtSHA5dmle7-BXApY1FJT6Mr479qkC92emTMv4nHrk99aWn2JZCAcgJx-14DjPdUdxRvW60LHpfa1BLor9KCNXpaYHufD_QtM2KbvOzt0XPAsbHTKMBRZotRS8Qwm5MRA4sgVCGudHFlQkmkdgsyBWQGayz3aUmtlqb7U0n0vc2od56cnA9daGHDWAAXrtLXm_QF3YkWy:1oWgb3:CzRnL_7_pZ81EpPhseUr6kMnW58IgXtDKqzkT2AW6uw	2022-09-23 16:11:13.404766+00
yelo5pyyj461uh5wjyi9gyrmtwwwa687	eyJ1aWQiOiIxNDUifQ:1oWNr6:GQNBl2g5B1m__JlXlEkY7OOPGJwAWgzzXC0uXgTzBKg	2022-09-22 20:10:32.316548+00
iselgpjrn210ka563zbuc4sfs46axc3s	.eJxVjEEOwiAQRe_C2hCGwgAu3XsGwjBUqoYmpV0Z765NutDtf-_9l4hpW2vcelnixOIsAIw4_a6U8qO0HfE9tdss89zWZSK5K_KgXV5nLs_L4f4d1NTrtzbF2DAG8hAUYAYMhKAdamQetHWGlEXOwfiBqaiknUH0kHKxenSkxPsD_443UA:1oWhQd:4l8mzE9WhdoKj1RtFbKM5IGDLy8M4fWrHkBbmmzOTOU	2022-09-23 17:04:31.978717+00
4e9581ifjoa058un9qr6ws21354214da	.eJxVjjsOwyAQRO9CHSEwZjEu0-cMCMxuTD4QGVxFuXtsyUXSzpt5mjdzfm2zWysuLkU2MgmGnX7T4Kc75h3Fm8_XwqeS25IC3yv8oJVfSsTH-ej-CWZf523tpbSRVDSgFFmyEkBgkEYNpA1IJGOpj2RAGJy0FdiTjUhgoFMBtN-lFWtNJbuUU3MtPbE2_3w5Nm4ytT0Xw8A7qaXtPl917UZg:1oYTjc:dAAZ2nNMMUu6rkELpPDB4r2XSplDtPEbzsNZSJutt8E	2022-09-28 14:51:28.231961+00
ysup5iu51f8yw6q2y4prfbn0brqi4okp	.eJxVjDkOwyAUBe9CHSEwu8v0OQP6hk9MFogMrqLcPbbkImln5r038bD22a8NF58jGYmwjJx-6QThjmVX8QblWmmopS95ontCD9vopUZ8nI_272CGNm9ra4IKEiGBBjBsSDYOnCUQ1grNk8QgDedsQOVkTCFZJR1G5TYYgE24nzZsLdfic8nd9_zE1uH58mTkWgtnhNCKOmM4c-bzBeDXRwU:1obrU5:BZ6e_1uu1hvwka_iZcnlUBaVQ8Gl_FAGo2fe7vof-J0	2022-10-07 22:49:25.999876+00
dt76elutvw73a2pakx7bt5dpup8wvqpu	.eJxVjMsOwiAQRf-FtSFMgWnp0r3fQIZHLWrBFLoy_rs26UK395x7XszS1ma71bjaFNjIhp6dfkdH_h7zTsKN8rVwX3Jbk-O7wg9a-aWE-Dgf7l9gpjp_38qjJ0mAwUXQSKB6YUIYJgHeSEJHFBUI53pUXTRSAnVeK4mglTNi2qM11ppKtimnZltaYm20PC0bAVEOYIRArrHXSqj3B5wCRkU:1obDKQ:VFPD-ZOo_lDAhv4JBjIIhOp_skeYL2siDwlCt0EbRKg	2022-10-06 03:56:46.573293+00
rftac273fkm5om5rzhbzd5f3dipz3c0y	.eJxVjDkOwjAUBe_iGln53uKfkp4zWN5CDMRGsVMh7k6CUkA7M--9iLFrm8xa42JSIANRipx-obP-HvNuws3ma6G-5LYkR_eEHrbSSwnxcT7av4PJ1mlb9wj9qL3wgaFlIQD3kTkBEhQqDRAAtdN-xDGO0nGGUkeOWknWbZR9T2usNZVsUk7NtDTH2uz8NGQApQSHDgTSnnPkTL4_gfFGIQ:1odH65:Bfed4SJmvo53AoHnHAgqk8fvyemoF6eqmiXk1Iwc9bc	2022-10-11 20:22:29.737583+00
hovqshqhsipu813xjafbd76a3etdwsrn	.eJxVjDkOwyAURO9CHSGwWV2mzxkQ8D8xWSAyuIpy99iSi6ScmTfvTZxf--zWhovLQCbCB05Ov23w8Y5ln-Dmy7XSWEtfcqA7Qo-10UsFfJwP9k8w-zZvbw8GNESJ0kBiTEgJTIxxDFpaLQbkYwKWRIINsBpstIGj0F4oY4y1uEsbtpZrcbnk7np-Yuv--XJk4koNSo9acqr4Foz6fAHS9kbA:1oWPOZ:8oPSpeTrPs54q_SkrEhddvnsntmh8p6iPgzjFELcp6w	2022-09-22 21:49:11.612385+00
clh8lrq0inbtcex4ggy6qgfhbcr176um	.eJxVjDkOwjAURO_iGlne7Z-SnjNYP16IWRwUOxXi7iRSCuhGM2_em3hc--TXlhZfIhkIZ4ycftsRwz3VfYo3rNeZhrn2pYx0R-ixNnqZY3qcD_ZPMGGbtjc4kaMGCMwZZxNaq1TUikvmgG0hZ6YUAmoeVBBcACILqA2KnE2IsEtbaq3M1Zdauu_lmVrH58uTgRsjuRNWSArGSS3t5wuJFUY_:1oYXno:eizTtbeoOIvCGd9ggSsOGy9x10g52Tg7L-k37Wxg3lk	2022-09-28 19:12:04.065341+00
v64ufvj0r8uzzkhmq7kvx2yvxkmr6x87	.eJxVjDkOwjAQRe_iGlkeLzNxSnrOYHmDmMVBsVMh7g6RUkD73_vvxZxf--TWlhdXEhuZ0ezwOwYfb7luJF19vcw8zrUvJfBN4Ttt_DSnfD_u7l9g8m36vpF0kMpQGkTAhBGGaDUoJXwwxqczBOnBSk15SEnawVptlABjBCJRhC3acmtlrq7U0l0vj9y6fzwdGwFRklKExEkAKnh_APCQROA:1oWf0Z:mffOqabd-7qmfSxbnEg7BfMp1QkHqCuJWr9moSOYBys	2022-09-23 14:29:27.708613+00
k4fmupms593q0k1b5gi3vyblu7zfagzz	.eJxVjMsOwiAQRf-FtSEDlEe7dO83EDpMLWrBFLoy_rs26UK395x7XsyHrc1-q7T6FNnAlOvY6XcdA94p7yjeQr4WjiW3NY18V_hBK7-USI_z4f4F5lDn79tNzkVhkYyFvgcVxIioIwobIzggEl0gnAiVHkFYEyRqFH00AJME4_ZopVpTyT7l1HxLC9UWlqdngzCmU9I6K7kDZYzu3h_lQ0bx:1odLhw:C0isIj26BBkoR9sBw4Ke7yZCXZP06BijvQsiF7STqFw	2022-10-12 01:17:52.821708+00
vyw8ivm23jpkyp5owto2r1anibon18i4	.eJxVjDsOwyAQRO9CHaHl4wW7TJ8zIPDimHwgMriKcvfYkoukGmnmzXsz59c2u7XGxSViA1Oo2Om3DX68x7xPdPP5WvhYcltS4DvCj7XyS6H4OB_sn2D2dd7enggjTKAmS70OXbC9BQXK9BqsojEY7H2nzRRER9KQ1Ug-RjRCBthil9ZYayrZpZyaa-kZa_PPl2ODQNQSEAC4FlKj_HwBdVRGKw:1ocq0G:Rwq3fu7uHw4q-x85bPbvBZhMl3Aa3o1BtqUVBwPAFek	2022-10-10 15:26:40.42311+00
gbrpuxv6ohiewoq5a8x5jwmmynv3tsno	.eJxVjkEOwiAURO_C2pBPsR_o0r1nIJ9CLWrBFLoy3l2adKHbeW8m82aWtjrbrYTVRs8GJhHZ6Td1ND5C2pG_U7plPuZU1-j4rvCDFn7NPjwvh_s3MFOZWxsnDGfsVO_AT4BOauXd6DX1QVEgkMrB1HkFEtoHT2AMCNVpJNkyA_toCaXEnGxMsdoal1AqLS_LBoEojW6-4aiEQOg_X6xPRgE:1obtFz:0iS15p0DbDWujB2dqLqcWamKfku-W1RC2I5aceIideY	2022-10-08 00:42:59.688465+00
arci3ntrkucmpconznu3k64utnaylfjb	.eJxVjDsOwjAQRO_iGlm242yWlPScwVr_iIHYKHYqxN1JpBTQTDHz5r2ZobVNZq1hMcmzkclesNNva8k9Qt4nf6d8K9yV3JZk-Y7wY638Wnx4Xg72TzBRnbY3KgRJQmNHSikvvcPYg9d2QIiOXAcxUhis9kIogRIs2uiHiDZARKJdWkOtqWSTcmqmpTnURvPLsFECaCW2GDgIgeqMny_cBEdT:1ocqAh:0_0bISP-nKW3SbM9ot6eoana5C-wfiH08Ya7gVfYYAc	2022-10-10 15:37:27.616351+00
vvmuu3blsaxrbtg9wbqgbfsmgt3y450u	.eJxVjMEOwiAQBf-FsyFQYGl79O43kAW2FrVgCj0Z_12b9KDXN_PmxRxubXZbpdWlyEbWW3b6HT2GO-WdxBvma-Gh5LYmz3eFH7TyS4n0OB_uX2DGOn_fOkBAhRKiJ2kApbZiiLGfhAyDQvCIpKXw3oLuaFBKYheMViCN9oOY9milWlPJLuXUXEsL1YbL07FRAmghrO0tF8pY1an3B5vpRkM:1oc0RH:Q94CH2KW4Qj0wO5VSab2qN4z9zNL4fIc4t2ghr_l-m0	2022-10-08 08:23:07.048192+00
sukr8hu6fihdouk6e8j8zxfn0lau7vq2	.eJxVjEsOwiAUAO_C2hAo_y7dewby4FGLHzCFrox31yZN1O3MZJ5kzUhGIpQiB-Jbai3X4nPJ3fd8T63D_eHJyLWWg7VcKGqYFFKITw1rn_3a0uJ_H18aIF5T2RReoJwrjbX0JQe6JXS3jZ4qpttxb_8GM7R5Gxujo2M2iCkaDMxKzSEmO6B2yjiJJlgnBQJHZnUUE4DRRg08qCGloMjrDd24SUM:1odBN1:YYZaPzSr1D1LuKfIChEwsKArXcBRP0HoI898zMjfTpI	2022-10-11 14:15:35.728598+00
4mp7k7mvp3bc8t0hxhggzzwbgix52p7a	.eJxVjMEOwiAQBf-FsyFsoUB79O43kKUsFrVgCj0Z_12b9KDXN_PmxRxubXZbpdWlwEamhGSn39XjdKe8o3DDfC18KrmtyfNd4Qet_FICPc6H-xeYsc7ftxYBhthFryVYaaRQ0qoweAoIEKPpvRYmWIlEGtTkhekhYlCGlEXrzR6tVGsq2aWcmmtpodpweTo2gtaqsxZUz0HqQXb6_QGwGEaW:1odBNB:Gjdfh-MDi53sosDYiHmvZ1cuXCpyRWh_ijcgotVhZSQ	2022-10-11 14:15:45.196968+00
ijv15c3ntw74i5n1546580ppxev5cms9	.eJxVjDkOwjAUBe_iGlnfu5WSnjNY3xsxEBvFToW4O0RKAe2befMiDrcxu62n1ZVIJiKMJaff1WO4p7qjeMN6bTS0Otbi6a7Qg3Z6aTE9zof7F5ixz983ZPCoVLA2Cx4MUyobnbhFqzgkjDFkpiyiZ5YDAGKIaKQRqH0SRoU92lPvpVVXahlulCX1gcvTkYlpLTkwCUCFEZpL-_4A4wdHAg:1ocoo4:LtpOpYcogQJBzwwcuJCoWZD4XD4tIUg2YILLhyJtCgM	2022-10-10 14:10:00.382162+00
nhb2x5ysrvo7y54rbkr8cf7c5cuv7i7q	.eJxVjEsOAiEQBe_C2pAG7IZx6d4zED6tgx_GCLMy3l0nmUTdvqpXTzGXLHZCEYiN8I1bK1P1pZbue7lx6-F292KniLYalCMjFYIdUH_sMPfRz40f_rfxXWNIF64LyudQT5NMU-2PEuWiyJU2eZgyX_er-xcYQxs_b3PMjjgG7cAgDIPGBKQ1OsMMlkICZGV0Yko6EVjgnAeL0YboEPEoXm_Hd0jw:1ocovX:ezJoJA12tYLa0_9zHmv_8azDFOF1rzRGr3Aslg1EASQ	2022-10-10 14:17:43.163926+00
vq357cj34daghber4ogdbg1qn55vtgyt	.eJxVjM0OwiAQhN-FsyGF7bLo0bvPQJYCFn_AFHoyvrs28aDHmfnmewrHa5_d2uLichAHAWjF7rf1PF1j2aZw4XKucqqlL9nLDZHftclTDfF2_LJ_gpnb_HkTm70e2UO0aQoBEUJIxo6otIlECIq0VkNIKhrgYQ8pDZ4IGP0nImzSFlvLtbhccnc932PrfH84cVDGjNpaglECobaErzetjEY_:1odBWg:xsunZb_Ewj4VJWHl9BwDn0EXmsfwFRJe3eWLfAaBjRQ	2022-10-11 14:25:34.385192+00
uhx0y54viial95fqa7qhb5lwnqdidmzd	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjM5MTQ3MzMuMzAzMjQ0Nn0:1obcEP:1Pgr1MDovPmnkAObSwSsPjVg0HLbXSd7UGYcdjJUqkE	2022-10-07 06:32:13.329889+00
ymznhqygna5svo9uthcp6ahy91xia49u	.eJxVjL0OwyAQg9-FuULABUgydu8zoCMHDf2BKpCp6rs3kTK0m-3P9ps5XNvs1hoWl4iNDHTPTr-px-ke8o7ohvla-FRyW5Lne4UftPJLofA4H92_gxnrvK0tmkF16CH0cSLSGoii6TstlQnWapBWKSkoymAAxQAxCm8toPab1bCf1lBrKtmlnJpr6Rlqw-fLsVEao0XfWSu5lGrY1OcLrSpGNg:1ogWbz:US_vSHw3HMhV9v5tFYKtYYeB6mK3JAevuJPmtHRDbEw	2022-10-20 19:32:51.146754+00
l40py0nyjcwe6u8e0tqgok3ssdqluwzv	.eJxVjMsOwiAQRf-FtSHQoTPUpXu_gfAYLT7AFLoy_rs2caHbe849T-H82me3Nl5cTmIvgFDsftfg45XLhtLFl3OVsZa-5CA3RX5pk8ea-Hb4un-B2bf5856SQQJEHSMar5mtBg1ordKBCc1wioHCqPwwxglwmCjBSemBgzUpQNyijVvLtbhccnc937l1f384sdeIoyKjLUmCSQG93kIORdg:1ogTrH:K8ry5Za-Vgd5wzQlyAgtCxgqJ8j-jhU8MvKiJz9Flwo	2022-10-20 16:36:27.780762+00
l6bzvm000vdpdqs7ixd7sn8wmtdtdejz	.eJxVjMsOwiAQRf-FtSFQYJy6dO83kAEGiw9qBFfGf7dNutDtPeeet_D06pN_NX76ksRBGLBi97sGileuK0oXqudZxrn2ZwlyVeRGmzzNiW_Hzf0LTNSm5Y04apVHq4F5UC5gILB7ziYDsUKIFJ3h6BYraE4KLaSQ0eFosyKn1mjj1spcfaml-17u3DrdH14cNIBTaPR-kAM4MAY_X7-fRqA:1ogWCC:AaJPTa6BinbJuJjtiNwW4kWcJcGhaFtP8pL9MIwQrzo	2022-10-20 19:06:12.304994+00
vvp9qohbwhaa7inak61lu4yvpe7c6hd4	.eJxVjDkOwyAURO9CHSHAZnOZPmdAwP_EZIHI4CrK3WNLLpJuNPPmvYnza5_d2nBxGchEuBTk9NsGH-9Y9gluvlwrjbX0JQe6I_RYG71UwMf5YP8Es2_z9k6SRQALbFSGjX5LIAQASK6QMa4NDmJAa0MwKTJIgofEAkvcRsE1ml3asLVci8sld9fzE1v3z5cjE1dqFINRRlEptDbq8wWjVUbz:1ocyVS:aISmL-rVDn_CtfvBxcfBq-QmAdVhPW_FVSceAQq6e84	2022-10-11 00:31:26.543328+00
7uy5mwevmlcpk12vs9s1l3r9rp5rieq4	.eJxVjEEOwiAQRe_C2hCYtjPQpXvPQKBMLWqpKXRlvLs26UK3_73_XsL5rU5uK7y6FEUvGqPF6XcNfrhz3lG8-Xxd5LDkuqYgd0UetMjLEvlxPty_wOTL9H0HJNaRhhEb8jpa5NDBSGBaQlaKxhYUdN6gZ7TWUgTQcWhs0KyMibhHC5eSluxSTtXVNHOpfn460WvExhKAIqlaNATvD12eRew:1obrBP:Wrn3P9pY2mF0O2t0MMz-VZS8Ar54-y4nBGP1oM25LhM	2022-10-07 22:30:07.228685+00
lzlait3l6e35rx4jyke5v4udoqcjjej9	.eJxVjMsOwiAQRf-FtSG0wABduvcbyBRGiw8wha6M_64kXejy3nNyXszj1ha_VVp9imxiyrHD7zljuFHuJF4xXwoPJbc1zbwrfKeVn0qk-3F3_wIL1qV3rRmtQSQEqRQKO8gIwoBAEKBVOFuBTgcdorHmO0YXaEaLVoqBSEOPVqo1lexTTs239KDa8PH0bBoARiOFVpaDBDdKeH8AW25F4A:1oWeAe:gsiOUfGQ_KkLs3NeNRmEVu2cdxpbw9C-Nlxb4ZxYmSY	2022-09-23 13:35:48.684283+00
mqegnthehde9qi5qdfzhkvph8o37j7r1	.eJxVjDsOwyAQBe9CHSGzsBhcps8ZEAs4Jh8cGVxFuXtsyY3bNzPvy1xNtea5uFxycy2_U23-_XFsEFqDtmiM5AqwVwIuzPm1TW6taXE5soEJ6NhpJR-eqewoPny5zzzMpS2Z-K7wg1Z-m2N6XQ_3dDD5Om01wog4QrSmS51RNgTfaSI5Wp2UlUgoQJLoDQH1UYFQaKQfKViNm4Ts9wdd4UYR:1oWV9X:ZvgO2WxUJAv9vs88AAb9puLBhifuvHLLdO0R2wZqZ_s	2022-09-23 03:58:03.443963+00
wckf82rufptiwurh9490c1rlagmauis0	.eJxVjMsOwiAQRf-FtSGFgSnt0r3fQIaXRS01ha6M_65NutDtPeeeF7O0tcluNa42BzYyhez0Ozry91h2Em5Urgv3S2lrdnxX-EErvywhPs6H-xeYqE7fNwRA8C4p70JUSUrqKKJ3AySNfR9Ail47QsBgdPJBUgIDYJwSXTR62KM11pqXYnPJzbY8x9poflo2CkTd9aAMcqU7EMa8P8S4RsY:1ogTfy:FwR8DRGPpYzi9lE41GqPoPrwL4iUXtHI5OxbSVWlXWM	2022-10-20 16:24:46.463196+00
ik2yubketgs5nh7tfvh7r68znz5fysw8	.eJxVjUEOwiAURO_C2pAPthS6dO8ZCPA_FrVgCl0Z726bdKG7ycybmTezbm2TXSstNiEbmeglO_263oUH5T3Cu8u3wkPJbUme7wg_0sqvBel5Odi_gcnVaWvHHgKiQeiUhs5tCqVExF4oAhCDprM8kzHe6xgAoxQ-gocoTJBiIL2PVqo1lWxTTs22NFNtbn5ZNgqlOugGMRgOWm0P_ecL6dpHIA:1ocAgd:R66Y8wOBBqfFdlfa2Rwo9zQqpaJuNN_5pq9H-bneCuc	2022-10-08 19:19:39.098903+00
jigdg88rqt9oyf0akj8vs748ee5dl400	.eJxVjMsOwiAUBf-FtSG8eoEu3fsNhMetRS2YQlfGf9cmXej2zJx5Eee3Prut4epyIiORGsjpdw0-3rHsKN18uVYaa-lrDnRX6EEbvdSEj_Ph_gVm3-bv2yYFWgLwGEF5jmi45BKMYTygBiWmGHQYmBdDtBKE1UlOjAsMRqUg4x5t2FquxeWSu-t5wdb98nRk5AADs4pZoMqCFla9P4gHRhU:1ogZ2O:ezZCvW-okM2gGvgW3t7_vDzZxDI6tZ6P5nq84wtjxck	2022-10-20 22:08:16.531625+00
hpwbb7zzepdlr5kq32gugcqbxryvwh8s	.eJxVjMkOwiAURf-FtSEMZbBL934DecDD4gCm0JXx322TJur2nnPPiyw5kpFIY8mBuIat5VpcLrm7nh_YOjyejoxc60EwLuSRSm2VFma1YemTWxrO7rfxXT2EG5YNxSuUS6Whlj5nTzeF7rTRc414P-3uX2CCNq1vlpgHpYK1SYpguFLJaBQWrBIMIcaQuLIAnlvBGAMIEcxgJGiP0qhA3h_69Eni:1ocolT:je5eIfzRIX95wK43nv0j-6TFwL8-ZODiBM6fvo16g0Q	2022-10-10 14:07:19.378231+00
qimqijn4oi724kf79o5evohjp6236rzk	.eJxVjkkOwiAYhe_C2hDmH7p07xkIo8UBTKEr491tky50-743vZF165jt2tNiS0QTohLQ6Vf1LtxT3VG8uXptOLQ6luLxbsEH7fjSYnqcD-9fwez6vKWl11ppCkIZQrUJzujIBHGGMx8zmOCl5CQCzS5sJzQlJkchsmTKpwh6L-2p99KqLbUMO8oz9eGeL4smqhQDLhSXmAHAtvL5AnzbRfk:1oWfEZ:dcRPwZwmJPTufbPhVgq6DJAGgARSnbP0hvu7JWZ1G4g	2022-09-23 14:43:55.315969+00
0i6z8nrj5buupqubtowj35jkwy835854	.eJxVjMsOwiAQRf-FtSEtA1PapXu_gQwvi1owha6M_65NutDtPeeeFzO0tdlsNawmeTYxiez0O1py95B34m-Ur4W7ktuaLN8VftDKL8WHx_lw_wIz1fn7Bg8IzkbprA8yCkEdBXR2hKhwGDyIflCWENBrFZ0XFEEDaCv7Lmg17tEaak0lm5RTMy0toTZanoZNPaIYtJQoOXZKjxLfH8UWRtE:1oWsCG:GBMeHn4wzUqalQMJAiEgh88klyI2og_u2CVGM-skO-o	2022-09-24 04:34:24.656022+00
2g7k30a8leh80vgtxwanzb0rt9r9xewm	.eJxVjDsOwyAQBe9CHSHbCwu4TJ8zoAVWMflAZHAV5e6RJRdJ-2bevIWnrS9-a7z6nMQswIzi9LsGincuO0o3KtcqYy19zUHuijxok5ea-HE-3L_AQm3Z35bMoJWaErnkEHhgomiQLAHriEEbNKB1VBiUhag1gGGTUIUxxQh7tHFruRafS-6-5ye3Ts-XF_OIqGByDkeprLbTYD9fxElGpg:1odMFd:1GD3VzRnj08cYzvliExt1cPwQWp1VmdC1nz5rhhElHo	2022-10-12 01:52:41.50116+00
fbk6g0varhdvskd6rcgiqf1in51mhzs3	.eJxVjMsOwiAQRf-FtSEwdEbapXu_gfCYWtRSU-jK-O9qYqJu7zn33MWWkxiEhl7shKtca16KyyU31_LMtfn55sSgiToAxA4l9EBKv2S_tcltlVf3m_iuwccLlzdKZ19Oi4xLaWsO8q3ID63yuCS-Hj7uX2DydXq9R4r7ZCzarmdUCdmMHABGtSck8AGNVmyDgRh5NIYjkbERSVvdUfBKPJ6vKUj2:1ocv5V:43hIK5DUS0aqfJINUUOCE7GpGUdGc5gR9ipTvp0SJVg	2022-10-10 20:52:25.296787+00
wzyqnlfd5f4s8fntu6xea086nusux0je	.eJxVjDsOwyAQBe9CHSHwLhi7TJ8zoOXjmHwgMriKcvfYkoukfTNv3szS2ma71rjYFNjIQAt2-l0d-XvMOwo3ytfCfcltSY7vCj9o5ZcS4uN8uH-Bmeq8vUlHoT3KSJ3QQWEHMgQDAmAIAEiT60VQykk5OGGUltQZ9ANNA0rh_bRHa6w1lWxTTs229Iy10fNl2Si1xi0LqDmYXiDi5wuQwEYR:1ocq5q:stwimpazq_IMCSzrC_6NeYTFnLioun1-eBvsLT0pZnw	2022-10-10 15:32:26.399063+00
6gfa3zqw9wkbn16umwcekgpntfvuueww	.eJxVjMsOwiAQRf-FtSHAwPSxdO83EB5Ti1owha6M_65NutDtPeeeF7Nua7PdKq02RTYyGAQ7_a7ehTvlHcWby9fCQ8ltTZ7vCj9o5ZcS6XE-3L_A7Or8fZuuxziJqCVoJFBuItlrhXLoPBkDkoIHARBD9JNURqCcArlgyHUdhrBHK9WaSrYpp2ZbWqg2tzwtGyWiVgLBaK5B9XrA9wfB9Ubo:1ocq5y:jBFTA6sGLdFGuO6DuVFPmcPK3QOngLpIfKhCXL5V650	2022-10-10 15:32:34.476894+00
k5nb4grgwkum9sb2enzh735soirpwjx4	eyJ1aWQiOiIxNDUifQ:1ocqUR:kmWrck_qilvaT3DtglyDrH3Hq23Z5PAAiCjRNhSQeYE	2022-10-10 15:57:51.483146+00
rcjc465hp7yx9lv338n7lnv4cpv3p526	.eJxVjMsOwiAURP-FtSE8LrR06d5vIDxuLWrBFLoy_rtt0kSd5cyZ8yJrimQgHBQ5EVux1lSyTTk129KMtbn5acnAtQbBeq4k7TUHYLDRbm2TXSsu9tfxbb0Ld8z7FG8uXwsNJbcleboj9FgrvZSIj_PB_gkmV6ft7TvVKfRBxoABDRPGhYBbVJDAGfdGuygMwOjjKDkTUQrJo5NMSd1rRd4fEp5J0Q:1ocqYz:HWglkxNYfkVPyQkB-eLGKJA26Kis_L1N26qRhaA2gZw	2022-10-10 16:02:33.865668+00
2hb7f3p8fr8oqbk1g06g6f9vpbxpw67s	.eJxVjMsOwiAUBf-FtSHApRS6dO83kMvLopaaQlfGf7dNmqjbM3PmRdYcyEDAADkRW2OteS42l9xsy1OsDaenJQNXSgrOjNBUGg6K9ZuNaxvtWuNifxvf1aG_x7KjcMNynamfS1uyo7tCD1rpZQ7xcT7cv8CIddzefRLegBPOm2Q6hVE7CEz5oEGD57qTAaRIIXWMqdgxBIZeoZFcQHIykPcH9x1JjA:1ocrHk:8WoSY9y_8pqvp3jCX0-jkcYAERYaEJqEEykj4DcGDvw	2022-10-10 16:48:48.502315+00
a84so0vm80u3k1paiwrvcc1hgva95hj4	.eJxVjLsSwiAUBf-F2mF4hUdKe7-BuTcQgxpwAqkc_93ESaHt2d3zIh7WNvm1xsWnQHoirSOn3xVhuMe8o3CDfC10KLktCemu0INWeikhPs6H-3cwQZ22GkUXmAXgnUYt0WmrBQ8ONLOOjwaVkRqFAsNkGLUSwqAbQHYMIkPDvqc11ppK9imn5luaY20wPz3pud4KLhlTVDnHubPvD41cRfk:1ocrpE:bgWhVkHDF9b4i7Dw7EK2KcuySURTZPI-JVnEpEdhIP4	2022-10-10 17:23:24.508444+00
ugtt6qxegiywphs7kokzlxtz2xb5vr4r	.eJxVjMsOwiAUBf-FtSE8L7RL934DuTxqUQum0JXx37VJF7o9M2dexOHWZ7e1tLocyUikluT0u3oM91R2FG9YrpWGWvqaPd0VetBGLzWmx_lw_wIztvn7BpHEJDiwICVTXk5WDwEF2siMNUaA8CEwDVrzycaoLFoJVos0KB9DwD3aUmu5FpdL7q7nJbWOy9ORkQMoyQbFgUoQfNDm_QGPCEY2:1odGuG:4WHdHwEbzOvwv8X4uVI_IVnPcNKY3VcK1mODq5JKv8U	2022-10-11 20:10:16.370756+00
oall092ttphy75aqynqrdtev96b61a36	.eJxVjEkOAiEUBe_C2hA-8Bl66d4zECZtHMA09Mp4d-2kF7p9Va9exPl1zG7teXElkYmgJIffMfh4y3Uj6errpdHY6lhKoJtCd9rpqaV8P-7uX2D2ff6-lZaBC9TJsKCSimCilSAE8wHRpzME7sFyqbNJiVtjrUTBAJEppXWELdpz76VVV2oZbpRH7sM_no5MoJQ0qAUgtRo5cPP-ADW2RR4:1ofZRM:SFOhYJ1xYe1ix8YjqmS5SeQKgXMiuUXQ9a7DBg7A29o	2022-10-18 04:21:56.027617+00
10jeewk1nt1zkq86o7dqgs2484b7qg70	.eJxVjs0OwiAQhN-FsyFsu9DSo3efgWxha_EHTKEn47trTQ96ne-byTyFo7XObi28uBjEICyKw284kr9y2ki4UDpn6XOqSxzlpsidFnnKgW_H3f0bmKnMnzaCCuyDImwRgvXMwIxWK2y50wzBQGd7hdNopo6J9Ni3mrid0AeA_vuqcCkxJxdTrK7GO5dK94cTAxiDvWoaZWSHjQZrXm-x90a9:1ofL6U:aDBavEJ0mJOZ0RZ87xk-CI6O7HR3P5Q_sW-bFfM1PJU	2022-10-17 13:03:26.748763+00
13tfgqwidi82y1x6x08ijn5mpkusg59x	.eJxVjMsOwiAQRf-FtSHQATrj0r3fQKYdavFBTcGV8d-1iQvd3nPuearIjzbHR01rzKL2ChDU7ncdeLyksiE5czktelxKW_OgN0V_adXHRdL18HX_AjPX-fPmKZAPQOyN9eIIQZLnzvVGEIYRCUUAoEcUMsYn8YxjIMHJEVCyW7SmWvNSYi65xZZvqTa-3aPa2xBcRwYC6t4hoLWvN49URgk:1odBx2:Ovk_Dk6ZQdYxNRaNKfpBxzGCltXGg-X8lImDR99_J7E	2022-10-11 14:52:48.766768+00
uiog4kkjjitc60zz8gdfw3vgbr2amq85	.eJxVjEEOwiAURO_C2hBaEGiX7j0D-fD5FrVgCl0Z726bdKGrSd6bmTdzsLbJrTUuLiEbmTSCnX6ph_CIeVd4h3wrPJTcluT5XuGHrfxaMD4vR_fvYII6bWsdvUXoCTwAmqGnszQUKQQgtBuzAYWXxnSkFMgOSCqrNJIKUQcSw35aY62pZJdyaq6lOdYG88uxsdNaqUFYo3lvttSfLzDcSH0:1oe272:DMN8nJQbrBQJ3IDvgLvnSWGEfjoXIAmuJfHpZPQr_9g	2022-10-13 22:34:36.29254+00
vlgpbgaoqo9py3okdiir83dv9sgvkcqr	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjUwOTU1ODEuOTAxNjQzfQ:1ogZQL:ysKfS_RNtXQwv3FUuCV2UGYLsemmK_CfCffLoWbPmEs	2022-10-20 22:33:01.936033+00
igbr6dfmikijorf1ivkad58o7l864hwy	.eJxVjDsOwjAQBe_iGln2xt-U9JzBWscbYiAOip0KcXeIlALaN_PmxQJubQpbpTXkxHrWOctOv2vE4U5lR-mG5brwYSltzZHvCj9o5Zcl0eN8uH-BCev0fY_RxVH5DqxHIlCokxCajNNWC9XZJAUYUmARfBxRmQEtCQPgaHTg1B6tVGteSsglt9DyTLXh_Aysl8Yo8EJrx6WU2nt4fwCjMUYV:1odC06:CHtsR29800x3ziQhAWWadMTN0BODIFjr1zEeBH3-Iz0	2022-10-11 14:55:58.129722+00
4ud2egckygj4e5dx2rb29efgrbopkc3a	.eJxVjMsOwiAQRf-FtSGF4dmle7-BDAOxqKWm0JXx37VJF7q959zzYgG3PoWt5TWUxEYGVrHT7xqR7rnuKN2wXhdOS-1riXxX-EEbvywpP86H-xeYsE3ftyICpQ1ZqaNHb60abIoIBCC1GXSkQSbIRpPyGZNyOnvhjEJDIoKEPdpya2WpodTSQy9zbh3nZ2CjMEYLJ4xwXEivtBfvD5NDRgM:1ogvo2:EBiGMGlWzdy3JmEgcJtAFuJXNd8Tcf6ocHsjRLImLyA	2022-10-21 22:26:58.556965+00
frwp3y2mt2dhzzy4k26jnr7kxmrg0r8d	.eJxVjDsOwjAQBe_iGlnOxp91SnrOYK3jDTEQB8WmQtwdIlFA-2bePEWgR5vDo_IWchKD6NGJw-8aabxy2VG6UDmvclxL23KUuyK_tMrTmvh2_Lp_gZnq_HlPEeOkfQ_OEzNoMkkpwxaNM0r3LnUKLGtwBD5OpO1IjpUFQJ4QUO_RyrXmtYRccgstL1wbLfcghs5aoxCN9tKD1wa71xuj2UYl:1ogXav:uK_rL6CgduL9nE7QH0iaheKESTwL61mLVKv4mQAgQUY	2022-10-20 20:35:49.957337+00
xqottbfwxb337cyv6hvxpae4bxs4hzri	.eJxVjEEOwiAQRe_C2hBwCp3p0r1nINMOWtSCKbgy3l2buNDtf--_pwr8aHN41LiGJGpQgKB2v-vI0zXmDcmF87noqeS2plFviv7Sqo9F4u3wdf8CM9f58-aTJ-eB2BnrpCMEiY73XW8EYZyQUAQAekQhY1wUxzh5Ejx1BBTtFq2x1lRySDm10NISa-PlHtRgvXfG976z2oLt92Rfb47yRf4:1ogS9h:qIhsykyIpadiE_PczhgVPeNL8Hg1kLQ4YMad3a2cA8o	2022-10-20 14:47:21.151162+00
3bl3bc2bfb39e89rzd827vk1sok5zlg6	.eJxVjEEOwiAQRe_C2pDSDgx06d4zkCmdWtSCKXRlvLs26UK3_73_XsLTVme_FV59HEUvOtTi9LsOFO6cdjTeKF2zDDnVNQ5yV-RBi7zkkR_nw_0LzFTm79uxMoDaMCkOjYMwGehYtwAOrEMNrTPOTqCREYgValQGcQJuAlga9mjhUmJOPqZYfY0Ll0rL04teGQMtaNca2WjbgcL3B2PyRXs:1od0OE:zka-Ih1WXa7zTPRfctW8lJL-bfPpfRetDkyhNz3Pikw	2022-10-11 02:32:06.119636+00
wargjq8h9c310ug95ge1t1bt4phfsmb4	.eJxVjMEOwiAQRP-FsyGlLNvSo3e_gWxhtagFU-jJ-O-2SQ96m8y8eW_haK2TWwsvLgYxCI0gTr_tSP7BaZ_CndItS59TXeIod0Qea5GXHPh5Ptg_wURl2t5j02iLJmgG06BtgkVFV25Vx2z9CKQ6FXwAbZVWhMpAQOz9FoF2eJcWLiXm5GKK1dU4c6k0v5wYFCJAD63p5PbWBvrPF41DRfo:1oe0OH:0XVw2ZCreikJxkXPq2-VuxCrysDoyBP14ulykl0rdN4	2022-10-13 20:44:17.164147+00
m70w6yz8af1acxt2td63jzes1gb83yeh	.eJxVjEEOwiAQRe_C2pC2MEPp0r1nIANMLWqpKXRlvLs26UK3_73_XsLRVie3FV5dimIQqu_E6Xf1FO6cdxRvlK-LDEuua_JyV-RBi7wskR_nw_0LTFSm75u47bmzo4maQh_DSO0IqLQi6DAiIyEZIPY2QvCNIVAaFAYfiHxvzR4tXEpasks5VVfTzKXS_HRiaBGhQWuMlaDBWN29PyHkR8s:1ogSiB:i7hJzAQePikGEAsTZ7ge_JT-AkmB3MJ80RELCKDNoTs	2022-10-20 15:22:59.562956+00
zcuk9ps0socaa36ixl47h5bjlbo9h1fv	.eJxVjMsOwiAQRf-FtSFAYfpYuvcbyAxMLWqpKXRl_Hdt0oVu7zn3vITHrU5-K7z6FMUgoBGn35Ew3DnvJN4wXxcZllzXRHJX5EGLvCyRH-fD_QtMWKbv2wXSI3TKsnHQR-3YRELXUUvW9sqSDUxIiOSC6ZVp2ZG2QXWOsB2D3aOFS0lL9imn6muauVScn14MGsAa3UHbSNUAONDvD79gRwo:1octIf:Fi4U6q5qYEfFG_viOhp9KTFusUulgl8H3dRwwFmhhI8	2022-10-10 18:57:53.266469+00
d6e0r264en4sz6o767efmy3u3oaxcyrn	.eJxVjDkOwyAUBe9CHSE2f8Bl-pwBAR_HZIHI4CrK3WNLLpJ2Zt57E-fXPru1pcVlJCPhgyWnXxp8vKeyK7z5cq001tKXHOie0MM2eqmYHuej_TuYfZu39cS4YpaxGIXkPmhmUHoxYbCRJZiMtRzkRrVQXKeAEdDIaNSABiyIsJ-21FquxeWSu-v5mVr3z5cjIwdQQgG3ikphB6Hh8wWV00YR:1od0SY:wDL1LOCWivNExdTY3z5QLFlkyjc30FkzYcPwpv72pRQ	2022-10-11 02:36:34.343354+00
koe8orrtp2uaxy8uq2wzo2qqd71wvrtt	.eJxVjDsOwyAQBe9CHSHwYsAu0-cMaIF1TD4QGVxFuXtsyUXSvpl5b-ZwbbNbKy0uRTYya9jpd_QY7pR3Em-Yr4WHktuSPN8VftDKLyXS43y4fwcz1nmrVdABAaWOnmSvUSojhhjtJGQYALVHJCWF90arjgYAiV3oFWjZKz-IaT-tVGsq2aWcmmvpSbXh8-XYKPUWWQMGOAgNAPbzBZwWRkc:1odBAj:stzeAu-AgoWpAWUS_5v7ABKXLK6DBMC118kuz-UlW9o	2022-10-11 14:02:53.317199+00
kg1dz0x3b6tkrd6k2r6f5zbs3sclubxb	.eJxVjDkOwjAQRe_iGlmxZ7yQkp4zWOMlxCw2ip0KcXeIlALa_95_L-Zo7bNbW1pcjmxkoBU7_K6ewi2VDcUrlUvloZa-ZM83he-08XON6X7a3b_ATG3-vgV60J6URRoiWgSpBXmjB2O8V0qECFZIJaIgFcF4TCAmgCkgainNcYu21FquxeWSu-v5kVqnx9OxUWiNUlqrDVfKSPv-AOYyRTM:1ocvx5:2LoP4dACW5N3cpL3RfG90DL78s4xHGixGqdMoYXFxlw	2022-10-10 21:47:47.578835+00
wiyp6ywl8zbieqm7r14pp7s3xalsa55v	.eJxVjMsOwiAQRf-FtSGU8ph26d5vIFMYLWrBFLoy_rsl6UKX956T82YOtzq7rdDqYmAjUwM7_Z4T-gelRsId0y1zn1Nd48Sbwg9a-CUHep4P9y8wY5lbF6wEi0hoeqVQQNcHI6wRaITRyl9B4KC99sGC3YccPE0ICL3oiLRp0UKlxJxcTLG6GhcqFZeXY2Nn9oS0UgpurAaQ_ecLW1RF3Q:1ohxhM:mmohWcXQcJa7q1uwR0qsFLCHOMCkwTn7iz7WT3Hk0OM	2022-10-24 18:40:20.976867+00
0o8t70so5twgv6zzcjvygd3w2m4r600z	.eJxVjDsOwyAQBe9CHSHD4gW7TJ8zID7rmHwgMriKcvfYkoukfTNv3sy6tc12rbTYFNnIQCM7_a7ehTvlHcWby9fCQ8ltSZ7vCj9o5ZcS6XE-3L_A7Oq8vYeoUAOiCAGVE0RGgAA0phOeNCo5Ba993znZhwFQDjrC1AlJ3qjoIezRSrWmkm3KqdmWnlSbe74sGwVugS0GkisDHeLnC0HfRdI:1ocy1Y:BGTLNS7oJtDyMKZsl6gLlVVoLD5Eo4mon1fwnINGfyc	2022-10-11 00:00:32.495123+00
olr5unl2h91ix2pxiyv5jrhz1obph676	.eJxVjMEOwiAQBf-FsyFAKdAevfsNZOmyFrVgCj0Z_12b9KDXN_PmxTxsbfZbjatPyEYmZcdOv2uA6R7zjvAG-Vr4VHJbU-C7wg9a-aVgfJwP9y8wQ52_72hhIjNYCKRQKYeSgrNCUe9IKJiE7Cno0KMWnSHtlICASEimQzdot0drrDWV7FNOzbe0xNpgeXo2SmO0NoMbLNedtdaY9wcAjkds:1odwef:83vRw8IsGqqeNJKyf6Czrm9yuu_BDoqVXLbiRmKFkNY	2022-10-13 16:44:57.461441+00
76csw8iq4tqi9qgm4lgjtue2xy1rpowt	eyJ1aWQiOiIzNTIiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjQyOTI1MDIuMTY5NjYxfQ:1odCVS:JqWq6GpNcFiReOmbxj0ofJtfdvaiqJqr3TI1Ynx7FKc	2022-10-11 15:28:22.200475+00
bjrv43h9lvv26hujvefzqi2hd79jzufn	.eJxVjMEOwiAQBf-FsyFAW7r06N1vIFtYLGrBFHoy_rtt0kS9zsx7L7ZGzwbWdezEbKFSYk42plhtjTOVivPTskFq3apGKKG4ERJED1uNa53sWmixPxdfOKK7U9qNv2G6Zu5yqksc-Z7wwxZ-yZ4e56P9O5iwTNuavAvQGEJpxlZo8tA4VB31koIcN6Z9H7QInQDdmwAAitC1oUUtkTSw9wegGkmf:1ocwIc:OJvZJ0tqIDbLXz297_aDqA9YyeXhcX8qI1iLhMtld6s	2022-10-10 22:10:02.911726+00
9sg6uqmshqwaf0uqzo69ij0k9lompw3j	.eJxVjMsOwiAURP-FtSG8uXTp3m8glIdFLZhCV8Z_tzVd6G4yc-a8kHVrn-za4mJzQAPiRqPTbzs6f49ln8LNlWvFvpa-5BHvCD7Whi81xMf5YP8Ek2vT9gaquTFBcelogiCl2gIRhAD3Y9SESfCRUICkNtR4HxgHDjpCMjylr7TF1nItNpfcbc9zbN3NT4sGqpRgkkohMOVMUAnvD2-CRcQ:1od1qq:GaPv9aqb1NOgDrAf9M0CE310mtKtCuLHb4qLH52A8-g	2022-10-11 04:05:44.145178+00
zf6y47gh17bx28drjdeqndtbuv0aajjl	.eJxVjMsOwiAUBf-FtSE8L7RL934D4XFrUQum0JXx37VJF7o9M2dexPmtz25ruLqcyEi4GMjpdw0-3rHsKN18uVYaa-lrDnRX6EEbvdSEj_Ph_gVm3-bve4JokrTaqgE1SxrlhEGIiRnQIHzQkjO0QYoYcZISI4C0UQO3XEHwbI82bC3X4nLJ3fW8YOt-eToycgBtmAQFVGkDQr0_cbdGNg:1oj7bq:2ID4I0M659mwm_z8PcwwBRDUGLSbYgXebe5Vj2NHiMI	2022-10-27 23:27:26.488964+00
6355oc3qnldrww0wrvrbtrls2dj9v7zk	eyJ1aWQiOiIxIiwiX3Nlc3Npb25faW5pdF90aW1lc3RhbXBfIjoxNjY0NDAzNDM4LjU3Mzc1MTJ9:1odfMk:WyEJB3kWx0UTyvSWP4butlCwqMv2TcE8aMJocXmwO0Q	2022-10-12 22:17:18.59758+00
jicdk2u7fef35y2uy8j2wrnykndctse2	.eJxVjMsOgjAQRf-la9MMhU5blu79hqaPQapSDC0r478LCYm6vefc82JriqxnLbbsxGyhUtKcbcqp2pomKtVNT8v6BlGCglYJLkA0UsjNdmsd7Vposb-N7-pduFPeUby5fJ15mHNdkue7wg9a-GWO9Dgf7l9gdGXc3h3qgF4LEwJJb9pGmCEqEcFQjDA48NJQo4yH4KBDoWVELakj1Aheafb-AON0STc:1ogSrk:mhx_nfPMnD5n0pT8ba3NanYZ3z18DNI-QTvstMQkk2k	2022-10-20 15:32:52.226394+00
acjxc5ook65igg33poal3374pgwc67zy	.eJxVjssOwiAURP-FtSG9LY_SpXu_gVzgYvEBptCV8d-1pgvdzjkzmSezuLbZrpUWmwKb2KBGdvhNHfor5Q2FC-Zz4b7ktiTHN4XvtPJTCXQ77u7fwIx1_rQ1oOsNoBZeiuBG8FFJoo4wkpGDHgX4ro_ojAMnpQahlemdiAohKPF9VanWVLJNOTXb0p1qw_vDsgmUEgNoMD0HNQBI_XoDzndGkw:1odIvg:wR4z5OsjkDb-wEtJLHStr8JEVAZki6HqFAopzJ7mZpY	2022-10-11 22:19:52.177696+00
flcy8zeez3l6w1f5jmh11pupvqmv5njj	.eJxVjEEOwiAURO_C2hBo4UO7dO8ZyC98LWrBFLoy3t2SdKHJbGbe5L2Zw63Obiu0uhjYyNTATr_jhP5BqZFwx3TL3OdU1zjxduEHLfySAz3Px_dPMGOZm9eazhpEQuiVQmFlH0AYEAgCtPJXK3DQXvtgrNlLN3ia0KLthSTS0KSFSok5uZhidTUuVCouL8dGCaB3o-g7biSoPZ8vWudF0A:1ogVdg:NJ8YIEwEEl9KDr2y8TWFhlgAhsjFvzjaPBau1t5kuT0	2022-10-20 18:30:32.733683+00
rn4q9jr22jcksmic4xde9m437bcct6iv	.eJxVjMsOwiAQRf-FtSHQATrj0r3fQKYdavFBTcGV8d-1iQvd3nPuearIjzbHR01rzKL2ChDU7ncdeLyksiE5czktelxKW_OgN0V_adXHRdL18HX_AjPX-fPmKZAPQOyN9eIIQZLnzvVGEIYRCUUAoEcUMsYn8YxjIMHJEVCyW7SmWvNSYi65xZZvqTa-3aPa2xAcWtdZo7EDjxReb47nRgY:1ofOE6:H_uYMOX2JGhGllr9ELzOvsc9eLWm67Ta_kxq-_Vca4w	2022-10-17 16:23:30.850517+00
e237ved5l6fde4t4s303vc3wgs5bphf7	.eJxVjEEOwiAQRe_C2hCYIkO7dO8ZyACjRS2Ygivj3bWJC93-9_57Ck-PPvtH49XnJCahBxC73zVQvHLZULpQOVcZa-lrDnJT5Jc2eayJb4ev-xeYqc2fN50Q9jA4FwHRKWOZYuDRjKhihMQjso0u2FOgpK0GNDTYpIwCzTrosEUbt5Zr8bnk7nteuHVa7l5M2lrj3F4plA4Q0L7ecdpGXA:1ofgdz:PM0zZjQjB_6seyfi6z1Hn-L2TJ0QFbuoEg-_qu41Fp0	2022-10-18 12:03:27.832445+00
q4497lkibojw2ifdl1oy7tnv3m48cyxt	.eJxVjMsOwiAUBf-FtSFQXrdduvcbCI-LRS2YQlfGf9cmXej2zJx5Eeu2Ptut4WpzJBMRIyen39W7cMeyo3hz5VppqKWv2dNdoQdt9FIjPs6H-xeYXZu_74SAA4ACnrwfQzAgvGSggkkYMRntdfBMuCijGrUT3AgZgjNKMI9Jsz3asLVci80ld9vzgq275WnJxLVWDAxTmg4jaCXh_QEJwUdz:1ogXCq:zIP-iFJrFMWgwuwwq_LgDgtyI7vhCMEG2nQOUuYMhh8	2022-10-20 20:10:56.339935+00
jzt3v3vjveekjhuu6t2t52avgjdyepdu	.eJxVjDsOwjAQBe_iGln-xd5Q0nMGa531EvNxEDYV4u4QKQW0b-bNS0R89jk-W37EQmIvtLZi97smnC65rojOWE-LnJbaHyXJVZEbbfK4UL4eNvcvMGObv-8ccGI_BkxsyBggzQmCMjwAK4OT0gMnlwZyynp2YBQmIib2lmB0sEZbbq0sNZZaeuzlllvH2z2KvfbeWW2sBQk6wBDeH7hdRyE:1odHfO:rRLoLHI2X6_s2eeE7xQDKXztkTtX2O7wmS1hSxqOTeA	2022-10-11 20:58:58.830564+00
rocuzez8tf8socw7plutaezbhjenuxkw	.eJxVjssOwiAUBf-FtSHlUR5duvcbCNwLFrVgCl0Z_93UdKHbM5PJeRHntz67rcXVZSQTEUqT0-8aPNxj2RHefLlWCrX0NQe6K_SgjV4qxsf5cP8Cs2_zHjYD01IkQG3YaIFxGIYgfbBDsCkigknAPA9GJM24imiSENIwsEpg-r5qsbVci8sld9fzElv3y9ORiSklhbLcCCpHzbl6fwCEKEaf:1odWTr:gD3vaAuArc0hZ8QglyDBZGnm3HZ742njjXykzqyQPkA	2022-10-12 12:48:03.469326+00
kf6tdhyua07o0a6ak2kenky8w6ivejqz	.eJxVjDsOwyAQBe9CHaEFAzYu0-cMaIF1TD4QGVxFuXtsyUXSvpl5b-ZwbbNbKy0uRTayTgt2-l09hjvlHcUb5mvhoeS2JM93hR-08kuJ9Dgf7t_BjHXeatnJSKoXfjITdTbIgSShIAgao0CSALbXvScdNPRAskM5eKEsopJGDftppVpTyS7l1FxLT6oNny_HRmGMBitgsFzBVoP5fAHGKEZw:1ogYFt:D3UJvviejac8qyqoOjlFsspgQI0nHVkBNIENwBvcnsY	2022-10-20 21:18:09.413478+00
yjbxcy2glwvmqldx935ormj4rczl06on	.eJxVjM0OwiAQhN-FsyHLWih49O4zEGAXiz_UCJ6M726b9KC3ycw331v48OqTfzV--kLiIJRGsfttY0hXrutEl1DPs0xz7c8S5YrIbW3yNBPfjhv7J5hCm5Z31pCIHMFgLAxhSYRIRFoZBlCj5T3u2bkYbU5AGVXMECErl1CNbFdp49bKXH2ppfte7tx6uD-8OChjNNjBDFoi4mhH9_kC6dhHIA:1ogWZx:7b74begoVq248e_wFEACDKLfrHC_g8JhcNomLYu5YCg	2022-10-20 19:30:45.237396+00
ei2ao3mn4gazgn2xi68esa03iz5rygut	.eJxVjDkOwjAUBe_iGlnel5T0nMH69jfELDaKnQpxd4iUAto38-ZFAqxjDmvPSyhIJqIVOfyOEdIt143gFeql0dTqWEqkm0J32umpYb4fd_cvMEOfv29jVRRSW3QsGjSJu-QVl5JB1BrwzKMA7oWy2SEK77xXWjKuNTPG2sS3aM-9l1ZDqWWEUR65D3g8A5m4MZp5Z7mgQijHmHt_ADVYRRM:1ogaEq:-Fv8KchO9YgDqf8ZqQu9675gpoeKg_9rtgbhGjTRgeI	2022-10-20 23:25:12.466119+00
qnixaooii7lwjmt49ie9qu7jvbjnxsnw	.eJxVjMsOwiAQRf-FtSHQAUpduvcbyAyMFh9gCl0Z_12buNDtPeeepwi49jmsjZeQk9gLGEHsflfCeOWyoXTBcq4y1tKXTHJT5Jc2eayJb4ev-xeYsc2ft5ssIg0qjgMaPZw0eFRKg_NkySet0EBMDGyIpiH6kwcCo8ha1s4wbtHGreVaQi65h57v3DreH0HstXPTCKAmLZW1AAZeb6uFRmw:1p01qt:l4ZAZJJH3hUX6VoI49kpxA-pjA6NAjqYck3kBNmFC30	2022-12-13 14:44:51.071499+00
h53lzxkk6dlp08yhu6oz776h05970y41	.eJxVjMsOwiAQRf-FtSGU4VG6dO83kGEgFrXUFLoy_rtt0kTd3nPuebE1RzYwsIqdmK-p1jwXn0tuvuUp1YbT07OhM0YL24EQHKwFp-Rm49pGv9a0-N_Gdw1I91R2FG9YrjOnubQlB74r_KCVX-aYHufD_QuMWMftrYhAaUNW6uDQWauEjQGBAKQ2QgcSMkIympRLGFWvk-t6o9BQF0ACe38A0vRIxw:1ogT6i:DQ3mrLiwgI515Eoq0pIrRsRnVaFhUFuuCo9QGTFesvM	2022-10-20 15:48:20.394072+00
xsruiola2dc1dohqtopuxa0uqjzmsakc	.eJxVjDsOwyAQBe9CHSED6wVcps8ZELA4Jh8cGVxFuXtsyUXSzrw3b-b82ia31rS4TGxgykp2-qXBx3squ6KbL9eZx7m0JQe-T_hhK7_MlB7nY_sXmHyd9rC2VvZd6hV6sFKHBKA0EQJqPYqoFJIdg0A02EmIQkYkigZp3DDoPVpTrXkuLpfcXMvPVJt_vhwbtlffGW2g4wJMj1Z9vngbRgE:1ogXPU:Q2nLPkVlWZmv3EU--NjmY-02dpi_WnsGiDuQ3JZdmDs	2022-10-20 20:24:00.161514+00
98gtvjx65jpndfigc92l7lwtoo00j7iy	.eJxVjDsOwyAQBe9CHSHM4sW4TJ8zIMzimHwgMriKcvcYyUXSzrw3b2bdVhe7lbDaSGxkYCQ7_dLJ-XtITdHNpWvmPqe6xom3CT9s4ZdM4XE-tn-BxZWlhbUxshehB3TKSD0FpUAToUKt584DIJl56hAHFFL5Tnok8gPSvGOlW7SEUmJONqZYbY3PUKp7viwb91cvNIARHASgkZ8vMf5Fvw:1ogTeQ:6ZvDgxQdk1VU36jBTOusTzsZBUXLsUfK1LChkDnq5xg	2022-10-20 16:23:10.325163+00
0wp7wae52n9vpxf5eviy4szej0ljd7s4	.eJxVjDkOwyAURO9CHSEMHwwu0-cM6LPFZIHI4CrK3WNLLpJqpJk3700srn22a4uLzYFMRIyGnH5bh_4eyz6FG5Zrpb6WvmRHd4Qea6OXGuLjfLB_ghnbvL1VChB8FMYMyglnMAWUxgGLkgs0OgnOvELOYVActBMIBsWYuILEPIdd2mJruRabS-6252dsHZ8vS6ZBKcm0BpCUK822_HwByepGaQ:1ogXZF:sNiLI-4xW-kunwbQt4izWRYc40D6fZ_Em1jgZ4p6azc	2022-10-20 20:34:05.280736+00
yt1slrp5cijl5xkiy8jcxnckgr4jq6im	.eJxVjMsOwiAQRf-FtSEtAwPt0r3fQIaXRS01ha6M_65NutDtPeeeF7O0tcluNa42BzYyiez0Ozry91h2Em5Urgv3S2lrdnxX-EErvywhPs6H-xeYqE7fNwRA8C5J70KUSQjqKKJ3AySFWgcQvVaOEDAYlXwQlMAAGCf7Lho17NEaa81LsbnkZlueY200Py0be0SFgzQguNGou0G_P8VvRtk:1oj5Jg:jAwpTDtuY7mKYoQgqcttFQZxbJNsMjIuLOLSOLqxak0	2022-10-27 21:00:32.915348+00
4owqo7f6iq6r9un9jqp3u8653hku0bo2	.eJxVjMsOwiAQRf-FtSFMqQx06d5vIDM8LGqpKXRl_Hc1ceP2nnPuU_iWWitr9aWW7ntZUuu0PLyYwKAC545WSQ2gFOJBeNr77PeWNl-imASIv40p3FL9gnilelllWGvfCsuvIn-0yfMa0_30c_8OZmrzp84DBzaUeQCrAC1qk4ApYwDLIZowBLTMIzqNmUbCozNu0OiyikajEq83FyRGMA:1p1zCu:-L-7PiyEY4RQDEhKaF-RNASRsMONXv3SfYFK5uhXQkU	2022-12-19 00:19:40.858366+00
2a3vacwpus8qp66ocubvy90zaiv9h4qt	.eJxVjMsOwiAQRf-FtSGUwpTp0r3fQHhMLWrBFLoy_rs26UK395x7Xsy6rc12q7TaFNnIeujZ6Xf1Ltwp7yjeXL4WHkpua_J8V_hBK7-USI_z4f4FZlfn71uBCeCNxBBIe-w7iVMcZBRIMYrJCa-RugG9CE4okEZHMJoUgQHhB7NHK9WaSrYpp2ZbWqg2tzwtGzsALQz0SnBEKQHN-wPCyUaJ:1ogX1J:rZSz0kgJhpbmlctvFWAVsxeETZKJO-eCDRou29RVGq4	2022-10-20 19:59:01.002947+00
y1bvo2fg54qoxn06qxi9j1prbli6bk2m	.eJxVjMsOwiAQRf-FtSFAWwa6dO83kBkeFrXUFLoy_rs26UK395x7Xszh1ia31bi6HNjIJDv9boT-HssOwg3LdeF-KW3NxHeFH7TyyxLi43y4f4EJ6_R9J0WeNCZS0ggJBjodJWECLw35oL3yYIh6sB0k7BEGq63qwCYRdAdij9ZYa16KyyU31_Ica8P56dgotR6EtRaADwLA6uH9AXueRlE:1ogaZG:0OVQHYg53a4uL4HR_A9FUvooff0LGvLhlloNWq2O6co	2022-10-20 23:46:18.788618+00
cpoitu5h6ww1qpffp43aasxw233ktrgj	.eJxVjMsOwiAURP-FtSEX5NUu3fsNhNe1qAVT6Mr477ZJF7qaZObMeRPr1j7ZtaXF5khGIjg5_ZbehUcq-xLvrtwqDbX0JXu6I_RYG73WmJ6Xg_0TTK5N21s6QMZw0IOWyTBwUXJEHYPRGIYAECSPXmGAs_fDFgkAvdEKuEAt2C5tqbVci80ld9vznFp388uSkSklzppLIylnHIRiny-wOEa0:1odXL7:_20NoqjgM8t9XFFO1IVR_7qgW334cKMOaS9unr8U2JM	2022-10-12 13:43:05.216929+00
efp5o9wov76fxmt1zufhimh5mvxvlcvz	.eJxVjMsOwiAUBf-FtSGXh1C6dO83kMvLohZMoSvjv9smXej2zMx5E4trn-za4mJzICMZyOl3c-gfsewg3LHcKvW19CU7uiv0oI1ea4jPy-H-HUzYpq0-GwQTvUw8oHFcS4AUUQvjHTjBgtKIzm8rqhSF5iZo8EHxBFvCHOynLbaWa7G55G57nmPrOL8sGZlScmCSM0YFgAb5-QJHXEZZ:1ofOE7:LHHRUyEV5z9SMA0ecB5PLxQ97sgbfwMxwYBwBTKT8p8	2022-10-17 16:23:31.31611+00
ymf7z3bp6gf0ks5cgxcjrwrfqygzihmn	.eJxVjDsOwyAQRO9CHSHAgMFl-pwBLbDE5AORwVWUu8eWXCTlzLx5b-Jg7bNbGy4uRzIRzjU5_bYewh3LPsUblGuloZa-ZE93hB5ro5ca8XE-2D_BDG3e3pIJBG2t58wDhGREAqOUGhPnEWyM2m6RRSmSRaGRbQSXerApYDB62KUNW8u1uFxydz0_sXV4vhyZuNZSKTFIQ804Cik_X4F7RnY:1oeI6W:-qYB2J_DbPaqrA2oiJ5R_4cBxENUcrk2UMt4CbVcESo	2022-10-14 15:39:08.886843+00
eimle81u5nmdw4vtp64ljsqu5r1txkpa	.eJxVjMsOwiAQRf-FtSEdkCl16d5vIDMMtfigpuDK-O_apAvd3nPuealAzzaFZ01LyKIOCtXud2OK11RWIBcq51nHubQls14VvdGqT7Ok23Fz_wIT1en7BgAmYUeGGXiMpndiLIK1HsDEiKOP7isBsdjeekRMMhC7aIzI0K_RmmrNcwm55BZavqfa6P4I6gCIroPOO9TWuGHf-fcHaXxGOA:1ogDNo:RgIcLYAJcL-yJ9utQn3rZqVK_mnWn62SwlOYhTHJy18	2022-10-19 23:00:56.330915+00
yx9158t7t3fq2bbdmkxfk6urm9o968nh	.eJxVjMsOwiAUBf-FtSG3BS7QpXu_gfC0qAVT6Mr479qkC92emTMvYuzWZ7O1uJocyESYJKff0Vl_j2Un4WbLtVJfS1-zo7tCD9ropYb4OB_uX2C2bf6-rZUO3BiSAM3SmDRy5Fyg9-AFxwASgk6eAUoVNeM88eS0E1J5Nzhge7TF1nItJpfcTc9LbN0uT0OmAVEBoJJAEUcmxPsDQ2BGBQ:1osmmc:bJ03cnBu1kHseaYt5nMH_kJoCWdwnnDkw5XpTLHhhdk	2022-11-23 15:14:30.671423+00
fzawhdkynpirw5ki0zfwsg1052fkau6q	.eJxVjDkOwjAQRe_iGlleMvaQkp4zWOMlxCw2ip0KcXeIlALa_95_L-Zo7bNbW1pcjmxk2iI7_K6ewi2VDcUrlUvloZa-ZM83he-08XON6X7a3b_ATG3-vsUkPAEExEmrYCXAZE1SSAhKJIoxTBKQyEtUQgiiEMkOVpPxSVsIW7Sl1nItLpfcXc-P1Do9no6N0hgQxlocuD4ao8z7A52HRus:1ogSC0:97a6NrZ5HFs0MHqH_UT26w5D2pHgn6uiXU74M-z-ggU	2022-10-20 14:49:44.412734+00
z9qkrzxf1wshm7cmyjj63nk3ynbezhmh	.eJxVjMEOwiAQBf-FsyFAW-j26N1vIEtZLGrBFHoy_ruS9KDXN_PmxSzudbF7oc1GzybWS8lOv6vD-U6pIX_DdM18zqlu0fGm8IMWfsmeHufD_QssWJb2dkIH6k0XlBaBlIFB4xCMAcTRo5c9uZlchwrC15xB-yGosXOoYRwEtmihUmJONqZYbY0rlYrr07JJat2DBKVGLqURAO8PuY9HMw:1ofpXw:WfqfQ2WH_8I5YDzhM6MvRJ3CoNYRb83hQSInyySIVWc	2022-10-18 21:33:48.283164+00
5iz7vei4hs86owdi6e27imgtqlfioe48	eyJ1aWQiOiIxNTQiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjUwNjgzMzUuMDc0MDQyfQ:1ogSKt:1PY9123FwIccw3SeFtTGyEPt6B0LrASFW4k7UKUjPaI	2022-10-20 14:58:55.107561+00
loaggbowcpec3mo6py1spuc9ict8099q	.eJxVjMsOwiAUBf-FtSFQHvfSpXu_gQAFi1owha6M_65NutDtmTnzItZtfbZbi6vNExkJh4Gcflfvwj2WHU03V66Vhlr6mj3dFXrQRi91io_z4f4FZtfm71vJAbgz6AFQJPTGB4kJhAgscak9RIyALKHRiAyMd6CkYEb5SSun4h5tsbVci80ld9vzElt3y9OSkWsthVFKGaqlkcjF-wN_mEXm:1oddJf:-hG8KbNljnvuK2KiB0F-KC7E76xe2FtWU0zDnaks3cc	2022-10-12 20:05:59.658541+00
730n8uz9kkmmux2jd35bt2n8jckncm0l	.eJxVjMsOwiAQRf-FtSEwtlNw6d5vIDMwtfigRnBl_HfbpAvd3nPOfatArzaFV5VnyEkdVGd7tftdmeJVyorShcp51nEu7ZlZr4reaNWnOcntuLl_BxPVaanRELJQZOLIKIgeRKIbHQIzgGcH0CXrkjWDocGmrgeEpfI9jG4c19Mqtea5hFxyCy3fpTa6P4I6WMTe-L0Brzu7Hzzg5wv0t0br:1ogYlB:2_OkIOxniIodRvh1OBhTEUh1ZpVMMeL7GJvWvxvJJ6E	2022-10-20 21:50:29.444732+00
1y8ksn7a82q3azke6gbor53d5fep7pqy	.eJxVjEsOwiAUAO_C2hCg_Nqle89AeDyw-AFT6Mp4d23SpHE7M5k3WTOSiVhyIq7F1nItLpfcXc_P2Lp_vhyZuNaK6dEyRqUZpOHiV_u1z25tcXHH4WDgwz2WTeDNl2uloZa-ZKBbQnfb6KVifJz39m8w-zZv22RRcGOGBMAYjhBEQGslcOCWqcCNR2TgFbAkrUYVeeLCyBiHEUAl8vkCM6lJSQ:1ogSiW:6tK54CMDqGI0UQNXhuNqLy0_C8BOZmwdWJaQSC0LUYM	2022-10-20 15:23:20.488353+00
888aorcmwcli82cq4rt8ahbvfkryvtzg	.eJxVjDsOwyAQBe9CHSEM3gW7TJ8zID7rmHwgMriKcvfYkoukfTNv3sy6tc12rbTYFNnIOhTs9Lt6F-6UdxRvLl8LDyW3JXm-K_yglV9KpMf5cP8Cs6vz9lZTNEjeSSMUiGGQEARKCUYRCY0uCKBOyUAYZEChBcU4aPDaeQMA0x6tVGsq2aacmm3pSbW558uysUPcmgp0z_WgtOrx8wWVEUY8:1ogYty:B50JfX0vZ7wGhJwYHniUT6ODohZn6GIZruPuy2lyt9E	2022-10-20 21:59:34.806652+00
b97kb2aix2rm5ac87b6vt6fx16jy6q87	.eJxVjEEOwiAQRe_C2hBmWqDt0r1nIANMLWqpKXRlvLs26UK3_73_XsLRVie3FV5dimIQjQZx-l09hTvnHcUb5esiw5LrmrzcFXnQIi9L5Mf5cP8CE5Xp-8YGI7cW_GhGbvqAHSMTsAqaIhCjUr3V1rMOWlnF2BB2HtqeqEXTdnu0cClpyS7lVF1NM5dK89OJAYzRqusRlNQGwOL7A4ACRj4:1ogXla:DRdJN2LcVC-j-BjZVUBlfHSC014KH8g36qpPXHGn5fM	2022-10-20 20:46:50.581721+00
3lg7y9bnq8xx4z33wnaigkwrbp1zm8o4	.eJxVjMsOwiAQRf-FtSGFKVPo0r3fQHgMFrXUFLoy_rs26UK395x7Xsy6rU12q7TaHNnIhDTs9Lt6F-5UdhRvrlwXHpbS1uz5rvCDVn5ZIj3Oh_sXmFydvu-EYYigle4NqS4qgkReytQNqFA6r0B0pD3IECgBUEAEHRQKLXr0rtujlWrNS7G55GZbnqk2Nz8tGwWiEnoAQC6NVNr07w-4A0Zz:1ogxIG:U39K2HNyhaWuyZDWyq7zZOSyZXLqs72VxF-h3WutHQc	2022-10-22 00:02:16.311346+00
9e9jnmtbxqqnnvale8x1fkb6ingj6hr4	.eJxVjMsOwiAQRf-FtSG8BmqX7v0GMsDUopaaQlfGf7dNutDtPeeeN_O4ttGvlRafE-uZtmd2-l0DxgeVHaU7ltvM41zakgPfFX7Qyq9zouflcP8CI9Zxe4sAerOdIJBoDCqrKCJEl5QlBwYGUN2gI0jdGQgCk0tWBRPdoCXJsEcr1Zrn4nPJzbc8UW04vTzrpbUgnOqg41ZrJ4z6fAHLmUay:1ogTVq:bOzlqFUNB5uJxcMyFY-Xh4ySRdusJF_GahXLL0zKW-c	2022-10-20 16:14:18.648248+00
12qi0ffv2xos2wvzlhp8svwmhuujcvld	eyJ1aWQiOiI0MTUiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjUwNjcyNDMuMzMxMTY3Mn0:1ogS3H:85wLKHozxb7ZRWvkVm0kMuPProGc-S0-ef7DyEmOqjI	2022-10-20 14:40:43.64718+00
p0152gx0rntrlva7qfj1jt5xrj7hex5l	.eJxVjMsOwiAUBf-FtSFc3nTp3m8gvGpRC6bQlfHfbZMm6vbMnHmhNUc0ICYMOiHbUmu5FptL7rbnObXu5qdFA0gpiAJKAGvOFOGb7NY-2bWlxf4mvqt34Z7KjuLNlWvFoZa-ZI93BR-04UuN6XE-3L_A5Nq0vT1LMnFhAjWERaEJEM7DaBSVUQfHHTVABdcgPWM8Sq2DBKeACe_HTUbvD45lR_8:1ogT57:yrO0x5FeB5CT7CkylklqkiRR3D8ZeKMjFFLPtcSyBsw	2022-10-20 15:46:41.852805+00
8ysiddip4ey4paeuvfqesf8zr0jumosp	.eJxVjMsOwiAUBf-FtSE8LlC6dO83EAoXi1owha6M_65NutDtmTnzIs5vfXZbw9XlSEbCGZDT7zr5cMeyo3jz5VppqKWveaK7Qg_a6KVGfJwP9y8w-zZ_3yIOBrVGIxCEZDiElBQokMwPCMHGoGBKmKQ1XFsNGn0U3NqkeQpWsj3asLVci8sld9fzgq375enIyLVWzEjgioKwVor3B3H5Rkw:1ogTep:MRTaLvkFIq77Q-jmGj4cJKpq7CEqUEAehMQJ_CMRMBU	2022-10-20 16:23:35.438039+00
s1fgxr1ozaqw01mrccp4ka43dus72d3a	.eJxVjMsOwiAURP-FtSE8eoF26d5vIDxuLWrBFLoy_ruSdKGznDlzXsS6vS12r7jZFMlEuBjJ6bf1Ltwx9yneXL4WGkpuW_K0I_RYK72UiI_zwf4JFleX73tWQUdpwAwjAouAckYvxMy0AiWcB8kZGi9FCDhLiUEpaQIobvigvGNdWrHWVLJNOTXb0oq1ufVpycRVD2ghqNYaJLw_chNGPw:1on9tC:coN2Sm0Fl4pH0_s3wonMxsdZPUKIlnaXfgleaD5WtVI	2022-11-08 02:42:02.794947+00
99e7ucsb6mtqrgupxyddb6bjxseuk20z	.eJxVjMsOwiAQRf-FtSFQClO6dO83kBkeFrXUFLoy_rs26UK395x7Xszh1ia31bi6HNjIJDv9boT-HssOwg3LdeF-KW3NxHeFH7TyyxLi43y4f4EJ6_R9p448GUzUyUFIGECZKAkTeDmQD8Z3HgaiHqyChD2CtsZ2CmwSwSgQe7TGWvNSXC65uZbnWBvOT8dGaYwWQlmpeQ9aSG3eH3pVRi8:1ogBZs:4Wwo5DCJCgrMktOogGRzvw8WH0VO-nAWLUZ8pAAUfBw	2022-10-19 21:05:16.383057+00
yqjmgx5vt1q2u5kuaz6swlr16m00psyw	.eJxVjDkOwjAQRe_iGlnxgsdJSc8ZrBkvxCw2ip0KcXeIlALa_95_L-Zw7bNbW1xcDmxigh1-N0J_i2UD4YrlUrmvpS-Z-KbwnTZ-riHeT7v7F5ixzd93kuTJYCIp7CDAgjJRECbwwpIPxksPlkjDqCChRjiOZpQKxjQEo2DYoi22lmtxueTuen7E1vHxdGwSxoCSAkBxra3VWr8_euRGPg:1opuYf:4WoF_lbtar2xUd4mOe22tC6QyvdKfFdjQmiR83uQjGI	2022-11-15 16:56:13.476819+00
umspequ94wgh9hiz6j9v5rhrrdu1k50k	.eJxVjLsSwiAUBf-F2mEIFwiktPcbmMvL4AOcQCrHf9c4KbQ9u2efxOLaZ7u2uNgcyETAADn8rg79NZYNhQuWc6W-lr5kRzeF7rTRUw3xdtzdv8CMbf68x8S9AcedN8lIhVE7CEz5oEGDH7QUAQRPIUnGVJQMgaFXaMTAITnxjbbYWq7F5pK77fkeW8f7w5JpUEqyUYCRVBuuleGvN9W9RtI:1ogTud:wOfpoopVtVQ6sOTO1wu0hyf4Ev4T68uVemQUB_pVUZw	2022-10-20 16:39:55.909662+00
2iru5x2m2gebtbme01835q4186gsci6r	.eJxVjMEOwiAQRP-FsyFsodvSo3e_gWxhtagFU-jJ-O-2SQ96m8y8eW_haK2TWwsvLgYxCI1GnH7bkfyD0z6FO6Vblj6nusRR7og81iIvOfDzfLB_gonKtL1HpbTFNmg2rUKrgkWgKzfQMVs_GoIOgg9GW9BACK0JiL3foqEd3qWFS4k5uZhidTXOXCrNLycGQDSNbTurpO5A9fbzBUfYRc8:1odDMU:HLzqm0y4Gj0WxgoldSNsds1q7q1mIutUN1xInZ4X39w	2022-10-11 16:23:10.383078+00
pn99c9vfjqqexkvk0adqktrf69takom0	.eJxVjMsOwiAUBf-FtSG8H1269xsI9N5Y1IIpdGX8d9ukibqdM2deZM1ABiK1ICcSGraWawm55B56nrH1OD8DGbgxSnjFuKeMGyu02-y49imsDZfw2_jSFMc7ln2CWyzXSsda-pIT3RV6rI1eKuDjfLh_gSm2aXsbAMaiBifAO4VWuOQB4qiRc6lN2jBIph0zOinUI6D0NjljmZFiu5H3B-h7SQs:1odCtv:JtnKMl4Oh8X0iAVOVcwWsEKg-7BS_kJRtrwozZuZylo	2022-10-11 15:53:39.026892+00
q2n9whqcwrkh2rxwilvj5yitqmlllm64	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2Njg2MTM4ODkuODQ2MTgxMn0:1ovKhG:QYKRG6e6uW-4FsrCVEmdfKn46PdKL7Nci3aH6FqZ3m0	2022-11-30 15:51:30.10144+00
3r26kh40eya41bjnz04nuh28jjb6m1d2	.eJxVjssOwiAURP-FtSHcQnl06d5vILdwa_EBptCV8d-1pgvdzjkzmSfzuLbZr5UWnyIbmFPs8BuOGK6UNxIvmM-Fh5Lbkka-KXynlZ9KpNtxd_8GZqzzp61ARApRoJIKogtEQKRcL5Qk0xNEDcZZoaZRT4YQ-9HKHklOKkQA-31VqdZUsk85Nd_SnWrD-8OzAbR2II21mndOdMa93mxWRpw:1oxX0o:35SxDk0_Jkt_0JCSJdBnLXx0G5PQYlhS0p-XLWEdpZE	2022-12-06 17:24:46.406661+00
qzwoxjj994em7u2gqiwy283hjpubzbkq	.eJxVjDsOwyAQBe9CHSEwGGyX6XMGtMBuTD4QGVxFuXtsyUXSzsx7b-ZgbbNbKy4uRTYxZQU7_VIP4Y55V_EG-Vp4KLktyfM94Yet_FIiPs5H-3cwQ523tUE_ROgIPEC0Y0e9soQUAlAcNjaEKLyyVpLWoCSQ0oM2kXRAE0iM-2nFWlPJLuXUXEtPrA2eL8cmaYzWo5S95kIKZfvPFzAdSGM:1oe2BW:xQokyS1NzSk8wdtv2L1-gd6EmV3G6Sxd4W55kCu3q7c	2022-10-13 22:39:14.025831+00
h1yq54fv62z06brhtott9pf5ku50giiq	.eJxVjEEOwiAQRe_C2hBoO0Pp0r1nIHSYWtSCKXRlvLs26UK3_73_XsL5rc5uK7y6GMQgwIrT7zh6unPaSbj5dM2ScqprHOWuyIMWecmBH-fD_QvMvszft2LDpgmq96ia3qhWg5oUMgMwWjQ2mKCpgYlgHLuJOtCBevQ4UbBEZo8WLiXm5GKK1dW4cKl-eToxaMSu1dZ0IBEbsBreH4ylRq0:1odJar:5Da5tMWAulYS0cnlJdWjYCFjqkslnR3QwCqsSrOpJrQ	2022-10-11 23:02:25.668137+00
32gpy75wzfq3bozr0k2e5z49z3tbbmby	.eJxVjEsOAiEQBe_C2hBovuPSvWcgDbQOfsAMzMp4d53EhW5f1asnC7iOOaydllAy2zNlJNv9rhHTleqG8gXrufHU6lhK5JvCv7TzY8t0O3zdv8CMff68QUEm7WQ82ROpKYEnIJQkksEskUCIyRkXySQjnCBQCD5KPSFqsNpv0U69l1ZDqWWEUe7UB94fge2ltVp5ARa4cF45o15vxjhGeQ:1odZKw:cl9Alh4Wl-aWOE44k49FikSbrWTpQeDgEyCZEaPLlJs	2022-10-12 15:51:02.102499+00
gqyyqjse2s7caa9ov34oimg19inkh5ze	.eJxVjLsSwiAUBf-F2mFAXpeU9n4Dc3nEoAacQCrHf9c4KbQ9u2efxOHaJ7e2tLgcyUCMIIff0WO4pbKReMVyqTTU0pfs6abQnTZ6rjHdT7v7F5iwTZ93ECCZ0B7AI1eMB8-VZThaNUYtvRfGJs4wgNbSgEg2CisslwGPJhn-jbbUWq7F5ZK763lOreP8cGTgWoO2lgGjUgltJLzeZfRF7A:1ovgrI:hkXSAHxgVW5Q4y41aZVnj_Qq-8iZqblvb2SF1dIkQls	2022-12-01 15:31:20.456059+00
a5bvvxk18p6f0q0m6pi7ftferaqwnqt5	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjYxMDQzMDEuNjk4MDE3fQ:1oknq1:y_487ehz4RG4gEAsNSQD7rs7VDZ3JqD7VyxI3c2cMJU	2022-11-01 14:45:01.703709+00
8s3f7yft5i2e88z6pb3ejrpjiei51jyr	.eJxVjDsOwyAQBe9CHSE-yxpcps8Z0GJDTD44MriKcvfYkoukfTNv3szT2ia_1rj4PLKeSa3Z6XcNNNxj2dF4o3Kd-TCXtuTAd4UftPLLPMbH-XD_AhPVaXsnR04qmZQdnekEqQQECEYm3YUUhQYapNHKWgeDCAYEYgiQgrBKo4Q9WmOteS4-l9x8y89YGz1fnvUS0QIidh1Ht-nKfL53cEWn:1ouiOr:GksXmSI26kAJy9wwiOSBMV6DfEwo0AcU20rU2uBhfxM	2022-11-28 22:57:57.759456+00
1pe6re46d47cuf1ahodmp84c2907gk7e	.eJxVjMsOwiAUBf-FtSE8b2mX7v0GwuNiUQum0JXx37VJF7o9M2dexLqtz3ZruNocyUS4GMnpd_Uu3LHsKN5cuVYaaulr9nRX6EEbvdSIj_Ph_gVm1-bvO0EYojTaqBE1ixplQi9EYgNoEM5ryRkaL0UImKTEACBN0MANV-Ad26MNW8u12Fxytz0v2LpbnpZMHEAppkAZKg1oNg7vD7fLRm8:1odfgG:dem9yzidpgCPrjQUoJqNAIoB1YxyBjWN71h5X0ahfOo	2022-10-12 22:37:28.39239+00
u0ezpm5rc5ask09d67ryoys06t0r16n6	.eJxVjMsOwiAUBf-FtSE8r9Cle7-BXB61qAVT6Mr477ZJF7o9M3PexOHaJ7e2tLgcyUAkMHL6XT2GRyo7incst0pDLX3Jnu4KPWij1xrT83K4fwcTtmmrERKDoHhCwSBqJSSP0UgmpY1SKhz9mUWtPefWM6OBozAqWByt4iyEcT9tqbVci8sld9fznFrH-eXIwAH0FgmrqGEAgpvPF5ErRho:1ogWkQ:erhxCO8XjG1raR5KJZREbRkaDA9U7kZRkANTb4gxMmY	2022-10-20 19:41:34.825438+00
qdqa2sr26d650uqud2tn4cedueo3i5i3	.eJxVjssOwiAURP-FtSFQgV66dO83kAvcWnyAKXRl_Hdb04Vu55yZzIs5XNrklkqzS5EN7AiaHX5Tj-FGeUPxivlSeCi5zcnzTeE7rfxcIt1Pu_s3MGGd1naQIyECadGpaAwajWAVKms7A6ILAEIKIyjKPqgwepKjByMBVQxE6vuqUq2pZJdyaq6lB9WGj6djgzRGCytXnVtQvVD9-wPL-kbT:1ogYOQ:Mgm4Y9Sb_Jnp577CaOro04sEPXOx4mvxcuvpL-IdylA	2022-10-20 21:26:58.999972+00
27aruwxs0acd6ahueibibkg4q5gc9iro	.eJxVjDkOwyAUBe9CHSEDHzAu0-cM6JslJgtEBldR7h4juUiaV7wZzZtY3NpitxpWmzyZiNCcnH7fGd095I78DfO1UFdyW9NMu0IPWuml-PA4H-5fYMG69DAzYmYQNWPgokQO6NDzGMwO9BwBhAkGWNxXj0Jqox0arUwUAkaJPVpDralkm3JqtqVnqA2fL0smppQcRgOaUcEHqfjnC1CZRcY:1ogXpn:jF16CbKT-n3WvaThRhUbn0QdMNciRlLvTYn1r8Q5gps	2022-10-20 20:51:11.337246+00
ofjcseuuqpzjio1k90pc0ne3dgn9uezr	.eJxVjDkOwyAURO9CHaFv-IBxmT5nQKwxWSAyuIpy99iSi2TKmTfvTYxd-2zWFheTA5kIV-T0Wzrr77HsS7jZcq3U19KX7OiO0GNt9FJDfJwP9k8w2zZvb2uVA8dCEqB5YklLlIhCeg9eoAygIOjkOUg1Rs0REyannVCjd4MDvktbbC3XYnLJ3fT8jK3b58uQaZBbUIFGqiUTwNjnC4muRjs:1on52m:BuaYOZbEtMrcmOkauoygyv_OuGz4z_XjDpddxcJWu8E	2022-11-07 21:31:36.122691+00
c2l0m5nbf5nwpsgadtb0t8nou5wipwcv	.eJxVjMsOwiAUBf-FtSE8ygW6dO83EB63FrVgCl0Z_12bdKHbM3PmRZzf-uy2hqvLiYyEAyOn3zX4eMeyo3Tz5VpprKWvOdBdoQdt9FITPs6H-xeYfZu_bzklAxi8MEwqZq1QkYEQykhEpsFHppBLERGiiMA0w5SsVkH7YJRS0x5t2FquxeWSu-t5wdb98nRk5ACgreEgqRRyGLh-fwCVI0Y0:1oniLL:pK7pGJDAoVn5LadqXkKLHRPw3D3puhr0yY_ww-rj_io	2022-11-09 15:29:23.334472+00
2k2zdj10y48mq736yoctkmtl8r48l5k1	.eJxVjEEOwiAQRe_C2hBK6QBduvcMZJhOLWqpKXRlvLs26UK3_73_XiLgVqewFV5DGkQvmkaJ0-8ake6cdzTcMF8XSUuua4pyV-RBi7wsAz_Oh_sXmLBM37dm33hmIOWspdgNziiDXmNr9GhoRNORjZYYrFXkNBqtWoVAHCm6EfZo4VLSkkPKqYaaZi4V52cQfQPgO2_AO2la0Ara9wfNikb5:1ozRqk:szlltRRb1Bomq--rBJ8e0cJcLLmvl-yRC3YqM_QN7Dg	2022-12-12 00:18:18.457558+00
d7ynmfos0l9f3b9wzbwk1by7wrqdq4uj	.eJxVjMsOwiAQRf-FtSE8KgMu3fcbmpkBpGogKe3K-O_apAvd3nPOfYkJt7VMW0_LNEdxEVqcfjdCfqS6g3jHemuSW12XmeSuyIN2ObaYntfD_Tso2Mu3zoaYHGYy2isNHqxLmjADa08cHRsGTzRAsJBxQDgHF4yFkFV0FpR4fwD6VDff:1p0CFS:3AyulmLWkrdU7a7tC4L68XjRvHR0nrMtlYntOtOhQMw	2022-12-14 01:50:54.483435+00
qdzonybc6lusstac4su6df6wwx6k7rro	.eJxVjMsOwiAQRf-FtSEFWoZ26d5vIDM8LGrBFLoy_rs26UK395x7Xszi1ma71bDa5NnEBDv9boTuHvIO_A3ztXBXclsT8V3hB638Unx4nA_3LzBjnb_vKMmRxkhSmE6AAaWDIIzghCHntZMODFEPo4KIPcIw6lEqGGPntYJuj9ZQayrZppyabWkJteHytGwSWkNvhl4CV7DHzfsDe0dGSg:1oqb8F:K8UF565kCOPC_lQ3Cn5ffY_drTSzcq1UCPboLu1RyM4	2022-11-17 14:23:47.47846+00
9b9heraujyvkiin2kzupszei9tlv90rt	.eJxVjMsOwiAUBf-FtSE8b2mX7v0GwuNiUQum0JXx37VJF7o9M2dexLqtz3ZruNocyUS4GMnpd_Uu3LHsKN5cuVYaaulr9nRX6EEbvdSIj_Ph_gVm1-bvO0EYojTaqBE1ixplQi9EYgNoEM5ryRkaL0UImKTEACBN0MANV-Ad26MNW8u12Fxytz0v2LpbnpZMHGDQozCjogq4Vkq-P7hqRnI:1or35a:gbYBFFcJ5_3fQtaUpqH57XW66zWaOPLYWZ21his5MQI	2022-11-18 20:14:54.46223+00
0xmnxfw4jwt1qbc44knego20onzxl8bb	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjUwMzU0MTAuMzMzMTcxNn0:1ogJlq:gIQI8vH9kC_56v7FYwiCb5zdbHqQSVZsfSx7gwQxrRs	2022-10-20 05:50:10.570266+00
1fqj06ohu90qdbnmtmol2b7la9qu29s8	.eJxVjDsOwyAQRO9CHSHWsIBdps8Z0BpDTD4QGVxFuXtsyUWi6d6bmTdztLbZrTUsLk1sYNJqdvqlI_l7yLuabpSvhfuS25JGvlf4YSu_lCk8zkf372CmOm_rUaMnIpwskYlCmiCgUxswXRSglQAvtqA0vdKj8aYPBBiDjT6iwn4_raHWVLJLOTXX0jPURs-XYwNorcGiAcUlAhiBny_VZ0a3:1ol918:AGPxGYO_DtIkRWWSS7FoTiZGka1qI0p2aFjwbH2JonE	2022-11-02 13:21:54.394554+00
65y8cvwfdj70npsqk297yf6506lj126q	.eJxVjMsOgjAQRf-la9MMLTMFlu79hqaPQapSDC0r478rCQvd3nPueQnrtjrZrfBqUxSDaAjE6Xf1Ltw57yjeXL4uMiy5rsnLXZEHLfKyRH6cD_cvMLkyfd96jB2xd6oDjdD3CgOQUthpZjDkAiA3WgWmoAKBAY6xN-iN8x0ijnu0cClpyTblVG1NM5fq5qcVQ0PUaqUMaKlbBAR6fwCUIkYg:1odKMZ:Lpv4Z_TykZSCMK2bge0zBwCvmBPj3_rBbs-rofJpAD0	2022-10-11 23:51:43.366168+00
wlqldduj5dkz9cb3l5qll14v49igptcz	.eJxVjMEOwiAQBf-FsyEFtkB79O43kAW2FrVgCj0Z_12b9KDXN_PmxRxubXZbpdWlyEYmRM9Ov6vHcKe8o3jDfC08lNzW5Pmu8INWfimRHufD_QvMWOfvmzovvRDSBApkrDQmgAaDk9UK5BQVRg092InID5313QTCS4kIwyB7r_ZopVpTyS7l1FxLC9WGy9OxUWgNSmtlgeuhtyDs-wPA5Ead:1odVj6:Sh3V1yMJCLZ6Ts2PKb0ARqZtrsBpT9r-LPt2VuMbAtY	2022-10-12 11:59:44.700051+00
ymwheqr2go695ku1cjeveo1vn4dzeshp	.eJxVjDkOwyAUBe9CHSGzY5fpcwb0gU9MFogMrqLcPbbkImnfzJs3cbD22a0NF5cjmQhjipx-Vw_hjmVH8QblWmmopS_Z012hB230UiM-zof7F5ihzdsbB889Y9wEDGgsNyZILQ0kq4XkKQqIWippE6IfB-uHJJnnHECOI1de7NGGreVaXC65u56f2Do8X45MTGspRi40o1uCCWU_X8ByRpA:1odcU5:wRse_eiBq8wlj_55x8bOONdZGNqLVLv1rasLzFkGqfY	2022-10-12 19:12:41.552318+00
65kde587qssl46mni8xrijkr3fwcynxm	eyJ1aWQiOiIzODAiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjUwNzIwNjguMTMzNjAyMX0:1ogTJ6:exnXIHlQjSVl1qIuebCBcxuYAA8W_JWAKTrq9H-GgV8	2022-10-20 16:01:08.423136+00
h6239fp0mi5ajj1pzd5kogmi9nhgfdh0	.eJxVjDsOwyAQRO9CHSG-i3GZPmdAa7PE5IMjg6sod48tuUimnHnz3izg2qawVlpCjqxn0gl2-m0HHO9U9inesFxnPs6lLXngO8KPtfLLHOlxPtg_wYR12t4Eg0oiCZBoLOiEDmVyUY_WWRDaE_moZTRSRZMUkEiAUYDT0nocnd2llWrNcwm55BZaflJt-HwF1ksAY73awjvRWW3M5wuzxEZb:1oeSTe:nN2dzB04R96U268-uLh3xuX2pHe8ykWEW-NhJbiZDO8	2022-10-15 02:43:42.812611+00
lmohk1mlkxsrt6smtistq36jt9tlsyiy	.eJxVjMsOwiAUBf-FtSE8L6VL934DuTxqUQum0JXx37VJF7o9M2dexOHWZ7e1tLocyUgGQ06_o8dwT2Un8YblWmmopa_Z012hB230UmN6nA_3LzBjm79vFSCgRA7RJ64BuTLMxjhMjAcrETxiUpx5b0CJZKXkKIJWErhW3rJpj7bUWq7F5ZK763lJrePydGTkAJoNRjJDQVhlhH5_AJwnRkw:1ogXGt:y7W-U_3WzVEIVUOdi_2R6qvEPEiCxRYxm5M83wVukfQ	2022-10-20 20:15:07.678448+00
e3f4ssdg255rpf5ncqnk8wtwrb64mp4v	.eJxVjDkOwjAUBe_iGln-eE9Jzxms7yXEQGwUOxXi7hCUAto38-ZJHK59cmtLi8uRDERzcvgdPYZbKhuJVyyXSkMtfcmebgrdaaPnGtP9tLt_gQnb9HkHbgTjyhvjESSD4EFahqOVY1TCe65tAobBKCW04clGbrkFEfCok4ZvtKXWci0ul9xdz3NqHeeHIwMoJaVhDBTVinEr5esNZSRF2w:1oibRo:xHQbfv5EnLzaF7LCx1A_M0uWfqNbk6ZI0Ona4Iz5HDk	2022-10-26 13:06:56.761968+00
7g64qfq8nlep7agzv68zm1oi86fksilv	eyJ1aWQiOiIzODkiLCJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2NjUwNjk3NTMuODE2MDU0OH0:1ogShm:Y0LiHEQOEem3nfTIC2aPgIv4QpfAKkpCxaKoth0dr-I	2022-10-20 15:22:34.111594+00
1rlhcdb3paot553ueocl3tgkh9natzz8	.eJxVjMEOwiAQBf-FsyFQygI9evcbyAJbi1pqCj0Z_12b9KDXN_PmxTxubfJbpdXnxAambMdOv2vAeKeyo3TDcl14XEpbc-C7wg9a-WVJ9Dgf7l9gwjp930jSUudGk3qMNsUR5ahB9Qp1BwkIENBopOCSjkEY1KrXCmKIiME6s0cr1ZqX4nPJzbc8U204Pz0bJIAW4KwwvAfhpHl_ANnqR4o:1ogSid:rfTgoYQg4T0C20nWt7aiEY20oG_mE2km2461liT52WM	2022-10-20 15:23:27.488755+00
gcjo3jei4pc13iaa3dbwyes8zvs1q6tz	.eJxVjDkOwyAQRe9CHSEww3gp0-cMiGWIyQKRwVWUu8eWXCTtf--_NzN2bbNZKy0mBTYxiSM7_a7O-jvlHYWbzdfCfcltSY7vCj9o5ZcS6HE-3L_AbOu8vaP2GGLfRQU2BgUQSHsv1SClQxxAkEBhPSin4wgBaQgRgTaMZIWCPVqp1lSySTk109KTarPPl2GTRNRiFL0QfOiklp8vUiBGUg:1ogY9c:iM77mK9ICTldGZMS95_lUOjJJJQkF2cMg40IN51UOHs	2022-10-20 21:11:40.84749+00
hcw5oi6eh7c0p6rota8ircih9v590490	.eJxVjMsOwiAQRf-FtSED7QDt0r3fQHhMLWrBFLoy_rs26UK395x7Xsy6rc12q7TaFNnIhAJ2-l29C3fKO4o3l6-Fh5LbmjzfFX7Qyi8l0uN8uH-B2dX5--6maBR5Jw10CMMgMYCSEk1HBFq5AEiik4FUkEGBBopx0Oi18wYRpz1aqdZUsk05NdvSQrW55WnZKJRC0EIi8N6Ivsf3B05lRfI:1ogT5u:DiJgW4MklIuWmGnOxhv_56j7sJOD6_vvHPZ3J7J_Shw	2022-10-20 15:47:30.52539+00
j2cf0ox8u5nxmktpbnf2d9euzy7xy7wx	.eJxVjDsOwyAQRO9CHSE-XsAu0-cMaPFCTD44MriKcvfYkouknJk37808rm3ya42Lz8QGpsGx028bcLzHsk90w3Kd-TiXtuTAd4Qfa-WXmeLjfLB_ggnrtL0tml51GHR0aSQC0ETJuA6kMtFa0NIqJQUlGY1G0euURLBWI4Qtgt6lNdaa5-Jzyc23_Iy14fPl2SCNAeGcUoIL6BR8viFERb8:1ogXVc:x6UfAPg1eZhggxTMJXKw0X4ucDRgus0cSjFVg35CLog	2022-10-20 20:30:20.076813+00
045rn2zoyl9wbbbi6bwwu989acfi42tg	.eJxVjkEOwiAURO_C2hA_lAJduvcM5AMfi1pqCl0Z7641Xeh23pvJPJnDtY1urbS4HNnApFXs8Jt6DDcqG4pXLJeZh7m0JXu-KXynlZ_nSPfT7v4NjFjHTzuFRBEiAGltFNmodFQgKAF6IYQ3SNoSdCElk0hK4wmDsQLIou_g-6pSrXkuLpfcXMsT1YbTw7EB-l4drRRWcdlracG83iwSR9I:1ogYpT:iNSi2dCq3N8r2DhPKNxJgyq0k1LuuPhiaflvygP65PI	2022-10-20 21:54:55.378085+00
hnxdrt9er5xt9zlq4pqe889ms9i2p2kj	.eJxVjMsOwiAQRf-FtSEF6gy4dO83kBkeFh_UCK6M_26bdKHbe865b-Hp1Sf_aunpSxQHocTud2MK11RXEC9Uz7MMc-3PwnJV5EabPM0x3Y6b-3cwUZuWOmsODJRZKzsotGggKaaMQVkOEYIOaJlHdAYzjYR7B04bdHmIYHBYT1tqrczVl1q67-WeWqf7w4uDAnAWtAYjzdJpZT5fezVGPQ:1p0ZSJ:RFMZjaMrLOk3qwWYkqVbVnCUBvWrbh5N5oBAXrak8vA	2022-12-15 02:37:43.372205+00
qhw5f6eojo85aqxd757cbqao1ykidjpv	.eJxVjDsOgzAQBe_iOrLwCi-GMn3OYO3aS3A-JsKminL3gESRtG9m3lt5Wuvk1yKLT1ENqjVWnX5XpnCXvKN4o3yddZhzXRLrXdEHLfoyR3mcD_fvYKIybTU2hCwUmDgwCmIPIsGNDoEZoGcH0Ebjomm6hjoTWwsIW9VbGN047qdFSklz9imn6mt6Sqn0fHk1GES7ZdZYjZ01res-X_SlRuw:1ogSu3:Jl6jaN930W69Sns08W4Gm_fvgqamVzr4qiUD0sF0C5A	2022-10-20 15:35:15.687681+00
pmr7yijgf70n83wvb22pcrwvvzntr226	.eJxVjDsOwyAQRO9CHSHM8rPL9DkDWswSkw-ODK6i3D225CLpRjNv3pt5XNvk10qLz5ENTHWGnX7bgOOdyj7FG5brzMe5tCUHviP8WCu_zJEe54P9E0xYp-2tKaKTCVSKgRQpwJ4wggQSyhACxC44GYITwW4hWQCrRbIRjDBS9bu0Uq15Lj6X3HzLT6oNny_Phs4YLUCrzvFe99oJ-fkC67BGwg:1ogJly:O-jK9t2OjBpoJjjroKpn0zt5DllABmSj_AGW-wSf3yE	2022-10-20 05:50:18.973236+00
mbh51m9n99f0fqxx8ov32783fg20ca12	.eJxVjMEOwiAQBf-FsyGFpVvo0bvfQCgsFrVgCj0Z_12b9KDXN_Pmxazb2my3SqtNgY1MdIqdftfJ-TvlHYWby9fCfcltTRPfFX7Qyi8l0ON8uH-B2dX5-5ZBD4RIgyQloSPtY-xVr6BzmpQ3wfdqihTBDAINKiQXpDAmoojeQLdHK9WaSrYpp2ZbWqg2tzwtGwWiAtQSkAMOCKDfH7iMRoo:1odWCy:mID2cOtZjjPyvD-y0g_MNLUQFKGbaU_TJ_afpQwWW8E	2022-10-12 12:30:36.391933+00
2pakldb0z9b45lcw3o10p7wis7t6mmu4	.eJxVjEEOwiAQRe_C2pDSwnTo0r1nIDNALWqpKXRlvLs26UK3_73_XsLRVie3lbi6FMQgtBGn35HJ32PeSbhRvi7SL7muieWuyIMWeVlCfJwP9y8wUZm-b0LfIJBuu0CNYgoGkBg69ETWRgUGGGyLhnFkhZ2y3mjuew4cGxp5j5ZYSlqySzlVV9McS6X56cSgADQYqxFl16Bpe_P-ALLMRvw:1oejya:5dt9f2Ei3GlJ3mNSysiCP9W7JIMe036gqhoEFQgjhrc	2022-10-15 21:24:48.312328+00
927ba0jgu42e2kmmx962475mu817jfbf	eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2Njg2MTY0MTkuMDM5NDIzfQ:1ovLM3:t4bFhMYfMxzf3JtGQUlV9EtCYWmAM7TNDwWm07355j4	2022-11-30 16:33:39.232133+00
90oqolrjbehxxoft6n6lcmcddp1nhcx1	.eJxVjMEOwiAQBf-FsyFdWgr06N1vIAssFrXUFHoy_rtt0kS9vpk3L7amwAbWGslOzBYqJc3ZppyqrWmiUnF6WjZA38tGNVp0vJUSALrNxrWOdi202N_Gd3Xo75R3FG6YrzP3c65LcnxX-EELv8yBHufD_QuMWMbtHX2kAAGAlNKSTJAqSBAUAZ0QwmkkZQg6H6OO1LbaEXptBJBB14Fk7w8ZTEqL:1ogSz2:Y2HkcrBnNURSU1JklExM1GFdrQu-y_lFbpx7ux6H7Ok	2022-10-20 15:40:24.374355+00
ccfpc7nzp2luo364t6vno9qyye1rxfwj	.eJxVjMsOwiAQRf-FtSHAlCnt0r3fQHhMLWrBFLoy_rs26UK395x7Xsy6rc12q7TaFNnIpBrY6Xf1Ltwp7yjeXL4WHkpua_J8V_hBK7-USI_z4f4FZlfn73vC0Ecw2nQDaRE1wUReqUn0qFE5r0EKMh5UCDQBUEAEEzRKIzv0TuzRSrWmkm3KqdmWFqrNLU_LRok44KA6A1wK0AbM-wO4NUZw:1ozrHv:IWkVYSWIXg8OqWhCzTG2MKNklhN-UidZatf_xiG-MOE	2022-12-13 03:28:03.128717+00
f73fyndgz463ewomxntyyu07gcxyhqf8	.eJxVjMsOwiAUBf-FtSG8eoEu3fsNhMetRS2YQlfGf9cmXej2zJx5Eee3Prut4epyIiORGsjpdw0-3rHsKN18uVYaa-lrDnRX6EEbvdSEj_Ph_gVm3-bv2yYFWgLwGEF5jmi45BKMYTygBiWmGHQYmBdDtBKE1UlOjAsMRqUg4x5t2FquxeWSu-t5wdb98nRk5AADs8waQyVTRlv1_gCIDkYV:1ogYEG:tPz6AKdnmse-Gn5ht3R3qGh735h9U-E0s7WwvgZH4FQ	2022-10-20 21:16:28.316186+00
vhmqfo7dj6rmc0qx08cnbzrlaxnncyi9	.eJxVjDsOwyAQBe9CHSGbBYxdps8Z0AJLTD4QGVxFuXtsyUXSvpl5b2ZxbbNdKy02BTYxqdnpd3To75R3Em6Yr4X7ktuSHN8VftDKLyXQ43y4fwcz1nmrIYAG76L0LpCMQmCHpL0bISo9DAFEPyiHGnQwKvogMIIBME72HRk17qeVak0l25RTsy09qTZ8viybeq1VN0IHhhsjts58vsTPRsw:1ogYlK:ubMhRXLdZ2iZBPjg3uoaNsj2LB1ungSY9otDy8EMZhM	2022-10-20 21:50:38.905356+00
aqgwniv0s2vav1tx2kl9haqwi06gbmhm	.eJxVjDsOwyAQRO9CHSE-Zm1cps8Z0AJLTD44MriKcvfYkouknJk3780crm1ya6XF5chGJiWw02_rMdyp7FO8YbnOPMylLdnzHeHHWvlljvQ4H-yfYMI6be9OKEKw1kvhEUMaVMLBGNMnKSPaGMFuUcROJUsKSGyE7EDbFCgMoHdppVrzXFwuubmWn1QbPl-OjRKg04PtwXANQln9-QKBwEZ4:1odboD:P33KMATBJL6nNlao1Tgd4i-LHrnbmzAh9VMcL3dBsnc	2022-10-12 18:29:25.364615+00
jsz0ttyj6bkrtafdxaiqg4dikxyg3h77	.eJxVjMsOwiAQRf-FtSEgMJ26dO83kAEGiw9qBFfGf7dNutDtPeeet_D06pN_NX76ksRBGLBi97sGileuK0oXqudZxrn2ZwlyVeRGmzzNiW_Hzf0LTNSm5Y04apVHq4F5r1zAQGAHziYDsUKIFJ3h6BYraE4KLaSQ0eFosyKn1mjj1spcfaml-17u3DrdH14cNIBTg0UcpHUKtDGfL8AIRqI:1ogU2Z:pJOJqqNzAPRQppU-0S-FsEMeLlVXSx3tr1cnpqW8hK0	2022-10-20 16:48:07.469085+00
my99nv24zmodhcgnfht9x3gepw6rf4lh	.eJxVjssOwiAQRf-FtSFQOgN06d5vIMOjFrXUFLoy_rup6UK395yc3BdztLXJbTWtLkc2MAXATr-rp3BPZUfxRuW68LCUtmbPd4UftPLLEtPjfLh_gYnqtIe1xmCF8WoMOnphepQUkukiWtC2j9ob26tIMgqDQY1EGjV00kOXkv--qqnWvBSXS26u5TnVRvPTsUEigtASu54bAAX4_gBrOkZI:1ogTBw:ijaYLlQz9n4f0Cj5vwqnCwX38VYMPKLbDcJFlBLiz-U	2022-10-20 15:53:44.868983+00
brhue555592vqcg93zfal06quz9mhmhw	.eJxVjDsOwyAQBe9CHSFjwwIu0-cMaA1LTD4QGVxFuXtsyUXSvpl5b-ZwbbNbKy0uBTYypdjpd5zQ3ynvJNwwXwv3JbclTXxX-EErv5RAj_Ph_h3MWOetpuCjGSyhsJPsgIIZPPaKtKAopm2DoCN0UXUGtI3GmJ7QyygRBBKY_bRSralkl3JqrqUn1YbPl2OjANg6ZcXAVW8saPn5AtX6Rx8:1ogWuP:NKC0ibrfcI8ijiwGEC59zhoicFpNtF03G-XDjk2OKfQ	2022-10-20 19:51:53.552176+00
22gt2as98ovek5sedzaj14qyj2stipld	.eJxVjDkOwyAUBe9CHSEMfBaX6XMGxAcckwUig6sod48tuUjaN_PmTZxf--zWlhaXIxmJMIycflf04Z7KjuLNl2uloZa-ZKS7Qg_a6KXG9Dgf7l9g9m3e3sowGXwQEGXChAYmCaA4izJyVDhJHgYDPKmBa82NFzZiQLBmM0IEsUdbai3X4nLJ3fX8TK3758uRcVAKmBbALbUKtJSfL3voRmg:1ogTgf:ZEqx-D2t3VQuGVm9RgRjj8s5wpb3YSzdf6zO19PMn00	2022-10-20 16:25:29.977483+00
hmc955evx2tthfcuxzvglx2og5b0uxxc	.eJxVjMsOwiAQRf-FtSE82mHo0r3fQKBMLWrBFLoy_rs26UK395x7Xsz5rc1uq7S6FNnANEp2-l2DH--UdxRvPl8LH0tuawp8V_hBK7-USI_z4f4FZl_n7zuAIRnNOIE2XkYLFHo1GYWdARLCTJ0SqvcInsBaa6JSMo7aBkkCMcIerVRrKtmlnJpraaHa_PJ0bJAAvbBai44DokV4fwBdr0X4:1ogYpc:9w3CSw_-hfv32PkFc1bJWrLG5YER3meLwbSggD3qNEg	2022-10-20 21:55:04.707554+00
9osga3uzqt8fu1rxtcne2k1ky8swr6f9	.eJxVjMsOwiAQRf-FtSFAeXbp3m8gQ4exqKWm4Mr479rEhW7vOfc8WYRHn-Oj5S0WZCOTcmCH3zXBdM11R3iBel75tNa-lcR3hX9p46cV8-34df8CM7T5884OJrLBQSKFSnmUlLwTiownoWAS0lDSyaAWgyXtlYCESEh2QB-036Mtt1bWGkstPfay5NZhuUc2SmuNCNo5xV1wQZjXG7j6Ryw:1ogZDI:-1WgUl6EYQiNzT32yyuy_6475J2v5AyWvQecSNeSJF4	2022-10-20 22:19:32.809266+00
\.


--
-- Data for Name: dynamic_models_fieldschema; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.dynamic_models_fieldschema (id, name, data_type, "null", "unique", max_length, model_schema_id) FROM stdin;
\.


--
-- Data for Name: dynamic_models_modelschema; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.dynamic_models_modelschema (id, name) FROM stdin;
\.


--
-- Data for Name: evaluaciones_orales_activacioncalificacionoral; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_orales_activacioncalificacionoral (id, descripcion, activacion_calificacion_oral, fecha_creacion) FROM stdin;
1	Permiso para activar la calificaci├│n oral	t	2022-08-02 10:53:09.505787+00
\.


--
-- Data for Name: evaluaciones_orales_calificacionfinalproyecto; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_orales_calificacionfinalproyecto (id, fecha_calificacion, evaluacion_oral_id, evaluacion_preseleccion_id) FROM stdin;
\.


--
-- Data for Name: evaluaciones_orales_evaluacionoral; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_orales_evaluacionoral (id, dominio_tematico, expresion_oral, "creatividad_dise├▒o", observaciones, is_calificado, fecha_evaluacion, fecha_actualizacion, evaluador_id, proyecto_id) FROM stdin;
2	1	1	1	nada	t	2022-10-05 04:19:34.985545+00	2022-10-05 04:19:35.08461+00	1	50
4	4.5	4.5	4.4	Muy buena expo, interesante tema.	t	2022-10-06 14:49:00.171547+00	2022-10-06 14:49:00.176757+00	415	52
5	4.8	4.5	4	Recomendacion: Estudiar los niveles de ruido que puede soportar la biodiversidad del ├írea estudiada y compararla con los resultados dados.	t	2022-10-06 14:50:34.964269+00	2022-10-06 14:50:34.967151+00	352	52
6	5	5	4	Es muy buena la forma en que logra transmitir el alcance del proyecto	t	2022-10-06 14:51:21.806847+00	2022-10-06 14:51:21.809735+00	351	66
7	4	4	4	Excelente felicitaciones	t	2022-10-06 14:52:28.728607+00	2022-10-06 14:52:28.731762+00	414	66
8	5	5	4	El p├│ster es completo en informaci├│n, pero se puede mejorar visualmente agregar diagramas dibujos ejemplo que faciliten la transmisi├│n del proyecto	t	2022-10-06 14:55:49.33627+00	2022-10-06 14:55:49.338895+00	371	67
9	4.5	4.5	4.5	Buena presentaci├│n\r\nBuena propuesta	t	2022-10-06 14:56:42.174067+00	2022-10-06 14:56:42.17721+00	87	83
10	5	4.8	5	Excelente trabajo los felicito	t	2022-10-06 14:57:18.155773+00	2022-10-06 14:57:18.158327+00	382	80
11	4.5	4.5	4.5	Buena presentaci├│n\r\nBuena propuesta	t	2022-10-06 14:58:02.212986+00	2022-10-06 14:58:02.215936+00	87	79
12	5	5	4.5	Muy buen proyecto donde se dvidencia el aprendizaje de sus cursos y su aplicabilidad.\r\nFelicitaciones	t	2022-10-06 15:02:20.677867+00	2022-10-06 15:02:20.680797+00	154	80
13	4	4	4	Algunos de los expositores se encontraban nerviosos, se recomienda revisar presentaci├│n de las referencias.	t	2022-10-06 15:04:42.21472+00	2022-10-06 15:04:42.219103+00	55	72
14	4.2	4.1	4.3	Muy interesante, sencillo experimento y seguimiento. Aprend├¡ sobre cultivos de lechugas, gracias	t	2022-10-06 15:04:50.994437+00	2022-10-06 15:04:50.997569+00	415	55
15	4	4.5	4	Recomendaciones:\r\n1. Aplicar estrategias para controlar el sistema clim├ítico en el cultivo.\r\n2. Profundizar en las causas reales de la problem├ítica para establecer las soluciones innovadoras para la agricultura.	t	2022-10-06 15:08:17.366829+00	2022-10-06 15:08:17.370201+00	352	55
16	4.6	4.7	4.2	Mejorar la combinaci├│n de colores en algunos cuadros de texto para facilitar la lectura de los mismos.\r\nSe hacen recomendaciones sobre refinamiento de resultados de consumo de energ├¡a semanal y sobre acotamiento del alcance sobre indicadores de contaminaci├│n a solo indicadores de GEI equivalentes.	t	2022-10-06 15:17:26.709205+00	2022-10-06 15:17:26.712172+00	356	81
17	3.9	4	3.5	Incluir algunas recomendaciones	t	2022-10-06 15:18:04.109774+00	2022-10-06 15:18:04.112957+00	375	54
18	5	4.84	5	Excelente!!	t	2022-10-06 15:18:30.065037+00	2022-10-06 15:18:30.067994+00	386	81
19	4.8	4.8	4.7	Cuando se hace un experimento siempre debe hacerse una revisi├│n de literatura. Con esto se puede preveer las condiciones y factores necesarios para garantizar ├®xito del experimento. En general super bien.	t	2022-10-06 15:19:00.772306+00	2022-10-06 15:19:00.775347+00	415	54
20	4.7	5	4.6	Conectar el proyecto con el objetivo de desarrollo sostenible mencionado. Enumerar alianzas para el proveedor del pl├ístico para cuando se requieran grandes cantidades. Excelente proyecto, muchos ├®xitos	t	2022-10-06 15:20:29.537767+00	2022-10-06 15:20:29.543829+00	153	63
21	5	4.8	5	Excelente iniciativa, felicitaciones\r\nBuena expresi├│n oral	t	2022-10-06 15:22:59.557034+00	2022-10-06 15:22:59.560055+00	382	73
22	4.5	4.2	4.5	Nuevamente me falt├│ la explicaci├│n del t├®rmino eco eficacia. Felicitaciones por la iniciativa del proyecto.	t	2022-10-06 15:23:20.481536+00	2022-10-06 15:23:20.485331+00	8	63
23	5	5	4	Cumple con los objetivos propuestos	t	2022-10-06 15:28:44.993911+00	2022-10-06 15:28:44.997176+00	362	88
24	5	5	5	Muy buen trabajo\r\nFelicitaciones	t	2022-10-06 15:30:38.378501+00	2022-10-06 15:30:38.380955+00	368	88
25	4.4	4.5	3.7	El poster tiene fotografias y recursos de apoyo. Pero carece de una estructura organizada. Si no hay expositor, es dificil conocer detalles del proyectos. El poster falta estructura.	t	2022-10-06 15:35:15.682072+00	2022-10-06 15:35:15.685029+00	415	51
26	5	5	5	felicitaciones	t	2022-10-06 15:40:24.366947+00	2022-10-06 15:40:24.371698+00	395	75
27	4.5	4.5	4.5	Como lo describi en la primera parte de la evauacion, e titulo no es adecuado para lo q se esta presentando\r\nFelicitaciones por un buen trabajo y la forma metodologica de abordar.\r\nDe acciones a seguir, q no se vieron aca,  se sugiero:\r\n-caracterizaci├│n total del electrolizador (vol├║menes producidos, parte el├®ctrica, tipos segun electrolitos)	t	2022-10-06 15:41:14.579564+00	2022-10-06 15:41:14.582334+00	154	82
28	4.5	5	4.5	Referencias no est├ín en un formato.\r\nEn la metodolog├¡a deber├¡an presentar tambi├®n el dise├▒o de la p├ígina web.\r\nLevantamiento de requerimientos y algunos aspectos deben ser presentados.	t	2022-10-06 15:44:00.530774+00	2022-10-06 15:44:00.534187+00	389	75
29	5	5	4	El p├│ster no cumple con con algunos de los par├ímetros de calificaci├│n de evaluaci├│n, no se identifica el problema, objetivos entre otros. \r\n\r\nMe queda corto la informaci├│n expuesta en el p├│ster, los cr├®ditos a los elaboradores del producto no se ven en el mismo	t	2022-10-06 15:44:54.086103+00	2022-10-06 15:44:54.089564+00	363	51
30	4	4	4.5	Mejorar la fundamentaci├│n en temas f├¡sico-quimicos a fin de desarrollar una adecuada caracterizaci├│n de la celda electrol├¡tica y la producci├│n de H2 ante diferentes modificaciones fruto del trabajo experimental	t	2022-10-06 15:46:28.328242+00	2022-10-06 15:46:28.331243+00	359	82
31	4.5	4.8	4.6	Buen trabajo, se recomienda tener en cuenta el aspecto normativo. Incluir los ODS asociados a la investigaci├│n.	t	2022-10-06 15:48:20.388486+00	2022-10-06 15:48:20.391105+00	374	91
32	5	5	4.7	Excelente trabajo.	t	2022-10-06 15:51:14.888722+00	2022-10-06 15:51:14.892012+00	153	91
33	4.5	4.5	4.3	La presentaci├│n es clara, llama la atenci├│n del p├║blico. \r\nPreguntas: qu├® refiere con potencial uso? \r\nPor qu├® tilapia y no otros peces de mayor tama├▒o producto de pesqueras?\r\nQu├® podr├¡a salir mal en el experimento?	t	2022-10-06 15:52:12.714329+00	2022-10-06 15:52:12.717801+00	104	83
34	3.5	3.5	3.8	Los autores presentan su propuesta sin informaci├│n gr├ífica que permite ilustrar el sentido de los datos que registran no es posible tampoco de acuerdo al proyecto que los resultados dispongan de interpretaci├│n previa para su uso por los m├®dicos especialistas	t	2022-10-06 15:53:44.863502+00	2022-10-06 15:53:44.866318+00	355	79
35	5	4	4	Mayor especificidad para el tema.\r\nNo todas las tecnolog├¡as 4.0 se incluyen.\r\nEl resultado esperado de la investigaci├│n debe ser m├ís claro.  Es una herramienta que se patenta? O es solamente un diagn├│stico.	t	2022-10-06 15:56:41.596994+00	2022-10-06 15:56:41.60053+00	412	100
36	4.5	4	4.5	Observacci├│n: Mejorar la entonaci├│n  (voz) de la presentaci├│n, revisar el benchmarking de soluciones del mercado, que es lo que se diferencia de la tuya y el valor agregado. Proceso de c├│mputo, manejo de resoluci├│n y llenado, prueba de campo con im├ígenes de animales con objetos y reducci├│n de luz.	t	2022-10-06 15:58:32.6356+00	2022-10-06 15:58:32.638891+00	376	85
37	4.548	4.8	4.8	El trabajo presentado oralmente recoge varias de las recomendaciones que se le hicieron en la evaluaci├│n escrita.  Se recomienda teber en cuenta ├®stas observaciones para yrabajos futuros.	t	2022-10-06 16:03:22.496154+00	2022-10-06 16:03:22.499629+00	385	85
38	5	5	4	El p├│ster cumple con todos los criterios de evaluaci├│n pero debe tener menos letra y un poco m├ís de im├ígenes.	t	2022-10-06 16:04:36.445204+00	2022-10-06 16:04:36.449129+00	363	62
39	4.8	5	3.8	Letra blanca en tama├▒o muy peque├▒o, mucho texto.	t	2022-10-06 16:08:58.365832+00	2022-10-06 16:08:58.369935+00	375	62
40	4.5	4.5	4	Comentar cual bds en la presentacion cual usaron, cual ciclo de desarrollo o metodologia usaron ? Comentar cual libreria usaron  y como lo van a evaluar?	t	2022-10-06 16:11:27.314635+00	2022-10-06 16:11:27.317964+00	46	90
41	5	4.5	3.5	Los estudiantes dominan el tema. En la presentaci├│n hubo algunos titubeos, la presentaci├│n oral es atractiva. La presentaci├│n es bastante standard	t	2022-10-06 16:12:44.63626+00	2022-10-06 16:12:44.639222+00	392	90
42	4.5	4.5	5	Es un proyecto con elementos interesantes. Es recomendable usar esquemas o figuras donde se vean las aplicaciones del uso de las c├®lulas madres mesenquimales.	t	2022-10-06 16:14:18.640969+00	2022-10-06 16:14:18.643928+00	369	72
43	5	4.8	5	muy buena la presentacion, clara y puntual	t	2022-10-06 16:20:11.175654+00	2022-10-06 16:20:11.17875+00	169	84
44	4.5	4	3.5	Utilizar herramientas de presentaci├│n de contenidos	t	2022-10-06 16:21:15.411769+00	2022-10-06 16:21:15.415682+00	380	71
45	5	4.5	4	Excelente dominio del tema, buena expresi├│n oral. Presentaci├│n standard	t	2022-10-06 16:23:10.318274+00	2022-10-06 16:23:10.321946+00	392	84
46	4.4	4	3.8	Precisar m├ís con las variables de origen del  Modelo.\r\nBien porque integran el conocimiento financiero con sistemas..\r\nMejorar la presentacion de contenidos	t	2022-10-06 16:23:37.006834+00	2022-10-06 16:23:37.009774+00	373	71
47	4.8	4.5	4.5	Revisar si pueden fusionar los ├║ltimos 2 objetivos, revisar con director.\r\nUsar, ingl├®s con tilde.\r\nTecnologias vas a utilizar?	t	2022-10-06 16:24:46.457705+00	2022-10-06 16:24:46.460247+00	46	98
48	4.9	4.5	4.2	Muy buena explicaci├│n del proyecto, muestra dominio del tema y se nota el trabajo. El proyecto es muy interesante y ambicioso \r\nSe sugiere revisar la redacci├│n de los objetivos y la presentaci├│n debi├│ ser mas atractiva mas vendedora para realzar el proyecto	t	2022-10-06 16:38:12.804072+00	2022-10-06 16:38:12.806845+00	160	89
49	5	4.5	4.5	Algunos errores de ortograf├¡a en la presentaci├│n	t	2022-10-06 16:38:45.145136+00	2022-10-06 16:38:45.147867+00	412	78
50	4.6	4.5	4	Buena presentaci├│n,buena expresi├│n. El trabajo esta  bien delimitadon y estructurado	t	2022-10-06 16:39:55.903269+00	2022-10-06 16:39:55.906356+00	393	78
51	5	4.5	4.5	Muy buen trabajo	t	2022-10-06 16:40:05.912316+00	2022-10-06 16:40:05.915264+00	383	89
52	4.5	4.3	4.5	Me gustaria que profundizaras en las metodologias del desarrollo, arquitecturas y patrones.\r\nTrabajar un poco en su ponencia, estar mas sereno y tiempos.	t	2022-10-06 16:40:27.29568+00	2022-10-06 16:40:27.299296+00	364	98
53	5	5	5	Se sugiere identificar los tipos de producto seg├║n Minciencias resultantes. Clarificar el potencial de negocio.	t	2022-10-06 16:42:29.578639+00	2022-10-06 16:42:29.581468+00	379	59
54	5	4.5	5	Muy buena presentaci├│n y exposici├│n de resultados.	t	2022-10-06 16:49:52.751672+00	2022-10-06 16:49:52.754663+00	403	59
55	4	4.5	4	Mejora el instrumento y enfocarte a los ├¡tem que resaltan tu investigaci├│n, y la relaci├│n, m├ís sint├®tica y ejecutiva. Tambi├®n realizar demos, entrenamientos y validaci├│n entre ello retroalimentacion.	t	2022-10-06 16:57:15.808558+00	2022-10-06 16:57:15.813861+00	376	70
56	4.9	4.7	4.3	Mostrar el instrumento de medici├│n y ampliar las experiencias regionales	t	2022-10-06 17:05:26.87402+00	2022-10-06 17:05:26.877609+00	379	70
57	5	5	4.3	Mejorar los objetivos\r\nMuy buen proyecto	t	2022-10-06 17:06:16.349655+00	2022-10-06 17:06:16.352199+00	386	73
58	4	4	4	Recomiendo revisar la herramienta computacional para simular el modelo de ruteo de veh├¡culos. En la sustentaci├│n es importante presentar alternativas y formas de modelar este problema.	t	2022-10-06 20:49:47.013541+00	2022-10-06 20:49:47.016649+00	372	67
59	0	0	0	no se present├│	t	2022-10-06 21:54:31.116792+00	2022-10-06 21:54:31.120327+00	395	86
\.


--
-- Data for Name: evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1 (id, descripcion, activacion_calificacion_inngeriatec1, fecha_creacion) FROM stdin;
1	Activar bot├│n de calificar para la primera fase de proyectos de Inngeniatec	f	2022-10-05 19:41:55.047441+00
\.


--
-- Data for Name: evaluaciones_preseleccion_activacioncalificacioninngeniateca306; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_preseleccion_activacioncalificacioninngeniateca306 (id, descripcion, activacion_calificacion_inngeriatec1, fecha_creacion) FROM stdin;
1	Activar bot├│n de calificar para la presentaci├│n en vivo de proyectos de Inngeniatec	t	2022-10-05 19:42:48.609323+00
\.


--
-- Data for Name: evaluaciones_preseleccion_activacioncalificacionpreseleccion; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_preseleccion_activacioncalificacionpreseleccion (id, descripcion, activacion_calificacion_preseleccion, fecha_creacion) FROM stdin;
1	Activar bot├│n de calificar para la parte de preselecci├│n de proyectos de semilleros	f	2022-10-05 04:27:51.098218+00
\.


--
-- Data for Name: evaluaciones_preseleccion_evaluacionpreseleccion; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_preseleccion_evaluacionpreseleccion (id, presentacion_escrita, estructura_texto, fuentes_consultadas, observaciones1, resumen_introduccion, objetivos, pertinencia_innovacion, referente_teorico, propuesta_metodologia, resultados_preliminares, discucion_preliminar, observaciones2, is_calificado, fecha_evaluacion, fecha_actualizacion, evaluador_id, proyecto_id) FROM stdin;
14	5	5	5		3	5	2.5	5	3.5	5	5	La redacci├│n del abstract est├í en primera persona del plural y parece traducci├│n directa del espa├▒ol. En el art├¡culo no se declara cual es la innovaci├│n del m├®todo empleado. En la tabla de resultados se enumeran la operaciones (R1, R2, R3, etc.) pero no se especifican con nombre.	t	2022-09-22 22:56:22.08296+00	2022-09-22 22:56:22.085346+00	392	84
5	4	4.5	2	El documento tiene potencial de publicaci├│n si se aumenta el n├║mero de referencias para soportar mejor la investigaci├│n. Igualmente, uniformizar el formato de escritura ya que hay algunos p├írrafos justificados y otros no, as├¡ como tambi├®n con el interlineado.	4.5	4.5	4.5	4	3	5	4.5	La metodolog├¡a puede ser presentada de una manera mas amplia ya que los resultados lo ameritan.	t	2022-09-22 16:07:10.948725+00	2022-09-22 16:07:10.95375+00	356	99
6	3	2	0		1	3	2	2	0	0	0	El documento no sigue los lineamientos solicitados.	t	2022-09-22 16:09:53.40187+00	2022-09-22 16:09:53.405147+00	104	93
7	5	5	5		4	4	4	4	5	4	4		t	2022-09-22 16:12:16.783733+00	2022-09-22 16:12:16.786688+00	104	83
8	5	4	2	Se recomienda ampliar el numero de referencias, especialmente incluir resultados de investigaciones similares.	5	4.5	5	2	4	3.5	4	Reforzar el componente te├│rico	t	2022-09-22 16:12:36.625226+00	2022-09-22 16:12:36.627949+00	356	81
9	5	5	5		5	5	5	5	5	5	5		t	2022-09-22 16:43:00.056516+00	2022-09-22 16:43:00.059831+00	362	88
11	5	5	5	Revisar ortograf├¡a y redacci├│n	5	5	4	5	5	5	4	Cumple con los requisitos requeridos	t	2022-09-22 21:33:28.092227+00	2022-09-22 21:33:28.095084+00	153	91
12	4.6	4.8	4.5	La propuesta est├í bien estructurada.	4.2	4.6	5	4.6	4.6	4.6	4.4	Se recomienda mejorar la redacci├│n del objetivo general	t	2022-09-22 21:42:18.01539+00	2022-09-22 21:42:18.018212+00	374	91
13	5	5	4	Hay bibliograf├¡a que no est├í estrechamente ligada con el tema de investigaci├│n	3	3	3.5	3	3.5	5	4	La redacci├│n del abstract es traducci├│n literal del ingl├®s, no hay un objetivo donde se indague sobre las necesidades del cliente, en cuanto a innovaci├│n existen hace tiempo programas OCR, en el referente te├│rico no se habla de estos softwares, la propuesta metodol├│gica se deber├¡a sustentar en una metodolog├¡a existente de desarrollo de software. Queda una pregunta, ┬┐no se podr├¡a evitar este problema utilizando digitalizaci├│n en la fuente? es decir, que el operario lleve una tablet o celular y haga directamente el registro digital?	t	2022-09-22 22:43:19.114613+00	2022-09-22 22:43:19.117303+00	392	90
16	5	5	4	Recomiendo acudir a referencias m├ís recientes, de al menos 3 a├▒os antes de la realizaci├│n de la presente investigaci├│n.	5	5	4	5	5	5	5	No se demuestra una evidencia en cuanto al componente de interdisciplinariedad que correspond├¡a.	t	2022-09-24 00:16:45.460534+00	2022-09-24 00:16:45.463682+00	366	66
17	2	3	2	Recomiendo realizar una revisi├│n m├ís minuciosa del documento presenta constantes falencias en cuanto a los lineamientos del formato establecido y puedo decir que se observa que no mantiene una estructura organizada en su contenido, no cuenta con inclusi├│n de tablas, ni gr├íficos, ni im├ígenes. Adicional a esto el contenido posee varios errores de ortograf├¡a y de redacci├│n, tiene incluso diferentes tipos de letra y tama├▒os de esta, diferente a la requerida por el formato. En cuanto a las referencias bibliogr├íficas, son escasas y estas carecen de forma y estructura solicitada para la presentaci├│n del documento y no son actuales en su gran mayor├¡a, situaci├│n que sugiero se maneje con al menos 3 a├▒os de antig├╝edad contados a partir del momento actual.	4	3	3	0	0	0	0	Como observaciones del nivel de innovaci├│n, el tema de investigaci├│n no cuenta con un prop├│sito claro de su realizaci├│n, por lo tanto es indispensable mencionarlo y resaltar su pertenencia, adem├ís el documento no cuenta con referente te├│rico, ni la propuesta metodol├│gica o proceso de creaci├│n, ni resultados preliminares y tampoco discusi├│n preliminar.	t	2022-09-24 00:42:59.68054+00	2022-09-24 00:42:59.684415+00	366	57
18	4.5	4	4		4	4	4	4	4	4	4		t	2022-09-24 08:22:37.391606+00	2022-09-24 08:22:37.394259+00	87	83
19	4.5	4	4.5	Aconsejo el uso de im├ígenes con esquemas para un mejor exposici├│n del tema	4.5	4.5	4	4.5	4	3.5	4	El trabajo debe valorar el uso potencial de la t├®cnica y las potenciales beneficios de la misma.Cita a modificar: NCBI - WWW Error Blocked Diagnostic. (2016, 20 diciembre). Effect of hypoxia on the proliferation of porcine bone marrow-derived mesenchymal stem cells and adipose-derived mesenchymal stem cells in 2- and 3-dimensional debe ser modificada al formato correcta. El trabajo tiene buena calidad metodol├│gica	t	2022-09-25 19:43:29.780855+00	2022-09-25 19:43:29.784084+00	369	72
20	4	3	3	2	3	3	4	2	2	5	2	El documento es interesante y los teas de visi├│n por computador tienen un inter├®s especial por la dificultad computacional para resolverlos. El documento presentado no le hace justicia a todo el trabajo que subyace en el desarrollo de este tipo de tecnolog├¡as. Es importante especificar metodol├│gicamente el entrenamiento y validaci├│n del algoritmo, pulir los objetivos (en el general hay m├║ltiples verbos que pueden discurrir en objetivos); el primer objetivo es etereo en su cumplimiento pues dif├¡cilmente se puede determinar cuando alguien ha terminado de investigar. En general, el documento habla m├ís de generalidades administrativas del proyecto que de las t├®cnicas, recomiendo ahondar en estas ├║ltimas lo cual fortalecer├í los referentes te├│ricos, la metodolog├¡a, y la estructura en general.	t	2022-09-26 12:52:29.827508+00	2022-09-26 12:52:29.830279+00	383	89
21	3.5	4	3	No se sigue una misma estructura en la redacci├│n, algunas veces se escribe en primera persona y otras en tercera persona.	3.5	4	3.5	4	3.5	4	3.5	La metodolog├¡a no est├í redactada en una forma clara, se sugiere un gr├ífico para metodolog├¡a.  Se recomienda actualizar y ampliar referencias. Por ├║ltimo, la discusi├│n y conclusiones se recomienda ampliarlas y mostrar el aporte disciplinar.	t	2022-09-26 13:59:56.091867+00	2022-09-26 13:59:56.094578+00	390	55
37	4	3	3	mejorar las fuentes consultadas en calidad y cantidad, de los 36 articulos que revisaron solo mencionan 3 y un libro .	4	4	3	3	3	2	2	falta profundidad, an├ílisis  y sobre todo una hilaridad de la aplicaci├│n de los conceptos a lo largo del texto. En los an├ílisis falta profundidad y comprensi├│n para generar en el lector la comprensi├│n del impacto de sus resultados .	t	2022-09-26 19:36:46.701021+00	2022-09-26 19:36:46.704259+00	393	78
22	4.8	4.5	4.5	-La estructura esta correcta solo que el abstract puso el resumen en espa├▒ol no en ingles. -se plantea una metodolog├¡a clara, sin embargo, en los objetivos  espec├¡ficos no se tiene uno que permita cubrir la 4ta fase de validaci├│n.	4	4	5	3.5	4.5	4.5	4.5	- El objetivo general esta incompleto, y le sobran verbos en infinitivo, adem├ís falta el como y para que, se sugiere: "Construir un prototipo de aplicaci├│n que permita las capacidades de reconocimiento  y almacenamiento de rostros, tomando nota de los que sean reconocidos, para el registro de asistencia a eventos mediante la aplicaci├│n de t├®cnicas de IA." - Los objetivos espec├¡ficos les falta el como hacerlo, sobre todo en el OE3 deben poner las herramientas software a implementar. - El refernte teorico esta muy pobre, falto porfundizrzar un poco mas en las teor├¡as usadas en reconocimiento facial y en IA. - Es un trabajo con mucho potencial y tiene una gran aplicaci├│n te felicito	t	2022-09-26 14:17:43.158496+00	2022-09-26 14:17:43.161116+00	160	89
23	3.5	3	4	Hay que cuidar un poco mas la redacci├│n y articulaci├│n, considero que en los resultados  esperados me falta mas articulaci├│n con los objetivos espec├¡ficos propuestos.	4.3	4	4.8	4.2	3.8	3	4.2	Considero que se puede mejorar la metodolog├¡a para que este mas acorde a el logro de los objetivos, cient├¡ficamente seria bueno indicar si en la fase uno se identifico el total de la flora nativa y se determino que no toda puede vincularse a proyectos arquitect├│nicos de vivienda teniendo en cuenta las dimensiones que pueden llegar a alcanzar algunos individuos.	t	2022-09-26 14:26:57.178333+00	2022-09-26 14:26:57.181198+00	363	62
24	4.5	5	4	Actualizar algunas fuentes bibliogr├íficas, preferiblemente en una ventana de 5 a├▒os.	5	3.5	5	0	5	5	5	No hay objetivos espec├¡ficos, se pudiesen plantear algunos. No se abord├│ el espacio de referentes te├│ricos., aunque tiene una amplia bibliograf├¡a, no cita leyes, fundamentos o conceptos que respalden la investigaci├│n.	t	2022-09-26 14:43:33.019573+00	2022-09-26 14:43:33.022406+00	390	52
25	3	3	4.5	Me queda un poco corto pues no contiene objetivos espec├¡ficos, y quiz├í falta afinar un poco mas en la redacci├│n.	4	2.5	4.8	4.5	4.3	4.5	3.8	Es un proyecto interesante desde el punto de vista tecnol├│gico,  por tratarse de un desarrollo tecnol├│gico propio me parece que deben hablar un poco mas sobre la reflexi├│n del aporte que este proyecto puede ofrecer a la comunidad.	t	2022-09-26 15:01:26.487215+00	2022-09-26 15:01:26.489843+00	363	51
26	4.5	4	3.5	Revisar fuentes mas actualizadas, tener en cuenta que wikipedia no es considerada una fuente.	4	3.5	3.5	3.5	4	3.5	3.5	Los objetivos no est├ín claramente descritos.  Se sugiere que el referente te├│rico no se presente a manera de conceptos ├║nicamente, sino la relaci├│n y los fundamentos que respaldan la investigaci├│n.	t	2022-09-26 15:09:00.784093+00	2022-09-26 15:09:00.786719+00	390	54
27	4	3.5	5	No se encuentra el apartado de referentes te├│ricos, revisar la redacci├│n en algunos apartados.	4	3.5	5	0	5	5	5	Se sugiere plantear algunos objetivos espec├¡ficos que conlleven a la resoluci├│n del problema identificado. No cuenta con el apartado referente te├│rico que respalde la investigaci├│n.	t	2022-09-26 15:32:34.445681+00	2022-09-26 15:32:34.460583+00	390	51
28	5	5	5		5	5	5	5	5	5	5	NA	t	2022-09-26 17:03:53.530898+00	2022-09-26 17:03:53.533386+00	169	86
30	5	5	4	Presentan 5 referencias bibliogr├íficas, de las cuales 4 est├ín relacionadas con el tema de la propuesta y la quinta referencia con respecto a la metodolog├¡a	3.5	3.5	4	2	3	3	3	En la propuesta solo presentan el objetivo general, no presentan objetivos espec├¡ficos. El marco te├│rico es el t├¡tulo de dos trabajos citados en las referencias bibliogr├íficas. No se observa en el trabajo la forma como van a obtener la base de datos para trabajar el proyecto.	t	2022-09-26 17:06:11.756128+00	2022-09-26 17:06:11.758666+00	372	67
31	0	0	0	El documento compartido es de una hoja que solo tiene el t├¡tulo de la propuesta, el nombre de los estudiantes y los objetivos	0	3	0	0	0	0	0	El documento compartido es de una hoja que solo tiene el t├¡tulo de la propuesta, el nombre de los estudiantes y los objetivos. En los objetivos espec├¡ficos no se evidencia las fases del proyecto	t	2022-09-26 17:09:58.344941+00	2022-09-26 17:09:58.348707+00	372	97
32	5	4.5	5	Por favor revisar el area de conocimiento, si es algo de desarrollo de sw o algo similar.	4	4.5	4	4.5	5	4.5	4.5	Hola, me parece buen trabajo. Revisar los objetivos, tienen muchos y me parece k algunos pueden ser actividades.  Revisar tildes en mayusculas.	t	2022-09-26 17:10:10.177473+00	2022-09-26 17:10:10.185294+00	46	98
33	4	4	3	Las tablas e imagenes deben tener una descripci├│n. La metodolog├¡a debe visualizar el cumplimiento de objetivos, dentro del objetivo tiene validaci├│n, pero no se observa en la metodolog├¡a. Se deben incluir las referencias en todo el documento, por ejemplo la metodolog├¡a de investigaci├│n es basada en?. Es una p├ígina web, lo que implica el dise├▒o de una interfaz de usuario, el cual tiene un soporte te├│rico.	5	5	4	4	4	5	3	No hay conclusiones	t	2022-09-26 17:16:18.771502+00	2022-09-26 17:16:18.774498+00	389	75
34	4	1	3	No hay objetivos espec├¡ficos, metodolog├¡a, proceso de creaci├│n y resultados preliminares  o esperados	4	3	0	0	0	0	0	El documento solamente presenta el resumen, introducci├│n y el objetivo general.	t	2022-09-26 17:21:42.447122+00	2022-09-26 17:21:42.44977+00	389	61
35	3	3	4	Mejorar la redacci├│n y la ortograf├¡a, y el uso de los signos de puntuaci├│n en todo el documento,	4	2	5	3	4	4	3	Detallar el proceso de operaciones de activos financieros, los actores y variables involucradas para su posterior automatizaci├│n; en las conclusiones reflexionar el aspecto de "se realizaron muy pocas operaciones, esto podr├¡a deberse a que las condiciones ideales planteadas por los autores estuvieron muy altas respecto al mercado y que"	t	2022-09-26 18:18:58.486146+00	2022-09-26 18:18:58.488814+00	373	71
36	5	4	4.5	Hola, para felicitarlos por el trabajo realizado. En cuanto a la estructura lo veo bien, tiene tildes en may├║sculas y veo que se cumple con lo solicitado.	4.5	5	4	4.5	4	4.5	4	Se puede describir mas la discusion preliminar. Hay varias referencias con mucha antiguedad. Me gustaron los objetivos, son medibles.	t	2022-09-26 18:46:13.391347+00	2022-09-26 18:46:13.394362+00	46	90
38	0	0	0	El documento es un formato, no hay informaci├│n del proyecto.	0	0	0	0	0	0	0	El documento es un formato, no hay informaci├│n del proyecto.	t	2022-09-26 21:21:01.711828+00	2022-09-26 21:21:01.714667+00	387	94
29	5	5	5		5	5	5	5	5	5	5		t	2022-09-26 17:06:09.05118+00	2022-09-28 17:30:22.091473+00	169	84
39	0	0	0	El documento es un formato, no hay informaci├│n del proyecto.	0	0	0	0	0	0	0	El documento es un formato, no hay informaci├│n del proyecto.	t	2022-09-26 21:21:33.281396+00	2022-09-26 21:21:33.29143+00	387	95
40	5	4.8	4.8		5	4.8	4.9	5	5	4.8	5		t	2022-09-26 21:36:10.899385+00	2022-09-26 21:36:10.902157+00	365	85
41	5	5	5		4	3	5	4	5	3	0	Mejorar redacci├│n de objetivos, en el resumen hay siglas que no se definen, ampliar referente te├│rico, no hay resultados preliminares, solo resultados esperados. No hay discusi├│n preliminar.	t	2022-09-26 22:02:34.526957+00	2022-09-26 22:02:34.529689+00	55	72
42	3	3	0	No tiene referencias, documento incompleto	0	2	4	0	3	0	0	No hay resumen, no hay introducci├│n, objetivos incompletos (no tienen todos el qu├®, el c├│mo y el para qu├®), no hay marco te├│rico, no hay resultados.	t	2022-09-26 22:07:16.159185+00	2022-09-26 22:07:16.16162+00	55	93
43	5	5	5		5	5	5	5	5	5	5		t	2022-09-27 01:31:37.235462+00	2022-09-27 01:31:37.238584+00	395	86
44	5	5	5		5	5	5	5	5	5	5		t	2022-09-27 01:39:17.199402+00	2022-09-27 01:39:17.20214+00	395	75
45	3.8	3.7	3.5	Mejorar las bibliograf├¡a consultada con referentes internacionales	4.5	4	3.5	3.5	3.4	3.2	3.6	Desarrollar una metodolog├¡a m├ís precisa con lo que se busca y mejorar las conclusiones.	t	2022-09-27 02:12:50.936323+00	2022-09-27 02:12:50.938827+00	375	62
46	4.2	3.8	3.7	Mejorar las fuentes bibliogr├íficas consultadas	3.9	3.2	2.6	3.3	3	2.5	2.5		t	2022-09-27 02:32:06.114804+00	2022-09-27 02:32:06.117577+00	375	54
47	4	4	3.5	Se debe aumentar el numero de fuentes consultadas	3.5	4	4	3	3	3.5	3	El documento no presenta reusltados preliminares por tal razon o es claro si es una propuesta de proyecto o proyecto en curso.	t	2022-09-27 03:00:11.659097+00	2022-09-27 03:00:11.661964+00	371	61
48	5	4	4	Bien la estructura. Solo q el titulo dice diferente a la propuesta	5	3	3	5	4	4	4	En su trabajo se espera q hagan medicine de la ccantidad de H2 producido bajo las condiciones establecidas	t	2022-09-27 03:27:43.155879+00	2022-09-27 03:27:43.158673+00	154	82
49	5	3	5	No se ve la section de objetivos planteados explicitamente	5	4	5	5	5	4	4	Hacer as ├®nfasis en el articulo de la busqueda de distrito termico en la UNAB	t	2022-09-27 03:44:47.761882+00	2022-09-27 03:44:47.766788+00	154	80
51	0	0	0	No se presenta documento, sino la plantilla.	0	0	0	0	0	0	0	No se presenta documento, sino la plantilla.	t	2022-09-27 13:39:42.582618+00	2022-09-27 13:39:42.585376+00	358	95
52	4	4	4		4	5	4	4	3	0	0		t	2022-09-27 14:02:23.296375+00	2022-09-27 14:02:23.300269+00	87	79
53	4.5	4.5	4.5	- se recomienda  usar fuentes de bibliograf├¡a actuales.	5	4.5	5	4.5	5	5	4	- La introducci├│n deber├¡a hablar sobre los inicios de la t├®cnica implementada.	t	2022-09-27 14:08:51.288672+00	2022-09-27 14:08:51.291721+00	403	59
54	3.5	3	3.5	Es necesario el completamiento de la propuesta	4	3.5	3	3	3.5	3	3	Aun es reducida requiere referencias actualizadas de aplicaci├│n	t	2022-09-27 14:15:35.722596+00	2022-09-27 14:15:35.726135+00	355	79
55	4	3.5	3	Revisar la redacci├│n, de igual manera se sugiere ampliar y actualizar las referencias.	5	4	3.5	5	3.5	4	3.5	Hacer una revisi├│n a la metodolog├¡a, para que conduzca a la resoluci├│n del problea. Deigual manera se sugiere dar relevancia a las conclusiones para mostrar un aporte importante del proyecto	t	2022-09-27 15:33:14.74376+00	2022-09-27 15:33:14.746512+00	352	55
56	4.5	5	5		5	4	5	0	5	5	5	Se sugiere proponer objetivos espec├¡fico, que lleven a la resoluci├│n del problema. No cuenta con referentes te├│ricos que respaldan la investigaci├│n.	t	2022-09-27 15:35:57.93783+00	2022-09-27 15:35:57.940607+00	352	52
57	0	0	0	No se envi├│ documento. Se adjunt├│ la plantilla del evento.	0	0	0	0	0	0	0	No se envi├│ documento. Se adjunt├│ la plantilla del evento.	t	2022-09-27 15:51:32.334859+00	2022-09-27 15:51:32.33752+00	358	94
58	4	4	3	Es un trabajo interesante, sin embargo es muy ambicioso, la clasificaci├│n multiclass de 83 tipos de animales es todo un reto que requerir├¡a una gran cantidad de im├ígenes para el entrenamiento de la red neuronal, de manera que las caracter├¡sticas de especies similares queden muy bien reconocidas.  El trabajo se soporta en muy pocas fuentes (4), y la referencia m├ís reciente es un trabajo publicado hace 5 a├▒os.	4	3.5	3.5	3	3	3	3.5	Se recomienda revisar los objetivos de manera que se garantice que cada uno incluye un qu├®, como y para qu├®.  No se describe el proceso que se seguir├í para el desarrollo del proyecto.  Pese a que se menciona que se est├ín recopilando im├ígenes, no se dan detalles de la forma en que se esta llevando a cabo este proceso, el formato de las im├ígenes, el tama├▒o de las mismas, etc.  Llama la atenci├│n que el trabajo se orienta┬áal uso de redes neuronales profundas, sin embargo no se presenta una definici├│n formal de redes neuronales de este tipo. Es necesario hacer una revisi├│n de trabajos relacionados al objetivo de este proyecto. ┬áSe recomienda revisar frameworks como Open CV o YOLO que se enfocan en Computer Vision.	t	2022-09-27 16:01:53.252092+00	2022-09-27 16:01:53.255158+00	385	85
59	5	4	4	La estructura est├í bien, algunos problemas de redacci├│n. Alguna referencia no tiene fecha. No observo revisi├│n de trabajo sobre instrumentos similares.	4	5	5	4	5	5	5	Las preguntas del instrumento son ├║tiles. Es importante revisar a veces se habla de sistemas y en otras de instrumento.	t	2022-09-27 16:20:10.443437+00	2022-09-27 16:20:10.446566+00	379	70
60	4.8	4.6	4.5	Muy bien estructurado y presentan la informaci├│n clara	4.5	4.3	5	4.5	4	4.7	5	Se evidencia un buen trabajo, felicitaciones. Quisiera que profundizaran un poco en aspectos t├®cnicos como la arquitectura de software, patrones utilizados o estilos de programaci├│n que utilizaran.	t	2022-09-27 16:23:10.378528+00	2022-09-27 16:23:10.380836+00	364	98
61	5	5	4	No se entiende por qu├® se enmarca en enfoque sist├®mico. Incrementar el n├║mero de referencia. En general bien.	5	5	4	4	5	5	4	Profundizar en los referentes te├│ricos, y el nivel de innovaci├│n.	t	2022-09-27 16:34:59.526961+00	2022-09-27 16:34:59.530142+00	379	59
62	3.5	4	4	Hola, buen trabajo. Tener cuidado con las tildes en may├║sculas. Hay 2 referencias muy antiguas y no cumplen con el formato en las referencias..	4	4.5	4	3.5	3.5	3	3	Hab├¡an secciones que hicieron falta como las discusiones, resultados preliminares, propuesta metodol├│gica, etc.	t	2022-09-27 16:38:14.387686+00	2022-09-27 16:38:14.390588+00	46	57
63	4.5	4.2	4.4	Contextualizar las tablas y las figura en el texto, el resumen debe indicar cual es el m├®todo, metodolog├¡a o t├®cnicas que van a aplicar en el desarrollo de la propuesta.	4	4.1	5	4.2	4.2	4	4.3	Reitero, deben especificar cual es la metodolog├¡a para el tratamiento de  de datos, ademas de enunciar cuales son las limitaciones, perturbaciones o condiciones de contorno para el caso de estudio que piensa abordaruesta.	t	2022-09-27 16:43:43.125171+00	2022-09-27 16:43:43.12775+00	386	81
64	3.8	4	4.5		5	4.5	5	3.8	4	3.5	3.5	Profundizar mas el marco te├│rico enfocado a lo que se va a desarrollar. La metodolog├¡a debe ser m├ís espec├¡fica. Incluir resultados preliminares y su respectiva discusi├│n con el fin de determinar que aspectos se cumplen hasta el momento y cuales hacen falta para el desarrollo de la investigaci├│n. Incluir graficas y tablas para presentar mejor la informaci├│n	t	2022-09-27 16:44:35.269756+00	2022-09-27 16:44:35.273235+00	386	73
65	1	1	1		1	1	1	1	1	1	1	1	t	2022-09-27 19:28:02.462553+00	2022-09-27 19:28:02.46499+00	104	97
66	4	4	3.5	Mejorar la organizaci├│n, hacer sintesis en algunos parrafos sin perder la calidad de la informaci├│n a expresar.	4	3.5	3.9	3.5	3.5	1	1	No se percibe los resultados preliminares	t	2022-09-27 21:34:35.63907+00	2022-09-27 21:34:35.64155+00	376	70
67	5	4.5	5	Ampliar las referencias	4.5	5	4.5	5	4	5	4	Ampliar conclusiones de los resultados parciales, ampliar la discusi├│n al respecto	t	2022-09-27 21:51:05.094915+00	2022-09-27 21:51:05.097455+00	382	80
68	5	4	4	ampliar referencias consultadas	5	4	5	4	4	4	4	ampliar la discusi├│n de las fuentes consultadas	t	2022-09-27 21:56:00.226744+00	2022-09-27 21:56:00.229263+00	382	73
69	4.3	4.3	4.3		4.3	4.3	3.8	4.3	4	4.2	4	Los resultados muestran leve mejor├¡a, falta detallar m├ís el dise├▒o del m├®todo de soluci├│n y el an├ílisis estadistico propuesto en los objetivos	t	2022-09-27 22:07:12.807909+00	2022-09-27 22:07:12.811717+00	377	78
70	4.8	4.6	5	Ajustar algunas palabras incompletas en antecedentes y modelo econom├®trico. No se describe la metodolog├¡a a utilizar	5	4.8	5	5	4.5	5	5	Los objetivos deben tener un solo verbo. Falta incluir el dise├▒o metodol├│gico	t	2022-09-27 22:19:52.169887+00	2022-09-27 22:19:52.174969+00	368	88
71	4	5	5		4	5	4	5	5	3	4	No es claro si es un proyecto en ejecucion ya que no presenta resultados preliminares.	t	2022-09-28 01:52:12.279482+00	2022-09-28 01:52:12.282024+00	371	67
72	4	4	3.5	El documento no profundiza en el elemento principal de investigaci├│n:  La celda electrol├¡tica.  Se denotan algunas falencias conceptuales desde el t├¡tulo (si bien es cierto que la hidr├│lisis es la ruptura de la mol├®cula del agua, el dispositivo en estudio es un electrolizador, ya que el t├®rmino hidrolisis hace mas referencia a procesos qu├¡micos que electroqu├¡micos como por ejemplo la hidr├│lisis enzim├ítica).  Las fuentes consultadas son mas del contexto del tema que del proceso mismo del dise├▒o y construcci├│n del electrolizador.  Finalmente, en el marco te├│rico hablan de celda de combustible, lo cual es el proceso inverso al que van a estudiar.	4	3.5	3.5	3.5	4	3.5	4	El proyecto establece entre sus objetivos la construcci├│n de la celda electrol├¡tica pero no se observa el enfoque hacia un proceso de investigaci├│n formativa, no est├ín dentro de sus objetivos el que una vez se construye la celda realizar experimentaci├│n y an├ílisis de datos para establecer cu├íl ser├¡a el desempe├▒o de este prototipo en sus variables o par├ímetros m├ís importantes.  Al parecer ya construyeron la celda electrol├¡tica pero no se observa an├ílisis de mediciones en las conclusiones. o cuales ser├¡an las etapas siguientes en este proyecto	t	2022-09-28 11:07:40.873675+00	2022-09-28 11:07:40.877913+00	359	82
73	5	5	4		4	5	4	4	3	4	4		t	2022-09-28 12:48:03.46424+00	2022-09-28 12:48:03.466797+00	367	63
74	4	4	4		4.5	4	4	4.5	4	4.5	4.6		t	2022-09-28 15:51:02.088814+00	2022-09-28 15:51:02.095789+00	351	66
75	5	5	4	No hay suficientes suficientes fuentes consultadas en donde se mencione el t├®rmico eco-eficacia al que hace menci├│n en el t├¡tulo del proyecto. Debe incluirse una descripci├│n del t├®rmino soportado en fuentes de consulta	4	5	5	4	5	5	4	Muy corta la introducci├│n, nuevamente se recomienda la descripci├│n del t├®rmino de eco-eficacia como soporte al referente te├│rico.	t	2022-09-28 16:28:26.622+00	2022-09-28 16:28:26.625102+00	8	63
15	5	5	5		5	1	5	5	5	5	4.5	No se evidencian los objetivos en el articulo.	t	2022-09-23 22:49:25.988033+00	2022-09-28 18:08:45.446997+00	380	71
76	5	5	4	ampliar referencias, buena presentaci├│n del texto	4	5	5	5	5	4	4	ampliar la discusi├│n sobre como los par├ímetros de dise├▒o impactan sobre el desempe├▒o de la instalaci├│n	t	2022-09-29 03:43:36.000701+00	2022-09-29 03:43:36.00339+00	382	99
77	4.6	4	4		4	4	5	4	4	4.5	4.2	Se recomienda precisar el ├ímbito geogr├ífico sobre el cual se va a realizar la propuesta,.  Se recomienda plantear la forma en que se validar├í lo que se plantee,  Se sugiere inclurir el resumen de lecciones aprendidas..  Un trabajo interesante y pertinente.	t	2022-09-30 15:40:04.904334+00	2022-09-30 15:53:08.018417+00	413	100
78	5	4	4	Falta el resumen en ingl├®s.  Si hacen b├║squeda de art├¡culos en ingl├®s, con toda seguridad tendr├¡an m├ís referencias bibliogr├íficas.	3	5	5	4	4	4	4	Es una propuesta muy interesante, pero de cuidado.   A tener en cuenta: m├ís claridad en la forma en la que se piensa integrar la metodolog├¡a (dicen que es una revisi├│n documental), con los referentes te├│ricos que plantean.   Parece que la metodolog├¡a es m├ís la implementaci├│n PENTEX y MICMAC, que la revisi├│n en s├¡.     De otra parte, plantear cuatro (4) 4 preguntas de investigaci├│n, puede ser demasiado ambicioso.   Tienen 3 OE., pero eso no significa que deban tener 4 preguntas de investigaci├│n. Es preferible plantear solamente la pregunta para el objetivo general.  De cualquier forma, si est├ín en capacidad de responder todos los objetivos como preguntas de investigaci├│n con todo lo que eso implica, bienvenido.	t	2022-09-30 15:40:54.579076+00	2022-09-30 15:40:54.581519+00	412	100
79	5	5	5	5	5	5	5	5	5	5	5	5	t	2022-10-04 23:22:31.352598+00	2022-10-04 23:22:31.358032+00	1	50
\.


--
-- Data for Name: evaluaciones_preseleccion_valoracionproyectoingeniatec; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_preseleccion_valoracionproyectoingeniatec (id, aplicacion_escenario_real, originadidad_innovacion, calidad_tecnica, estudio_viablididad, fecha_evaluacion, fecha_actualizacion, evaluador_id, proyecto_id, is_calificado) FROM stdin;
36	2.5	2.5	3	0	2022-09-26 12:19:00.691331+00	2022-09-26 12:19:00.694202+00	351	389	t
37	4.5	4.5	2.5	0	2022-09-26 13:24:17.560098+00	2022-09-26 13:24:17.562887+00	383	388	t
38	3	3	2.5	0	2022-09-26 13:24:38.407904+00	2022-09-26 13:24:38.409934+00	383	410	t
39	5	5	4.5	0	2022-09-26 13:25:08.376081+00	2022-09-26 13:25:08.379796+00	383	420	t
40	4	5	5	0	2022-09-26 13:45:36.189797+00	2022-09-26 13:45:36.193153+00	396	398	t
11	4.5	3	4.5	4.5	2022-09-22 03:56:02.163708+00	2022-09-22 03:56:02.168012+00	87	373	t
12	5	5	5	5	2022-09-22 03:56:19.911469+00	2022-09-22 03:56:19.914487+00	87	383	t
13	4.5	4	5	4.5	2022-09-22 03:56:38.301327+00	2022-09-22 03:56:38.30408+00	87	377	t
14	1	5	3	3	2022-09-22 14:22:56.480871+00	2022-09-22 14:22:56.483891+00	387	374	t
15	5	5	3	3	2022-09-22 14:30:47.509623+00	2022-09-22 14:30:47.512276+00	387	409	t
41	5	4	4	0	2022-09-26 13:47:53.160403+00	2022-09-26 13:47:53.163468+00	396	399	t
19	5	5	5	0	2022-09-22 16:13:31.573927+00	2022-09-22 16:13:31.579641+00	104	405	t
42	5	4	4.5	0	2022-09-26 13:49:00.008453+00	2022-09-26 13:49:00.011135+00	160	390	t
21	4.5	4	5	0	2022-09-22 16:17:47.7414+00	2022-09-22 16:17:47.744413+00	104	395	t
22	4	3	3.5	0	2022-09-22 16:18:45.198817+00	2022-09-22 16:18:45.202724+00	370	419	t
23	1.5	1	1	0	2022-09-22 16:22:36.202697+00	2022-09-22 16:22:36.206729+00	104	378	t
24	4.5	4.5	4.5	0	2022-09-22 16:25:24.801365+00	2022-09-22 16:25:24.806413+00	104	385	t
27	5	4	4	0	2022-09-22 20:41:12.830467+00	2022-09-22 20:41:12.834323+00	357	402	t
29	5	5	4.5	0	2022-09-24 02:08:05.885496+00	2022-09-24 02:08:05.889885+00	384	370	t
30	5	4	4	0	2022-09-24 02:09:27.956744+00	2022-09-24 02:09:27.959311+00	384	369	t
31	3	4.5	1	0	2022-09-24 19:15:22.840127+00	2022-09-24 19:15:22.843719+00	152	387	t
32	4	1	3.5	0	2022-09-24 19:16:37.236224+00	2022-09-24 19:16:37.239545+00	152	386	t
33	3	1	3.5	0	2022-09-24 19:16:55.953806+00	2022-09-24 19:16:55.957203+00	152	391	t
34	3	2.5	4	0	2022-09-24 19:17:29.104322+00	2022-09-24 19:17:29.108399+00	152	395	t
35	2.5	3	3	0	2022-09-26 12:18:11.639671+00	2022-09-26 12:18:11.64223+00	351	416	t
43	5	5	5	0	2022-09-26 13:49:52.196884+00	2022-09-26 13:49:52.200772+00	396	403	t
44	4	4.5	4.5	0	2022-09-26 13:50:22.562407+00	2022-09-26 13:50:22.56488+00	160	374	t
45	5	4.5	5	0	2022-09-26 13:51:48.347377+00	2022-09-26 13:51:48.350148+00	160	407	t
46	4.5	4.5	5	0	2022-09-26 13:53:22.993405+00	2022-09-26 13:53:22.995756+00	160	413	t
47	5	3.5	4.5	0	2022-09-26 13:59:24.266489+00	2022-09-26 13:59:24.268955+00	364	379	t
48	4.5	4	4	0	2022-09-26 14:08:58.619039+00	2022-09-26 14:08:58.62154+00	364	390	t
49	4	4.5	4	0	2022-09-26 15:09:36.542761+00	2022-09-26 15:09:36.545374+00	363	396	t
50	4	4.5	4	0	2022-09-26 15:26:40.418024+00	2022-09-26 15:26:40.420697+00	363	408	t
52	5	5	5	0	2022-09-26 15:32:26.485071+00	2022-09-26 15:32:26.487765+00	360	416	t
53	3.5	4	3.5	0	2022-09-26 16:41:14.433574+00	2022-09-26 16:41:14.435911+00	392	384	t
54	5	4.5	3.5	0	2022-09-26 16:41:53.430518+00	2022-09-26 16:41:53.434828+00	392	372	t
55	3	4	4.5	0	2022-09-26 16:48:13.784268+00	2022-09-26 16:48:13.787213+00	392	413	t
56	3.5	3.5	3.5	0	2022-09-26 17:10:42.567045+00	2022-09-26 17:10:42.569585+00	169	382	t
57	4	4	4	0	2022-09-26 17:12:51.644297+00	2022-09-26 17:12:51.649106+00	169	376	t
58	3.5	3	3.5	0	2022-09-26 17:13:25.710249+00	2022-09-26 17:13:25.713084+00	169	378	t
59	5	4	4	0	2022-09-26 17:15:58.69115+00	2022-09-26 17:15:58.694005+00	372	399	t
60	4	4	4	0	2022-09-26 18:29:35.661117+00	2022-09-26 18:29:35.6641+00	373	400	t
61	4	4	4	0	2022-09-26 18:53:21.861534+00	2022-09-26 18:53:21.8642+00	46	418	t
62	3	2.5	2.5	0	2022-09-26 19:39:10.389888+00	2022-09-26 19:39:10.392722+00	393	419	t
63	4.5	4	3	0	2022-09-26 21:46:18.220687+00	2022-09-26 21:46:18.223398+00	365	410	t
64	4.5	4.5	4.5	0	2022-09-26 21:46:47.482578+00	2022-09-26 21:46:47.484905+00	365	420	t
65	4.5	4.5	4.5	0	2022-09-26 21:47:07.782812+00	2022-09-26 21:47:07.785404+00	365	404	t
66	5	4.5	4.5	0	2022-09-26 21:47:26.2609+00	2022-09-26 21:47:26.263321+00	365	403	t
67	4	4.5	4	0	2022-09-26 22:09:02.909773+00	2022-09-26 22:09:02.91364+00	55	406	t
68	4	4	4	0	2022-09-26 22:09:27.638539+00	2022-09-26 22:09:27.640971+00	55	383	t
69	3.5	4	4	0	2022-09-26 22:10:02.906582+00	2022-09-26 22:10:02.9093+00	55	401	t
70	3	3.5	1	0	2022-09-26 23:23:23.132381+00	2022-09-26 23:23:23.134738+00	367	370	t
71	4	3	2	0	2022-09-26 23:24:58.523718+00	2022-09-26 23:24:58.526301+00	367	369	t
72	5	4	4.5	0	2022-09-26 23:39:29.621843+00	2022-09-26 23:39:29.624702+00	104	377	t
73	3.5	4.5	3.5	0	2022-09-26 23:58:55.684803+00	2022-09-26 23:58:55.688664+00	376	379	t
74	4	4	4	0	2022-09-26 23:59:28.829856+00	2022-09-26 23:59:28.83236+00	376	418	t
75	4.5	4.5	4.5	0	2022-09-27 00:00:07.185612+00	2022-09-27 00:00:07.188368+00	376	368	t
76	4	4.5	4	0	2022-09-27 00:00:13.552595+00	2022-09-27 00:00:13.555645+00	364	409	t
77	4	4	4	0	2022-09-27 00:00:32.489247+00	2022-09-27 00:00:32.492237+00	376	407	t
78	4	3.5	4.5	0	2022-09-27 00:00:45.701667+00	2022-09-27 00:00:45.704842+00	364	382	t
79	4	4	4.5	0	2022-09-27 00:01:37.688376+00	2022-09-27 00:01:37.690958+00	364	376	t
80	4.5	4	4	0	2022-09-27 00:02:04.424436+00	2022-09-27 00:02:04.42756+00	364	380	t
81	4.5	4.5	4.5	0	2022-09-27 01:44:53.957044+00	2022-09-27 01:44:53.959926+00	395	372	t
82	4	4.5	4.5	0	2022-09-27 02:08:19.199077+00	2022-09-27 02:08:19.203124+00	361	389	t
83	3.5	3.5	3.5	0	2022-09-27 03:01:51.304633+00	2022-09-27 03:01:51.307611+00	371	398	t
84	4	4	4	0	2022-09-27 03:02:45.171372+00	2022-09-27 03:02:45.174516+00	371	404	t
85	4.5	4.5	4.5	0	2022-09-27 14:02:48.758478+00	2022-09-27 14:02:48.765341+00	87	406	t
86	4	3.5	4	0	2022-09-27 14:09:05.604607+00	2022-09-27 14:09:05.60772+00	355	384	t
87	4	3.5	3.5	0	2022-09-27 14:10:15.610614+00	2022-09-27 14:10:15.61327+00	355	415	t
88	5	4.5	5	0	2022-09-27 14:25:34.380094+00	2022-09-27 14:25:34.382783+00	358	380	t
89	5	5	4.5	0	2022-09-27 15:34:15.58716+00	2022-09-27 15:34:15.589902+00	113	405	t
91	5	4	4	0	2022-09-27 15:35:06.048016+00	2022-09-27 15:35:06.052758+00	113	415	t
92	4	4	4	0	2022-09-27 15:36:13.911678+00	2022-09-27 15:36:13.914128+00	113	401	t
93	3.5	3.5	3.5	0	2022-09-27 15:38:53.377357+00	2022-09-27 15:38:53.380689+00	113	391	t
94	4.5	5	4.5	0	2022-09-27 15:39:33.833492+00	2022-09-27 15:39:33.839144+00	113	373	t
95	4	4	3	0	2022-09-27 15:43:05.549988+00	2022-09-27 15:43:05.552868+00	113	386	t
96	4	4	4	0	2022-09-27 15:43:36.476095+00	2022-09-27 15:43:36.479413+00	352	396	t
97	3	3	3	0	2022-09-27 15:44:02.070894+00	2022-09-27 15:44:02.073905+00	358	393	t
98	4.5	4	5	0	2022-09-27 15:44:47.1334+00	2022-09-27 15:44:47.136068+00	352	400	t
99	4.5	4.5	5	0	2022-09-27 15:45:20.64319+00	2022-09-27 15:45:20.646002+00	113	417	t
100	4.5	4.5	4.5	0	2022-09-27 15:53:39.021442+00	2022-09-27 15:53:39.024463+00	352	408	t
101	4	3.5	4	0	2022-09-27 16:05:05.260276+00	2022-09-27 16:05:05.263041+00	376	371	t
102	4.5	4	4	0	2022-09-27 16:06:45.531127+00	2022-09-27 16:06:45.534173+00	385	388	t
103	4.5	4.5	4	0	2022-09-27 16:23:50.300845+00	2022-09-27 16:23:50.303643+00	379	368	t
104	4	4	4	0	2022-09-27 20:10:00.74425+00	2022-09-27 20:10:00.746659+00	353	393	t
105	4.5	4.5	4.5	0	2022-09-27 20:10:16.366474+00	2022-09-27 20:10:16.368745+00	353	375	t
106	4.5	4	4	0	2022-09-27 22:10:37.956351+00	2022-09-27 22:10:37.959051+00	377	402	t
107	3	4	3.5	0	2022-09-28 11:21:42.19248+00	2022-09-28 11:21:42.195978+00	359	371	t
108	2.5	2.5	3	0	2022-09-28 11:24:00.227044+00	2022-09-28 11:24:00.229906+00	391	375	t
109	4	3.5	4	0	2022-09-28 11:26:56.586668+00	2022-09-28 11:26:56.617988+00	391	417	t
110	4	4	4	0	2022-09-28 11:28:28.919917+00	2022-09-28 11:28:28.922679+00	391	387	t
111	3	3.5	3.5	0	2022-09-28 11:31:06.48068+00	2022-09-28 11:31:06.483674+00	391	385	t
\.


--
-- Data for Name: evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b (id, aplicacion_escenario_real, originadidad_innovacion, calidad_tecnica, estudio_viablididad, is_calificado, fecha_evaluacion, fecha_actualizacion, evaluador_id, proyecto_id) FROM stdin;
34	4.5	3	5	0	t	2022-10-06 20:11:26.421052+00	2022-10-06 20:11:26.424054+00	383	410
35	5	5	5	0	t	2022-10-06 20:11:35.314054+00	2022-10-06 20:11:35.318756+00	396	398
3	0	0	0	0	t	2022-10-05 10:51:44.598543+00	2022-10-06 14:44:26.130299+00	1	414
5	1	1	1	0	t	2022-10-06 19:18:29.968653+00	2022-10-06 19:18:29.972667+00	351	416
7	5	5	5	0	t	2022-10-06 19:21:30.068497+00	2022-10-06 19:21:30.07237+00	104	405
8	4	4	4	0	t	2022-10-06 19:30:34.841296+00	2022-10-06 19:30:34.844642+00	152	387
9	3	3	3	0	t	2022-10-06 19:30:37.232821+00	2022-10-06 19:30:37.235748+00	87	383
10	4	4	4	0	t	2022-10-06 19:30:45.231221+00	2022-10-06 19:30:45.234277+00	152	395
11	4	4.5	4	0	t	2022-10-06 19:31:34.890986+00	2022-10-06 19:31:34.894647+00	55	383
12	4	4	4	0	t	2022-10-06 19:35:21.858878+00	2022-10-06 19:35:21.862933+00	87	406
13	3.5	3.5	3.5	0	t	2022-10-06 19:38:28.166578+00	2022-10-06 19:38:28.174638+00	391	375
14	5	4	4.5	5	t	2022-10-06 19:38:52.825813+00	2022-10-06 19:38:52.829805+00	414	392
15	5	4	4	4	t	2022-10-06 19:39:19.937285+00	2022-10-06 19:39:19.940311+00	414	394
16	4.5	4	4.5	0	t	2022-10-06 19:40:51.512781+00	2022-10-06 19:40:51.516649+00	55	406
17	1	1	1	0	t	2022-10-06 19:41:34.816261+00	2022-10-06 19:41:34.819131+00	360	416
18	4.5	3.5	4	0	t	2022-10-06 19:46:37.326807+00	2022-10-06 19:46:37.329985+00	391	385
19	3.5	3.5	3.5	0	t	2022-10-06 19:47:36.725137+00	2022-10-06 19:47:36.730564+00	87	377
20	1	1	1	0	t	2022-10-06 19:48:00.883021+00	2022-10-06 19:48:00.885918+00	392	372
21	5	5	5	0	t	2022-10-06 19:48:28.21262+00	2022-10-06 19:48:28.216392+00	363	408
22	5	5	5	0	t	2022-10-06 19:50:27.220401+00	2022-10-06 19:50:27.229243+00	352	408
23	4	4	3	0	t	2022-10-06 19:51:48.029448+00	2022-10-06 19:51:48.033849+00	55	401
24	4	3	4	0	t	2022-10-06 19:52:03.91971+00	2022-10-06 19:52:03.923351+00	396	403
25	4.5	5	5	0	t	2022-10-06 19:53:02.624971+00	2022-10-06 19:53:02.628096+00	104	377
26	4.5	3.5	4	0	t	2022-10-06 19:54:21.822912+00	2022-10-06 19:54:21.825595+00	391	417
27	5	5	4.5	0	t	2022-10-06 19:55:02.99255+00	2022-10-06 19:55:02.999235+00	113	405
28	5	5	5	0	t	2022-10-06 19:59:00.99754+00	2022-10-06 19:59:01.000342+00	363	396
29	5	5	5	0	t	2022-10-06 20:01:35.495842+00	2022-10-06 20:01:35.498469+00	352	396
30	3.5	4	3.5	0	t	2022-10-06 20:03:44.099974+00	2022-10-06 20:03:44.103779+00	87	373
31	4	3.5	4.5	0	t	2022-10-06 20:04:28.366047+00	2022-10-06 20:04:28.371141+00	104	395
32	4.5	5	4	0	t	2022-10-06 20:08:22.214713+00	2022-10-06 20:08:22.217763+00	391	387
33	4	4	4	0	t	2022-10-06 20:09:53.528433+00	2022-10-06 20:09:53.531784+00	113	417
36	4	4	4	0	t	2022-10-06 20:12:40.938722+00	2022-10-06 20:12:40.94279+00	113	401
37	4	3.5	4.5	0	t	2022-10-06 20:12:44.652846+00	2022-10-06 20:12:44.659159+00	364	380
38	4.5	4.5	4.5	0	t	2022-10-06 20:16:37.673669+00	2022-10-06 20:16:37.677034+00	104	385
39	3	4	4	0	t	2022-10-06 20:21:04.756604+00	2022-10-06 20:21:04.760472+00	392	413
40	5	4	4.5	0	t	2022-10-06 20:22:04.232994+00	2022-10-06 20:22:04.236102+00	113	373
41	3	4	5	0	t	2022-10-06 20:24:00.154733+00	2022-10-06 20:24:00.158724+00	392	413
42	5	4.5	4.5	0	t	2022-10-06 20:30:07.713382+00	2022-10-06 20:30:07.716597+00	358	380
43	3	3	3	0	t	2022-10-06 20:32:00.876379+00	2022-10-06 20:32:00.880874+00	376	407
44	3	3	3	0	t	2022-10-06 20:33:57.184932+00	2022-10-06 20:33:57.188217+00	376	368
45	1	1	1	0	t	2022-10-06 20:34:05.273638+00	2022-10-06 20:34:05.277237+00	379	368
46	3	5	4	0	t	2022-10-06 20:34:20.650847+00	2022-10-06 20:34:20.659029+00	387	374
47	1	1	1	0	t	2022-10-06 20:35:48.451984+00	2022-10-06 20:35:48.454797+00	387	409
48	5	4	3.5	0	t	2022-10-06 20:36:53.792438+00	2022-10-06 20:36:53.795571+00	396	399
49	5	4.5	4.5	0	t	2022-10-06 20:41:31.307127+00	2022-10-06 20:41:31.31168+00	383	388
50	4	3.5	3	0	t	2022-10-06 20:43:06.862906+00	2022-10-06 20:43:06.866233+00	364	390
51	4.5	4.5	4.5	0	t	2022-10-06 20:43:10.547654+00	2022-10-06 20:43:10.550513+00	376	403
52	4.5	4.5	5	0	t	2022-10-06 20:43:47.475635+00	2022-10-06 20:43:47.486087+00	364	379
53	4.5	4.5	5	0	t	2022-10-06 20:51:11.32955+00	2022-10-06 20:51:11.333743+00	372	399
54	1	1	1	0	t	2022-10-06 20:51:20.572417+00	2022-10-06 20:51:20.57683+00	364	409
55	5	5	5	0	t	2022-10-06 20:57:14.203881+00	2022-10-06 20:57:14.206683+00	383	420
56	4.5	4.5	4.5	0	t	2022-10-06 21:16:28.310073+00	2022-10-06 21:16:28.31359+00	376	379
57	4.5	4.5	4.5	0	t	2022-10-06 21:18:09.407145+00	2022-10-06 21:18:09.410116+00	351	389
58	5	4.5	4.5	0	t	2022-10-06 21:26:58.993697+00	2022-10-06 21:26:58.996554+00	385	388
59	5	4.5	4.5	0	t	2022-10-06 21:29:06.468167+00	2022-10-06 21:29:06.471035+00	160	390
60	5	4.5	3.5	0	t	2022-10-06 21:29:50.520766+00	2022-10-06 21:29:50.52602+00	46	420
61	4.5	4.5	4	0	t	2022-10-06 21:35:50.388569+00	2022-10-06 21:35:50.39189+00	160	374
62	4.5	4.5	5	0	t	2022-10-06 21:44:33.18529+00	2022-10-06 21:44:33.188294+00	160	413
63	5	5	5	0	t	2022-10-06 21:49:25.379751+00	2022-10-06 21:49:25.383022+00	352	400
64	4.5	4	3.5	0	t	2022-10-06 21:50:36.124775+00	2022-10-06 21:50:36.12837+00	46	410
65	4	4	4.5	0	t	2022-10-06 21:53:28.737705+00	2022-10-06 21:53:28.740762+00	418	375
66	4	4	4	0	t	2022-10-06 21:53:44.870717+00	2022-10-06 21:53:44.873614+00	418	389
67	4.5	4	4.5	4.5	t	2022-10-06 21:54:38.122223+00	2022-10-06 21:54:38.125135+00	381	392
68	4.5	4.5	4	4	t	2022-10-06 21:54:54.278815+00	2022-10-06 21:54:54.281376+00	381	394
69	1	1	1	0	t	2022-10-06 21:54:55.372522+00	2022-10-06 21:54:55.375238+00	395	372
70	1	1	1	1	t	2022-10-06 21:55:04.698893+00	2022-10-06 21:55:04.704018+00	381	412
71	4.5	4	5	0	t	2022-10-06 21:57:09.329234+00	2022-10-06 21:57:09.33249+00	113	398
72	1.5	1.5	3	0	t	2022-10-06 21:59:34.800583+00	2022-10-06 21:59:34.803817+00	160	407
\.


--
-- Data for Name: proyectos_app_activacionconvocatoria; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_activacionconvocatoria (id, descripcion, activacion_convocatoria, fecha_creacion) FROM stdin;
1	Activaci├│n de la convocatoria	t	2022-09-09 13:21:37.129013+00
\.


--
-- Data for Name: proyectos_app_activacionconvocatoriainngeniatec; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_activacionconvocatoriainngeniatec (id, descripcion, activacion_convocatoria, fecha_creacion) FROM stdin;
1	Activaci├│n de la convocatoria Inngeniatec	t	2022-11-20 06:03:39.949411+00
\.


--
-- Data for Name: proyectos_app_periodo; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_periodo (id, anio, semestre, slug) FROM stdin;
1	2022	Segundo semestre	2022-segundo-semestre
2	2022	Primer semestre	2022-primer-semestre
3	2023	Primer semestre	2023-primer-semestre
\.


--
-- Data for Name: proyectos_app_proyecto; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_proyecto (id, titulo, modalidad_aprticipacion, url_video, proyecto_pdf, carta_aval_pdf, fecha_creacion, fecha_actualizacion, semillero_id, tematica_id, es_finalista, periodo_id) FROM stdin;
66	Comportamiento mec├ínico de suelos para la construcci├│n de tapia pisada en Curit├¡, Barichara y Piedecuesta en funci├│n de su composici├│n granulom├®trica	2	https://www.youtube.com/watch?v=X2sS0s2cwak	media/files/proyectos/Inscripcion_encuentro_Articulo_INAES_xn68lt.pdf	media/files/cartas_Aval/Carta_Aval_jur5cy.pdf	2022-09-07 21:18:34.226904+00	2022-10-05 20:22:31.823093+00	53	4	t	\N
54	Estudio sobre la afectaci├│n del factor clim├ítico en el cultivo de r├íbano ubicado en la huerta perteneciente al programa de Ingenier├¡a Agroindustrial de la Universidad de Santander	1	https://youtu.be/cvJk1okWr34	media/files/proyectos/Plantilla_de_inscripcion_para_el_Encuentro_Rabano_qaa4aj.docx	media/files/cartas_Aval/Modelo_Carta_Aval_iy7nfi.docx	2022-09-01 23:27:48.780604+00	2022-10-05 20:31:31.932354+00	34	12	t	\N
51	Evaluaci├│n de Ruido Ambiental en el campus UDES con m├│dulo electr├│nico de bajo costo en tiempo real	3	https://youtu.be/AmpTbSr1KDk	media/files/proyectos/Anexo_2_Plantilla_Camilo.Mario_dala4u.pdf	media/files/cartas_Aval/Anexo_1_Carta_Aval_bze74a.pdf	2022-08-27 19:40:09.202373+00	2022-10-05 20:41:20.82425+00	58	12	t	\N
63	Eco-eficacia de la estabilizaci├│n mec├ínica de la tapia  pisada a partir de mallas de refuerzo de botellas PET	2	https://youtu.be/6m6aPVn9of0	media/files/proyectos/Articulo_presentaci├│n_de_proyecto_Tapia_pisada_INAES_igkv1h.pdf	media/files/cartas_Aval/Carta_Aval_Proyecto_Tapia_INAES_kxrvvr.pdf	2022-09-07 21:14:56.887853+00	2022-10-05 20:23:01.215818+00	50	4	t	\N
57	An├ílisis de los indicadores cuantitativos de las habilidades blandas en la internacionalizaci├│n de las empresas del ├írea metropolitana de Bucaramanga.	2	https://www.youtube.com/watch?v=IxYuN9WNgsA	media/files/proyectos/Plantilla_de_inscripcion_para_el_Encuentro_mf8ebz.docx	media/files/cartas_Aval/Modelo_Carta_Aval_nnkn6v.docx	2022-09-02 04:41:05.204166+00	2022-09-02 15:07:48.902621+00	47	4	f	\N
79	Sistema de sincron├¡a entre equipos de monitoreo de variables fisiol├│gicas	3	https://youtu.be/h28V7xoeius	media/files/proyectos/Doc_deProyecto.docx_hhicge.pdf	media/files/cartas_Aval/Carta_Aval_semilleros2022_py4a1d.pdf	2022-09-09 01:19:15.042989+00	2022-10-05 20:42:45.471493+00	13	6	t	\N
70	Validaci├│n de instrumento para la ruta integradora de emprendimiento en la Universidad Santo Tom├ís Bucaramanga	2	https://youtu.be/kztVbkUFz7g	media/files/proyectos/Plantilla_de_inscripcion_para_el_Encuentro_UNAB_yqwxs9.pdf	media/files/cartas_Aval/Modelo_Cartaa_Aval_Encuentro_qozyku.pdf	2022-09-08 17:21:55.457588+00	2022-10-05 20:25:35.381295+00	47	10	t	\N
61	Dise├▒o de un prototipo de exoesqueleto para el tratamiento de Hemiplejia	1	https://drive.google.com/file/d/1KK1TF5TD5GHo4w_ugW4aaQ0Rluw8CL5u/view?usp=sharing	media/files/proyectos/Plantilla_de_inscripcion_para_el_Encuentro_2_heojda.docx	media/files/cartas_Aval/Modelo_Carta_Aval_cpmkho.pdf	2022-09-06 18:43:07.33101+00	2022-09-06 18:43:07.357442+00	13	6	f	\N
67	Soluci├│n al problema de ruteo de veh├¡culos de flota heterog├®nea con transbordo lateral mediante la metaheur├¡stica de algoritmo gen├®tico.	3	https://youtu.be/pOXPFi24MW0	media/files/proyectos/Soluci├│n_al_problema_de_ruteo_de_veh├¡culos_de_flota_heterog├®nea_con_transbordo_lateral_mediante_la_metaheur├¡stica_de_algoritmo_gen├®tico_ncg3jq.pdf	media/files/cartas_Aval/Carta_AVAL_Grupo_de_Investigaci├│n_OPALO_pdrlk0.pdf	2022-09-08 02:19:30.376428+00	2022-10-05 20:42:19.55207+00	54	7	t	\N
71	Robot Financiero Avanzado en MT4 & MT5. Compra y Venta de Divisas	1	https://www.youtube.com/channel/UCjMEz18RT_wJ9500WKsTYUw/featured	media/files/proyectos/Art├¡culo_Academico_Robot_Financiero_Avanzado_en_MT4__MT5._ohp9n8.pdf	media/files/cartas_Aval/Modelo_Carta_Aval_2_aem8zn.pdf	2022-09-08 20:42:03.904961+00	2022-10-05 20:24:28.93551+00	55	8	t	\N
52	Estudio comparativo de mediciones de son├│metro y dispositivo electr├│nico SOUDES, caso: Comuna Centro de Bucaramanga	2	https://youtu.be/LZSvScpbYSA	media/files/proyectos/Anexo_2_Plantilla_Daniela.Valentina_n1ifou.pdf	media/files/cartas_Aval/Anexo_1_Carta_Aval_hliqwh.pdf	2022-08-27 19:41:42.165922+00	2022-10-05 20:30:38.207773+00	58	12	t	\N
59	Digitalizaci├│n tridimensional de la cavidad orbitaria de restos humanos a trav├®s del m├®todo ├│ptico de proyecci├│n de franjas	2	https://youtu.be/aPMy6ybYuXo	media/files/proyectos/Anexo_2_-_Plantilla_de_Inscripci├│n_para_el_Encuentro_USTA-Juan_Jos├®_Barrios_tydisk.pdf	media/files/cartas_Aval/Anexo_1_-_Modelo_Carta_Aval-USTA-Juan_Jos├®_Barrios_xtcaok.pdf	2022-09-02 14:42:53.54189+00	2022-10-05 20:24:54.473314+00	35	10	t	\N
72	Expansi├│n de c├®lulas madre mesenquimales en condiciones hip├│xicas en medio no xenog├®nico en PRP y PPP	3	https://www.youtube.com/watch?v=mEpXhUY6Kf4	media/files/proyectos/Plantilla_de_Inscripci├│n_para_el_Encuentro_.docx_1_kjntpj.pdf	media/files/cartas_Aval/Anexo_1_-_Modelo_Carta_Aval_1_1_jgiwer.pdf	2022-09-08 22:38:26.774448+00	2022-10-05 20:40:58.94777+00	13	6	t	\N
78	Un algoritmo gen├®tico para el  problema de formaci├│n de celdas de manufactura  considerando el movimiento de trabajadores (PFCMT)	1	https://youtu.be/8iq-Q8ai5Is	media/files/proyectos/Anexo_2-Algoritmo_gen├®tico_para_el_CFP_gvki8e.pdf	media/files/cartas_Aval/Anexo_1_-_Carta_Aval_qnj8lm.pdf	2022-09-09 00:03:19.945288+00	2022-10-05 20:29:13.783019+00	54	7	t	\N
73	Aplicaci├│n de t├®cnicas de diagnostico a un plasma generado a partir de fuego excitado por microondas	3	https://youtu.be/K0gzojoAG00	media/files/proyectos/ArticuloEncuentroSemilleros_wgnutu.pdf	media/files/cartas_Aval/Anexo_1_-_Modelo_Carta_Aval-Luis_Jaimes-semillero_nuclear_opcoeq.pdf	2022-09-08 22:45:59.181472+00	2022-10-05 20:39:57.714311+00	22	3	t	\N
55	Impacto de las altas precipitaciones sobre un cultivo de lechuga crespa ubicado en la huerta del programa de Ingenier├¡a Agroindustrial de la Universidad de Santander	1	https://youtu.be/Mkdm6BSqqL4	media/files/proyectos/Plantilla_de_inscripcion_para_el_Encuentro_Lechuga_sz43sl.docx	media/files/cartas_Aval/Modelo_Carta_Aval_hinenq.docx	2022-09-01 23:29:07.413219+00	2022-10-05 20:31:01.791397+00	34	12	t	\N
75	Prototipo Web de Registro y Trazabilidad de  Medicamentos	2	https://youtu.be/e8V4vXuJ9jc	media/files/proyectos/Prototipo_Web_de_Registro_y_Trazabilidad_de_Medicamentos_-_Brayan_-_Patricia_-_Santiago_-_Gabriela_-_Edwin_jpyrx5.pdf	media/files/cartas_Aval/Modelo_Carta_Aval_semilleros2022_MEDICAMENTOS1_ojqqzk.pdf	2022-09-08 23:11:14.281793+00	2022-10-05 20:31:55.241202+00	13	6	t	\N
62	Recursos did├ícticos desde la arquitectura que identifican la flora nativa en el ├írea metropolitana de Bucaramanga	3	https://youtu.be/oO5qvYLCi1w	media/files/proyectos/Convocatoria_XVI_UNAB_bckgfs.pdf	media/files/cartas_Aval/Modelo_Carta_Aval__FACARQ_USTABUCA_240822_ggdp1j.pdf	2022-09-07 03:13:04.118224+00	2022-10-05 20:41:46.890536+00	49	12	t	\N
50	titulo proyecto prueba con autores	2	https://www.youtube.com	media/files/proyectos/saberpro_enkd35.pdf	media/files/cartas_Aval/saberpro_drogsu.pdf	2022-08-23 20:20:40.620614+00	2022-10-05 20:52:59.889944+00	11	1	f	\N
82	Dise├▒o y construcci├│n de un sistema para realizar hidr├│lisis.	2	https://drive.google.com/file/d/1a2MU1STe3Os2YsrZc9HPQS-mZjwdJlGS/view?usp=sharing	media/files/proyectos/TELKES_articulo_encuentro__UNAB_2022_yvhalj.pdf	media/files/cartas_Aval/TELKES_Modelo_Carta_Aval_p5048t.pdf	2022-09-09 01:48:36.044048+00	2022-10-05 20:35:32.423653+00	56	3	t	\N
84	Dise├▒o de un modelo de simulaci├│n para la validaci├│n del funcionamiento de una planta de limpieza y clasificaci├│n de frutos c├¡tricos en el departamento de Santander.	1	https://youtu.be/4-zgFq1Slic	media/files/proyectos/Dise├▒o_de_un_modelo_de_simulaci├│n_para_la_validaci├│n_del_funcionamiento_de_una_planta_de_limpieza_y_clasificaci├│n_de_frutos_c├¡tricos_en_el_departamento_de_Santander._bctjgu.pdf	media/files/cartas_Aval/Anexo_1_-_Carta_Aval_OPALO_mprkok.pdf	2022-09-09 02:00:05.406132+00	2022-10-05 20:33:42.651552+00	54	5	t	\N
80	DETERMINACI├ôN DE CURVAS DE DEMANDA ENERG├ëTICA DE LOS EQUIPOS DE ACONDICIONAMIENTO DE AIRE EN EL CAMPUS EL JARD├ìN DE LA UNAB	2	https://www.youtube.com/watch?v=cMR94BBimWI	media/files/proyectos/DETERMINACI├ôN_DE_CURVAS_DE_DEMANDA_ENERG├ëTICA_DE_LOS_EQUIPOS_DE_ACONDICIONAMIENTO_DE_AIRE_EN_EL_CAMPUS_EL_JARD├ìN_DE_LA_UNAB_utrijz.pdf	media/files/cartas_Aval/Carta___DETERMINACI├ôN_DE_CURVAS_DE_DEMANDA_ENERG├ëTICA_DE_LOS_EQUIPOS_DE_ACONDICIONAMIENTO_DE_AIRE_EN_EL_CAMPUS_EL_JARD├ìN_DE_LA_UNAB_iujd2b.docx	2022-09-09 01:42:36.818824+00	2022-10-05 20:34:17.376598+00	22	3	t	\N
89	Registro de asistencia a eventos mediante reconocimiento facial	2	https://youtu.be/p4jgMILFmUQ	media/files/proyectos/Anexo_2_-_Prototipo_reconocimiento_facial_-_Mario_Javier_Mesa_G_rtk6qi.pdf	media/files/cartas_Aval/Anexo_1_-_Modelo_Carta_Aval_MediaLab_solcet.pdf	2022-09-09 04:08:58.393979+00	2022-10-05 20:38:42.565938+00	2	1	t	\N
98	Prototipo de videojuego en realidad virtual para el aprendizaje de una lengua extranjera	2	https://youtu.be/bTsR6oG_BFs	media/files/proyectos/Prototipo_de_videojuego_en_realidad_virtual_para_el_aprendizaje_de_una_lengua_extranjera_bbacuu.pdf	media/files/cartas_Aval/Carta_Aval_zsrt7g.pdf	2022-09-14 00:38:17.614456+00	2022-10-05 20:37:28.473845+00	12	1	t	\N
83	Desarrollo de un ap├│sito tipo hidrogel de plasma pobre en plaquetas y col├ígeno extra├¡do de piel de tilapia con potencial uso para el tratamiento de ├║lceras cr├│nicas de pie diab├®tico	2	https://youtu.be/vwapAibHChI	media/files/proyectos/Propuesta_XVI_Encuentro_de_Semilleros_oh9d8r.pdf	media/files/cartas_Aval/Carta_Aval_XVI_Encuentro_de_Semilleros_klzk4m.pdf	2022-09-09 01:49:15.121134+00	2022-10-05 20:32:41.902091+00	13	6	t	\N
93	Sensores DevPortivos	1	http://youtube.com/	media/files/proyectos/ProyectoUNAB_DispMoviles-52386_inscripci├│n_vmfuzr.docx	media/files/cartas_Aval/Carta_aval_proyecto_sensores_khilrx.pdf	2022-09-10 00:07:47.567009+00	2022-09-10 00:07:47.602318+00	20	6	f	\N
85	Clasificaci├│n de im├ígenes de animales usando Deep Learning	2	https://youtu.be/KsOeSP3QwOE	media/files/proyectos/DanielAmado_MediaLab_Clasificaci├│nDeIm├ígenes_m1pqyf.pdf	media/files/cartas_Aval/Anexo_1_-_Modelo_Carta_Aval_MediaLab_sjgziu.pdf	2022-09-09 03:16:35.867735+00	2022-10-05 20:37:58.090262+00	2	1	t	\N
99	EVALUACI├ôN DE ALTERNATIVAS PARA EL DIMENSIONAMIENTO Y MANTENIMIENTO DE LA INSTALACI├ôN FOTOVOLTAICA EN CENS	1	https://www.youtube.com/watch?v=NwdStcGidwE&t=6s&ab_channel=ANGELDAVIDDUARTEMORENO	media/files/proyectos/ANGEL_DUARTE__WILMER_CACERES_-_Plantilla_de_Art├¡culo_lu5kmf.pdf	media/files/cartas_Aval/Carta_Aval_Semillero_lh9stm.pdf	2022-09-15 15:37:38.3443+00	2022-10-05 20:34:40.650333+00	22	3	t	\N
90	Software para reconocimiento de texto en reportes de equipos biom├®dicos	2	https://www.youtube.com/watch?v=KvNQfBZxX34	media/files/proyectos/Software_para_reconocimiento_de_texto_de_los_reportes_de_mantenimiento-1-3_g3jfz8.pdf	media/files/cartas_Aval/Modelo_Carta_Aval_1_c9m1dn.pdf	2022-09-09 04:58:38.645987+00	2022-10-05 20:33:16.000427+00	13	6	t	\N
94	Blacksoul App	1	http://youtube.com	media/files/proyectos/proy_blacksoul_w0ku2q.docx	media/files/cartas_Aval/Modelo_Carta_Aval_blacksoul_zsxjc1.pdf	2022-09-10 04:12:02.599571+00	2022-09-10 04:12:02.62741+00	20	1	f	\N
95	P├ígina web empresarial	1	http://youtube.com	media/files/proyectos/proy_xjc8rh.docx	media/files/cartas_Aval/Carta_Aval__SISWEB_wufl8w.pdf	2022-09-10 04:34:03.332696+00	2022-09-10 04:34:03.347149+00	24	1	f	\N
97	Interfaz grafica de usuario para el conteo de c├®lulas por medio de procesamiento de im├ígenes	3	https://youtu.be/ClT6vtSc6mo	media/files/proyectos/Interfaz_gr├ífica_de_usuario_para_el_conteo_de_c├®lulas_por_medio_de_procesamiento_de_im├ígenes_te3sfv.pdf	media/files/cartas_Aval/Modelo_Carta_Aval_semilleros2022_kpthnz.pdf	2022-09-10 04:54:02.468995+00	2022-09-10 04:54:02.485108+00	13	6	f	\N
86	Asistente Virtual para el programa de Ingnier├¡a Mecatr├│nica UNAB	1	https://youtu.be/fdZdD1cakoA	media/files/proyectos/Anexo_1_Art├¡culo_IV_Asistente_Virtual_UNAB_2022_tgnnkb.pdf	media/files/cartas_Aval/Modelo_Carta_Aval_Firmada_kr4qfk.pdf	2022-09-09 03:46:05.873714+00	2022-10-05 20:36:59.647587+00	23	1	t	\N
100	INDUSTRIA 4.0 Y ECONOM├ìA CIRCULAR EN EL SECTOR  SERVICIOS	3	https://youtu.be/r2nARo4M_88	media/files/proyectos/Anexo_2_-_Plantilla_de_Inscripci├│n_para_el_Encuentro_I40-Economia_Circular_31_agosto_2022_x3c1tv.pdf	media/files/cartas_Aval/ANEXO_1._CARTA_DE_AVAL_GRUPO_DE_INVESTIGACI├ôN_Y_PROFESOR_TUTOR_d8z7vx.pdf	2022-09-29 17:37:08.194215+00	2022-10-05 20:40:23.99384+00	59	7	t	\N
88	Inclusi├│n financiera en Colombia, un enfoque sobre educaci├│n econ├│mica y financiera	1	https://youtu.be/J7sQuLqAz1c	media/files/proyectos/Educ_e_inclusi├│n_financiera_Colombia_-_Miguel_├üngel_S├íenz_ue7na2.docx	media/files/cartas_Aval/Anexo_1_-_Modelo_Carta_Aval_-_Final_kygrep.docx	2022-09-09 03:58:03.276764+00	2022-10-05 20:23:31.872289+00	5	8	t	\N
91	Dise├▒o de un modelo de financiamiento colaborativo fintech para emprendimientos del sector agroindustrial	2	https://youtu.be/InUA-7bK9gs	media/files/proyectos/Anexo_1_-_Plantilla_de_Inscripci├│n_SemilleroSIFIN_2022_acytj7.pdf	media/files/cartas_Aval/Carta_Aval_SemilleroSIFIN_2022_2_fgvhkj.pdf	2022-09-09 05:02:22.789036+00	2022-10-05 20:24:04.968244+00	57	8	t	\N
81	CONSUMO ENERG├ëTICO DE LOS EQUIPOS DE ACONDICIONAMIENTO DE AIRE DEL EDIFICIO DE INGENIER├ìAS DE LA UNAB	2	https://www.youtube.com/watch?v=_-XLUZpENdU	media/files/proyectos/CONSUMO_ENERG├ëTICO_DE_LOS_EQUIPOS_DE_ACONDICIONAMIENTO_DE_AIRE_DEL_EDIFICIO_DE_INGENIER├ìAS_DE_LA_UNAB_nupu94.pdf	media/files/cartas_Aval/Carta___CONSUMO_ENERG├ëTICO_DE_LOS_EQUIPOS_DE_ACONDICIONAMIENTO_DE_AIRE_DEL_EDIFICIO_DE_INGENIER├ìAS_DE_LA_UNAB_zhccws.docx	2022-09-09 01:43:57.109196+00	2022-10-05 20:35:07.13426+00	22	3	t	\N
\.


--
-- Data for Name: proyectos_app_proyecto_autores; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_proyecto_autores (id, proyecto_id, usuario_id) FROM stdin;
67	50	1
69	51	43
70	51	44
71	51	7
72	52	41
73	52	42
74	52	7
78	54	80
79	54	66
80	54	68
81	55	82
82	55	75
83	55	66
84	57	85
88	59	6
89	59	88
90	59	90
91	59	91
92	59	92
94	59	93
95	61	105
96	61	106
97	61	107
98	61	87
99	62	59
100	62	60
101	62	61
102	63	115
103	63	116
104	63	117
105	63	110
106	66	115
107	66	116
108	66	117
109	66	110
110	67	128
111	67	129
112	70	94
113	71	145
115	71	150
116	71	151
119	71	147
120	72	118
121	72	54
123	73	9
124	73	58
126	75	100
127	75	101
128	75	102
129	75	111
130	75	126
131	78	133
132	79	140
133	79	141
134	79	142
135	80	40
136	80	45
137	81	40
138	81	45
139	82	96
140	82	97
141	82	99
142	82	103
143	82	49
144	82	95
145	82	127
146	83	50
147	84	132
148	84	149
149	84	134
150	84	135
151	85	109
153	86	64
154	88	120
155	89	156
156	90	73
157	90	98
159	91	157
165	93	63
166	94	46
167	94	47
168	95	46
169	95	63
170	97	108
171	98	169
172	98	170
174	99	172
175	99	405
176	100	408
177	100	409
178	100	410
179	100	407
\.


--
-- Data for Name: proyectos_app_proyecto_tutores; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_proyecto_tutores (id, proyecto_id, usuario_id) FROM stdin;
50	50	1
51	51	7
52	52	7
54	54	66
55	55	66
56	57	86
58	59	6
60	61	87
61	62	65
62	63	112
63	66	112
64	67	130
65	70	86
66	71	145
67	72	144
68	72	152
69	73	154
70	75	113
71	78	146
72	79	104
73	80	8
74	81	8
75	82	49
76	83	152
77	84	146
78	85	37
80	88	153
81	89	37
82	90	55
91	91	157
92	93	46
93	94	46
94	95	46
95	97	104
96	86	168
97	98	169
99	99	397
100	100	411
\.


--
-- Data for Name: proyectos_app_proyectoinngeniatec; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_proyectoinngeniatec (id, titulo, programa_integrantes, palabras_clave, resumen, url_video, fecha_creacion, fecha_actualizacion, email_contacto, categoria, es_finalista, periodo_id) FROM stdin;
405	Desarrollo de un prototipo de interfaz en Matlab para la identificaci├│n de melanomas en la piel empleando t├®cnicas de procesamiento de im├ígenes e inteligencia artificial	Ingenier├¡a Biom├®dica (Todos)	Melanoma, segmentaci├│n, Interfaz	El objetivo principal del proyecto fue desarrollar una interfaz en Matlab para la identificaci├│n de melanomas en la piel mediante la implementaci├│n de t├®cnicas de procesamiento de im├ígenes e inteligencia artificial. Para ello se realiz├│ la adecuaci├│n y estandarizaci├│n de 220 im├ígenes extra├¡das de la base de datos ISIC donde la mitad fueron nevos y la otra melanomas, a cada una de las im├ígenes se le aplico t├®cnicas de procesamiento de im├ígenes implementando la herramienta de Matlab conocida como ImageBatchProcessor donde por medio de programaci├│n se realiz├│ la segmentaci├│n y la extracci├│n de caracter├¡sticas propias de los melanomas como el color, circularidad, ├írea y asimetr├¡a esto con el fin de obtener una base de datos con las variables que posteriormente se utilizaron para realizar el clasificador basado en inteligencia artificial. En este caso se realiz├│ un clasificador eucl├¡deo, aplicando tanto la base de datos en bruto como con reductores de dimensionalidad conocidos como FSCNCA y PCA, a cada uno de los modelos anteriores, se hall├│ el acuraccy de training, validation y test, con el fin de observar cual arrojaba mejores resultados. Dentro de los resultados y el respectivo an├ílisis se destac├│ que el reconocedor eucl├¡deo con FSCNCA y PCA arrojo resultados de 90,92% de asertividad que en comparaci├│n a los otros modelos fue el porcentaje m├ís alto, por lo tanto, este fue el clasificador que se opt├│ para utilizar en la interfaz desarrollada en AppDesigner de Matlab. Durante el proyecto se fortalecieron las diferentes t├®cnicas de procesamiento de im├ígenes biom├®dicas y las t├®cnicas de inteligencia artificial que fueron la base fundamental para la creaci├│n del identificador de melanomas.	\N	2022-09-19 15:14:15.746008+00	2022-10-05 20:00:31.559452+00	mcenteno272@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
407	Software de simulaci├│n en realidad virtual para el aprendizaje de programaci├│n de microcontroladores	Ingenier├¡a mecatr├│nica	Simulaci├│n, microcontroladores, realidad virtual	- Objetivo:  Desarrollar un software de realidad virtual que permita simular y manipular plantas industriales por medio de un microcontrolador para el aprendizaje de programaci├│n para microcontroladores- M├®todos y materiales: La metodolog├¡a empleada es el Proceso Unificado de Desarrollo (RUP).- Resultados y discusi├│n: El resultado es un software que permite manipular plantas industriales de forma simulada por medio de un microcontrolador.- Conclusiones y palabras clave: El software desarrollado es una herramienta que permite al estudiante de microcontroladores tener una experiencia m├ís inmersiva en su proceso de aprendizaje ya que le permite enfrentarse a escenarios reales por medio de realidad virtual.El software trabaja de manera conjunta con el microcontrolador para enviar y recibir diferentes se├▒ales que permitan simular la conexi├│n del microcontrolador a una planta real y obtener la realimentaci├│n de sus sensores y actuadores.El uso de realidad virtual le da al estudiante la capacidad de observar en tiempo real lo que est├í sucediendo en la planta simulada, lo cual brinda una realimentaci├│n gr├ífica de su trabajo.(Realidad aumentada, Simulaci├│n, Microcontroladores)	\N	2022-09-19 15:14:16.252069+00	2022-10-05 20:00:57.860367+00	dlizarazo193@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
380	Planner-U	Ingenieria de sistemas	agenda digital, android, actividades academicas	Objetivo: Desarrollar una agenda digital para la gesti├│n de actividades y trabajos a realizar de los estudiantes de la Universidad Aut├│noma de Bucaramanga a trav├®s de la herramienta de desarrollo Android Studio.Descripci├│n: Consiste en una aplicaci├│n m├│vil para dispositivos con sistema operativo Android que funciona como agenda o planeador digital enfocada a las actividades acad├®micas realizadas por los estudiantes de la universidad en los distintos cursos. M├®todos y materiales: Esta aplicaci├│n fue desarrollada utilizando la herramienta de desarrollo Android Studio. Se manejo la metodolog├¡a de programaci├│n orientada a objetos en cuanto definir las actividades, cursos y usuarios que se manejan en la aplicaci├│n y se implement├│ persistencia local implementando la base de datos SQLite.Resultados:1. Se obtuvo como resultado una aplicaci├│n m├│vil que almacena las distintas actividades acad├®micas que son registradas por cada usuario sobre un curso anteriormente registrado.2. Debe existir al menos un curso registrado para poder registrar una actividad, actividad que puede contar con 3 estados: ÔÇ£En progresoÔÇØ, ÔÇ£PendienteÔÇØ y ÔÇ£FinalizadaÔÇØ. 3. Cada usuario tendr├í acceso ├║nicamente a las actividades que haya registrado.	\N	2022-09-19 15:14:09.336816+00	2022-10-05 20:01:29.585807+00	apereira820@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
413	Robot Solucionador de Una Cara del Cubo Rubik	Ingenier├¡a Mecatr├│nica; Ingenier├¡a Mecatr├│nica; Ingenier├¡a Mecatr├│nica; Ingenier├¡a Mecatr├│nica	Cubo Rubik; Visi├│n Artificial; Automatizaci├│n	El presente proyecto es el desarrollo de un robot capaz de solucionar una cara del cubo rubik dise├▒ado con la herramienta CAD Solidworks y programado en los entornos de Arduino y MatLab implementando la l├│gica Thistlethwaite's 45, el reconocimiento de los colores se realiza mediante una SP-32CAM y es procesado mediante un reconocedor euclideano, una vez clasificadas las caras del cubo, un algoritmo se encarga de determinar los pasos para la soluci├│n, los cuales son enviados al Microcontrolador para ejecutar la secuencia de soluci├│n implementando dos servomotores y un motor paso a paso. Todo el sistema se alimenta por medio de una fuente de poder con capacidad de 2 Amperios y 12 Voltios, para la construcci├│n del prototipo se utilizaron materiales de bajo costo y procesos de manufactura sustractiva e impresi├│n 3D.Dentro de las discusiones generadas por el desarrollo del mismo se pueden reducir los tiempos de ejecuci├│n del prototipo implementando otros tipos de mecanismos y sistemas de control. Se concluye que la comunicaci├│n en tiempo real obtenida por el Arduino y el Software MatLab es determinante a la hora de realizar este proyecto. Se realiz├│ un proyecto innovador que b├║sca romper las comunes y repetitivas tendencias desarrollas en los Proyectos integradores dentro del ├ímbito acad├®mico de la UNAB, aplicando los diferentes conceptos y competencias ingenieriles adquiridos en el paso por cada uno de los Semestres de la carrera de Ingenier├¡a Mecatr├│nica.	\N	2022-09-19 15:14:17.832102+00	2022-10-05 20:02:34.398841+00	jnino230@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
381	Preferencias en collares para mascotas	Ingenier├¡a de mercados, Ingenier├¡a de mercados	Conjoint Analysis, Variables, Python	Con esta infograf├¡a se quiere dar a conocer por medio de un an├ílisis en python la aprobaci├│n que recibi├│ los dise├▒os de nuestro producto seg├║n las preferencias de una poblaci├│n encuestada.Como instrumento de recolecci├│n realizamos una encuesta, esta encuesta aplicada estuvo dividida en 6 secciones con 2 opciones de respuesta en cada secci├│n. Despu├®s de haber importado los resultado de la encuesta en python aplicamos el an├ílisis conjunto. Se obtuvieron 2 gr├íficas en las que se muestra con detalle los resultados obtenidos en las encuestas y de esta manera identificando las preferencias de los consumidores.	\N	2022-09-19 15:14:09.57976+00	2022-10-05 20:03:44.908434+00	arueda408@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
388	Desarrollo de un Sistema de Identificaci├│n de Melanomas en Piel Mediante Algoritmos de Inteligencia Artificial	Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica, Ingenier├¡a Biom├®dica, Ingenier├¡a Biom├®dica, Ingenier├¡a Biom├®dica	Melanomas, Inteligencia Artificial, Dermatolog├¡a	En el campo de la dermatolog├¡a, un diagn├│stico oportuno puede prevenir muertes por melanomas, una de las enfermedades con mayor incidencia en el c├íncer de piel, no obstante, problem├íticas asociadas a la calidad de los an├ílisis cl├¡nicos y juicio subjetivo por parte de los profesionales puede afectar la efectividad del diagn├│stico preciso de la enfermedad. En este proyecto se presenta el desarrollo de un m├®todo de evaluaci├│n y clasificaci├│n de im├ígenes dermatosc├│picas mediante el resultado de la comparaci├│n entre la efectividad  de modelos de inteligencia artificial entrenados a partir del uso de variables de diagn├│stico dermatol├│gico cl├ísicas y extracci├│n de caracter├¡sticas morfol├│gicas adicionales obtenidos a por medio de procesamiento computacional de im├ígenes. Para ello, se implementan 800 im├ígenes dermatosc├│picas parametrizadas de la base de datos International Skin Imaging Collaboration (ISIC) y diferentes modelos supervisados de inteligencia artificial.	\N	2022-09-19 15:14:11.347934+00	2022-10-05 20:04:27.730528+00	jpacheco589@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
385	Prototipo de monitor de presi├│n arterial no invasiva.	Ingenier├¡a Biom├®dica, Ingenier├¡a Mecatr├│nica.	Amplificador no inversor, Arduino, filtro digital, presi├│n arterial,tensi├│metro.	Los tensi├│metros manuales que est├ín actualmente en el mercado tienenalgunos problemas en sus repuestos que despu├®s de su da├▒o sedesechan. El enfoque de este proyecto es fabricar un prototipo detensi├│metro digital utilizando algunos elementos de un tensi├│metromanual. Para esto, se realizaron investigaciones, simulaciones, modeloen 3D por medio del software SOLIDWORKS y un c├│digo en Arduinocon su respectiva interfaz de usuario para finalmente tener un prototipofuncional de monitor de presi├│n arterial no invasiva.Por ende, el objetivo general de este proyecto es fabricar un prototipode tensi├│metro digital utilizando algunos elementos de un tensi├│metromanual como lo serian la perilla y el nan├│metro. Este prototipo ser├íf├ícil de reparar ya que los componentes pueden ser reemplazadosf├ícilmente, usando materiales de calidad para as├¡ garantizar que estesea robusto. As├¡ mismo el presente proyecto cuenta con cinco objetivosespec├¡ficos como lo es digitalizar el movimiento ondulatorio en lapresi├│n producida por el cuerpo humano, Determinar el valor de lapresi├│n sist├│lica y diast├│lica mediante la detecci├│n de pulso cardiaco,tambi├®n con ayuda del sensor de presi├│n, crear un algoritmo capaz decalcular la PAM (presi├│n arterial media) y sus correspondientesconclusiones a partir del an├ílisis de resultados, construir un dispositivof├¡sicamente robusto, evitando componentes delicados o sensibles a losgolpes y por ├║ltimo realizar un dispositivo de f├ícil acceso y reparaci├│na sus distintos componentes y de esta manera lograr una longevidadaceptable.Con la metodolog├¡a que se plante├│ se ejecutaron lasactividades con normalidad obteniendo finalmente el prototipofuncional de un tensi├│metro digital, donde este es capaz de medir lapresi├│n sist├│lica y diast├│lica gracias a todos sus componentes deexcelente calidad. Por otro lado, se obtuvo el modelo en SolidWorks,el c├│digo de todo el funcionamiento de estegracias a las herramientas de Arduino, simulaciones en el SoftwareProteus y finalmente el prototipo f├¡sico. Todas las simulaciones realizadas en los softwares ayudaron para que cuando se tuvieran todos los elementos se pudieran hacer lasrespectivas conexiones de la mejor manera teniendo en cuenta laslimitaciones de voltaje y corriente de cada uno.	\N	2022-09-19 15:14:10.577939+00	2022-10-05 20:09:30.492857+00	mhernandez333@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	t	\N
399	DISE├æO Y CONSTRUCCI├ôN DE PR├ôTESIS DE MIEMBRO SUPERIOR A LA MEDIDA, UTILIZANDO TECNOLOG├ìAS 4.0 EN DISE├æO Y PROTOTIPADO	Tecnoacademia/SENA	Dise├▒o, modelado, prototipado	La tecnolog├¡a ha tra├¡do grandes beneficios a la humanidad en todos los campos. Sin embargo, en el campo de la ortopedia, aplicar algunas tecnolog├¡as sigue siendo aun costoso, en especial porque en nuestro pa├¡s se han desarrollado de manera muy paulatina. Con el acceso de los aprendices de Tecnoacademia a nuevas tecnolog├¡as 4.0 en Dise├▒o y Prototipado se busca explorar opciones para dise├▒ar y construir pr├│tesis a la para ni├▒os en edad escolar que tengan falta de alguno de sus miembros superiores. Las amputaciones y malformaciones en ni├▒os, puede llegar a generar un impacto psicol├│gico y de adaptaci├│n social, generando inseguridades y baja autoestima que pueden llegar afectan el desarrollo de todo su potencial. Adicionalmente, la complejidad de acceder a pr├│tesis sencillas se vuelve una carga para los peque├▒os, ya que al ser gen├®ricas no tienen en cuenta la etapa de crecimiento en la que se encuentra, sin contar que los mayores usuarios son ni├▒os de poblaciones vulnerables o de muy bajos recursos. Con el dise├▒o y construcci├│n de una pr├│tesis a la medida, se utilizar├ín tecnolog├¡as 4.0 (en esc├íner e impresi├│n 3D disponibles en Tecnoacademia Nodo Bucaramanga), que permitan capturar de mejor manera las dimensiones y formas del miembro donde se adaptar├ín, permitiendo pr├│tesis a la medida, m├ís c├│modas, menos complejas, mejorando la funcionalidad y permitiendo hasta cierto punto la personalizaci├│n de esta, acorde a las necesidades y gustos del ni├▒o.	\N	2022-09-19 15:14:14.256338+00	2022-10-05 20:13:07.629677+00	hmahecha@sena.edu.co	Proyecto colegiados	t	\N
408	Aprovechamiento del epicarpio de mangostino como colorante natural para cosm├®ticos	Tecnoacademia /SENA	Desarrollo sostenible, Tecnolog├¡as limpias, cosm├®ticos	El mangostino (Garcinia Mangostana) es considerado un fruto promisorio que puede incentivar el desarrollo agroindustrial (Le├│n, 2018). Colombia present├│ en el 2016 una producci├│n de 625 toneladas de mangostino. Entre 2011 y 2016 la producci├│n increment├│ 440 % (Agronet, 2016), lo cual ha generado en los ├║ltimos a├▒os incrementos de las ├íreas cultivadas del pa├¡s, lo anterior explica el potencial que tiene el cultivo de este fruto en el pa├¡s. El objetivo de este proyecto es darle valor agregado a un bioproducto elaborado a partir del epicarpio del Mangostan, teniendo en cuenta que la corteza o epicarpio es el 70% de la fruta y actualmente se considera residuo. Para tal fin, se inicia una investigaci├│n cualitativa de dise├▒o descriptivo y toma de datos por medio de una observaci├│n experimental que permita aportar una estrategia de aprovechamiento integral del fruto Mangostan. Su metodolog├¡a se basa en la revisi├│n bibliogr├ífica, elaboraci├│n de un prototipo de brillo labial y pintura art├¡stica neutra, extracci├│n de pigmentos naturales a partir del epicarpio del Mangostan, elaboraci├│n de un cat├ílogo de brillos labiales y pinturas en las tonalidades de los colorantes extra├¡dos del epicarpio del Mangost├ín. De esta forma se espera incorporar tecnolog├¡as limpias que disminuyan el impacto negativo sobre el medio ambiente. En la actualidad el proyecto se encuentra en curso, de la revisi├│n bibliogr├ífica se concluye que ya existe una caracterizaci├│n fisicoqu├¡mica para el fruto mangost├ín en Colombia y si es posible extraer pigmentos naturales del epicarpio gracias a su alta cantidad de xantonas, as├¡ mismo, se realiz├│ formulaci├│n y prototipo estable para brillo labial y pintura art├¡stica neutra como base de la producci├│n; actualmente se est├í trabajando la ubicaci├│n, adecuaci├│n y conservaci├│n de la muestra con el fin de realizar las primeras extracciones con apoyo de quercetina como compuesto qu├¡mico antioxidantePalabras Clave: Desarrollo sostenible, Tecnolog├¡as limpias, cosm├®ticos	\N	2022-09-19 15:14:16.530243+00	2022-10-05 20:13:27.634795+00	hmahecha@sena.edu.co	Proyecto colegiados	t	\N
395	Dise├▒o e implementaci├│n de un prototipo que controle el acceso y permita la toma de temperatura corporal en la sede principal del Colegio Adventista Libertad mediante el uso del lector de c├®dula con tecnolog├¡a Arduino.	Tecnoacademia/SENA	Arduino, Desarrollo, Innovaci├│n, Tecnolog├¡a	"Dise├▒ar e implementar un prototipo que controle el acceso y permita la toma de temperatura corporal en la sede principal del Colegio Adventista Libertad (COAL) mediante el uso del lector de c├®dula con tecnolog├¡a Arduino.El tipo de investigaci├│n es experimental y de laboratorio, se obtendr├í de la realizaci├│n de pruebas con diferentes modelos realizados para poder obtener un producto de calidad y de acorde a los recursos tecnol├│gicos, materiales y humanos existentes. el dise├▒o de nuestra investigaci├│n es Documental y de campo y el prop├│sito es aplicada, su enfoque es mixta cuantitativa y cualitativa.Al tratarse de un Sistema que se va a implementar en el establecimiento educativo y posibles empresas se detect├│ que en el mercado hay sistemas biom├®tricos de alto costo, donde entidades como el COAL no cuentan con la capacidad econ├│mica para adquirirlo, por tanto, el presente proyecto lo plante├│ de una manera fiable, con  dise├▒o e implementado a bajo costo y que es funcional t├®cnicamente.El Aporte del presente prototipo en relaci├│n con sistemas ya desarrollados y presentes en el mercado est├í enfocado en tres aspectos principalmente. El primero, el aspecto tecnol├│gico, al haberse utilizado tecnolog├¡a web con c├│digo din├ímico y altamente confiable. El segundo, el aspecto econ├│mico, es un Sistema con un costo muy reducido y con poca infraestructura necesaria para su utilizaci├│n. El tercero y m├ís importante, el aspecto funcional, pues fue desarrollado en base a las necesidades y requerimientos presentados, por lo cual se considera como un sistema personalizado hecho a medida, el cual, a diferencia del resto de sistemas presentes. Gracias al desarrollo del Sistema Biom├®trico a partir de la lectura del c├│digo c├®dula colombiana o c├│digo QR se pudo indagar acerca de las necesidades tecnol├│gicas para llevar un control de asistencia del COAL.	\N	2022-09-19 15:14:13.2527+00	2022-10-05 20:16:02.301239+00	hmahecha@sena.edu.co	Proyecto colegiados	t	\N
377	Desarrollo de un test in vitro para la evaluaci├│n de la maduraci├│n de monocitos a macr├│fagos como posible predictor de una respuesta pro inflamatoria en implantes mamarios	Ingenier├¡a Biom├®dica;Ingenier├¡a Biom├®dica;Ingenier├¡a Biom├®dica	C├ípsula fibrosa; Respuesta inmune; In vitro	En la actualidad, la popularidad de la mamoplastia de aumento ha acrecentado hasta el punto en que es una de las intervenciones quir├║rgicas con ├¡ndole est├®tico m├ís realizadas a nivel global (Kontoes & Gounnaris, 2017). No obstante, el implante tras el proceso de cicatrizaci├│n puede generar una c├ípsula fibrosa, la cual recubre el implante, provocando dolor significativo, lo que puede llevar a una reintervenci├│n (Headon et al., 2015) (Kzhyshkowska et al., 2015). Teniendo en cuenta que el proceso de cicatrizaci├│n se lleva a cabo entre los principales mecanismos por una respuesta inmune, en la cual es involucrada una fase inflamatoria; es por ello que evaluar la respuesta inflamatoria que provocar├í el biomaterial tiene un rol crucial para su uso en implantes mamarios. Sin embargo, actualmente los modelos que permiten estimar con precisi├│n la respuesta inmune que pueden mediar la cicatrizaci├│n de este tipo de implantes, son en su mayor├¡a in vivo. El presente proyecto se centra en la realizaci├│n de una prueba de concepto, con el fin de determinar si la maduraci├│n de monocitos a macr├│fagos in vitro podr├¡a ser utilizada como ensayo de tamizaje de la respuesta proinflamatoria en materiales para implantes mamarios. Para ello, se usar├í la l├¡nea celular THP-1, la cual ser├í diferenciada a macr├│fagos mediante su exposici├│n a materiales comunes utilizados en los implantes mamarios. Los macr├│fagos diferenciados por PMA ser├ín utilizados como control para poder evaluar su morfolog├¡a en contraste con los expuestos al implante mamario, determinando tambi├®n la forma de estructuras espec├¡ficas como el n├║cleo por medio de tinciones.  Tras la interacci├│n del material con el cultivo de monocitos THP-1 se espera poder evaluar y determinar si el material estimul├│ la maduraci├│n de los monocitos. En caso de que se identifiquen caracter├¡sticas de c├®lulas similares a macrofagos, el resultado se traducir├¡a en un panorama esperanzador para la aplicaci├│n de los monocitos como centinelas in vitro, dado que frente a una respuesta inflamatoria los monocitos se diferenciar├ín a macr├│fagos.	\N	2022-09-19 15:14:08.579602+00	2022-10-05 20:17:19.357668+00	dtoloza789@unab.edu.co	Proyecto de grado	t	\N
373	DESARROLLO DE UNA TINTA DE BIOMATERIAL A BASE DE ALGINATO,├üCIDO HIALUR├ôNICO Y PLASMA POBRE EN PLAQUETAS COMO POSIBLE TRATAMIENTO  PARA LAS ├ÜLCERAS CR├ôNICAS DE PIE DIABETICO.	Ingenier├¡a Biom├®dica	Tinta de biomaterial, Ulceras cr├│nicas de pi├® diab├®tico, Biompresi├│n 3D	La diabetes se ha convertido en un problema de salud p├║blica a nivel mundial, por lo que las diferentes patolog├¡as derivadas de esta como las ulceras cr├│nicas de pie diab├®tico tambi├®n han aumentado. Las ulceras cr├│nicas se caracterizan por su dif├¡cil cicatrizaci├│n, llegando a necesitar meses e incluso a├▒os para cicatrizar. Debido a esto se buscan alternativas terap├®uticas que permitan a la herida una correcta cicatrizaci├│n y que adem├ís cumpla con la morfolog├¡a espec├¡fica de cada ├║lcera. Con este pre├ímbulo nace el desarrollo de la tecnolog├¡a de bioimpresi├│n 3D y con ella las tintas de biomaterial, mediante las cuales se puede imprimir un ap├│sito personalizado y funcionalizado para cada ├║lcera, permitiendo una mejora en el tratamiento de las ├║lceras cr├│nicas de pie diab├®tico. Nuestro proyecto se centra en el desarrollo de una tinta de biomaterial que presente una correcta fidelidad de impresi├│n utilizando biopol├¡meros como el Alginato, ├ícido hialur├│nico (AH) y Plasma pobre en plaquetas (PPP), biomateriales utilizados en el ├ímbito de la regeneraci├│n tisular y la impresi├│n 3D por sus propiedades regenerativas y mec├ínicas. Para esto se tomaron diferentes concentraciones de cada uno de los biopol├¡meros y se realizaron pruebas de imprimibilidad, mec├ínicas y de degradaci├│n a la formulaci├│n escogida (6.5% Alginato,5% de AH y el PPP como solvente). El proyecto se encuentra a├║n el desarrollo, sin embargo, las concentraciones de la tinta de biomaterial escogida han logrado tener un error de impresi├│n menor al 10% respecto al modelo CAD, con una fidelidad de impresi├│n de aproximadamente 0.9 y una imprimibilidad cercana al 0.9. Datos que nos demuestran que la tinta de biomaterial escogida permite tener un bajo error al momento de ser impresa, por ende, una adecuada imprimibilidad. Sin embargo, a├║n carecemos de la caracterizaci├│n mec├ínica de la tinta y su tasa de degradaci├│n.	\N	2022-09-19 15:14:07.533542+00	2022-10-05 20:18:36.236854+00	dhormiga@unab.edu.co	Proyecto de grado	t	\N
368	Evaluaci├│n de Estrategias para Promover la Adopci├│n de las Tecnolog├¡as IoT en las Pymes. Un Enfoque de Din├ímica de Sistemas	Ingenier├¡a de Sistemas	IoT, PYMES, Din├ímica de Sistemas	Proponer pol├¡ticas de implementaci├│n de IoT en Pymes con enfoque endin├ímica en sistemas.La metodolog├¡a que se va a aplicar en el proyecto es la correspondiente almodelamiento de din├ímica de sistemasLa formulaci├│n de la hip├│tesis din├ímica como as├¡ mismo dice se trata de generaruna hip├│tesis referente a la din├ímica de la conducta del sistema, esto se sueleapoyar de diagramas como diagramas causales que relacionan variables clavesentre s├¡ y su influencia.	\N	2022-09-19 15:14:06.216185+00	2022-10-05 20:17:37.596396+00	andrick.parra@gmail.com	Proyecto de grado	t	\N
369	Estudio din├ímico sist├®mico acerca del aumento en la incidencia de las enfermedades de salud mental consecuencia de la pandemia COVID-19	Ingenier├¡a de Sistemas 	Din├ímica de Sistemas, Covid-19, Salud Mental 	Estudiar mediante un modelo en din├ímica de sistemas el incremento la\nincidencia de las enfermedades mentales consecuencia de la pandemia\nCovid19\n\nLa metodolog├¡a de est├í investigaci├│n se basa en la din├ímica de Sistemas\n\nPara el desarrollo de la hip├│tesis din├ímica se departi├│ por el modelo SEIR el\ncual es un modelo epidemiol├│gico que estudia la proliferaci├│n de un virus\nemergente y como este llega a la categor├¡a de epidemia\n\nDe esta Hip├│tesis din├ímica y la pol├¡tica que se aplic├│ para intentar tratar este efecto\nde la pandemia, se ve que la capacidad de atenci├│n para esta gran cantidad de\npersonas afectadas es muy poca.	\N	2022-09-19 15:14:06.490052+00	2022-09-19 15:14:06.490052+00	andrick.parra@gmail.com 	Proyecto de grado	f	\N
370	Propuesta de evaluaci├│n din├ímica sist├®mica de una estrategia terap├®utica basada en nanotecnolog├¡a en el comportamiento poblacional de pacientes con c├íncer de mama en Colombia.	Ingenier├¡a de Sistemas 	Nanotecnolog├¡a, nanociencia, nanopart├¡culas	El objetivo principal del proyecto, es desarrollar una propuesta nanotecnol├│gica para el diagn├│stico y tratamiento temprano y eficaz en pacientes con c├íncer de mama mediante el uso de nano part├¡culas que logren llevar los f├írmacos de quimioterapia de forma directa y realizar diagn├│sticos de c├®lulas posiblemente cancer├¡genas de forma precisa.\n\nEl uso de la nanociencia o nanomedicina\ncomo un nuevo m├®todo para los diagn├│sticos y tratamientos en personas con afecciones\ny enfermedades de alto riesgo, puede y ser├í una alternativa favorable.\n	\N	2022-09-19 15:14:06.762271+00	2022-09-19 15:14:06.762271+00	andrick.parra@gmail.com	Proyecto de grado	f	\N
371	Evaluaci├│n de los efectos de la adopci├│n de energ├¡a renovable en la producci├│n de hidrocarburos	Ingenier├¡a de Sistemas 	Hidrocarburos, Energ├¡a Renovable, Din├ímica de Sistemas	El objetivo de este proyecto es estudiar din├ímico sist├®micamente la estrategia para la adopci├│n de energ├¡as renovables en empresas que producen hidrocarburos.\n\nEl modelo sist├®mico se podr├¡an implementar otros casos de implementaci├│n de energ├¡a renovable en procesos de producci├│n, precisamente en la parte de refinaci├│n.\n\nEs viable para las empresas invertir en el uso de energ├¡a renovable, ya que con los resultados obtenidos se puede observar que al implementarlas se reducen los costos de producci├│n, aumentan las ganancias y reducen las emisiones de C02.\n	\N	2022-09-19 15:14:07.017105+00	2022-09-19 15:14:07.017105+00	andrick.parra@gmail.com 	Proyecto de grado	f	\N
374	Calculate Pi	Ingenieria de Sistemas; Ingenier├¡a industrial; Ingenier├¡a industrial	Calculadora	Crear un prototipo de calculadora convencional en Python que permita guardar datos e informaci├│n suministrada por el usuario, ofreciendo un servicio de base de datos en la nube, junto a la creaci├│n y relaci├│n del perfil correspondiente.	\N	2022-09-19 15:14:07.791982+00	2022-10-05 20:10:00.416199+00	mmesa269@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	t	\N
372	DESARROLLO DE UN ROBOT OPERADO A DISTANCIA PARA LA B├ÜSQUEDA DE SUPERVIVIENTES EN ESTRUCTURAS COLAPSADAS DE DIF├ìCIL ACCESO	Ingenier├¡a Mecatr├│nica, Universidad Aut├│noma de Bucaramanga	IoT; Robot; Radiofrecuencia	Dise├▒o y construcci├│n de un prototipo de robot operado a distancia por medio de una interfaz gr├ífica en un servidor web local, para la b├║squeda de personas atrapadas dentro de estructuras colapsadas de dif├¡cil acceso y alto riesgo para los miembros de equipos de b├║squeda y rescate. Dicho robot cuenta con un sistema de comunicaci├│n inal├ímbrico con un alcance de hasta 20 metros conformado por un sistema que transmite v├¡a WI-FI la imagen de la c├ímara del robot al mando del operario y los controles del mando al robot y un sistema de transmisi├│n de audio bidireccional entre el operario y el robot, los cuales en conjunto facilitan la labor de detectar, localizar y conocer la condici├│n en la que se encuentran las v├¡ctimas y el entorno en el que se encuentra para proceder a hacer una planificaci├│n correcta de la operaci├│n de rescate. De igual forma, se describe el sistema de locomoci├│n con brazos y la tracci├│n con orugas mediante la cual el robot se puede desplazar en superficies desniveladas con lodo, madera, grava, tierra o escombros y superar obst├ículos de distintos tama├▒os manteniendo un tama├▒o compacto. Dando como resultado un prototipo que gracias a sus capacidades les permite a los rescatistas mantenerse alejados de la zona de peligro durante las labores de detecci├│n de supervivientes dentro de estructuras colapsadas mientras pueden controlar al robot desde cualquier dispositivo que se pueda conectar a la red local de WI-FI del robot.	\N	2022-09-19 15:14:07.282615+00	2022-10-05 20:18:54.740713+00	jbuitrago727@unab.edu.co	Proyecto de grado	t	\N
376	Quaesitor- Plataforma Tecnol├│gica de b├║squeda interactiva soportada en dispositivos m├│viles	Ingenier├¡a de Sistemas	Django\nWeb Scraping\nRest-Framework	En Colombia para las redes que no son parte de un banco los costos m├ís importantes radican en el transporte de efectivo y la seguridad por lo que para las plataformas es importante ser percibidas como un sitio de transacciones seguro, dado que en general los clientes no conf├¡an en los medios de pago que ofrecen algunas plataformas. Esto opaca la presencia de plataformas que de igual manera son seguras pero el cliente opta por lo que ya conoce y considera seguro, es evidente que las organizaciones deben prestar atenci├│n a los mecanismos necesarios para captar valor desde y para sus clientes. Internet es un espacio para la actividad econ├│mica donde la publicidad puede llegar a enmascarar cierta informaci├│n relevante para el usuario. Es por ello que los clientes pueden llegar a perderse de su objetivo central en la b├║squeda, ya sea encontrar su producto al mejor precio o en su mejor calidad, lo cual repercute en perder dinero en compras innecesarias o fuera de su inter├®s real.\nEs por ello que en este proyecto se propone el desarrollo de un aplicativo m├│vil que permita dar soluci├│n a la masiva cantidad de opciones que un usuario puede llegar a tener al momento de buscar sus productos en internet y reducirlo a lo que este realmente quiere ver, haciendo uso de las tecnolog├¡as de desarrollo y producci├│n de software que la era actual ofrece, por lo cual se eligen las herramientas m├ís pertinentes a consideraci├│n de los desarrolladores en t├®rminos de la b├║squeda y comparaci├│n de informaci├│n en internet, empleando t├®cnicas de b├║squeda y comparaci├│n como ÔÇ£web scrapingÔÇØ. Esta permite extraer la informaci├│n de manera autom├ítica, por lo cual ser├¡a posible solucionar el problema que d├¡a a d├¡a presentan muchos clientes en internet al momento de buscar un producto y no encuentran el precio o la calidad que buscan. Es indispensable ofrecer la seguridad necesaria al momento de realizar las b├║squedas, que el cliente cuente con la total confianza de que sus intereses son respaldados por sites confiables, que garantizan la integridad del producto; por consiguiente, las b├║squedas deber├ín estar limitadas por par├ímetros que garanticen la seguridad y confiabilidad de los sitios en los que se consultan los intereses del cliente, ofreci├®ndole a los usuarios una plataforma de b├║squedas: r├ípida, segura y confiable para sus productos, en la mejor calidad y al mejor precio.	https://www.youtube.com/watch?v=YqTUaM_SXaI&t=76s&ab_channel=LUISSANTIAGODULCEYRAMIREZ	2022-09-19 15:14:08.324889+00	2022-09-19 15:14:08.324889+00	ldulcey93@unab.edu.co	Proyecto de grado	f	\N
378	Animal friend	Ing Sistemas 	Mascota, adopcion, amigo	Contactar a la mascota con su due├▒o ideal, mediante la exposicion de las caracteristicas de este.	\N	2022-09-19 15:14:08.825592+00	2022-09-19 15:14:08.825592+00	Lpena832@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	f	\N
375	An├ílisis de las ondas cerebrales ante est├¡mulos de comida y su significado, mediante el Brainwave starter kit	Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica	Neurosciencias, Neurogastronom├¡a, Sistema nervioso aut├│nomo	La neurogastronom├¡a es el estudio del comportamiento del cerebro frente a est├¡mulos alimenticios. Las anomal├¡as en la percepci├│n del gusto conllevan un riesgo de disminuci├│n del apetito, p├®rdida de peso, una reducci├│n significativa de la calidad de vida y tambi├®n pueden provocar ansiedad o depresi├│n. Este estudio investiga la relaci├│n entre las respuestas de las ondas delta, theta, gamma y beta y sus significados ante el est├¡mulo de la ingesta de diferentes alimentos, evaluados a trav├®s de la brainwave starter kit. Participaron 4 estudiantes universitarios sanos (edad media= 19). La variabilidad de las ondas se tom├│ 2 segundos despu├®s de presentado el trial y un segundo despu├®s de la base neutra (es decir, despu├®s de tomar agua). Se evidencio que al participante 1 la comida le produce felicidad, a excepci├│n de las papas y el caf├®, ya que tuvieron grandes amplitudes en Low Gamma. Por otro lado, el participante 2 no disfruta toda la comida de la misma manera, generando as├¡ que tenga diferentes amplitudes durante todo el experimento. En conclusi├│n, Brainwave starter kit demuestra tener correlaci├│n con lo esperado seg├║n la teor├¡a con respecto a la activaci├│n de las ondas cerebrales presentadas.	\N	2022-09-19 15:14:08.073913+00	2022-10-05 20:05:47.758255+00	vvalzania@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
379	Mi bus Unab	Ingenier├¡a de Sistemas	Track, map, funcional	Mibus Unab representa una actualizaci├│n a la antigua versi├│n de la aplicaci├│n, esta respresenta cambios Importantes, tales c├│mo tiempo de espera y notificaciones	\N	2022-09-19 15:14:09.083447+00	2022-10-05 20:09:09.278335+00	cmunoz411@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	t	\N
382	Prototipo de aplicaci├│n m├│vil utilizando una herramienta de desarrollo multiplataforma para trabajadores de servicios independientes\n	Ingenier├¡a de Sistemas	Aplicaci├│n, Trabajadores Independientes, GeneXus	 Desarrollar un prototipo de  aplicaci├│n m├│vil utilizando la plataforma de desarrollo de software GeneXus que facilite la b├║squeda y la adquisici├│n de empleo a trabajadores  independientes	\N	2022-09-19 15:14:09.829866+00	2022-09-19 15:14:09.829866+00	jestevez	Proyecto de grado	f	\N
384	DISE├æO E IMPLEMENTACI├ôN DE UN SISTEMA DE CONTROL PARA UN INTERCAMBIADOR DE CALOR	INGENIER├ìA MECATR├ôNICA	CONTROL;IOT;MODELAMIENTO MATEMATICO	El desarrollo de actividades acad├®micas realizado en el laboratorio Planta Piloto de la Universidad Aut├│noma de Bucaramanga permite a los estudiantes tener un acercamiento a los procesos t├®rmicos industriales.\n\nEn este laboratorio, cada uno de los procesos cuenta con sus respectivos actuadores y diferentes sensores, los cuales permiten tener un monitoreo de las variables y control de los diferentes modos de operaci├│n de cada uno de estos procesos.\n\nEn previos desarrollos se establecieron los modelos matem├íticos de algunos intercambiadores de calor presentes en este laboratorio, no obstante, el intercambiador tipo flujo longitudinal a├║n carece de una validaci├│n de modelamiento matem├ítico y de un control sintonizado. Adem├ís, se propone la implementaci├│n de un sistema IoT que permita el control remoto, la toma y visualizaci├│n de datos de los sensores envueltos en este proceso.\n\nPara este desarrollo se plantea la identificaci├│n y modelamiento matem├ítico del sistema del intercambiador de calor tipo flujo longitudinal para posteriormente dise├▒ar los respectivos controladores en la herramienta MATLAB mediante t├®cnicas tanto lineales como no lineales. Los controladores se programar├ín mediante la interfaz que posee el sistema de control distribuido Delta V.\n\nFinalmente, para poder visualizar los resultados del sistema de control implementado, se encuentra el requisito de implementar un sistema que permita tener un manejo remoto del proceso mediante el uso de tecnolog├¡as IoT, permitiendo una mayor flexibilidad en la manipulaci├│n del proceso y la toma de datos para el an├ílisis de este.	\N	2022-09-19 15:14:10.333339+00	2022-09-19 15:14:10.333339+00	nvera497@unab.edu.co	Proyecto de grado	f	\N
383	Demostraci├│n del acople excitaci├│n-contracci├│n del m├║sculo card├¡aco para la representaci├│n del potencial de acci├│n a trav├®s de una interfaz gr├ífica	Ingenier├¡a Biom├®dica	Excitaci├│n; Contracci├│n; M├║sculo cardiaco.	Mediante la realizaci├│n de este proyecto acad├®mico se pretende dar a conocer aspectos acerca de la funcionalidad del coraz├│n y explicar fen├│menos del mismo sistema cardiovascular, por ejemplo, el fen├│meno excitaci├│n ÔÇô contracci├│n que se presenta en el m├║sculo cardiaco y se puede definir como un contacto veloz en el que se origina y emite el movimiento el├®ctrico. La informaci├│n ser├í expuesta aprovechando la herramienta computacional MATLAB, en la cual se realizar├í una gr├ífica que haga visibles las variables fisiol├│gicas, termodin├ímicas y anat├│micas, entendiendo la conexi├│n entre s├¡ mismas de forma gr├ífica. As├¡ mismo se podr├í evidenciar el intercambio de energ├¡a mec├ínica o el├®ctrica, seg├║n corresponda.	\N	2022-09-19 15:14:10.085184+00	2022-10-05 20:07:46.049426+00	lsolares@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	t	\N
412	Xtreme adventure	4to semestre; 4to semestre; 4to semestre	Viajes Aventura Diversi├│n	Esta idea de emprendimiento santandereano llamada ÔÇ£Agencia de viajes Extreme AdventureÔÇØ nace a partir de observar la falta de crecimiento econ├│mico en varias zonas de nuestro pa├¡s Colombia que no son admiradas por sus paisajes y zonas tur├¡sticas extrema que ofrece. Es por esto que con Extreme Adventure queremos incentivar el desarrollo tur├¡stico y deportes extremos en zonas que no son habitualmente visitadas, creando peque├▒os planes tur├¡sticos especiales para todas aquellas personas aventureras que quieran conocer un poco m├ís de la gran diversidad que nos ofrece nuestro pa├¡s.	https://youtu.be/akbrfLTepkg	2022-09-19 15:14:17.57753+00	2022-10-05 20:12:34.472728+00	gmora611@unab.edu.co	Emprendimiento	t	\N
386	An├ílisis Biomec├ínico del Pie Diab├®tico Respecto al Pie Normal Mediante un Registro Est├ítico en P-Walk.	Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica; Ingenier├¡a Biom├®dica.	Pie diab├®tico, biomec├ínica, Neuropat├¡as \nDiab├®ticas.	La diabetes mellitus es un tipo de enfermedad cr├│nico-degenerativa, causada por el exceso de glucosa en la sangre, desencadena diferentes lesiones en el organismo, entre ellas: enfermedades vasculares perif├®ricas y neuropat├¡as. Una de las complicaciones secundarias m├ís frecuentes es el pie diab├®tico, el cual genera ulceraciones y destrucci├│n de tejidos en la extremidad inferior, en casos cr├│nicos, conlleva a la amputaci├│n del miembro.\nEl presente trabajo tuvo como objetivo interpretar la huella plantar est├ítica mediante el an├ílisis morfofuncional y biomec├ínico del paciente con pie diab├®tico con respecto a un pie  normal con el uso de la plataforma P-walk, para de evidenciar la influencia de la patolog├¡a en la variaci├│n de la presi├│n plantar de cada paciente y con ello evitar posibles complicaciones asociadas a la exposici├│n constante del estr├®s mec├ínico que genera: deformidades en articulaciones, desgaste en la piel, alteraciones en la distribuci├│n de la presi├│n plantar y un aumento en la presi├│n m├íxima que puede asociarse a diferentes patolog├¡as. Por consiguiente, este tipo de investigaci├│n puede ser utilizada como m├®todo preventivo y de tratamiento a partir de los registros est├íticos y din├ímicos del pie con el fin de reducir los impactos causados durante la marcha.	\N	2022-09-19 15:14:10.829241+00	2022-09-19 15:14:10.829241+00	mlazaro216@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	f	\N
419	Sostenibilidad ambiental en la UNAB con base a los ODS	Ingenier├¡a en Energ├¡a; Ingenier├¡a Mecatr├│nica	ODS, sostenibilidad, ambiente	Objetivos: 1. Analizar las acciones que realiza la UNAB en torno a los ODS, 2. Presentar una propuesta de un escenario de sostenibilidad.\n\nSe hizo el reconocimiento de campo que consisti├│ en relacionar las diferentes actividades que se desarrollan en el campus el Jard├¡n con las ODS y seleccionar cuales de estas son las que m├ís se desarrollan en la UNAB y el impacto que estas generan, para luego lograr el planteamiento de un escenario de mejora que impacte la sostenibilidad del campus. A fin de brindar unas recomendaciones para la mejora de las actividades llevadas a cabo dentro de la universidad.	\N	2022-09-19 15:14:19.393302+00	2022-09-19 15:14:19.393302+00	ljaimes9@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	f	\N
389	An├ílisis Conjoint  Bebidas Carbonatadas	Ingenier├¡a de mercados	Machine Learning, Toma de decisiones, An├ílisis Conjoint	identificar el atributo y/o niveles que aportan mayor valor en la toma de decisi├│n en bebidas carbonatadas, se realiz├│ mediante un instrumento tipo encuesta de forma virtual, se identificaron los principales niveles que aportan valor en la toma de decisi├│n	\N	2022-09-19 15:14:11.663197+00	2022-10-05 20:06:29.11852+00	oduran82@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
390	Web de motos Auteco	Ingenieria de sistemas; Ingenieria de sistemas; Ingenieria de sistemas	Desarrollo, web, front-end	Desarrollo de una p├ígina web para mostrar informaci├│n de venta de motos Auteco. Para su realizaci├│n se uso tecn├│logias como HTML5, CSS3, JavaScript y React.js. Como resultado se obtuvo una p├ígina web informativa de motos con una UI agradable para el usuario. En conclusi├│n, es muy importante tener en cuenta la UI/UX de un sitio web para que sea accesible a todos los usuarios.	\N	2022-09-19 15:14:11.910572+00	2022-10-05 20:08:16.425165+00	nsilva219@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	t	\N
387	Filtro purificador de a├¡re hecho a base de matriz de seda y cloroplastos	Ingenier├¡a biom├®dica; ingenier├¡a biom├®dica; ingenier├¡a biom├®dica	Cloroplastos - Sericina - Capullos	Objetivos:- Construir el estado del arte relacionado con el uso de la matriz de seda y cloroplastos, en procesos de mejoramiento de niveles de di├│xido de carbono.- Crear un prototipo de purificador de aire, que integre la matriz de seda y cloroplastos, para el mejoramiento de niveles de di├│xido de carbono.- Aplicar el prototipo de purificador de aire de acuerdo con el dise├▒o obtenido.M├®todos:- Definici├│n de condiciones para la b├║squeda.- B├║squeda de informaci├│n.- An├ílisis de informaci├│n.- Elaboraci├│n del documento del estado del arte.- Hacer un boceto y la prueba de concepto.- Comprobar viabilidad  eficacia del prototipo.- Extracci├│n de cloroplastos.- Extracci├│n de la prote├¡na de seda.- Uni├│n de la matriz y los cloroplastosMateriales:- Capullos de seda de gusano (especie: bombyx mori)- Hojas de caf├® - Carbonato de sodio- Etanol- placas de petri- ├ücido fosforico - Azucar- Pipetas de mLResultados:- Un prototipo de purificador de aire de acuerdo con el dise├▒o obtenido, para el mejoramiento de niveles de di├│xido de carbonoDiscusi├│n: A lo largo del desarrollo del proyecto se presentaron diferentes inconvenientes con respecto a los protocolos escogidos para cada uno de los procedimientos, sin embargo se superaron cada uno de estos logrando as├¡ un primer prototipo.Conclusiones:- Reconocimiento mediante la experimentaci├│n, de la veracidad e importancia de la informaci├│n obtenida.- Aprendizaje sobre c├│mo trabajar en un laboratorio correctamente, las pautas a seguir, los protocolos y las restricciones.- Validaci├│n de los errores, los malos resultados y los fracasos.Palabras claves:- Sericina. - Fibroina.- Fotosintesis.- Filtro.	\N	2022-09-19 15:14:11.088037+00	2022-10-05 20:10:32.29042+00	vgomez747@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	t	\N
391	An├ílisis Biomec├ínico del Pie Plano Durante el Apoyo Est├ítico Mediante la Plataforma P-Walk en Estudiante de la UNAB	Ingenier├¡a Biom├®dica UNAB	Pie plano, biomec├ínica, articulaci├│n subtalar.	El pie plano adem├ís de combinar m├║ltiples deformidades est├íticas y din├ímicas, responde a un tipo de pie con una predisposici├│n alta a sufrir alteraciones biomec├ínicas durante la marcha. Usualmente se aborda como una variante normal y tiende a la mejor├¡a espont├ínea, sin embargo, cuando esta alteraci├│n produce dolor o limitaci├│n funcional se considera patol├│gico. La importancia de identificar las variaciones anatomofisiol├│gicas y biomec├ínicas en este tipo de pie, surge desde la necesidad de comprender el funcionamiento del sistema locomotor bajo la alteraci├│n de sus componentes y a su vez, parte de la posibilidad de detectar posibles factores de riesgo y lesiones a las que est├í sujeto un paciente con pie plano. \n\nEn este proyecto se analiz├│ el comportamiento del pie plano durante el apoyo est├ítico para exponer los estabilizadores que se ven afectados y las alteraciones que presenta su estructura cuando se encuentra en posici├│n bipodal, para ello, se emple├│ la plataforma de presi├▓n plantar P-Walk y el software G-Studio por medio de los cuales se realiz├│ el registro de la huella plantar de un sujeto con pie plano y con pie normal. De esta manera, se pudieron analizar las variaciones entre ambos ex├ímenes e identificar que la disminuci├│n en el arco plantar es directamente proporcional al peso de la personas. Adem├ís, se conocieron en qu├® zonas del pie recae m├ís carga para ambos casos evaluados y se concluy├│ que en un pie plano existe m├ís presi├│n debido a que cubre mayor ├írea.	\N	2022-09-19 15:14:12.159741+00	2022-09-19 15:14:12.159741+00	abohorquez382@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	f	\N
393	An├ílisis de datos inmobiliarios	Ingenier├¡a de mercados	Comportamiento, inmobiliarias y demanda.	Las inmobiliarias no comprenden el comportamiento, preferencias y h├íbitos de los arrendatarios con respecto a los servicios, por esto no tienen definido el mercado meta.	\N	2022-09-19 15:14:12.664147+00	2022-09-19 15:14:12.664147+00	dportilla61@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	f	\N
392	Ecommerce para Caf├® Sensaciones	Ingenier├¡a de Mercados	Ecommerce, Punto de venta, Sistema de planificaci├│n de recursos empresariales	Se desarrollar├í un ecommers para la marca Caf├® Sensaciones en la que se busca ofrecer productos de diferentes tama├▒os y presentaciones, adem├ís se dar├í a conocer este emprendimiento que es de una estudiante de la UNAB y en el cual se ha trabajado durante toda la carrera en diferentes asignaturas. Para el desarrollo de este proyecto se dar├í uso de la plataforma odoo; adem├ís de contar con las asesor├¡as que brindara el docente de la asignatura de sistemas de informaci├│n de mercados.	https://drive.google.com/file/d/1rBvZGSC_sQ4vGiFFqX084HrZOIXIebLh/view?usp=sharing	2022-09-19 15:14:12.411883+00	2022-10-05 20:11:48.349104+00	mabril188@unab.edu.co	Emprendimiento	t	\N
394	COFFEE COMPANY	Ingenier├¡a Industrial; Ingenier├¡a Industrial; Ingenier├¡a Industrial	Organizaci├│n comercial, venta de caf├®, servicio de calidad	El presente proyecto, es una propuesta de creaci├│n de una organizaci├│n comercial que genere orden en la venta del caf├® ambulante en la cuidad de Bucaramanga, para ofrecer accesibilidad al trabajo legal y garant├¡a a los consumidores de caf├®, en el ├írea de salubridad. El proyecto se enfoca en reconocer todas las variables dispensables para la creaci├│n y desarrollo de una compa├▒├¡a partiendo de la metodolog├¡a del modelo canvas que permita mejorar y comunicar de un modo atractivo la estrategia de la empresa, permitiendo evaluar su visibilidad de una idea eficaz. En este se identifica una problem├ítica que se analiza a partir de todos los hechos que rodeen el contexto de esta comunidad, para poder as├¡ dar una posible soluci├│n a la investigaci├│n y consigo dar justificaci├│n al proyecto. De igual forma, se eval├║a con detalle cada variable relacionada con el prop├│sito principal y modelo a seguir para Coffe Company.	https://youtu.be/Rf7ItfOIyWs	2022-09-19 15:14:12.979779+00	2022-10-05 20:12:12.528074+00	szafra@unab.edu.co	Emprendimiento	t	\N
397	An├ílsis de datos inmobiliarios\n	DAMIAN PORTILLA; VALERIA FONSECA; NAIDALY BARON, ANA GABRIELA LOPEZ.	Inmobiliaria, comportamiento, mercado.	Las Inmobiliarias no comprenden el comportamiento, preferencias y h├íbitos de los arrendatarios con respecto a los servicios por eso no tienen definido el mercado meta.	\N	2022-09-19 15:14:13.746989+00	2022-09-19 15:14:13.746989+00	dportilla61@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	f	\N
400	DISE├æO DE UN HUERTO INTELIGENTE AUTOMATIZADO A BAJO COSTO CON ARDUINO	Tecnoacademia/SENA	Arduino, Huerto, Celda	El presente proyecto, consiste en el dise├▒o y desarrollo de un sistema electr├│nico que monitoriza las condiciones de humedad y temperatura del huerto ejerciendo control sobre estas variables para mantener las condiciones ├│ptimas del desarrollo  de las plantas del cultivo para autoconsumo, mediante el uso de la placa de desarrollo Arduino se controlas y miden las variables de humedad y temperatura con el fin de poder ejercer control sobre las mismas mediante actuadores finales que permiten el riego por goteo y la evacuaci├│n del aire interno del habit├ículo todo esto alimentado por sistemas energ├®ticos renovables como lo son las celdas fotovoltaicas. El dise├▒o de este producto est├í dirigido a un cliente que cultiva en un huerto dom├®stico. El producto estar├í dise├▒ado para que pueda ser usado en un domicilio, exteriores, incluso se puede usar en espacios comerciales debido a que su dise├▒o permite que el sistema sea escalable ya que en su dise├▒o se us├│ el principio de fractal.La idea en la que se basa este trabajo de investigaci├│n consiste en una tarjeta de medici├│n de variables ambientales, la cual recopilar├í los datos del ambiente (temperatura y humedad), con el fin de recolectar y analizar estas variables, para el ├│ptimo crecimiento de los cultivos dentro de una huerta en un espacio cerrado de ├írea reducida.Este producto puede convertirse en una estrategia para mejorar la calidad de vida de las personas que adopten este tipo de huertas automatizadas. Se busca que este tipo de iniciativas afecten de manera positiva al generar m├ís opciones de ingresos econ├│micos y posibilidades de una alimentaci├│n con mayor grado de nutrici├│n; por medio de la agricultura urbana y el internet de las cosas ayudando as├¡ al mejoramiento de las condiciones de vida en el territorio colombiano.	\N	2022-09-19 15:14:14.504143+00	2022-10-05 20:13:53.299023+00	hmahecha@unab.edu.co	Proyecto colegiados	t	\N
398	Dise├▒o y an├ílisis de un nuevo sistema de estabilizaci├│n para el robot b├¡pedo.	Falta definir	Robot, Modelado, Bipedo	"El estudio que aqu├¡ se plantea pretende aportar algunas ideas nuevas al campo de investigaci├│n de la locomoci├│n b├¡peda, y m├ís concretamente al control en alto nivel del equilibrio y la coordinaci├│n de la marcha en un robot b├¡pedo, el principal objetivo de este trabajo es abordar un problema de control de gran complejidad, a trav├®s de t├®cnicas no tradicionales. frente a otros trabajos en los que la coordinaci├│n es relegada a un segundo plano y se consigue por simple simetr├¡a, aqu├¡ se sit├║a en el centro de atenci├│n del estudio.nuestro proyecto busca realizar un an├ílisis estructural de cada una de las extremidades del robot con el objetivo de conocer los grados de libertad, las limitaciones de los ├íngulos y la velocidad angular que puede obtener en cada en movimiento entre otros aspectos mec├ínicos de nuestro robot. realizar una tarjeta compacta que permita ser programada en c├│digo c++, que interprete por intermedio de un sistema de comunicaci├│n bluetooth todo los comandos y directrices que se dan en una app instalada en cualquier celular con sistema Android.	\N	2022-09-19 15:14:13.999961+00	2022-10-05 20:14:21.540589+00	hmahecha@sena.edu.co	Proyecto colegiados	t	\N
396	Caracterizaci├│n fisicoqu├¡mica y evaluaci├│n de la moringa oleifera para la purificaci├│n del agua	Tecnoacademia/SENA	Purificaci├│n; Moringa; Caracterizaci├│n fisicoqu├¡mica.	"Actualmente se evidencia una problem├ítica afectando directamente el cuidado y la preservaci├│n del medio ambiente, involucrando la salud del ser humano, por ello se requiere mitigar los da├▒os y evitar el deterioro del planeta, que implica todos los ambientes: Aire, Agua y Suelo.La mayor parte de las industrias generan desechos contaminantes para el agua, por ende, buscar nuevas alternativas que beneficien y contribuyan al tratamiento de agua de forma natural es un reto que se debe tomar para beneficio de todos. El ├írbol de moringa, alcanza una altura de 10 a 12 metros este tambi├®n es conocido como el ├írbol de la vida, tiene diversas caracter├¡sticas entre ellas las que mas se destacan es su capacidad de Resistencia a la sequia y el potencial agron├│mico.En cuanto al tratamiento de aguas existen diversas investigaciones que estudian las funciones de las prote├¡nas coagulantes, las cuales se mencionan como compuestos activos de las semillas y son utilizadas para la purificaci├│n de fuentes h├¡dricas.Por lo tanto se quiere Caracterizar fisicoqu├¡micamente  y evaluar  la moringa ole├¡fera para la purificaci├│n del agua, teniendo en cuenta los estudios o an├ílisis investigativos que ya se han realizado al respecto."	\N	2022-09-19 15:14:13.502108+00	2022-10-05 20:14:50.928377+00	hmahecha@sena.edu.co	Proyecto colegiados	t	\N
402	SCOOTER ELIPTICA CON ASISTENCIA ELECTRICA	INGENIERIA MECATRONICA	SCOOTER MOVILIDAD DESARROLLO	Nuestro objetivo es ofrecer una nueva forma de movilidad para la ciudad de Bucaramanga, lo haremos desarrollando un veh├¡culo el├¡ptico con asistencia el├®ctrica. Para ello se dise├▒├│ este veh├¡culo teniendo en cuenta criterios de ergonom├¡a y las condiciones actuales del mercado, esto con el fin de ofrecer una alternativa viable para los bumangueses. Actualmente estamos en fase de construcci├│n por tanto estamos por tanto ya contamos con los dise├▒os definidos y simulaciones en solidworks de este.	\N	2022-09-19 15:14:15.004975+00	2022-09-19 15:14:15.004975+00	bgaravito@unab.edu.co	Proyecto de grado	f	\N
404	DISE├æO DE UN SISTEMA PARA EL REGISTRO DE LA POSICI├ôN DE LOS CICLISTAS DE RUTA USANDO SENSORES INERCIALES PARA POTENCIAR EL GESTO DEPORTIVO.	Ingenier├¡a Biom├®dica	Ciclismo, An├ílisis Biom├®canico, Gesto Deportivo	Hay un gran desaf├¡o de analizar las variables biomec├ínicas a ciclistas en campo. Los sistemas como los sensores inerciales que, permiten analizar el movimiento en diferentes ejes, pueden ser portables y hasta m├ís precisos que un sistema de c├ímaras. Por ello se desarroll├│ un sistema para el registro de la posici├│n de los ciclistas en ruta usando sensores inerciales para potenciar el gesto deportivo. Se realiz├│ una prueba experimental para verificar la funcionalidad del sistema a diferentes cadencias y posiciones del ciclista. Un ciclista sobre un simulador realiz├│ dos pruebas pedaleando a diferentes cadencias, una de 60 rpm y la otra de 80 rpm. Tambi├®n se pedale├│ a diferentes posiciones, 3 cm arriba de la altura base y 3 cm debajo de la altura base. Cuando se modifica la posici├│n base del ciclista, los valores como la rotaci├│n de cadera y movimiento del tal├│n cambian. Por ello, el sistema desarrollado identifica y permite analizar cambios de posici├│n de los ciclistas de ruta.	https://share.icloud.com/photos/003sxDGhRt_MYtrCwXKEFSawQ	2022-09-19 15:14:15.502553+00	2022-09-19 15:14:15.502553+00	lamado175@unab.edu.co	Proyecto de grado	f	\N
401	PROTOTIPO DE UNA PR├ôTESIS ROB├ôTICA CON UN GRADO DE LIBERTAD MEDIANTE EL USO DE ELECTROMIOGRAF├ìA	Tecnoacademia/SENA	Arduino, electromiografia, impresi├│n 3D	Este proyecto pretende desarrollar una pr├│tesis rob├│tica impresa con tecnolog├¡a 3D que ser├í controlada mediante se├▒ales de electromiograf├¡a (EMG) provenientes del musculo m├ís cercano de la mano amputada siendo estas se├▒ales captadas por electrodos superficiales, para esto se implementa la placa de desarrollo ARDUINO junto con el dise├▒o de un circuito electr├│nico que se encarga de realizar la captaci├│n y tratamiento de las se├▒ales el├®ctricas del cuerpo, para posteriormente ser interpretadas por la unidad de c├│mputo y finalmente cerrar o abrir una pinza que le permita al usuario final sujetar alg├║n objeto aumentando la autonom├¡a del usuario y mejorando as├¡ su calidad de vida.  El dise├▒o del prototipo de la pr├│tesis abre un campo de investigaci├│n y propone la posibilidad de que personas de recursos limitados tengan acceso a pr├│tesis que  de otro modo serian de un alto costo, el aporte de este prototipo es de tipo investigativo enfocado en aspectos tales como la fiabilidad, ya que el dise├▒o del mismo se realiza con pocos elementos reduciendo la posibilidad de falla, y la funcionalidad pues su desarrollo est├í enfocado a que sean pr├│tesis hechas a medida adapt├índose totalmente a la extremidad que sufri├│ la amputaci├│n, siendo esta ultima su eje diferenciador ya que cada pr├│tesis producida ser├í hecha a medida del usuario a bajo costo.	\N	2022-09-19 15:14:14.759985+00	2022-10-05 20:15:22.961095+00	hmahecha@sena.edu.co	Proyecto colegiados	t	\N
403	Prototipo de una m├íquina selectora de semilla sacha inchi	Ingenier├¡a Mecatr├│nica	Inteligencia artificial, visi├│n artificial, automatizaci├│n industrial	El cultivo de la planta sacha inchi viene incrementando en el pa├¡s debido a su demanda principalmente en el exterior y sus buenos rendimientos econ├│micos. Adem├ís, se est├í fomentando como reemplazo de cultivos il├¡citos.El aceite extra├¡do de esta planta oleaginosa contiene los m├ís altos niveles de ├ícidos grasos Omega 3, 6 y 9 de f├ícil digesti├│n. Adem├ís, contiene antioxidantes, vitamina A y prote├¡nas. El contenido de ├ícidos grasos saturados es de tan s├│lo 6.5% y los insaturados llegan a un porcentaje de 92.7%. Este aceite es utilizado en la industria cosm├®tica, farmac├®utica y gastron├│mica debido a las cualidades anteriormente nombradas.Esta propuesta plantea el desarrollo y construcci├│n de un prototipo de m├íquina selectora por color y forma de semillas de Sacha Inchi, partiendo del dise├▒o mec├ínico, el├®ctrico y electr├│nico, as├¡ como la escogencia e implementaci├│n del algoritmo computacional de visi├│n artificial con inteligencia artificial que permita el triaje de las semillas. Las semillas alimentadas a la m├íquina selectora provienen de una primera etapa de descascarado, por lo tanto, la m├íquina deber├í ser capaz de escoger entre semillas con c├íscara primaria (color marr├│n claro y forma irregular), semillas con c├íscara secundaria de (color marr├│n oscuro y forma ovalar), semillas descascaradas da├▒adas (color blanco y forma circular). Estas particularidades motivan el uso de tecnolog├¡a y herramientas de dise├▒o que permitan un mejoramiento en dicho proceso, el cual se realiza manualmente generando cansancio visual del operario y errores en la selecci├│n que posteriormente repercute en la calidad del aceite extra├¡do.	\N	2022-09-19 15:14:15.251453+00	2022-10-05 20:16:43.187021+00	irangel125@unab.edu.co	Proyecto de grado	t	\N
411	ASESOR├ìA EN EDUCACI├ôN FINANCIERA (AEF)	Ingenier├¡a Financiera;Ingenier├¡a de Mercados;Ingenier├¡a Mecatr├│nica	Educaci├│n - Organizaci├│n - Asesor├¡as	AEF (Asesor├¡a en Educaci├│n Financiera) prestar├í sus servicios en educaci├│n financiera, ense├▒ando a personas c├│mo organizar su econom├¡a o finanzas y de esta forma puedan tener cuentas claras y saber manejar su dinero. La metodolog├¡a que vamos a usar para tener el contacto con el cliente a fin de que se mantenga como cliente es de manera personalizada. Los medios que utilizaremos para comunicarnos o para interactuar con el prop├│sito de dar a conocer nuestra propuesta de valor es mediante publicidad paga en redes sociales como Facebook e Instagram. La manera en c├│mo generamos el dinero de la empresa ser├í mediante la venta de 3 paquetes: Paquete B├ísico, Paquete Intermedio y Paquete avanzado. Todo esto con el fin de garantizar a cada uno de nuestros clientes un buen servicio prestado en asesor├¡a para que logren educarse con sus finanzas.\n\n	https://youtu.be/omygEB9C34U	2022-09-19 15:14:17.328086+00	2022-09-19 15:14:17.328086+00	bgomez456@unab.edu.co	Emprendimiento	f	\N
410	Obesapp	Ingenier├¡a industrial; ingenier├¡a de mercados; ingenier├¡a biom├®dica	Obesidad, aplicaci├│n, alimentaci├│n	Nuestra propuesta consta de una aplicaci├│n o un servicio virtual en el cual las personas que sufren de obesidad o aquellas que quieran llevar un inicio de vida saludable en cuanto a ejercicio y alimentaci├│n, por medio de coachs virtuales, de los cuales cada cliente elige el de su preferencia.	https://youtu.be/RK4OdCBjPIo	2022-09-19 15:14:17.082346+00	2022-10-05 20:11:11.564781+00	vpineda713@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	t	\N
406	Desarrollo de un ap├│sito tipo hidrogel de plasma pobre en plaquetas y col├ígeno extra├¡do de piel de tilapia con potencial uso para el tratamiento de ├║lceras cr├│nicas de pie diab├®tico	Ingenier├¡a Biom├®dica	Col├ígeno, hidrogeles, plasma pobre en plaquetas	Las ├║lceras cr├│nicas de pie diab├®tico (UCDP) son una consecuencia de la diabetes que cuentan con tratamientos poco eficaces, afectando significativamente la calidad de vida de los pacientes. Los ap├│sitos son b├ísicos en el tratamiento de este tipo de heridas y entre los m├ís avanzados se encuentran los hidrogeles. Utilizar el col├ígeno en este tipo de ap├│sitos es recurrente, puesto que es un material de f├ícil obtenci├│n y sus propiedades ├║nicas lo hacen un material apropiado para la elaboraci├│n de andamios, pudiendo ser funcionalizado haciendo uso de biomol├®culas. Por lo tanto, el col├ígeno combinado con plasma pobre en plaquetas (PPP), rico en factores de crecimiento y prote├¡nas asociadas a la formaci├│n de co├ígulos, permitir├¡a la elaboraci├│n de un hidrogel que favorecer├¡a el proceso de cicatrizaci├│n de heridas. Para esto se elaborar├ín hidrogeles de col├ígeno obtenido a partir de la piel de tilapia, y se reticular├ín junto con el PPP para crear un hidrogel col├ígeno ÔÇô PPP. Posteriormente se determinar├í si estos logran retener el PPP y lo liberan de forma adecuada, lo que es importante para su uso en el tratamiento de las UCPD. A la fecha, se ha logrado extraer col├ígeno de la piel de tilapia de forma satisfactoria, lo que establece la base para la elaboraci├│n de los hidrogeles. Tambi├®n se logr├│ cuantificar la concentraci├│n de prote├¡nas liberadas por los hidrogeles de col├ígeno ÔÇô PPP, obteniendo valores significativos y que permiten afirmar que estos hidrogeles son una alternativa terap├®utica para el tratamiento de este tipo de ├║lceras. Adicional a esto, aquellos hidrogeles elaborados ├║nicamente con col├ígeno tuvieron mayor capacidad de hincharse al no tener m├ís componentes reticulados, mientras que la capacidad de retenci├│n de agua en general se mantuvo por encima del 93%.Palabras claves: Col├ígeno, hidrogeles, piel de tilapia, plasma pobre en plaquetas, ├║lceras cr├│nicas de pie diab├®tico.	\N	2022-09-19 15:14:15.99626+00	2022-10-05 20:18:11.137709+00	lrojas767@unab.edu.co	Proyecto de grado	t	\N
409	Asistente Virtual para el programa de Ingenier├¡a Mecatr├│nica UNAB	Ingenier├¡a Mecatr├│nica	Asistente Virtual, Robot, Visi├│n computacional	En el presente proyecto se desarrollo la implementaci├│n de un asistente virtual conversacional en un robot f├¡sico morfol├│gico capaz de expresar di├ílogos en lenguaje natural a trav├®s de un sistema de NLP, junto a un sistema de Deep Learning de visi├│n computacional entrenado para detecci├│n de rostros, edades, g├®nero y an├ílisis de sentimientos a trav├®s de una c├ímara, que permite al robot comunicar en sus di├ílogos rasgos de personalidad y respuestas acordes a las emociones que le sean expresadas; este robot se realiza con la finalidad de entregar orientaci├│n sobre la carrera de Ingenier├¡a Mecatr├│nica a trav├®s de una conversaci├│n fluida a estudiantes de colegios que busquen participar a futuro en el programa de Ingenier├¡a de la UNAB.	\N	2022-09-19 15:14:16.811116+00	2022-10-05 20:19:31.547113+00	ijaramillo@unab.edu.co	Proyecto de grado	t	\N
414	Karta Di Busan	Ingenier├¡a Industrial 	Vino, Bioproceso, Fermentaci├│n 	En Colombia la disponibilidad actual de vinos se ve muy limitada, las variedades que se pueden encontrar son pocas, no solo debido a los costos elevados de importaci├│n y aranceles, sino que tambi├®n es un ├írea en crecimiento que no cuenta con muchos productos netamente propios del pa├¡s. Es por esto que nace Karta Di Busan  como un proyecto para la asignatura Bioprocesos, donde se decidi├│ elaborar un vino por medio del proceso de fermentaci├│n de arandanos, completamente natural, ecol├│gico y vegano, proponiendo el uso de ingredientes y materiales que no perjudiquen al medio ambiente, desde su proceso de fabricaci├│n hasta su empaque; inicialmente se consider├│ como un proyecto de clase pero durante la producci├│n se gener├│ un gusto por el desarrollo de la actividad y de gran sorpresa el sabor del vino atrajo a familiares, amigos y por supuesto compa├▒eros de clase. Finalizado el semestre, se tom├│ la decisi├│n de replicar el proceso realizado con el fin de satisfacer los pedidos realizados con familiares y amigos cercanos. \nCrear vinos colombianos disminuir├¡a costos e impulsar├¡a el consumo de esta bebida alcoh├│lica en el pa├¡s. El objetivo de este emprendimiento es replicar de modo tradicional la fermentaci├│n de los arandanos, generando vino artesanal a bajo costo con un contenido de 7% de alcohol, dar a conocer la marca Karta Di Busan como pionera de vino de arandanos, iniciar la formalizaci├│n del bioproducto e impulsar la industria vin├¡cola en el Pa├¡s.  \nPalabras clave: Vino, Bioproceso, Fermentaci├│n 	Pendiente 	2022-09-19 15:14:18.120236+00	2022-09-19 15:14:18.120236+00	hmahecha@unab.edu.co	Emprendimiento	f	\N
415	Desarrollo de un prototipo de Ba├▒o Seco con agitaci├│n para procesamiento de muestras bacteriol├│gicas (Tipo E. coli) e implementaci├│n en el laboratorio de farmacolog├¡a UNAB	Ingenieria Mecatronica; Ingenieria Mecatronica	Termodinamica; Microbiologia; Control	OBJETIVO: Desarrollar un prototipo de Ba├▒o Seco con agitaci├│n para procesamiento de muestras bacteriol├│gicas (Tipo E. coli) e implementaci├│n en el laboratorio de farmacolog├¡a UNAB.\nMETODOS Y MATERIALES: COn un metodo de dise├▒o Mecatronico, simular y dise├▒ar subpartes correspondientes, al movimiento mecanico de agitaci,on, control exacto de calentamiento en transicion y uniformidad de temperatura, comunicacion y funcionalides con el usuario y automatizacion de procesos con el prototipo.\nRESULTADOS Y DISCUSION: se tiene simulacion, modelo matematico, y programaci├│n, y el objetivo final es una incubadora con precision de temperatura a menos de 0.2 grados centigrados, que funcione por ciclos de mas de 24 horas y 200 RPM entre 30 y 50 grados centigrados.\nCONCLUSIONES: Un producto que cumpla con los estandares de laboratorios biologicos, y permita llenar la necesidad de maquinas qu ecumplan estas necesidades y funcionalidades a precio accesible que pueda ayudar a fomentar la industria nacional.\nPALABRAS CLAVE: Control avanzado, termodinamica, microbiologia, farmacologia, prototipo, simulacion, elementos finitos, control optimo, HMI, automatizaci├│n.	\N	2022-09-19 15:14:18.392676+00	2022-09-19 15:14:18.392676+00	jlopez286 @unab.edu.co	Proyecto de grado	f	\N
418	TG2_VIDEOJUEGO SERIO PARA ENSE├æANZA DE LOS CONCEPTOS B├üSICOS DE CIBERSEGURIDAD EN NI├æOS DE EDUCACI├ôN PRIMARIA	Ingenieria de Sistemas	Videojuego Serio, Gamificacion, Ciberseguridad	Desarrollar un prototipo de videojuego serio bajo el modelo de Aprendizaje Digital Basado en Juegos DGBL-ID, para la ense├▒anza de conceptos b├ísicos de ciberseguridad a ni├▒os de educaci├│n primaria en el ├ürea Metropolitana de Bucaramanga.\nComo primer objetivo se plantea analizar el contexto de la ciberseguridad en ni├▒os en edad escolar b├ísica primaria para la definici├│n de una estrategia de aprendizaje mediante la b├║squeda sistem├ítica de informaci├│n. A partir de esta investigaci├│n se busca dise├▒ar un videojuego serio mediante t├®cnicas de modelado de videojuegos, para posteriormente desarrollar un prototipo de videojuego serio haciendo uso de la plataforma de desarrollo Unity y la metodolog├¡a de desarrollo SUM. Por ├║ltimo se evalua el prototipo de videojuego serio mediante pruebas funcionales para la validaci├│n de su impacto y aplicaci├│n.	\N	2022-09-19 15:14:19.144088+00	2022-09-19 15:14:19.144088+00	mcrespo133@unab.edu.co	Proyecto de grado	f	\N
416	Preferencias en collares para mascotas	Ingenier├¡a de mercados; Ingenier├¡a de mercados	An├ílisis conjoint, python, multivariado	En la infograf├¡a se quiere dar a conocer por medio de un an├ílisis en python la aprobaci├│n que recibi├│ los dise├▒os de un producto(collares para mascotas) seg├║n las preferencias de una poblaci├│n encuestada. Como instrumento de recolecci├│n se aplicaron encuestas con 2 opciones de respuesta en 6 secciones	\N	2022-09-19 15:14:18.644088+00	2022-10-05 20:03:32.93956+00	arueda408@unab.edu.co	Clase avanzado (de 6to a 10vo semestre)	t	\N
417	CUB├ìCULO DE DESINFECCI├ôN CON RAYOS UV Y PER├ôXIDO DE HIDR├ôGENO DE CUERPO COMPLETOPARA HOSPITALES	Ingenier├¡a Biom├®dica	desinfecci├│n, luz  uv , per├│xido de hidrogeno	Este proyecto busca como finalidad crear un cub├¡culo de desinfecci├│n total en personal de la salud en los hospitales por medio de la implementaci├│n de rayos UV-c con longitudes de onda corta entre 100 nm y 200 nm; y aspersi├│n de per├│xido de hidr├│geno (H2O2) con unaconcentraci├│n de 3% o menor de modo que se logre un perfecto ingreso a esas zonas rojas.OBJETIVOS: -Implementar un prototipo de cub├¡culo de desinfecci├│n personal para uso del personal de salud y de aseo en zonas rojas de hospitales.- Establecer el estado del arte relacionado con los mecanismos para desinfecci├│n en instituciones de salud, a trav├®s de una revisi├│n bibliogr├ífica.- Dise├▒ar un modelo de cabina de desinfecci├│n para su uso en instituciones de salud.- Desarrollar el prototipo de cabina de desinfecci├│n, acorde con el dise├▒o obtenido.- Validar la posibilidad de uso del prototipo desarrollado, a trav├®s de pruebas de laboratorio.METODOS Y MATERIALES:Existen varios m├®todos de desinfecci├│n corporal; en los que los que fueron investigados serealizaron a base del nuevo virus, con el fin de tener un alto porcentaje de desinfecci├│n a lacontribuci├│n del mejoramiento de salud. Al momento de la realizaci├│n de nuestro proyectotomaremos en cuenta todos los conceptos y argumentos estudiados con anterioridad. Laefectividad en el uso del per├│xido de hidr├│geno (H2O2) mezclado con una exposici├│n de rayos UV como m├®todo antis├®ptico llega a ser de alto nivel. Se usar├í de 100 a 200 nm de luz UV y un porcentaje menor al 3% de Per├│xido de Hidr├│geno (H202). ├ëstas medidas fueron tomadas pensando en el beneficio de salud, ya que su usos incorrectos pueden llegar a causar problemas secundarios en la persona. Se emplea un sistema de temporizador para la activaci├│n del cub├¡culo.Con el conocimiento de la caracterizaci├│n microbiol├│gica se determina si la presencia deStaphylococcus aureus contin├║a en gran proporci├│n, el cu├íl ser├í el microorganismo a prueba de laboratorio para combatir.En la construcci├│n del dispositivo se determin├│ el uso de drywall como material resistente y aislante t├®rmico, cinta de luz ultravioleta, nebulizador y soluci├│n de per├│xido de hidr├│geno al 2% RESULTADOS Y DISCUSI├ôN:Encontramos una efectividad en el muestreo de contaminaci├│n por ambiente teniendo unaefectividad mayor a medida que el tiempo aumenta y est├í mayormente expuesto al tratamiento.Luego de las pruebas de laboratorio tomando como base 3 periodos de tiempoÔùÅ En 3 minutos encontramos un crecimiento de bacterias en las dos cajasÔùÅ A los 6 minutos se hallaron crecimientos de colonias en un tama├▒o menorÔùÅ En 9 minutos en la muestra A se encontr├│ una colonia de bacterias pero en la muestra B laefectividad de desinfecci├│n fue total al no presentar ning├║n crecimiento bacteriano.Se present├│ una contaminaci├│n a la hora de realizar el hisopado en las cajas Petri y el sellado de lamisma.CONCLUSION:El tiempo de efectividad requerido para que este prototipo funcione se encuentra en un rango de 6 a 9 min se espera en mejorar en una segunda fase modificando la luz UV colocando las bombillas correctas, un mejor esquema en la distribuci├│n de la aspersi├│n del per├│xido de hidr├│geno y una cortina de material pl├ístico para retener ligeramente la corriente de aire, esto con el fin de poder reducir el tiempo a menos de 3 min.PALABRAS CLAVE:desinfecci├│n, luz  uv , per├│xido de hidrogeno, zonas rojas hospitales	\N	2022-09-19 15:14:18.892353+00	2022-10-05 20:08:42.350398+00	cportela656@unab.edu.co	Clase b├ísico (de 1er a 5to semestre)	t	\N
420	OPTIMIZACI├ôN DE FUNCIONALIDADES DE VISUALIZACI├ôN DE CURVAS DE PERFORACI├ôN DEL APLICATIVO ECOAGE WEB	Ingenier├¡a de sistemas; Ingenier├¡a de sistemas	Visualizaci├│n, Datos y gr├íficas	La visualizaci├│n de datos es importante, especialmente cuando se tiene grandes cantidades de datos que son requeridos para que el usuario pueda tomar decisiones en tiempo real y a su vez interactuar con datos hist├│ricos. En este trabajo se plane├│ como objetivo implementar herramientas que permitan la optimizaci├│n de las funcionalidades de visualizaci├│n de curvas de perforaci├│n del aplicativo ECOAGE WEB, obteniendo como resultado el an├ílisis de algoritmos y utilizaci├│n de librer├¡as que permiten la visualizaci├│n en tiempos m├ís cortos tomando como referencia mayor cantidad de fotogramas por segundo (fps) y menor cantidad de tiempo en cargar el sitio Web (ms). Estas librer├¡as han sido analizadas y adaptadas para dar respuesta a la necesidad identificada por el grupo de geomec├ínica de Ecopetrol, relacionada con el prop├│sito de optimizar la visualizaci├│n de curvas de perforaci├│n del aplicativo EcoAge-Web. Se utiliza la librer├¡a Lightningchar y otras herramientas como (JavaScript, HTML, CSS, React, SQL entre otras) con las cuales se logr├│ una mejor visualizaci├│n y optimizaci├│n de las curvas de perforaci├│n del aplicativo. Se concluy├│ que: -\tSe pudo analizar que la librer├¡a (plotly) usada actualmente por el grupo de geomec├ínica presenta limitaciones de visualizaci├│n. -\tPara el an├ílisis de librer├¡as usadas para la visualizaci├│n se tuvo en cuenta las limitaciones y requerimientos dados en la arquitectura empresarial realizada previamente.-\tEs importante analizar las diversas librer├¡as para la visualizaci├│n disponibles, en t├®rminos de costos, licencias, fps y ms, y requerimientos del usuario. -\tEl an├ílisis de diversas librer├¡as permiti├│ seleccionar la que se podr├¡a considerar ├│ptima, pero adem├ís se tuvo la oportunidad de hacer gr├íficas en 3D no contempladas inicialmente.Palabras clave: Visualizaci├│n de datos, herramientas de visualizaci├│n, gran cantidad de datos, empresas petroleras, extracci├│n de petr├│leo, visualizaci├│n de gran cantidad de datos en tiempo real, gr├íficas de geomec├ínica.	\N	2022-09-19 15:14:19.641264+00	2022-10-05 20:17:00.941869+00	eblanco265@unab.edu.co	Proyecto de grado	t	\N
421	titulo proyecto pruebaaaaaaaaaaa	Sistemas	asdasda asdasda asdasd	asdasdasd	\N	2022-11-20 06:08:55.136184+00	2022-11-20 06:08:55.230174+00	eblanco265@unab.edu.co	Proyecto colegiados	f	1
\.


--
-- Data for Name: proyectos_app_proyectoinngeniatec_integrantes; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_proyectoinngeniatec_integrantes (id, proyectoinngeniatec_id, usuario_id) FROM stdin;
1	421	1
\.


--
-- Data for Name: proyectos_app_proyectoinngeniatec_tutores; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.proyectos_app_proyectoinngeniatec_tutores (id, proyectoinngeniatec_id, usuario_id) FROM stdin;
1	421	1
\.


--
-- Data for Name: semillero_app_semillero; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.semillero_app_semillero (id, nombre, "grupo_investigaci├│", fecha_creacion, fecha_actualizacion, is_active) FROM stdin;
2	MediaLab	GTI	2022-08-24 22:12:38.550096+00	2022-08-24 22:12:38.550116+00	t
1	Semillero pendiente por definir	GN3	2022-08-02 10:52:47.863244+00	2022-08-29 20:18:15.450328+00	t
4	Corp Finance	GIF	2022-08-29 20:23:44.25595+00	2022-08-29 20:23:44.255966+00	t
5	Risk-Net	GIF	2022-08-29 20:24:09.624149+00	2022-08-29 20:24:09.624164+00	t
6	CREATIVE	GTI	2022-08-29 20:24:32.447519+00	2022-08-29 20:24:32.447534+00	t
7	CREARE	GPS	2022-08-29 20:24:50.025534+00	2022-08-29 20:24:50.025552+00	t
8	BlockChain	GINCAP	2022-08-29 20:25:13.771541+00	2022-08-29 20:25:13.771557+00	t
9	Instrumentaci├│n y Contro. - SIIMKTK	GICYM	2022-08-29 20:27:50.093217+00	2022-08-29 20:27:50.093233+00	t
10	Modelado y Simulaci├│n	GICYM	2022-08-29 20:28:17.879302+00	2022-08-29 20:28:17.879325+00	t
11	SIAF	GIF	2022-08-29 20:28:32.68938+00	2022-08-29 20:28:32.689396+00	t
12	BlackSheep	GTI	2022-08-29 20:29:45.002533+00	2022-08-29 20:29:45.002548+00	t
13	Sebiunab	GICYM	2022-08-29 20:30:23.508463+00	2022-08-29 20:30:23.508478+00	t
14	SIRED	GIRES	2022-08-29 20:30:44.324245+00	2022-08-29 20:30:44.32426+00	t
15	SEMILLERO EN OPTIMIZACI├ôN DE SISTEMAS PRODUCTIVOS Y LOG├ìSTICOS	GICYM	2022-08-29 20:32:39.356395+00	2022-08-29 20:32:39.356411+00	t
16	SIMULACION DE PROCESOS Y ENERGIA	GIRES	2022-08-29 20:34:30.181032+00	2022-08-29 20:34:30.181046+00	t
17	SIDEM	GICYM	2022-08-29 20:35:41.622425+00	2022-08-29 20:35:41.62244+00	t
18	RISE CO	GIF	2022-08-29 20:36:52.525217+00	2022-08-29 20:36:52.525237+00	t
19	Matem├íticas aplicadas	GINCAP	2022-08-29 20:37:34.88613+00	2022-08-29 20:37:34.886149+00	t
3	CONSUMER	PRISMA	2022-08-29 20:19:03.145524+00	2022-08-29 20:38:36.175108+00	t
20	SEMOVIL	PRISMA	2022-08-29 20:39:51.651421+00	2022-08-29 20:39:51.651435+00	t
21	SEGURIDAD INFORMATICA	PRISMA	2022-08-29 20:40:27.541101+00	2022-08-29 20:40:27.541116+00	t
22	ENERGIAS RENOVABLES Y EFICIENCIA ENERG├ëTICA	GIRES	2022-08-29 20:41:09.588864+00	2022-08-29 20:41:09.588884+00	t
23	INTELIGENCIA ARTIFICIAL	GICYM	2022-08-29 20:41:30.85928+00	2022-08-29 20:41:30.859295+00	t
24	SISWEB	GTI	2022-08-29 20:42:08.075549+00	2022-08-29 20:42:08.075564+00	t
25	SISTEMIKA	GPS	2022-08-29 20:43:05.968055+00	2022-08-29 20:43:05.96807+00	t
26	Ecuaciones y Ondas	GINCAP	2022-08-29 20:44:16.996427+00	2022-08-29 20:44:16.996443+00	t
34	AGROINSO	\N	2022-09-01 23:29:06.469595+00	2022-09-01 23:29:06.471708+00	t
35	F├¡sica ├ôptica	\N	2022-09-02 00:20:10.137878+00	2022-09-02 00:20:10.140124+00	t
47	CAYPRO Y semillero Cl├║ster	\N	2022-09-02 04:40:01.272125+00	2022-09-02 04:40:01.273721+00	t
49	FACARQ	\N	2022-09-07 03:13:03.338428+00	2022-09-07 03:13:03.343977+00	t
50	Analisis estructural y sismicidad INAES	\N	2022-09-07 21:14:55.78095+00	2022-09-07 21:14:55.788603+00	t
53	INAES	\N	2022-09-07 21:18:33.254866+00	2022-09-07 21:18:33.256727+00	t
54	Grupo de investigaci├│n en Optimizaci├│n de sistemas Productivos, Administrativos y Log├¡sticos (OPALO)	\N	2022-09-08 02:19:29.410464+00	2022-09-08 02:19:29.414128+00	t
55	SEMILLERO AZUL	\N	2022-09-08 20:42:02.955985+00	2022-09-08 20:42:02.980837+00	t
56	Semillero de Investigaci├│n en Energ├¡as Alternativas ÔÇô Telkes	\N	2022-09-09 01:48:35.271238+00	2022-09-09 01:48:35.276914+00	t
57	SIFIN	\N	2022-09-09 05:02:21.97786+00	2022-09-09 05:02:22.002474+00	t
58	SISAS Semillero de Investigaci├│n en Aire, Suelos y Sostenibilidad	GAIA Grupo Ambiental de Investigaci├│n Aplicada	2022-09-09 13:54:01.184101+00	2022-09-09 13:54:01.184115+00	t
59	HOSHIN	SINERGIA	2022-09-29 17:04:56.998381+00	2022-09-29 17:04:56.998406+00	t
\.


--
-- Data for Name: tematica_app_tematica; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.tematica_app_tematica (id, titulo_tematica, fecha_creacion, fecha_actualizacion, is_active) FROM stdin;
1	Sistemas de informaci├│n e ingenier├¡a de software	2022-08-02 10:52:33.397875+00	2022-08-02 10:52:33.397891+00	t
2	Telem├ítica	2022-08-04 18:01:39.43376+00	2022-08-04 18:01:39.433782+00	t
3	Fuentes energ├®ticas, transformaci├│n de energ├¡a, Eficiencia energ├®tica en procesos y operaciones industriales	2022-08-04 18:01:55.515424+00	2022-08-04 18:01:55.515444+00	t
4	Creatividad e innovaci├│n	2022-08-04 18:02:10.578757+00	2022-08-04 18:02:10.578773+00	t
5	Modelamiento, simulaci├│n, dise├▒o mecatr├│nico, automatizaci├│n y control	2022-08-04 18:02:33.912995+00	2022-08-04 18:02:33.913016+00	t
6	Ingenier├¡a cl├¡nica hospitalaria, biomateriales, bioinstrumentaci├│n y biomec├ínica	2022-08-04 18:02:49.695836+00	2022-08-04 18:02:49.695852+00	t
7	Optimizaci├│n y operaciones, Manufactura y lean manufacturing	2022-08-04 18:03:01.45163+00	2022-08-04 18:03:01.451647+00	t
8	Educaci├│n financiera, Inversiones, Finanzas corporativas, Riesgo, cobertura y especulaci├│n	2022-08-04 18:03:16.503548+00	2022-08-04 18:03:16.503621+00	t
9	Ense├▒anza en ciencias, modelamiento matem├ítico y estad├¡stica aplicada	2022-08-04 18:03:35.723248+00	2022-08-04 18:03:35.723263+00	t
10	Estudio, intervenci├│n y desarrollo tecnol├│gico con enfoques sist├®micos en instituciones, educaci├│n y tecnolog├¡a	2022-08-04 18:03:50.792742+00	2022-08-04 18:03:50.792763+00	t
11	Marketing y log├¡stica	2022-08-04 18:04:01.697232+00	2022-08-04 18:04:01.697254+00	t
12	Biotecnolog├¡a y ambiente	2022-08-04 18:04:10.827367+00	2022-08-04 18:04:10.827386+00	t
\.


--
-- Data for Name: usuarios_app_usuario; Type: TABLE DATA; Schema: public; Owner: hgmenwrwkjrpsu
--

COPY public.usuarios_app_usuario (id, password, nombres, apellidos, correo_institicional, username, no_documento, id_iniversidad, is_autor, is_evaluador, is_tutor, date_joined, last_login, is_admin, is_staff, is_active, is_superadmin, programa_academico_id, universidad_id) FROM stdin;
3	pbkdf2_sha256$320000$SeSBPQtg9AzdNuqEHl0HPz$fJDb8rcguhQzgJI0KZi5lX7YKtHWTHiq2PrVc2LY6aU=	Laura Katerine	Gualdron Correa	laura.gualdron04@ustabuca.edu.co	laura.gualdron04	1098820405	1098820405	t	f	f	2022-08-09 02:06:04.72582+00	2022-08-09 02:06:39.062916+00	f	f	t	f	9	8
4	pbkdf2_sha256$320000$gawYCjuBTwRqfX4xyrHK3s$Ci3a4csTDrrV3RnuATQrj214LrQnEl7mDWZGX7xwQtc=	Julio Cesar	Santiago Alvarez	jsantiago449@unab.edu.co	jsantiago449	1091353696	U00123016	t	f	f	2022-08-10 13:59:24.129856+00	2022-08-10 14:07:08.060124+00	f	f	t	f	8	2
5	pbkdf2_sha256$320000$CLgoULryp4uZ2y7ifvFLSm$MeIutAwCkf/DLRwzL31lxWGHYQQSpBG7rLCyg/+fxjM=	David	Martinez Ruefli	dmartinez568@unab.edu.co	dmartinez568	1118528479	U00165871	t	f	f	2022-08-10 14:12:25.474133+00	2022-08-10 14:23:26.363965+00	f	f	t	f	6	2
85	pbkdf2_sha256$320000$pLcqnW9yFoXCK5pEWG1Yot$m6JzuFMavnWv7yOcO7P4BrnSH+lQgC5mV8efV+WcgUo=	jose luis	rodriguez olmos	joseluis.rodriguez@ustabuca.edu.co	joseluis.rodriguez	1003505521	2260576	t	f	f	2022-09-02 02:42:19.037901+00	2022-09-02 04:40:19.090536+00	f	f	t	f	7	8
11	pbkdf2_sha256$320000$yaKintzTEfTRPhYonLLLv2$5CT0EJ/Nh4VvZCm3rDtJRCx5vKbBLnMxZ54W6OXl67g=	Diego Alexander	Suarez Rivera	dsuarez13@unab.edu.co	dsuarez13	1005012150	U00131796	t	f	f	2022-08-22 23:56:56.715356+00	2022-08-22 23:58:06.949715+00	f	f	t	f	8	2
87	pbkdf2_sha256$320000$sjN2HmN5BCjCLRuNiwfzwm$zjD5H0XB8x2KI96/4JIl+tPsD94VgqpcNYWu2qyeRUo=	Lusvin Javier	Amado Forero	lamado175@unab.edu.co	lamado175	1098614698	U00121225	t	t	t	2022-09-02 13:32:56.805481+00	2022-10-06 19:19:45.209959+00	f	f	t	f	3	2
13	pbkdf2_sha256$320000$DNyVPkj7AplRLPjuNy9Kar$86wGM12YCJzRpDb/Yb3UNV+BYqhnpzIk6iiFltv4PSE=	EDWIN DAVID	DIAZ GARCIA	ediaz344@unab.edu.co	ediaz344	1004807150	U00129474	t	f	f	2022-08-22 23:58:17.480056+00	2022-08-22 23:58:47.797954+00	f	f	t	f	8	2
17	pbkdf2_sha256$320000$WsXNkN4WyFY6mzFLtcq1f9$15bzZ4VFUZmPcyafFXw8B1/WplcVrZB3SOk5CfGZAGs=	Stiven Alexis	Villamizar Buitrago	svillamizar103@unab.edu.co	svillamizar103	1091966692	U00157009	t	f	f	2022-08-23 14:35:48.086554+00	2022-08-23 14:36:04.876372+00	f	f	t	f	8	2
6	pbkdf2_sha256$320000$Jw8EgOQYRbk3fT6NiomAMb$XneHFEOx4P8uvjcJJY6iQGdjUMAyFxDXPk9AaT8WifI=	Juan Jos├®	Barrios Arlante	juan.barrios01@ustabuca.edu.co	juan.barrios01	77186674	USTA	t	f	t	2022-08-12 14:40:57.548008+00	2022-10-05 22:58:24.847029+00	f	f	t	f	10	8
12	pbkdf2_sha256$320000$qyrUJpuZBUSWe0DHt5px3C$qfknXdq3QK42HFFm81GDU5Pxx+mgcKZwjwdJVWKGUwk=	Jhoan Sebasti├ín	Ni├▒o Velasco	jnino230@unab.edu.co	jnino230	1007917162	U00130711	t	f	f	2022-08-22 23:58:10.552318+00	2022-09-09 01:40:39.292036+00	f	f	t	f	8	2
41	pbkdf2_sha256$320000$U8fbqBOvPK7A9Ao1GN5XAH$dP2jNsekZIbCxYdEDJyivENlUWb8JL5Gv03j18v0nlo=	Daniela Andrea	Jaimes Guti├®rrez	buc19311010@mail.udes.edu.co	buc19311010	1007436749	01190311010	t	f	f	2022-08-27 16:57:44.575402+00	2022-08-27 16:59:30.991031+00	f	f	t	f	9	7
10	pbkdf2_sha256$320000$TjBy7OQLWnTxfw20Y3GvQt$RsA40E/zmO3eECzp5VmjXWp7nX3YFm+i/LCs+moYaH4=	Sergio Antonio	Jaimes Palacios	sjaimes828@unab.edu.co	sjaimes828	1193215506	U00130702	t	f	f	2022-08-22 23:47:52.582832+00	2022-08-22 23:48:21.057165+00	f	f	t	f	8	2
16	pbkdf2_sha256$320000$vcPMoynjeXNVBqIU8OQDRi$ATauN5g4xUonjkGepULUIhJM9kfEk3Y5wSc5IKmfPqk=	BRAYAN STEVEN	VEGA CACERES	bvega421@unab.edu.co	bvega421	1005026979	U00129538	t	f	f	2022-08-23 00:00:32.466638+00	2022-08-23 00:01:10.542586+00	f	f	t	f	8	2
353	pbkdf2_sha256$320000$HomnWktq3ru4E5PUtPtgA4$tNaBO06MaQHR5X1t1YDzloCXUdsZnZnqh3VR0hyfYUQ=	Alfredo Antonio	D├¡az Claros	adiaz@unab.edu.co	adiaz	91224400	N/a	t	t	f	2022-09-21 23:15:55.186415+00	2022-09-27 20:04:39.416819+00	f	f	t	f	9	2
18	pbkdf2_sha256$320000$XDU4XEtV7KJjsOIQvRV6Z4$A66YprguuVqtHyQDIdaFHNFl6v8m07yg+iFLI9ybxTg=	Johan Steban	Pineda Diaz	jpineda714@unab.edu.co	jpineda714	1002460509	U00158669	t	f	t	2022-08-23 15:16:39.636963+00	2022-08-23 15:17:41.654054+00	f	f	t	f	8	2
92	pbkdf2_sha256$320000$9hppH59PLHwytv2MuNcuf3$WrEThFc7VnuK6ToWtUNrAW3ohiFbttMpP+gmLHNMt/I=	Anggie Katherinne	Vega Porras	Anggiekatherinne.vega@ustabuca.edu.co	Anggiekatherinne.vega	1007511250	2288806	t	f	f	2022-09-02 14:44:48.93841+00	2022-09-02 14:46:19.327975+00	f	f	t	f	10	8
48	pbkdf2_sha256$320000$J8UsbugOa3NqXCuF9de4jF$rRbHg31F1xxQ/lyF4MTEydJYTraG/piQd5jJbtFRAUw=	PAULA ANDREA	PULIDO MARTINEZ	ppulido843@unab.edu.co	ppulido843	0	Sin definir	f	f	f	2022-08-29 21:52:14.2102+00	2022-08-29 22:00:20.662708+00	t	t	t	f	6	2
37	pbkdf2_sha256$320000$hyd4izGYMmA3VmsohvWCf4$52eJM9UgtRwQs2YiMietH2lzXqtWrnGofAcAnbdSBl8=	Claudia Isabel	C├íceres Becerra	ccaceres4@unab.edu.co	ccaceres	0	U0050490	t	t	t	2022-08-24 22:04:42.647679+00	2022-11-09 15:13:57.2326+00	t	t	t	t	4	2
8	pbkdf2_sha256$320000$VUoqcw2nGc91LoL3eKj0bM$HLNyWRHJk4nYuM8lw05uzfCQdllEAyjDJWmHAuYTM/c=	Mario Jonatan	Acero Caballero	macero22@unab.edu.co	macero22	1098635960	U00107933	t	t	t	2022-08-18 15:50:53.263376+00	2022-10-06 15:21:46.595678+00	f	f	t	f	5	2
352	pbkdf2_sha256$320000$S38MUckogWKuhOYJHRfNx1$ik51FA6N09BtBNs2K2/6loYHxIdZiBOYz/BdYiSskTQ=	Alexander	Meneses Jacome	ameneses2@unab.edu.co	ameneses2	88278917	N/a	t	t	f	2022-09-21 23:15:54.721356+00	2022-10-06 21:48:58.856043+00	f	f	t	f	9	2
152	pbkdf2_sha256$320000$ZufsNnWzVsGHQxmL9p0oiY$wtT9a7ZuQMNX6F2eZ5Sm2w2sdMH8LIPV4/3DbmMf5JY=	VICTOR ALFONSO	SOLARTE DAVID	vsolarte@unab.edu.co	vsolarte	1017128194	U00116977	t	t	t	2022-09-08 22:21:00.320952+00	2022-10-06 19:30:01.227815+00	f	f	t	f	3	2
88	pbkdf2_sha256$320000$jSkVxR60tLlknKgBOVqPqe$foEKNJfoDiSQ8iOYyW1a/hQ80hWCa5rSmBzidLYozuI=	Cesar Sneider	Martinez Ramirez	cesarsneider.martinez@ustabuca.edu.co	cesarsneider.martinez	1193215545	2345392	t	f	f	2022-09-02 14:40:29.197199+00	2022-09-02 14:50:51.484303+00	f	f	t	f	10	8
9	pbkdf2_sha256$320000$fvUTsGQ09pVIUOhYJf4mLt$R2LiVlwchwcJDAF/fImgTf38TFceg9WMYBGWjdqpsNk=	Sebastian	Ardila	sardila707@unab.edu.co	sardila707	1000271319	U00138173	t	f	f	2022-08-18 16:49:01.773777+00	2022-09-24 23:27:58.826196+00	f	f	t	f	5	2
42	pbkdf2_sha256$320000$XNRUiVY5onmtLPx8bQIWlS$HLAlkqrN6bcC4MY+u/Q1Mmvyg1jakrlDWiFcvB7FD5o=	Valentina	Rivera Ballesteros	buc18311010@mail.udes.edu.co	buc18311010	1005336972	01180311010	t	f	f	2022-08-27 16:58:59.078111+00	2022-09-28 13:42:54.029483+00	f	f	t	f	9	7
95	pbkdf2_sha256$320000$yuFWdF4SOqArgr8OdXM0qY$0yJQ9DlkyKKx+6ungI9Pb2sHhipcaAFJ+zb9oUgpyCc=	Cristhian Ricardo	Bautista Rodriguez	cristhianricardo.bautista@ustabuca.edu.co	cristhianricardo.bautista	1005231578	cristhianricardo.bautista@ustabuca.edu.co	t	f	f	2022-09-02 20:35:47.347255+00	2022-09-02 20:36:39.089295+00	f	f	t	f	8	8
97	pbkdf2_sha256$320000$712MzLbx8EQwyhWR2AumUN$o+u6oPKRxS3uTvT+aRmWGuew3jKAefmCqLiUx48SrCk=	Clemen Jose	Mercado Villamizar	clemen.mercado@ustabuca.edu.co	clemen.mercado	1007790686	2328867	t	f	f	2022-09-03 04:11:26.756594+00	2022-09-03 04:14:26.135264+00	f	f	t	f	8	8
14	pbkdf2_sha256$320000$nuxwCkFmLPNEqJQXflOdGq$1L/SgvnRj2PYIgEFLnDY33BajGRQC0S7Ruf5aXMv1dc=	CAMILO ENRIQUE	DUE├æAS PUENTES	cduenas@unab.edu.co	cduenas	1098767259	U00107122	t	f	f	2022-08-22 23:58:31.895013+00	2022-08-24 17:59:34.233566+00	f	f	t	f	5	2
98	pbkdf2_sha256$320000$pSmm22nHuGkKh1C4Yk2oCA$NmG+ImL5D1fwPxl6+14sGDs4EzoDZZqdIe90fGOvcV8=	Paula Andrea	Delgado D├¡az	pdelgado566@unab.edu.co	pdelgado566	1098816551	U00126769	t	f	f	2022-09-04 19:39:39.022538+00	2022-09-04 19:41:09.04117+00	f	f	t	f	3	2
15	pbkdf2_sha256$320000$6nBuXnrNGLzNZ3x6ubVDLo$ckd+nTycGDItnUGo1EXF0Fpo6i12zfWaTS9uvYVJn2Y=	Kevin Andres	SierraRojas	ksierra756@unab.edu.co	ksierra756	1005235448	U00132456	t	f	f	2022-08-22 23:58:39.576082+00	2022-08-24 17:59:50.765064+00	f	f	t	f	8	2
38	pbkdf2_sha256$320000$hgHzAEzolMI3DRc5vyuIAP$9Q+SDQi57BvGgJhb009j7KXppw56sXFIihfs1GiQghM=	Maria camila	Castrillon	mcastrillon336@unab.edu.co	mcastrillon336	1039784182	U00158484	t	f	f	2022-08-25 14:26:14.188826+00	2022-08-25 20:50:04.625019+00	f	f	t	f	1	2
47	pbkdf2_sha256$320000$fcKy5Hk7c1B7TgiTacPnVe$RKY2Vsisln6B/a0uzyLonVU1teiA9uqejcaoqlgOon4=	Pedro Antonio	Arguello Duarte	parguello@unab.edu.co	parguello	1098768305	U00125870	t	f	f	2022-08-29 20:33:38.736067+00	2022-08-29 20:34:15.833423+00	f	f	t	f	4	2
43	pbkdf2_sha256$320000$WA3smzOgrHnwRRiG8Ylpw8$iWMWgSZcJs73tyS1A8trjhJnh31QNY2qgYcA3UeEFWM=	Mario Jose	Pineda Nieves	buc16311046@mail.udes.edu.co	buc16311046	1098804732	01160311046	t	f	f	2022-08-27 17:05:36.047484+00	2022-08-27 17:08:07.911063+00	f	f	t	f	9	7
44	pbkdf2_sha256$320000$Mkfy3F2pmcxNRPxw2YdtJV$+Ujv0UsZYN2qujQCVDJQFLunsF185zysWMKFchgeaQo=	Camilo Andres	Martinez Serrano	01210312009@mail.udes.edu.co	01210312009	1098801897	01210312009	t	f	f	2022-08-27 17:42:55.992523+00	2022-08-27 17:44:20.654451+00	f	f	t	f	9	7
86	pbkdf2_sha256$320000$HvLRHxstSWNp4EMvbi9DVN$UIYKXutEtiA5qSiPD5ycjjYiyrrgNVGGONiw15uOpMw=	Eduwin Andr├®s	Florez Orejuela	eduwin.florez@ustabuca.edu.co	eduwin.florez	91518391	91518391	t	f	t	2022-09-02 02:56:05.903099+00	2022-09-02 02:57:08.177706+00	f	f	t	f	7	8
100	pbkdf2_sha256$320000$Ws7wNbON7ac6M7G0PN7zKl$iSuIJ5wVurGbUw8nJYwX8Mx4bgcNn/ekJj3MwaIx3bU=	Brayan Steven	Le├│n Martinez	bleon133@unab.edu.co	bleon133	1005107446	U00141286	t	f	f	2022-09-05 22:00:49.603028+00	2022-09-20 16:57:22.528531+00	f	f	t	f	3	2
45	pbkdf2_sha256$320000$Lv37snis4mutUSiNPLx1jJ$jSWOqJSvjOSebM1UFcSKWnsmmFXrXWjl+RKHDLAkxNg=	Nicol├ís Antonio	D├¡az Su├írez	ndiaz346@unab.edu.co	ndiaz346	1005040527	U00130082	t	f	f	2022-08-27 19:56:43.80876+00	2022-10-01 21:24:18.427549+00	f	f	t	f	5	2
89	pbkdf2_sha256$320000$CcTuLeazlCp51SVzq46pMv$6RAxkHU9TL9JCBD+eU+O7gH+c3UMnX6XgBtU+9eZrqg=	Adriana Marcela	Gamba P├®rez	adrianagambaperez@gmail.com	adrianagambaperez	1090362893	2279782	t	f	f	2022-09-02 14:40:30.178889+00	2022-09-02 14:56:25.760313+00	f	f	t	f	10	8
7	pbkdf2_sha256$320000$GlAC0UKIwJc9MqUmZTQVfo$ZKBO767UIZYdHhppal6h2tGWQAaTp8KTTfgOkuikoLM=	Walter	Pardav├® Livia	wal.pardave@mail.udes.edu.co	wal.pardave	91537751	wpardave	t	f	t	2022-08-13 22:03:46.81966+00	2022-09-27 21:17:09.1891+00	f	f	t	f	9	7
102	pbkdf2_sha256$320000$dYHRStJIS1UpA3GU7bcpcl$I0LwmeMm209nmgnRdDmIdMz4BsH0P8+p6OcmyxF4DuI=	Patricia Daniela	Vidal Paredes	pvidal115@unab.edu.co	pvidal115	766191	U00141672	t	f	f	2022-09-05 22:46:42.684633+00	2022-09-06 00:36:45.069613+00	f	f	t	f	3	2
155	pbkdf2_sha256$320000$epqUek5RVUserKyTe7UnDJ$9jPy/HNY20cQNkYCqkRCdMO9tUSb8bdW4H9mNZ5MtQw=	Diego Hernando	C├íceres Vega	diego.caceres01@ustabuca.edu.co	diego.caceres01	1102388772	diego.caceres01@ustabuca.edu.co	t	f	f	2022-09-09 03:49:59.568399+00	2022-09-09 18:29:53.019872+00	f	f	t	f	8	8
93	pbkdf2_sha256$320000$qLnIGo0rrvECgs4Kieo81u$L9V5Ews5/csoW0Hk6jeHSDULEIJvNcScCiOlX/p3vS8=	Dayana Michell	Mart├¡nez Sarabia	dayana.martinez@ustabuca.edu.co	dayana.martinez	1099376741	2171085	t	f	f	2022-09-02 15:20:27.504826+00	2022-09-02 15:30:26.450661+00	f	f	t	f	10	8
40	pbkdf2_sha256$320000$cxDg03bWQpLJ1cvujRP2xi$qD598OChAVmfONTXfwmxW0VOVMqJXQSZ+UCDGGJlIA8=	Ricardo Andr├®s	Espa├▒a Ortiz	Respana814@unab.edu.co	Respana814	1005179401	U00130114	t	f	f	2022-08-25 21:19:39.48324+00	2022-09-20 23:24:45.868598+00	f	f	t	f	5	2
96	pbkdf2_sha256$320000$JGcUXwz268dm87gaKSx1mW$BG40WuIsAMLfDgUW6EZKc4ZNE5bfsRkaGJhXFymq2Qw=	Andres Felipe	Galindo salda├▒a	andresfelipe.galindo@ustabuca.edu.co	andresfelipe.galindo	1065863327	2313008	t	f	f	2022-09-02 20:51:19.051039+00	2022-09-02 20:51:56.040068+00	f	f	t	f	8	8
109	pbkdf2_sha256$320000$nJxH08GAAOoRuLevEg9Ymb$wgYjBcMfeJGvNnahs8OpMqo/8oIdjh0iCJElHQvz6nk=	Daniel Fernando	Amado C├íceres	damado324@unab.edu.co	damado324	1098817493	U00092183	t	f	f	2022-09-07 14:28:33.47539+00	2022-09-09 03:08:33.54356+00	f	f	t	f	4	2
153	pbkdf2_sha256$320000$ksVyKUnHsNQ2Fq8mqunwBU$yc7xttOaja9jlx8ebW+DQd8R1RtS0M64U7FkHnHXLAg=	Mar├¡a Eugenia	Serrano Acevedo	mserran5@unab.edu.co	mserran5	63334882	63334882	t	t	t	2022-09-08 22:26:49.55235+00	2022-10-06 15:14:50.444572+00	f	f	t	f	6	2
113	pbkdf2_sha256$320000$eG865xX4G59HLH7Mxg8pba$YzPwZnxWfO3pITALggJNbCC81/jwDnni4O5gah5U3xA=	CAMILO ENRIQUE	MONCADA GUAYAZAN	cmoncada@unab.edu.co	cmoncada	1098643824	100006311	t	t	t	2022-09-07 18:05:27.663849+00	2022-10-06 21:39:55.904801+00	f	f	t	f	3	2
103	pbkdf2_sha256$320000$QjCUUsNqVjJ8rHgcBpPk4p$5XSw5iPKt/vt/SXPMhiYzSC18K17LWeo3C2HfZcmK7g=	Sergio Andres	Forero Melo	sergioandres.forero@ustabuca.edu.co	sergioandres.forero	1006556941	2314510	t	f	f	2022-09-06 01:24:49.524791+00	2022-09-06 01:25:31.629151+00	f	f	t	f	8	8
116	pbkdf2_sha256$320000$mRbWcT6TC4rJvYWTeKqgfi$VNTHqWFKOXci+VhNB4y9ju2uQhCnYrmfY2fQeKbjN+I=	Jorge Alejandro	Garnica Silva	jorge.garnica@ustabuca.edu.co	jorge.garnica	1007900891	22180536	t	f	f	2022-09-07 20:09:22.700429+00	2022-09-30 15:24:31.787841+00	f	f	t	f	13	8
108	pbkdf2_sha256$320000$vyKdL2eQmuD97jkKqNWU48$qu9NmB5Ga2bNfHujbxkS3rOjgsckszquTzD43sbmeYk=	Isaias Andres	Rojas Murillo	irojas545@unab.edu.co	irojas545	1102387619	U00104754	t	f	f	2022-09-06 21:02:51.897033+00	2022-09-10 04:51:43.645992+00	f	f	t	f	3	2
129	pbkdf2_sha256$320000$fzvKZL1dx8IHXo7KP6R3pJ$dXgq7+6L4ULZy8Q/TgRY78f3q0o9w6TffSiFvZkuw/4=	Carlos Ernesto	Mendoza Gim├®nez	carlos.mendoza9@correo.uis.edu.co	carlos.mendoza9	1098778873	2142655	t	f	f	2022-09-08 01:58:25.689801+00	2022-11-29 03:18:33.839128+00	f	f	t	f	7	3
46	pbkdf2_sha256$320000$XYeJfCLysZrzwopTR0AhDo$yWTR/ryLLb9tXjhAWir1CVVUvO5oK3n4ZTT+7w+9KHg=	Julian Santiago	Santoyo Diaz	jsdiaz@unab.edu.co	jsdiaz	80757432	33201058	t	t	t	2022-08-29 18:54:38.034631+00	2022-10-13 21:00:32.771461+00	f	f	t	f	4	2
110	pbkdf2_sha256$320000$AMekeHjVzjZg83i5k8PBOQ$h+WWJfDVaNZZQ99LhfFNKid6oll7J4RnBTWK4CUEiSc=	Laura Julieth	Ortiz Baron	laura.ortiz05@ustabuca.edu.co	laura.ortiz05	1001097902	22180696	t	f	f	2022-09-07 16:27:22.481412+00	2022-11-28 00:17:42.48878+00	f	f	t	f	13	8
114	pbkdf2_sha256$320000$mgZOI3el1o13cA7cvggisT$L3SfP/3LrckxzrwmHlZoT1r14NigwOdKjSpGCHx5gg4=	leidy	Camacho	lcamacho896@unab.edu.co	lcamacho896	0	0	t	t	t	2022-09-07 19:18:14.151591+00	2022-10-14 14:32:24.068368+00	t	t	t	t	4	2
104	pbkdf2_sha256$320000$6UW5DLoP3HVRqu6D4xf6rH$UkWkYyaHgIxI3ctjWJ/kEMnPmW2lMpJ6hwfVTH9myeM=	Manuel	Franco Arias	mfranco20@unab.edu.co	mfranco20	1144039912	U00123996	t	t	t	2022-09-06 15:04:39.538986+00	2022-10-06 19:12:51.672549+00	f	f	t	f	3	2
106	pbkdf2_sha256$320000$4nMYgmjFwBTJ7U2qMmtkvl$oLJKOVMUVDKttEdej1p88G0jhziEYiGkdF7FTWhCeC8=	Silvia Marcela	Vargas Ardila	svargas191@unab.edu.co	svargas191	1007408741	U00123172	t	f	f	2022-09-06 18:03:51.368652+00	2022-09-06 18:34:11.24447+00	f	f	t	f	3	2
105	pbkdf2_sha256$320000$izLi3qh9Ym87GsacUPjnW6$8fffLpiR8V2yJlnhA3A0r2eUrb/9T3UZX7yTl9BhPh0=	Andres Santiago	Morales Rueda	amorales580@unab.edu.co	amorales580	1005369928	U00121738	t	f	f	2022-09-06 17:27:47.00567+00	2022-09-07 01:30:31.19886+00	f	f	t	f	3	2
112	pbkdf2_sha256$320000$jvBmntvc0ZxVnfGjJ3XQXh$jq1SuIA4xBnv8tI61hvJUvkdtKK3MiDyr0OgrxqCEVE=	German Hernando	Acevedo Calderon	german.acevedo@ustabuca.edu.co	german.acevedo	1098661904	1098661904	t	f	t	2022-09-07 17:17:13.717111+00	2022-09-07 17:25:32.018357+00	f	f	t	f	13	8
118	pbkdf2_sha256$320000$8j33J21VMRXCZ0nS0frgv7$gSK4Jtsk3kbGusSxAYvImFR3M4GZ9geBW88KYiaQFsY=	Miguel Angel	Sarabia Quintero	msarabia472@unab.edu.co	msarabia472	1004862858	U00130328	t	f	f	2022-09-07 20:29:27.28145+00	2022-09-07 23:14:16.159856+00	f	f	t	f	9	2
126	pbkdf2_sha256$320000$BJeRLiDQa8seJvm7PRYhVq$tbgtDeHHEMyca8hqGGwQSdnGbEoEZyLBp91jLVsNNg0=	Edwin Javier	Cordoba Vanegas	ecordoba263@unab.edu.co	ecordoba263	1005150007	U00122557	t	f	f	2022-09-07 23:47:34.430931+00	2022-09-07 23:47:54.093829+00	f	f	t	f	4	2
127	pbkdf2_sha256$320000$VeFEPRhEGJWGNqZOXiM0ZA$zoM125+kc+ubBGR3oykVWHJ558kK/KwGdnkbY82DoHA=	Duvan jose	Valenzuela Ardila	duvan.valenzuela@ustabuca.edu.co	duvan.valenzuela	1007733389	22181032	t	f	f	2022-09-08 01:40:11.300082+00	2022-09-08 01:41:01.798071+00	f	f	t	f	8	8
54	pbkdf2_sha256$320000$jOodMdrjiXfEck990WtCYV$NHY7G5sjQ+ILdbQtqYs4EmijnPeigLRfQBHzNQ9U6pk=	Brithney Johanna	Ortiz Galvis	bortiz474@unab.edu.co	bortiz474	1005328323	U00130263	t	f	f	2022-08-31 15:34:03.732725+00	2022-10-06 23:25:07.33028+00	f	f	t	f	3	2
59	pbkdf2_sha256$320000$f45NtzL0NPn0q1dGxoZpMu$x3TntomvuD8YFPnC7YWIfxZ1Rl3wevo85O0nj+EEKk0=	Oscar Juli├ín	Rey Beltr├ín	oscarjulian.rey@ustabuca.edu.co	oscarjulian.rey	1005210616	2293996	t	f	f	2022-09-01 01:02:36.037714+00	2022-09-27 23:00:24.7783+00	f	f	t	f	11	8
74	pbkdf2_sha256$320000$jVjjynwdUE93JX4yMZJtQX$uN9Aos7d/Qej3tQuQtuwJ6PUfKbjvYL2IBr/P0bhekE=	Juan Sebastian	Bustos Maldonado	buc19362013@mail.udes.edu.co	buc19362013	1007769873	01190362013	t	f	f	2022-09-01 22:39:49.167173+00	2022-09-02 00:51:34.921334+00	f	f	t	f	12	7
83	pbkdf2_sha256$320000$G39lOtjwycdD62tq4SMkWk$7gLrLlq6gT9yLCL78wtCS4/pqVpXjqqA0aYR1DdQly8=	Liseth Daniela	Rueda Guzman	buc19362004@mail.udes.edu.co	buc19362004	1005155733	01190362004	t	f	t	2022-09-01 23:11:56.823037+00	2022-09-02 00:58:26.97342+00	f	f	t	f	12	7
57	pbkdf2_sha256$320000$gOM7rRLRtjedQsdeZ1XAWB$kCfe0UVk3Tj9dK43523mFacIL6wA5pi9GB9r6JL9bE0=	Brisly Fabiana	Rojas Dallos	brojas784@unab.edu.co	brojas784	1005239956	U00140003	t	f	f	2022-08-31 21:46:11.947335+00	2022-09-02 23:59:02.328575+00	f	f	t	f	7	2
61	pbkdf2_sha256$320000$CIWm2Ywof1UtyfXyfFxJBV$RXYyffwctq9z8hi/tFY+mHvZiTBF211M3ICVOfakyFI=	Mariana Sof├¡a	Rueda Garc├¡a	marianasofia.rueda@ustabuca.edu.co	marianasofia.rueda	1000719823	2298576	t	f	f	2022-09-01 01:37:29.83545+00	2022-09-01 01:38:13.631537+00	f	f	t	f	11	8
65	pbkdf2_sha256$320000$7XmY2VNbZHZN5HcutmwmGZ$o7u9bglEpvawGVAOK4aZrnwEVu8WSH4O/nGsSBXS0Yk=	ENEYDA	ABREU PLATA	eneyda.abrey@ustabuca.edu.co	eneyda.abrey	63301660	0	t	f	t	2022-09-01 20:32:40.029672+00	2022-09-02 14:19:39.762779+00	f	f	t	f	11	8
72	pbkdf2_sha256$320000$SWhT9jtm6oXmDCaNeLxO5N$xITr5VXkthKvrdTbukefFT369jPdYyArvpr1ly7cEmc=	Carol Yulieth	Hoyos Diaz	buc19362009@mail.udes.edu.co	buc19362009	1095789132	01190362009	t	f	f	2022-09-01 22:37:56.612681+00	2022-09-02 14:20:20.482511+00	f	f	t	f	12	7
52	pbkdf2_sha256$320000$c3NLrG6e1UES7LdATqMoFy$UTQtXCDY2vZDiHND9eBfWSEXYvjlu4KiR4UL4h+txFw=	Shirly Kathalina	Molina Lache	smolina676@unab.edu.co	smolina676	1099734675	U00146691	t	f	t	2022-08-31 01:30:56.549615+00	2022-08-31 01:35:55.660703+00	f	f	t	f	7	2
356	pbkdf2_sha256$320000$oflY8WKDSWZL2ipd1pnNIO$7YzQK9Tn/H+Hk9jZMaE1U5USi9oe2XDZFsnbbjm/cV4=	Carlos Alirio	D├¡az Gonz├ílez	cdiaz23@unab.edu.co	cdiaz23	91110520	N/a	t	t	f	2022-09-21 23:15:56.593724+00	2022-10-06 15:01:15.566515+00	f	f	t	f	9	2
53	pbkdf2_sha256$320000$wBHSmfsm7wdrrngsLGbB5O$ptW91CTJhpVyeYV92q0/4Qb20tv/0rCxP3wjktz2i8M=	Sebasti├ín	S├íenz Perez	ssaenz341@unab.edu.co	ssaenz341	1004998338	U00146385	t	f	t	2022-08-31 01:48:50.445276+00	2022-08-31 02:00:04.559666+00	f	f	t	f	7	2
51	pbkdf2_sha256$320000$ZoMQ6H0utl7dsmhzDGhKbv$Re/XnSuXU/LwAt1c4yjSZ923+20IK25qFflbihWqvR4=	Saray	Zafra Mier	szafra@unab.edu.co	szafra	1005185689	U00146527	t	f	t	2022-08-31 01:22:08.300589+00	2022-09-01 14:22:04.227128+00	f	f	t	f	7	2
81	pbkdf2_sha256$320000$L12CpPh5Uxx0GYOttklPMz$ohj6cq8eDdCnT3dOM1n137PKPCJiJWbAc2Q0DgTDWgE=	Celestino	Quintero G├│mez	buc19362001@mail.udes.edu.co	buc19362001	1003250820	Universidad de Santander	t	f	f	2022-09-01 22:58:21.24345+00	2022-09-02 14:56:38.230658+00	f	f	t	f	12	7
49	pbkdf2_sha256$320000$9oLsFbyXiiRGIhO7zjD3cO$Ib51fVgvfEQiYcOmy8bUt8pxT4tl3/FkYRHBeg/WehI=	GLORIA JUDITH	PALACIO OSORIO	gloria.palacio@ustabuca.edu.co	gloria.palacio	63527533	gloria.palacio	t	f	t	2022-08-29 23:42:15.956784+00	2022-10-10 18:40:20.534996+00	f	f	t	f	8	8
70	pbkdf2_sha256$320000$HKNg3LRlDqZWNFnhGjQ8Up$tyIrIl4togHVypBkDoP6tw76E2v+oJoB8CV4vIDgfVc=	Fabi├ín Guillermo	Tobo Garc├¡a	buc19362010@mail.udes.edu	buc19362010	1005161753	01190362010	t	f	f	2022-09-01 22:37:25.521205+00	2022-09-02 14:57:06.756463+00	f	f	t	f	12	7
67	pbkdf2_sha256$320000$dwXrigryEOt6ig30KKCOa7$/X7inot8p4oSfVfU0y+kqUO5tHzVfLNycXc9sM21jQE=	Valentina Saree	Fern├índez Poveda	vfernandez757@unab.edu.co	vfernandez757	1006614943	U00122292	t	f	f	2022-09-01 21:14:58.048763+00	2022-09-14 00:14:53.782447+00	f	f	t	f	8	2
60	pbkdf2_sha256$320000$fn0G3cs4bxGA5ef97r4udX$zMEG5eKbG9EHsTaKgtydKF+HREF3STC979oPoUVCGsg=	Brayan Sneyder	G├│mez Remolina	brayansneyder.gomez01@ustabuca.edu.co	brayansneyder.gomez01	1005479942	2293986	t	f	f	2022-09-01 01:33:21.287532+00	2022-09-01 14:36:25.838773+00	f	f	t	f	11	8
58	pbkdf2_sha256$320000$oQvWkNxd2SVefjQM0ms6AH$co1xmyM32vmAKR1lLHCougFcKmsed1tt2FJjVHvsC9c=	Oscar Andres	Arenas Rojas	oarenas112@unab.edu.co	oarenas112	1098824388	U00118582	t	f	f	2022-09-01 00:56:12.755238+00	2022-09-01 00:56:53.525618+00	f	f	t	f	5	2
64	pbkdf2_sha256$320000$kshYmrZsDDEEIp5gipiwUb$wSxAwq6fnD6sb20BYmMGQ9fhXEXC0ZOBRPx7kllc708=	Ivan Dario	Jaramillo Torres	ijaramillo@unab.edu.co	ijaramillo	1098720531	U00086382	t	f	f	2022-09-01 17:13:07.854984+00	2022-09-12 23:56:58.845971+00	f	f	t	f	8	2
66	pbkdf2_sha256$320000$736DPyxhXwCgEa3IDIGqnW$p9TZX2/xCfQlALuZClQT+Ppf6OSCMXqxKcm+GmzkWIo=	Sergio Andr├®s	P├®rez Fuentes	ser.perez@mail.udes.edu.co	ser.perez	1098731649	Docente	t	f	t	2022-09-01 21:14:44.229541+00	2022-09-27 20:21:35.509989+00	f	f	t	f	12	7
357	pbkdf2_sha256$320000$QWwbXs5bsb85P9Fnkzd6HZ$UXYzLyJuiKrEET3g4T5fJCZ6s1xVWyyUNecHzLj3cqQ=	Carlos Adolfo	Forero Gonz├ílez	cforero3@unab.edu.co	cforero3	91510585	N/a	t	t	f	2022-09-21 23:15:57.063738+00	2022-09-26 00:16:24.999682+00	f	f	t	f	9	2
63	pbkdf2_sha256$320000$5WUTGYNBxojnQqdzRQDObH$Dxor7gs8zq/bbQYwkKbvlCe5phYRI8mrps7e/k2S2OU=	Andr├®s Felipe	Rodriguez Reyes	arodriguez474@unab.edu.co	arodriguez474	1096243999	U00118652	t	f	f	2022-09-01 16:29:40.86064+00	2022-09-26 18:57:53.262971+00	f	f	t	f	4	2
90	pbkdf2_sha256$320000$nR8Hz8oQqeHtJBk2ghKQNY$3nlW3Ud26giV/r/1nwHT0mg4lkVNTBz8jbpJc5Tos/s=	Angie Daniela	Jaimes Quintana	angiedaniela.jaimes@ustabuca.edu.co	angiedaniela.jaimes	1097488357	2288809	t	f	f	2022-09-02 14:42:16.106557+00	2022-09-22 17:33:22.88859+00	f	f	t	f	10	8
73	pbkdf2_sha256$320000$Uj3AafQk19v4AzUqKtVTL2$BIqDe88rp3SbkI/FCMDeB4gOwrtIui0GxjWQp93p6vQ=	Humberto Enrique	Guzm├ín Rodr├¡guez	hguzman774@unab.edu.co	hguzman774	1193484913	U00126147	t	f	f	2022-09-01 22:39:44.719807+00	2022-11-17 15:31:11.122738+00	f	f	t	f	3	2
68	pbkdf2_sha256$320000$DZ54PRxBuJImvYghSKjjbV$cKnPPpvjClW8s6M9kQprPtn5nTSu/5EFCwq0mxUBpwY=	Justy Andr├®s	Herrera S├ínchez	buc17361038@mail.udes.edu.co	buc17361038	1064841502	01170361038	t	f	f	2022-09-01 22:32:01.883121+00	2022-09-01 22:55:46.339447+00	f	f	t	f	12	7
80	pbkdf2_sha256$320000$0vYqSbQLEWhWNw8m9ltK3E$CqQ465oObQ95QiGeVjx7hLucYswsbmeXp3nkNhe5hvc=	Fabi├ín Guillermo	Tobo Garc├¡a	iela.fabiantobo.1101@gmail.com	iela.fabiantobo.1101	1005161753	01190362010	t	f	f	2022-09-01 22:58:12.36341+00	2022-09-01 22:59:26.098836+00	f	f	t	f	12	7
75	pbkdf2_sha256$320000$H0baXEPYB3t4HcHdCayRCk$ahUq2DsuBknCpc4geiYvLJkVC71GC/1MgSqVBhCyEu8=	Juan pablo	Camargo Aguilar	buc19362008@mail.udes.edu.co	buc19362008	1005297230	01190362008	t	f	f	2022-09-01 22:40:31.479312+00	2022-09-01 23:06:58.90702+00	f	f	t	f	12	7
82	pbkdf2_sha256$320000$NRE55bvsbXgkFJuOtooYLH$ciGyqEAIHOxsIELPTc7cHHl57lpdg55fodgKOQ8ECQ4=	Celestino	Quintero G├│mez	juniorcelestino2253@gmail.com	juniorcelestino2253	1003250820	Universidad de Santander	t	f	f	2022-09-01 23:08:25.021263+00	2022-09-01 23:09:44.924431+00	f	f	t	f	12	7
69	pbkdf2_sha256$320000$rbkf3vE696HuebczbofzOJ$OdARsZHBIDX3snkD/DXgnLZ3l+FQ7OKwoTrZZUJ8AyE=	Maria Pierina	Corredor Labrador	corredorpierina@gmail.com	corredorpierina	1149467593	01190362014	t	f	f	2022-09-01 22:35:14.86354+00	2022-09-01 23:32:00.333757+00	f	f	t	f	12	7
84	pbkdf2_sha256$320000$8tDwGyTOlH27QmvnCQhxxR$PXQUp3c5BDr1uplyYHoK7bA+PsK3BYbcLfnT5kVEMZU=	Maria Pierina	Corredor Labrador	buc19362014@mail.udes.edu.co	buc19362014	1149467593	01190362014	t	f	f	2022-09-01 23:33:41.032256+00	2022-09-02 14:18:48.998377+00	f	f	t	f	12	7
117	pbkdf2_sha256$320000$OE5nsbF721AHZDK2PpUp07$ZfJAFuqF8ZsR7xCZ8PZ/QwAztauajqQ/HFt7DLUkE7A=	Nicolas leonardo	Sanchez leguizamon	nicolasleonardo.sanchez@ustabuca.edu.co	nicolasleonardo.sanchez	1000851587	2286640	t	f	f	2022-09-07 20:22:04.243587+00	2022-09-07 20:24:49.237373+00	f	f	t	f	13	8
91	pbkdf2_sha256$320000$SWSd5y2Sx6n5y8mTkjMFCJ$F99jBMuV5PzaSH3IkqLojyEfBlmdLUOux9oznM6hgNA=	Adriana Marcela	Gamba P├®rez	adrianamarcela.gamba@ustabuca.edu.co	adrianamarcela.gamba	1090362893	2279782	t	f	f	2022-09-02 14:43:19.253645+00	2022-09-02 14:44:17.131635+00	f	f	t	f	10	8
140	pbkdf2_sha256$320000$oU2uf9c1KXBjgkThb30Lfz$znLqAPY++/t8OfB34P6GCkz1PdnQHFrNV/ZV051KDHs=	Vittoria Jos├®	Valzania Prada	vvalzania@unab.edu.co	vvalzania	1096073235	U00140062	t	f	t	2022-09-08 15:38:53.989641+00	2022-09-09 01:12:54.876843+00	f	f	t	f	3	2
99	pbkdf2_sha256$320000$3tV8ZT2Q9oKi5FCkJwf7Eu$sMshsfA97zYCIKkoCTs7Wky/4z5tYVsgE++ZwzWwmVM=	Dairon Fabricio	G├│mez Orozco	daironfabricio.gomez@ustabuca.edu.co	daironfabricio.gomez	1102391219	2307385	t	f	f	2022-09-05 18:05:00.95008+00	2022-09-05 18:05:50.559573+00	f	f	t	f	8	8
132	pbkdf2_sha256$320000$sFHgLL5PI3cfCJBuqpRTv9$s6Io1tw4VUJI8KT4bzhSiCIYJGwGaanjDBpb3cUdh/s=	Luis Felipe	Mu├▒oz Vesga	luis2162335@correo.uis.edu.co	luis2162335	1098704452	2162335	t	f	f	2022-09-08 14:02:43.51521+00	2022-10-25 15:09:08.065911+00	f	f	t	f	7	3
101	pbkdf2_sha256$320000$fkDG7otg3mckIgIic3NLkk$lbp96RO8DU0qgbSdlhsHdrcRBIw/EJqm+pR7qw0YtkA=	Santiago	Sanchez Bahamon	ssanchez495@unab.edu.co	ssanchez495	1110594801	U00132157	t	f	f	2022-09-05 22:10:46.507201+00	2022-09-05 22:11:29.035841+00	f	f	t	f	3	2
128	pbkdf2_sha256$320000$oQUvCITvlgx5UfXTWR4qfk$3wXly0vQXcA2FONMV9LeYDJy9/aZgBcVd/StKmdbfEY=	Ingrith Marcela	Mendoza Mendoza	ingrith2175594@correo.uis.edu.co	ingrith2175594	1005485781	2175594	t	f	f	2022-09-08 01:43:38.064393+00	2022-10-22 01:07:58.107906+00	f	f	t	f	7	3
107	pbkdf2_sha256$320000$lVp2i8qz7x8uVbDbvsbvmb$PbVh1LEIZgQ1y8KXvcWHKahAO56hk+syn1JSCnF9DT4=	Juan Felipe	Martinez Acu├▒a	jmartinez217@unab.edu.co	jmartinez217	1005190369	U00120839	t	f	f	2022-09-06 18:23:15.209569+00	2022-09-06 18:24:26.74848+00	f	f	t	f	3	2
71	pbkdf2_sha256$320000$jh8o5Lc7ziqfim1e1PWIvn$atiSf8ibYeVaiDVEn5RzBTjTKyzmD9KNNAgP2arpcRE=	Hern├ín	Ariza Rallon	buc19362005@mail.udes.edu.co	buc19362005	1007775975	01190362005	t	f	f	2022-09-01 22:37:36.302186+00	2022-09-10 02:15:03.577669+00	f	f	t	f	12	7
111	pbkdf2_sha256$320000$xEtQLEq3PHnP0fv2vITRmK$iciv1RqSGS0kiQahDnDSBz5UplO3DoUQCRussY7QPrY=	Gabriela	Barbosa Ropero	gbarbosa160@unab.edu.co	gbarbosa160	1193519318	U00133661	t	f	f	2022-09-07 17:07:26.396842+00	2022-09-07 17:08:06.202406+00	f	f	t	f	3	2
120	pbkdf2_sha256$320000$cm1FYjLrBxexkASWl8Ow7h$W2IUdTeTKPtEkBMYqUWF90hspNhyQbx4Ms2mmwkTLOY=	Miguel Angel	Saenz Perez	msaenz622@unab.edu.co	msaenz622	1004998337	U00129563	t	f	f	2022-09-07 20:48:34.017666+00	2022-09-09 03:56:44.182063+00	f	f	t	f	6	2
150	pbkdf2_sha256$320000$VZxNRc64Wfv84yzrg1BHl2$Y1oHeUVmLzCgq6uxMSTJwUzezajgjpHXtnHimvt5r0A=	Jhon Sebastian	Gomez Sierra	jhonsebastiangomez@uts.edu.co	jhonsebastiangomez	1005152835	jhonsebastiangomez@uts.edu.co	t	f	f	2022-09-08 20:31:13.763505+00	2022-09-26 15:36:47.10939+00	f	f	t	f	4	5
141	pbkdf2_sha256$320000$pZy2ubT2B13pk71H3yGTjJ$cJvDdyZ7b57a4B/XTmUG/M6ta+ayiQ9DZIRVF3Va3Mw=	Paula Andrea	Jim├®nez Garz├│n	pjimenez435@unab.edu.co	pjimenez435	1000471759	U00141285	t	f	t	2022-09-08 15:42:32.318197+00	2022-09-08 15:43:11.613267+00	f	f	t	f	3	2
115	pbkdf2_sha256$320000$ujQ74crHRt4EXRjric6CXm$HtOnn5kblemZndip+6XQ2RcRlQwyeoANS0CPWJs+s7U=	Jes├║s Eduardo	Dur├ín S├ínchez	jesus.duran01@ustabuca.edu.co	jesus.duran01	1005338798	22180549	t	f	f	2022-09-07 19:47:54.677224+00	2022-09-28 19:12:32.014762+00	f	f	t	f	13	8
145	pbkdf2_sha256$320000$qWmP75xK707E8zfj9p3XAp$NP3xwXl2ug7rxcucTwtKlU2qoZz3YAU5IHS0o9lfqEw=	Julian Barney	Jaimes Rincon	jbjaimes@correo.uts.edu.co	jbjaimes	88249737	jbjaimes@correo.uts.edu.co	t	f	t	2022-09-08 19:49:44.964802+00	2022-09-26 15:58:14.438075+00	f	f	t	f	4	5
130	pbkdf2_sha256$320000$fxHxFHKVsOSiRGbxBdb0v4$s/AfIGKwISAdZ0ZHHCKZlIEXm/YEuis4OwM5/377hys=	julio cesar	camacho pinto	jccampin@correo.uis.edu.co	jccampin	1102352508	jccampin	t	f	t	2022-09-08 02:12:18.263221+00	2022-09-08 02:13:32.177489+00	f	f	t	f	7	3
144	pbkdf2_sha256$320000$NyNKm5FSAdrDZVdEjXJy8h$LWIZDDeFUCH7XVYiAcVTMmq0Y5iqgcNVgHOsftjn5F8=	Silvia Milena	Becerra Bayona	sbecerra521@unab.edu.co	sbecerra521	1098602572	U00102173	t	f	t	2022-09-08 19:19:50.075676+00	2022-09-08 19:20:14.382464+00	f	f	t	f	16	2
135	pbkdf2_sha256$320000$Z5bXgW7DdJ2WFGlT0eIMlg$R0+tiPQhpUZ1P3xKTnfGRM0pgEgCLbvyQe6dRbydcWA=	Sirley Karina	Uribe Camacho	sirley2164208@correo.uis.edu.co	sirley2164208	1100974698	2164208	t	f	f	2022-09-08 14:57:37.052448+00	2022-09-08 15:04:36.862239+00	f	f	t	f	7	3
134	pbkdf2_sha256$320000$BDFZy43myJSZSQwmAO275l$SLdyN6TiRy1+UmkeKxZqBd3aBzSAq2/Co1IGOTaugb4=	Silvia Juliana	Mart├¡nez Arguello	silvia2164212@uis.edu.co	silvia2164212	1	2164212	t	f	t	2022-09-08 14:54:07.396978+00	2022-09-08 17:10:05.708675+00	f	f	t	f	7	3
119	pbkdf2_sha256$320000$LtagivmWABamUBtIL9axK2$sYDJaelvNnuIhNstDvdUqWRtdVUWfVIRoHrCDETZAfc=	Andrea Juliana	Mart├¡nez Tello	amartinez403@unab.edu.co	amartinez403	1193506921	U00131186	t	f	f	2022-09-07 20:32:30.603115+00	2022-09-08 15:53:43.134227+00	f	f	t	f	3	2
131	pbkdf2_sha256$320000$54MIoRByJGsiL4of6YHLIK$qOmzU7IPVAsbyeDJGO38lMfggLf2Y5KoPCCnU4SOaqQ=	Karen Gabriela	R├¡os Carrero	karen2190470@correo.uis.edu.co	karen2190470	1000952551	890.201.213-4	t	f	f	2022-09-08 12:47:44.720674+00	2022-09-08 15:54:26.726728+00	f	f	t	f	15	3
142	pbkdf2_sha256$320000$09UjJcBLXAGNQvQUx2Gpt0$coMklbF5LkUph9i1lwZ5je8ZR9n409ZcDPtv/eADZ1Y=	Yinneth Juliana	Angulo G├│mez	yangulo@unab.edu.co	yangulo	1005162325	U00139412	t	f	f	2022-09-08 15:50:37.835138+00	2022-09-08 15:55:15.16529+00	f	f	t	f	3	2
138	pbkdf2_sha256$320000$vlrxRzmPG692rly5U6y5HO$qiTIlfRs8eFrlYo4O3YwLI0bXR/6//pZ0ZH9POV5mWI=	Dilan	Mogollon	dilanm83@gmail.com	dilanm83	1101697561	2164296	t	f	f	2022-09-08 15:05:14.49007+00	2022-09-08 19:15:22.600308+00	f	f	t	f	7	3
146	pbkdf2_sha256$320000$OqoPx0JSdJZP9JPpol9BsS$ZdJm900HBsBILZ9l6kkCAwP05lIS3u3UjBe7dPnVBIE=	Laura Yerald├¡n	Escobar Rodr├¡guez	laura.escobar@correo.uis.edu.co	laura.escobar	1095825291	N/A	t	f	t	2022-09-08 20:10:30.100016+00	2022-09-08 20:12:44.461145+00	f	f	t	f	7	3
147	pbkdf2_sha256$320000$RU1soQ0NegAEfYN6trHnlX$oRHYnVjc/1P4/zH/wTqaPWOhtJ930eiENwEgZKfVCXU=	Leydi Johana	Polo Amador	Lpolo@correo.uts.edu.co	Lpolo	63551382	Lpolo@correo.uts.edu.co	t	f	f	2022-09-08 20:24:08.829787+00	2022-09-08 20:25:57.480688+00	f	f	t	f	4	5
148	pbkdf2_sha256$320000$s1RMgdfPUuWE7kX3KSWNl2$joNcYgcjpm4tcH/lVWZjhd5CPopDQmTlL3wNutdUoEw=	LEYDI JOHANA	POLO AMADOR	lpolo@correo.uts.edu.co	lpolo	63551382	lpolo@correo.uts.edu.co	t	f	f	2022-09-08 20:28:11.114564+00	2022-09-08 20:29:00.65679+00	f	f	t	f	4	5
149	pbkdf2_sha256$320000$eTEmNVmWMZyf5CBoElNOQ9$wQpMABb2wbxk5NmvNza12wonmnw5tTSLaEzAGnDueWA=	Edwin Alberto	Garavito Hern├índez	garavito@uis.edu.co	garavito	91276993	N/A	t	f	f	2022-09-08 20:30:01.472967+00	2022-09-08 20:30:45.347116+00	f	f	t	f	7	3
121	pbkdf2_sha256$320000$rB2WG19MeLKQAtgvXt9NQq$fjuG/jeV0NoqZPgnT/0xJOisMZ6iCoEjUJ5ughFisIQ=	Francisco Javier	Dietes Cardenas	francisco.dietes@ustabuca.edu.co	francisco.dietes	91489325	91489325	t	f	t	2022-09-07 22:22:38.566559+00	2022-09-08 21:28:03.164226+00	f	f	t	f	14	8
151	pbkdf2_sha256$320000$5yxbfXSCOkNZ6rwcKHwV7m$yagUXuBLZxasbl8EbihPdxWAACLEmfO+c/zavjMFp/A=	Andr├®s Camilo	Pab├│n Ravelo	andrescpabon@uts.edu.co	andrescpabon	1007582622	andrescpabon@uts.edu.co	t	f	f	2022-09-08 20:33:13.474135+00	2022-09-08 20:36:37.263006+00	f	f	t	f	4	5
371	pbkdf2_sha256$320000$vWVsynm1nWyN0p1fSCSuQX$xq306URxN+IX9uvQSujLqI6UYVCEEIuMZIj4sMx2iJA=	Hern├ín	Gonz├ílez Acu├▒a	hgonzalez3@unab.edu.co	hgonzalez3	91509455	N/a	t	t	f	2022-09-21 23:16:03.853329+00	2022-10-06 14:53:13.046674+00	f	f	t	f	8	2
168	pbkdf2_sha256$320000$wCggd3IV6tGVB9YZe5AF2r$/o/D9i/w6FHTmBkSnf0hlaCeeO1FmfFEjjFPTE7kn5A=	Carlos Julio	Arizmendi	carizmendi@unab.edu.co	carizmendi	0	0	t	t	t	2022-09-12 20:44:38.705042+00	2022-09-21 23:58:23.517831+00	f	f	t	f	8	2
94	pbkdf2_sha256$320000$vSB973pbs8g7WtxfjUeVz8$1Ooer1D88DsUnpE6PqzAhfc9ZxYdbDhVNOUN+Z9blRw=	Adrian Felipe	Grateron Ramirez	adrianfelipe.grateron@ustabuca.edu.co	adrianfelipe.grateron	1032508477	2262881	t	f	f	2022-09-02 18:55:08.887352+00	2022-11-22 17:24:46.177341+00	f	f	t	f	7	8
156	pbkdf2_sha256$320000$ElJXrikKSiIob4JdUXOdqM$vcFI8VPp9idhzaFtlZiynx4CXVygKkm8tPV3ZW3wF0k=	Mario Javier	Mesa Gonz├ílez	mmesa269@unab.edu.co	mmesa269	1005257966	U00141659	t	f	f	2022-09-09 04:03:26.05369+00	2022-09-28 14:03:29.016196+00	f	f	t	f	4	2
157	pbkdf2_sha256$320000$Y4iJsHJQwn36Ih7W2NIZUw$aKMO1kV9eaSCG0mQfratPXz/NyGFj3cAXmg3IuiWwvA=	Judith	Buitrago Correa	jbuitrago@unab.edu.co	jbuitrago	37890959	jbuitrago	t	f	t	2022-09-09 04:53:08.310469+00	2022-09-29 15:35:33.301105+00	f	f	t	f	6	2
171	pbkdf2_sha256$320000$bXTPjWXWZgUPOdQggdRx7S$tEo+J1YunNfJEu8/MpZ2+uJYkWf/ST1gW8l/LtVGwwQ=	Yaris Paola	Jurado Quintero	yjurado@unab.edu.co	yjurado	1098814885	U00111013	t	f	f	2022-09-13 22:38:02.176013+00	2022-09-13 22:38:29.153146+00	f	f	t	f	4	2
159	pbkdf2_sha256$320000$oEfHjy23MY6LL4G3gylVh0$YUgG+XAvPt+LsBPKKidaKICcilrlCANbWfgVNZ1IsUY=	diego alexnader	lozano franco	dlozano245@unab.edu.co	dlozano245	1098708249	u00156645	t	f	f	2022-09-11 17:07:00.849922+00	2022-09-27 02:34:53.047578+00	f	f	t	f	4	2
167	pbkdf2_sha256$320000$owPRZFAEnpYb4Zzv2IR2lU$0YarGyuE+vt4MJbf1hjkmCYv44fvMm3Ftaa5VUdjhK8=	Andres felipe	Castellanos Solano	acastellanos565@unab.edu.co	acastellanos565	1005259569	U00154801	t	f	f	2022-09-12 15:43:59.820309+00	2022-09-14 14:51:12.295226+00	f	f	t	f	4	2
172	pbkdf2_sha256$320000$KyMgTKzs5f2yJgzI5TFv3V$kbQDpkjlHUsnK3dRAK7AW0rPL67bn2YI4z4PRytf5II=	Angel David	Duarte Moreno	aduarte586@unab.edu.co	aduarte586	1005154639	U00115785	t	f	f	2022-09-15 15:00:53.368489+00	2022-09-28 20:05:40.930649+00	f	f	t	f	5	2
383	pbkdf2_sha256$320000$KkKygrAIwOnngCARdBaAom$Di8rHx4H6JYjw8WKiJ693lzfQ3Z0hO51h8gfLrZXHL0=	Leonardo Hern├ín	Talero Sarmiento	ltalero@unab.edu.co	ltalero	1095911077	N/a	t	t	f	2022-09-21 23:16:09.667237+00	2022-10-06 20:11:03.843325+00	f	f	t	f	7	2
378	pbkdf2_sha256$320000$SMIBjHgmyOXfgSY34qXRBL$T5i6w2xdp2CL9N/R02w9fbOWrI8wLtHz+VNcPwHplsc=	Jorge Andrick	Parra Valencia	japarra@unab.edu.co	japarra	91288337	N/a	t	t	f	2022-09-21 23:16:07.17628+00	2022-10-06 14:49:26.273089+00	f	f	t	f	4	2
133	pbkdf2_sha256$320000$h93dx4Fyxvwwn00b77uCBg$Oquki3yHdLhARvm9/oQsqsjXO2c7Ejvn1PVh+QUmjUk=	Dilan Jhoanny	Mogoll├│n Carre├▒o	dilan2164296@correo.uis.edu.co	dilan2164296	1101697561	2164296	t	f	f	2022-09-08 14:40:12.557918+00	2022-11-14 22:57:41.036152+00	f	f	t	f	7	3
160	pbkdf2_sha256$320000$2DqExXIn6rXD11ooK5WeRc$4rfLuMSF7r59YBsDIHu5m6PGYDS0p+rPmCajazehhIM=	Yamid Gabriel	Gamba Gonz├ílez	ygamba@unab.edu.co	ygamba	79691690	U00016879	t	t	t	2022-09-12 13:20:33.076119+00	2022-10-26 15:28:58.691413+00	f	f	t	f	4	2
363	pbkdf2_sha256$320000$2H7iCeYD3iql5yg2Ex8g2Y$uO6kKPNXSKjYW7Tju29ofEcf8GGKhscxbq8kcXYUivo=	Edwin Ernesto	Zafra Reyes	ezafra@unab.edu.co	ezafra	0	N/a	t	t	f	2022-09-21 23:16:00.010701+00	2022-10-06 19:47:48.999416+00	f	f	t	f	9	2
374	pbkdf2_sha256$320000$RQ0wsMuhcR4OR67pYgdaJp$C3A7WRkH+2ScfaHG+fHTxnE/h3/3q2SQv3luCld1wJ4=	Jaime ├üngel	Rico Arias	jrico1@unab.edu.co	jrico1	13354132	N/a	t	t	f	2022-09-21 23:16:05.313288+00	2022-10-07 22:26:52.353951+00	f	f	t	f	6	2
372	pbkdf2_sha256$320000$9PjazhRPIZUYv6H6HKIQaL$DGWa/bka70XH4H/GhBQY0V7JUZjzuAV3IgLKO9CEh3k=	Hern├índo	Gonzalez Acevedo	hgonzalez7@unab.edu.co	hgonzalez7	91180128	N/a	t	t	f	2022-09-21 23:16:04.374999+00	2022-10-06 20:47:56.645928+00	f	f	t	f	8	2
362	pbkdf2_sha256$320000$ynwIujI04awZPPlSKhrIMJ$31+kSGTXR1tBwTGg1nh/UPFsWYKXIn2BnH8/0BCD4pE=	Edinson	Torrado Picon	etorrado@unab.edu.co	etorrado	13364274	N/a	t	t	f	2022-09-21 23:15:59.541877+00	2022-10-06 15:08:35.146028+00	f	f	t	f	9	2
50	pbkdf2_sha256$320000$8762PdloYTqROmVLGUYjOQ$2yciDGOZXEneyAbewUuxx9N6ydb+NO69gRADaNLcfMc=	Luis David	Rojas C├írdenas	lrojas767@unab.edu.co	lrojas767	1098800966	U00109328	t	f	f	2022-08-30 15:40:42.508128+00	2022-11-23 20:02:54.303085+00	f	f	t	f	3	2
169	pbkdf2_sha256$320000$wKj1r0puJo4f1cg77MXbw4$rLwDtwSq6Cv6fxmglHMg0u6YKT6MVrYiBLonjVDM95Q=	Johlver Jose	Pardo Garcia	jpardo1@unab.edu.co	jpardo1	91297969	U00009192	t	t	t	2022-09-13 15:47:07.898902+00	2022-10-06 21:11:38.07376+00	f	f	t	f	4	2
380	pbkdf2_sha256$320000$WoJJKszIGYdT1nFSn6Vth4$tbYsw9y2DQQ1Ti6ivbs8YHQgmGkkYWseN4hq91RC74k=	Jose Luis	Flores Rueda	jflorezr@unab.edu.co	jflorezr	91292327	N/a	t	t	f	2022-09-21 23:16:08.114622+00	2022-10-06 16:01:30.189769+00	f	f	t	f	6	2
170	pbkdf2_sha256$320000$gtqJey1Vj0IqfkueqE9Zo5$3miZVyFFePZZ+h/3zY8/6ocDIAlI0/O02PTbde2XV5M=	Andr├®s Felipe	Pereira Lara	apereira820@unab.edu.co	apereira820	1005210796	U00129938	t	f	f	2022-09-13 18:36:35.734385+00	2022-10-01 02:43:24.995986+00	f	f	t	f	4	2
366	pbkdf2_sha256$320000$K10w1Gpc2ftiWvz58eAIs8$SeE85+FugkkCTsHupm09aGFbtWeNT5N+IMsZjEsPIiw=	Francy Andrea	Manrique Lesmes	fmanrique580@unab.edu.co	fmanrique580	37749336	N/a	t	t	f	2022-09-21 23:16:01.42238+00	2022-09-23 23:56:21.558027+00	f	f	t	f	9	2
384	pbkdf2_sha256$320000$zKR0BJcUcxixAQ7fK8MJVp$bbpjZnGjvupn5p8t1DJ+l6hQ7fFxnC35/31a9NpYIPg=	Lilia Nayibe	G├®lvez Pinto	lgelvez@unab.edu.co	lgelvez	0	N/a	t	t	f	2022-09-21 23:16:10.125675+00	2022-09-28 01:17:49.75902+00	f	f	t	f	4	2
381	pbkdf2_sha256$320000$XGY46P3DyXTNgFZi6f7I67$zVih65IwxM9RLqN6PreaSmFVyplqtU1eSsNakHPtP3I=	Juan Pablo	Neira Vesga	jneira746@unab.edu.co	jneira746	91513259	N/a	t	t	f	2022-09-21 23:16:08.610318+00	2022-10-06 21:54:20.038394+00	f	f	t	f	9	2
154	pbkdf2_sha256$320000$z7VTSEgwzSS5sZwlTgTCwS$yudrzt4wEyx9KGWZ9JOUfERc35bzOUB0VPux6I1KtR0=	LUIS EDUARDO	JAIMES REATIGA	ljaimes9@unab.edu.co	ljaimes9	91251714	91251714	t	t	t	2022-09-08 22:40:54.595662+00	2022-10-06 15:00:33.575245+00	f	f	t	f	5	2
365	pbkdf2_sha256$320000$D9dOLNIe1fH3ZC20sh8ydD$gGQoyv4Qxvh0L1Jzd24UpOvYS+eOZwmUfLFErQu0J8E=	Feisar Enrique	Moreno Corzo	fmoreno4@unab.edu.co	fmoreno4	13719768	N/a	t	t	f	2022-09-21 23:16:00.953593+00	2022-09-26 21:34:20.977984+00	f	f	t	f	9	2
377	pbkdf2_sha256$320000$qxYfKfCsgdNm8iFsukvf1z$7IVg6h5BIXBh+ga1DFd2Y5x4zg5mydyrrBhT4kEk5Uw=	Jessica Gissella	Maradey Lazaro	jmaradey@unab.edu.co	jmaradey	63534362	N/a	t	t	f	2022-09-21 23:16:06.720398+00	2022-09-27 22:03:12.207656+00	f	f	t	f	8	2
368	pbkdf2_sha256$320000$l8Rw8V6SUB3lKgtJuYWvvX$Uf88yp/M7yNmAQ/op69r8kzP7XpV/RZawt6iNOTLe1M=	Gloria Ines	Macias Villalba	gmacias@unab.edu.co	gmacias	37888065	N/a	t	t	f	2022-09-21 23:16:02.34837+00	2022-10-06 15:07:57.321884+00	f	f	t	f	6	2
369	pbkdf2_sha256$320000$xAcRup5emtCrr6RrqRtoVE$bM79V54+IjUJXg56+zKrh+PVSkha/PFqmxVbmqYnbr0=	Gustavo Antonio	Bruges Morales	gbruges@unab.edu.co	gbruges	79681165	N/a	t	t	f	2022-09-21 23:16:02.818717+00	2022-10-06 15:57:29.859998+00	f	f	t	f	9	2
375	pbkdf2_sha256$320000$K7lP2Jx6SZEQqNIMLIobxC$E1OchkMxNjNzojildHj5htSpv35ejwimyJPotvR+XbM=	Jasmin Lorena	Duran Ortiz	jduran697@unab.edu.co	jduran697	0	N/a	t	t	f	2022-09-21 23:16:05.780489+00	2022-10-06 16:07:11.827292+00	f	f	t	f	9	2
358	pbkdf2_sha256$320000$frxCrRRS068U1pHhpX7epc$PUe//lZtbJsi8k1ZljONbK1TjyvU2KnsrEktXcXoNtE=	Carolina	Su├írez Hern├índez	csuarezh@unab.edu.co	csuarezh	63502142	N/a	t	t	f	2022-09-21 23:15:57.532884+00	2022-10-06 20:29:12.136652+00	f	f	t	f	9	2
354	pbkdf2_sha256$320000$U6L9OFrNH3v8i05ks0YYry$eoLMwfB2tQNcXFv/iecdXKtL1d+tVxF5D5wndlkSgcM=	Ana Lisbeth	Galindo Noguera	agalindo144@unab.edu.co	agalindo144	63533941	N/a	t	t	f	2022-09-21 23:15:55.654222+00	2022-09-22 00:06:32.015716+00	f	f	t	f	9	2
376	pbkdf2_sha256$320000$Gdlgt1q6lt87OuN3LfEM2b$B72cGJVDvMoPCOuv5zAWlpeYgja+JaOih0CoSLol+dM=	Javier	Pinz├│n Castellanos	jpinzon408@unab.edu.co	jpinzon408	0	N/a	t	t	f	2022-09-21 23:16:06.252684+00	2022-10-06 22:07:37.837453+00	f	f	t	f	4	2
385	pbkdf2_sha256$320000$WI8G4BW8FVNgbfMc1AIkXG$nnSqOSCdQZ80Z154viL8Blu4Ckhw5gxYPqoXcCFS5gw=	Maritza Liliana	Calder├│n Benavides	mcalderon@unab.edu.co	mcalderon	52158983	N/a	t	t	f	2022-09-21 23:16:10.595344+00	2022-10-06 21:26:10.385982+00	f	f	t	f	4	2
373	pbkdf2_sha256$320000$z5TcAXktvrwr3O2R8qnhpS$9Y5YEWUGQ3XSM6+oiL59Z6EdQf71E32wZf5UlENnLxA=	Isabel Cristina	Barrag├ín Arias	ibarragan@unab.edu.co	ibarragan	63363879	N/a	t	t	f	2022-09-21 23:16:04.843486+00	2022-11-29 14:42:54.45846+00	f	f	t	f	6	2
388	pbkdf2_sha256$320000$CWUCADFTcXad5T6hrhtGop$B2gCHIJfYotEm8b4LTOA4plV21wNSqWvGcCeO9/1+Ig=	Natalia	Garc├¡a Corredor	ngarcia142@unab.edu.co	ngarcia142	1098753100	N/a	t	t	f	2022-09-21 23:16:12.004683+00	2022-09-22 00:42:30.474908+00	f	f	t	f	3	2
355	pbkdf2_sha256$320000$OyJT2Xvw24iXF5fN41qSmO$8opm3u5JOT1XK4dYA3YxqLHlCv6EmAHbJhAhM3ih/g8=	Antonio Faustino	Mu├▒oz Moner	amunozm@unab.edu.co	amunozm	304453	N/a	t	t	f	2022-09-21 23:15:56.124872+00	2022-10-06 15:38:32.399596+00	f	f	t	f	9	2
364	pbkdf2_sha256$320000$AvmpFgjhaJnT3z4hXnvGAO$2Lq9iKfFKiwHoqm4L0NNQdHf9Cb3ML4VlcyCVd7rPeI=	Fabi├ín Enrique	Su├írez Carvajal	fsuarez120@unab.edu.co	fsuarez120	0	N/a	t	t	f	2022-09-21 23:16:00.479147+00	2022-10-06 20:49:41.8922+00	f	f	t	f	9	2
394	pbkdf2_sha256$320000$k7jPDXszOrUiigAm13vtao$W1iOlku507cWWMjk+nUkHTlIapuKDAMWFvcyR7G8xYU=	Roman Eduardo	Sarmiento Porras	rsarmiento@unab.edu.co	rsarmiento	91496831	N/a	t	t	f	2022-09-21 23:16:14.877394+00	2022-09-22 00:51:37.868722+00	f	f	t	f	4	2
398	pbkdf2_sha256$320000$1xewuohff058ZAWxdfuTx9$fR40XTEii2QRa8V74BiOjVAu42/6F7Fb8IcPIeSgDRM=	Yudy Alexandra	Parada Hern├índez	yparada294@unab.edu.co	yparada294	37724105	N/a	t	t	f	2022-09-21 23:16:16.752945+00	2022-09-28 15:13:24.014509+00	f	f	t	f	9	2
55	pbkdf2_sha256$320000$e9Ivw5Qicg2LvCOsKC8fHc$U7OLPVlOBa/e5F5lgKsw3JoK2tSjKDiRC0VrwWpYDD0=	Mario Fernando	Morales Cordero	mmorales267@unab.edu.co	mmorales267	13514683	U00119709	t	t	t	2022-08-31 20:39:39.264849+00	2022-10-06 19:22:16.524589+00	f	f	t	f	3	2
393	pbkdf2_sha256$320000$iu9CQPISHpWJm4CBBU5lje$S2xQgiN3VuKgtcEArTl46R0xpryPDpCOH1K6ZRTAQNw=	Paola Andrea	De Antonio Boada	pde@unab.edu.co	pde	46381387	N/a	t	t	f	2022-09-21 23:16:14.409104+00	2022-10-06 16:24:45.655345+00	f	f	t	f	7	2
402	pbkdf2_sha256$320000$7EuZ6y1jzXVCpVPUhTJkkZ$fPr8ekl5Dr/m59cj3LZPx1umJHD9AGgazmh+T6nvS3E=	Edinson	Torrado Picon	etorradopicon@gmail.com	etorradopicon	13364274	13364274	f	f	f	2022-09-22 16:12:13.492482+00	2022-09-22 16:12:13.505873+00	f	f	f	f	6	2
370	pbkdf2_sha256$320000$v20scEvdkwqp4m6DoBcLeh$Xign8mdUDCy3q4ERSzXZzBmJukFjVRx/R/qI+2GaemU=	Heidy Stephanie	Maecha Antolinez	hmahecha@unab.edu.co	hmahecha	0	N/a	t	t	f	2022-09-21 23:16:03.286417+00	2022-09-29 22:39:04.215345+00	f	f	t	f	7	2
379	pbkdf2_sha256$320000$o7TAaGfa4zPzLuvyxwMhBS$oyzCIr2qPOoaAozyV2S3rrZSZ7RRuTBpHebDPk2LlX8=	Jos├® Daniel	Cabrera Cruz	jcabrerc@unab.edu.co	jcabrerc	73137277	N/a	t	t	f	2022-09-21 23:16:07.645666+00	2022-10-06 20:33:42.355682+00	f	f	t	f	4	2
397	pbkdf2_sha256$320000$Kq8HzlWI7Yr1aeWXGLwoNL$SjVahSFhINEM05NmYxfXLxp0yMDgPRvGm3G+bh2GVok=	Yecid Alfonso	Mu├▒oz Maldonado	ymunoz294@unab.edu.co	ymunoz294	79874168	N/a	t	t	t	2022-09-21 23:16:16.283087+00	2022-09-28 22:09:03.085414+00	f	f	t	f	5	2
389	pbkdf2_sha256$320000$56lfjgAY44t1WJh8uSmIUy$dLoR/ilrXU8JAwzBvHWBi3d4wS78WTrtu6mD/VOvhZ8=	Nayibe	Chio Cho	nchio@unab.edu.co	nchio	63496770	N/a	t	t	f	2022-09-21 23:16:12.471585+00	2022-10-06 15:22:54.35577+00	f	f	t	f	8	2
387	pbkdf2_sha256$320000$aHehCUrGJeq41nM0stXlpU$7Kc/0z7hyQ+Qr/9wJwEybErMOkcwkiVH75Th5jumykY=	Miguel Antonio	Cadena Carter	mcadena@unab.edu.co	mcadena	91223323	N/a	t	t	f	2022-09-21 23:16:11.533719+00	2022-10-06 20:24:23.455527+00	f	f	t	f	4	2
395	pbkdf2_sha256$320000$73vC0ih3tJN1H1WyydNzoc$bfDjAngLYzXAuHlscKU9EU7e5+bsA25uDCz2/JNzuI8=	Sebastian	Roa Prada	sroa@unab.edu.co	sroa	13512525	N/a	t	t	f	2022-09-21 23:16:15.348412+00	2022-10-06 21:54:07.107229+00	f	f	t	f	8	2
359	pbkdf2_sha256$320000$z0gaXwLp8Tp4m1SQqKrst2$0gjtREXDZt3ykFXh+talS5ggwSaxNJcPVBRFBhYJpmA=	C├®sar Yobany	Acevedo Arenas	cacevedo@unab.edu.co	cacevedo	91287992	N/a	t	t	f	2022-09-21 23:15:57.995237+00	2022-10-06 15:33:21.514234+00	f	f	t	f	9	2
390	pbkdf2_sha256$320000$RtPaIKbXqVe40H9J4aBf48$slRh4Hyps6H+7GVYuPLuNwW3bhxN2iVovhF8TT8K4jA=	Norma Yadira	Rojas Aguilar	nrojas34@unab.edu.co	nrojas34	0	N/a	t	t	f	2022-09-21 23:16:12.930366+00	2022-09-27 14:09:32.602323+00	f	f	t	f	9	2
361	pbkdf2_sha256$320000$qVJm9w4paaHtIcXAgPRvaX$iDMkfL5kb0orVLMBIfkNHk0wA1DsRtG14nm9obWI7Bo=	Duvan Alexis	Carvajalino Ramos	dcarvajalino@unab.edu.co	dcarvajalino	73181747	N/a	t	t	f	2022-09-21 23:15:59.070396+00	2022-09-27 02:06:08.727031+00	f	f	t	f	9	2
382	pbkdf2_sha256$320000$CudExvpPmT0Jpqn6sBpMxB$8jpVb54rznWJYl3AJHWv0BxaxSbqcDIOtut3kR2Jww0=	Leonardo Esteban	Pacheco Sandoval	lpacheco560@unab.edu.co	lpacheco560	13749395	N/a	t	t	f	2022-09-21 23:16:09.197291+00	2022-10-06 15:14:28.114623+00	f	f	t	f	5	2
386	pbkdf2_sha256$320000$30GIu2eNX4nC6t9twwfyJq$Dms+7q6me2y9wsYsEbQmwseiNgZYPlUgES7VUrIkAoU=	Luis Sebastian	Mendoza Castellanos	lmendoza630@unab.edu.co	lmendoza630	13742953	N/a	t	t	f	2022-09-21 23:16:11.06601+00	2022-10-19 13:21:54.239201+00	f	f	t	f	5	2
351	pbkdf2_sha256$320000$DY4OmVczAnlX3O8zCM08ZB$7l8RcyzKbMqUKv8Zn1PqTMAQx8Q759xDwM5AyeP9lVs=	Adolfo	Segura  Moya	asegura@unab.edu.co	asegura	91299355	N/a	t	t	f	2022-09-21 23:15:54.251175+00	2022-10-06 21:17:36.115885+00	f	f	t	f	9	2
391	pbkdf2_sha256$320000$daVgJyNGDGTtSy41M3FaSB$jXTBS9IFbyHJKF5gLyghEzjHetJy/Tl6xxgveq8H488=	Oscar Mauricio	Gelvez Lizarazo	ogelvez437@unab.edu.co	ogelvez437	1098657251	N/a	t	t	f	2022-09-21 23:16:13.400642+00	2022-10-06 19:10:32.666083+00	f	f	t	f	3	2
367	pbkdf2_sha256$320000$Ji7bXm41DsMut07HH5IU0V$OAqEMEGGPuvoIiShw7vaAUtcr9w4zEDXDyVT9Pcy6kE=	Gerly Carolina	Ariza Zabala	gariza@unab.edu.co	gariza	0	N/a	t	t	f	2022-09-21 23:16:01.883627+00	2022-09-28 12:40:15.998557+00	f	f	t	f	4	2
396	pbkdf2_sha256$320000$2h25MzksRygLCcZrthuZje$FTJkR08L4wFAVWn/AfXumSCpMeuFkTKzeTmzwWhxENk=	Sergio Andres	Ardila G├│mez	sardila180@unab.edu.co	sardila180	1098680785	N/a	t	t	f	2022-09-21 23:16:15.816044+00	2022-10-06 19:39:09.948108+00	f	f	t	f	8	2
405	pbkdf2_sha256$320000$T5DzaKIs8UxZckYgkWZ9lA$q/zRb/DUz4paYlppj5vrjEiTZaTaoKnvaLQ/c2PmISM=	Wilmer Andrey	C├íceres Carvajal	wcaceres84@unab.edu.co	wcaceres84	0	NA	t	f	f	2022-09-28 22:18:07.969689+00	2022-09-28 22:19:47.61166+00	f	f	t	f	5	2
407	pbkdf2_sha256$320000$roVpeNQ0LJLAE19YcLQMpt$dI+MNPe//oTzcN+XCOLB45CFLv0MCLTiGpn2XnX7OAg=	Alejandra	Palomino Rinc├│n	apalomino6@udi.edu.co	apalomino6	0	NA	t	f	f	2022-09-29 17:14:22.775799+00	2022-09-29 17:15:27.196479+00	f	f	t	f	7	6
408	pbkdf2_sha256$320000$DCQHfMvkkDm6hdhYPm4DUA$k1skI5+YOI+xCgo8DFNHy4xkuaLJI68IhmTWccdSNRs=	Carlos Daniel	Arauz Sanjuan	carauz1@udi.edu.co	carauz1	0	NA	t	f	f	2022-09-29 17:16:34.416122+00	2022-09-29 17:17:30.96474+00	f	f	t	f	7	6
409	pbkdf2_sha256$320000$VUBh6RkkSKrDjjflkjQNcG$leuWYt/ZEYjBQjmkzTmbU/3Rdf7Q9MpZ972Px+iiBa0=	Johan Sebasti├ín	Barajas Carrillo	jbarajas4@udi.edu.co	jbarajas4	0	NA	t	f	f	2022-09-29 17:18:05.720786+00	2022-09-29 17:18:52.222052+00	f	f	t	f	7	6
410	pbkdf2_sha256$320000$ksVXp9VgnS8D57FT3ARSJG$+lXmbiWxZ2O8ew+F+X0N099TxNRpYbgeY9yXgdDA9HU=	Yojhan Ricardo	Sandoval Ram├¡rez	ysandoval2@udi.edu.co	ysandoval2@	0	NA	t	f	f	2022-09-29 17:19:19.396226+00	2022-09-29 17:20:12.847392+00	f	f	t	f	7	6
360	pbkdf2_sha256$320000$xHmoUVuTdueSivblwK6KWl$ACCV+rm80toi0MikO4bQyfiHiJNGts4wOfYdHeB++6o=	Claudia Janeth	Ramirez Beltr├ín	cramirez@unab.edu.co	cramirez	63324800	N/a	t	t	f	2022-09-21 23:15:58.465271+00	2022-10-06 19:41:06.967611+00	f	f	t	f	9	2
413	pbkdf2_sha256$320000$3ofhPeag9oDnjQEUM9Wkgk$R9ACWsWeC2AjtgivnEt5LUmKWCQ5LKqmNeeDP6FM4ts=	Eduardo	Carrillo	eduardo.carrillo@unab.edu.co	eduardo.carrillo	0	NA	t	t	f	2022-09-30 15:15:51.645693+00	2022-09-30 15:33:37.801182+00	f	f	t	f	7	2
416	pbkdf2_sha256$320000$lk4HCPTeaeRfY9EkvRCv1y$cDVVeU7kPbC6/FEYuq6Uk2VIZSfLXHfnl+BqGhxZPYw=	Mar├¡a Alexandra	Espinosa C.	mespinosa3@unab.edu.co	mespinosa3	63533649	U00043226	t	f	f	2022-10-05 23:47:15.911286+00	2022-10-06 05:50:12.684947+00	f	f	t	f	4	2
411	pbkdf2_sha256$320000$PkKwqwXeFgrmet96RusJZF$HAB8IzLt06l4Txg8yZAzzTjf5k05tokdb685a7ezatQ=	YOLANDA	SEP├ÜLVEDA MUJICA	ysepulveda1@udi.edu.co	ysepulveda1	0	NA	t	f	t	2022-09-29 17:20:40.533913+00	2022-10-04 21:33:42.821458+00	f	f	t	f	7	6
419	pbkdf2_sha256$320000$zDVJLGixjy3zC94vCO3KEu$SkbJRO1NDvNZNP+ZyKjJbelre9ASmAyKvvQzJe4DQrM=	luchito	Mora	edwinblanco316@gmail.com	edwinblanco316	213123	U02123123	t	f	f	2022-11-20 06:15:34.133079+00	2022-11-20 06:16:29.665357+00	f	f	t	f	4	2
1	pbkdf2_sha256$320000$DUIVmeLDiXyyXuRiywl5e5$TDEhUHNJWkRUVsuJPJSkDkpQQJ4OhmICXdEh02SV2zY=	Edwin	Blanco Guerrero	eblanco265@unab.edu.co	eblanco265	0	U00122808	t	t	t	2022-08-02 08:11:16.891327+00	2022-12-05 00:16:43.085084+00	t	t	t	t	1	2
412	pbkdf2_sha256$320000$c13zKv7qL5v28RIltcC11v$Ns5GHjQVgJR0MtdlxTqjPJLGK1+cclwufJyF/0xfaaM=	Fabio	Gomez	fgomez45@unab.edu.co	fgomez45	0	Na	t	t	f	2022-09-29 22:32:27.071607+00	2022-10-06 15:54:04.437956+00	f	f	t	f	7	2
403	pbkdf2_sha256$320000$rrA9oq4vDKIsN08wTSFvu3$m6Yltq+U/IJr6yQqycfUuV2rdjoDESdfeGIFB2bhnBg=	Dudbil Olvasada	Pabon Ria├▒o	dpabon180@unab.edu.co	dpabon180	0	NA	t	t	f	2022-09-23 14:25:42.694739+00	2022-10-06 16:47:40.38279+00	f	f	t	f	4	2
417	pbkdf2_sha256$320000$intn2VK9FrEAGEKr3jyde4$0ZzI0SJwJ15J/RZc9AoXaSKgmsvB+7xqDlZwL5D1p1E=	EUDREY	REYES SILVA	ereyes@unab.edu.co	ereyes	37548698	U00018492	t	f	f	2022-10-06 16:59:15.361067+00	2022-10-06 16:59:59.204856+00	f	f	t	f	4	2
392	pbkdf2_sha256$320000$az9gymQQ6MAXS3FPKGJD3r$i/ocKjDDYkXbryAXcHPElrodOMWuxI4sR7gRJJQSEQI=	Oscar Eduardo	Rueda S├ínchez	orueda741@unab.edu.co	orueda741	91490984	N/a	t	t	f	2022-09-21 23:16:13.893165+00	2022-10-06 19:35:57.612039+00	f	f	t	f	8	2
414	pbkdf2_sha256$320000$oaObI0pEldvjBKhILaZFei$/erBVuppq0p0bPuEelK4cryOM+5K9H93QbJ/etLv0b8=	GLORIA ESPERANZA	BUENO SANDOVAL	gbueno103@unab.edu.co	gbueno103	0	Na	t	t	f	2022-10-05 22:20:24.122097+00	2022-10-06 19:37:14.029093+00	f	f	t	f	9	2
415	pbkdf2_sha256$320000$pK2H7p0LdefpNV42hQ98Ho$dTkDXYKFwys0DjNRTjj3By6gZVKARaYvR+7xaS8jNHk=	TATIANA CONSTANZA	GUARIN CORREDOR	tguarin23@unab.edu.co	tguarin23	0	Na	t	t	f	2022-10-05 22:56:09.143221+00	2022-10-06 21:50:18.750336+00	f	f	t	f	9	2
418	pbkdf2_sha256$320000$Vi6IntlsN8gpLDPvvsmGcC$fy125XCZcOGz98ArUYja98nzwrB5JihDDfieOMzFL+A=	Luis Gerardo	Alferez	lalferez@unab.edu.co	lalferez	0	NA	t	t	f	2022-10-06 21:36:47.682367+00	2022-10-06 21:52:30.159384+00	f	f	t	f	1	2
\.


--
-- Name: admin_honeypot_loginattempt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.admin_honeypot_loginattempt_id_seq', 1, false);


--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.asignacion_evaluador_asignacionevaluacion_evaluadores_id_seq', 133, true);


--
-- Name: asignacion_evaluador_asignacionevaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.asignacion_evaluador_asignacionevaluacion_id_seq', 50, true);


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_eva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.asignacion_evaluador_asignacionevaluacioninngeniatec_eva_id_seq', 150, true);


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.asignacion_evaluador_asignacionevaluacioninngeniatec_id_seq', 82, true);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemillero_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq1', 23, true);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemillero_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.asignacion_evaluador_historiacambiosasignacionsemillero_id_seq2', 22, true);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.asignacion_evaluador_historiacambiosasignacionsemilleros_id_seq', 13, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 136, true);


--
-- Name: carrera_app_programa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.carrera_app_programa_id_seq', 16, true);


--
-- Name: carrera_app_universidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.carrera_app_universidad_id_seq', 11, true);


--
-- Name: config_inngeniatec_app_configpaginainngeniatec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.config_inngeniatec_app_configpaginainngeniatec_id_seq', 1, true);


--
-- Name: config_inngeniatec_app_fechainngeniatec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.config_inngeniatec_app_fechainngeniatec_id_seq', 1, false);


--
-- Name: config_semilleros_app_configpaginasemilleros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.config_semilleros_app_configpaginasemilleros_id_seq', 1, true);


--
-- Name: config_semilleros_app_fechasemilleros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.config_semilleros_app_fechasemilleros_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 808, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 34, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 80, true);


--
-- Name: dynamic_models_fieldschema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.dynamic_models_fieldschema_id_seq', 1, false);


--
-- Name: dynamic_models_modelschema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.dynamic_models_modelschema_id_seq', 1, false);


--
-- Name: evaluaciones_orales_activacioncalificacionoral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_orales_activacioncalificacionoral_id_seq', 1, true);


--
-- Name: evaluaciones_orales_calificacionfinalproyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_orales_calificacionfinalproyecto_id_seq', 1, false);


--
-- Name: evaluaciones_orales_evaluacionoral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_orales_evaluacionoral_id_seq', 59, true);


--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeni_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_preseleccion_activacioncalificacioninngeni_id_seq1', 1, true);


--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngenia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_preseleccion_activacioncalificacioninngenia_id_seq', 1, true);


--
-- Name: evaluaciones_preseleccion_activacioncalificacionpreselec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_preseleccion_activacioncalificacionpreselec_id_seq', 1, true);


--
-- Name: evaluaciones_preseleccion_evaluacionpreseleccion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_preseleccion_evaluacionpreseleccion_id_seq', 79, true);


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_preseleccion_valoracionproyectoingeniatec_id_seq', 111, true);


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatecpr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.evaluaciones_preseleccion_valoracionproyectoingeniatecpr_id_seq', 72, true);


--
-- Name: proyectos_app_activacionconvocatoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_activacionconvocatoria_id_seq', 1, true);


--
-- Name: proyectos_app_activacionconvocatoriainngeniatec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_activacionconvocatoriainngeniatec_id_seq', 1, true);


--
-- Name: proyectos_app_periodo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_periodo_id_seq', 3, true);


--
-- Name: proyectos_app_proyecto_autores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_proyecto_autores_id_seq', 179, true);


--
-- Name: proyectos_app_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_proyecto_id_seq', 100, true);


--
-- Name: proyectos_app_proyecto_tutores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_proyecto_tutores_id_seq', 100, true);


--
-- Name: proyectos_app_proyectoinngeniatec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_proyectoinngeniatec_id_seq', 421, true);


--
-- Name: proyectos_app_proyectoinngeniatec_integrantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_proyectoinngeniatec_integrantes_id_seq', 1, true);


--
-- Name: proyectos_app_proyectoinngeniatec_tutores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.proyectos_app_proyectoinngeniatec_tutores_id_seq', 1, true);


--
-- Name: semillero_app_semillero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.semillero_app_semillero_id_seq', 59, true);


--
-- Name: tematica_app_tematica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.tematica_app_tematica_id_seq', 12, true);


--
-- Name: usuarios_app_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hgmenwrwkjrpsu
--

SELECT pg_catalog.setval('public.usuarios_app_usuario_id_seq', 419, true);


--
-- Name: admin_honeypot_loginattempt admin_honeypot_loginattempt_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.admin_honeypot_loginattempt
    ADD CONSTRAINT admin_honeypot_loginattempt_pkey PRIMARY KEY (id);


--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores asignacion_evaluador_asi_asignacionevaluacion_id__a4615697_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacion_evaluadores
    ADD CONSTRAINT asignacion_evaluador_asi_asignacionevaluacion_id__a4615697_uniq UNIQUE (asignacionevaluacion_id, usuario_id);


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 asignacion_evaluador_asi_asignacionevaluacioninng_299fc751_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515
    ADD CONSTRAINT asignacion_evaluador_asi_asignacionevaluacioninng_299fc751_uniq UNIQUE (asignacionevaluacioninngeniatec_id, usuario_id);


--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores asignacion_evaluador_asignacionevaluacion_evaluadores_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacion_evaluadores
    ADD CONSTRAINT asignacion_evaluador_asignacionevaluacion_evaluadores_pkey PRIMARY KEY (id);


--
-- Name: asignacion_evaluador_asignacionevaluacion asignacion_evaluador_asignacionevaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacion
    ADD CONSTRAINT asignacion_evaluador_asignacionevaluacion_pkey PRIMARY KEY (id);


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 asignacion_evaluador_asignacionevaluacioninngeniatec_evalu_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515
    ADD CONSTRAINT asignacion_evaluador_asignacionevaluacioninngeniatec_evalu_pkey PRIMARY KEY (id);


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec asignacion_evaluador_asignacionevaluacioninngeniatec_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacioninngeniatec
    ADD CONSTRAINT asignacion_evaluador_asignacionevaluacioninngeniatec_pkey PRIMARY KEY (id);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 asignacion_evaluador_his_historiacambiosasignacio_68760e5a_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048
    ADD CONSTRAINT asignacion_evaluador_his_historiacambiosasignacio_68760e5a_uniq UNIQUE (historiacambiosasignacionsemilleros_id, usuario_id);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 asignacion_evaluador_his_historiacambiosasignacio_a41bccc5_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1
    ADD CONSTRAINT asignacion_evaluador_his_historiacambiosasignacio_a41bccc5_uniq UNIQUE (historiacambiosasignacionsemilleros_id, usuario_id);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 asignacion_evaluador_historiacambiosasignacionsemilleros__pkey1; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048
    ADD CONSTRAINT asignacion_evaluador_historiacambiosasignacionsemilleros__pkey1 PRIMARY KEY (id);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros asignacion_evaluador_historiacambiosasignacionsemilleros_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros
    ADD CONSTRAINT asignacion_evaluador_historiacambiosasignacionsemilleros_pkey PRIMARY KEY (id);


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 asignacion_evaluador_historiacambiosasignacionsemilleros_v_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1
    ADD CONSTRAINT asignacion_evaluador_historiacambiosasignacionsemilleros_v_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: carrera_app_programa carrera_app_programa_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.carrera_app_programa
    ADD CONSTRAINT carrera_app_programa_pkey PRIMARY KEY (id);


--
-- Name: carrera_app_universidad carrera_app_universidad_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.carrera_app_universidad
    ADD CONSTRAINT carrera_app_universidad_pkey PRIMARY KEY (id);


--
-- Name: config_inngeniatec_app_configpaginainngeniatec config_inngeniatec_app_configpaginainngeniatec_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.config_inngeniatec_app_configpaginainngeniatec
    ADD CONSTRAINT config_inngeniatec_app_configpaginainngeniatec_pkey PRIMARY KEY (id);


--
-- Name: config_inngeniatec_app_fechainngeniatec config_inngeniatec_app_fechainngeniatec_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.config_inngeniatec_app_fechainngeniatec
    ADD CONSTRAINT config_inngeniatec_app_fechainngeniatec_pkey PRIMARY KEY (id);


--
-- Name: config_semilleros_app_configpaginasemilleros config_semilleros_app_configpaginasemilleros_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.config_semilleros_app_configpaginasemilleros
    ADD CONSTRAINT config_semilleros_app_configpaginasemilleros_pkey PRIMARY KEY (id);


--
-- Name: config_semilleros_app_fechasemilleros config_semilleros_app_fechasemilleros_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.config_semilleros_app_fechasemilleros
    ADD CONSTRAINT config_semilleros_app_fechasemilleros_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: dynamic_models_fieldschema dynamic_models_fieldschema_name_model_schema_id_4aa32e03_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.dynamic_models_fieldschema
    ADD CONSTRAINT dynamic_models_fieldschema_name_model_schema_id_4aa32e03_uniq UNIQUE (name, model_schema_id);


--
-- Name: dynamic_models_fieldschema dynamic_models_fieldschema_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.dynamic_models_fieldschema
    ADD CONSTRAINT dynamic_models_fieldschema_pkey PRIMARY KEY (id);


--
-- Name: dynamic_models_modelschema dynamic_models_modelschema_name_key; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.dynamic_models_modelschema
    ADD CONSTRAINT dynamic_models_modelschema_name_key UNIQUE (name);


--
-- Name: dynamic_models_modelschema dynamic_models_modelschema_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.dynamic_models_modelschema
    ADD CONSTRAINT dynamic_models_modelschema_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_orales_activacioncalificacionoral evaluaciones_orales_activacioncalificacionoral_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_activacioncalificacionoral
    ADD CONSTRAINT evaluaciones_orales_activacioncalificacionoral_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_orales_calificacionfinalproyecto evaluaciones_orales_calificacionfinalproyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_calificacionfinalproyecto
    ADD CONSTRAINT evaluaciones_orales_calificacionfinalproyecto_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_orales_evaluacionoral evaluaciones_orales_evaluacionoral_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_evaluacionoral
    ADD CONSTRAINT evaluaciones_orales_evaluacionoral_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeniateca306 evaluaciones_preseleccion_activacioncalificacioninngeniat_pkey1; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_activacioncalificacioninngeniateca306
    ADD CONSTRAINT evaluaciones_preseleccion_activacioncalificacioninngeniat_pkey1 PRIMARY KEY (id);


--
-- Name: evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1 evaluaciones_preseleccion_activacioncalificacioninngeniate_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_activacioncalificacioninngeniatec71e1
    ADD CONSTRAINT evaluaciones_preseleccion_activacioncalificacioninngeniate_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_preseleccion_activacioncalificacionpreseleccion evaluaciones_preseleccion_activacioncalificacionpreselecci_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_activacioncalificacionpreseleccion
    ADD CONSTRAINT evaluaciones_preseleccion_activacioncalificacionpreselecci_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_preseleccion_evaluacionpreseleccion evaluaciones_preseleccion_evaluacionpreseleccion_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_evaluacionpreseleccion
    ADD CONSTRAINT evaluaciones_preseleccion_evaluacionpreseleccion_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatec evaluaciones_preseleccion_valoracionproyectoingeniatec_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_valoracionproyectoingeniatec
    ADD CONSTRAINT evaluaciones_preseleccion_valoracionproyectoingeniatec_pkey PRIMARY KEY (id);


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b evaluaciones_preseleccion_valoracionproyectoingeniatecpres_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b
    ADD CONSTRAINT evaluaciones_preseleccion_valoracionproyectoingeniatecpres_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_activacionconvocatoria proyectos_app_activacionconvocatoria_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_activacionconvocatoria
    ADD CONSTRAINT proyectos_app_activacionconvocatoria_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_activacionconvocatoriainngeniatec proyectos_app_activacionconvocatoriainngeniatec_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_activacionconvocatoriainngeniatec
    ADD CONSTRAINT proyectos_app_activacionconvocatoriainngeniatec_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_periodo proyectos_app_periodo_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_periodo
    ADD CONSTRAINT proyectos_app_periodo_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_periodo proyectos_app_periodo_slug_key; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_periodo
    ADD CONSTRAINT proyectos_app_periodo_slug_key UNIQUE (slug);


--
-- Name: proyectos_app_proyecto_autores proyectos_app_proyecto_a_proyecto_id_usuario_id_4d46ca0f_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_autores
    ADD CONSTRAINT proyectos_app_proyecto_a_proyecto_id_usuario_id_4d46ca0f_uniq UNIQUE (proyecto_id, usuario_id);


--
-- Name: proyectos_app_proyecto_autores proyectos_app_proyecto_autores_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_autores
    ADD CONSTRAINT proyectos_app_proyecto_autores_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_proyecto proyectos_app_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto
    ADD CONSTRAINT proyectos_app_proyecto_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_proyecto_tutores proyectos_app_proyecto_t_proyecto_id_usuario_id_9a601d43_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_tutores
    ADD CONSTRAINT proyectos_app_proyecto_t_proyecto_id_usuario_id_9a601d43_uniq UNIQUE (proyecto_id, usuario_id);


--
-- Name: proyectos_app_proyecto_tutores proyectos_app_proyecto_tutores_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_tutores
    ADD CONSTRAINT proyectos_app_proyecto_tutores_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_proyectoinngeniatec_integrantes proyectos_app_proyectoin_proyectoinngeniatec_id_u_67badf92_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_integrantes
    ADD CONSTRAINT proyectos_app_proyectoin_proyectoinngeniatec_id_u_67badf92_uniq UNIQUE (proyectoinngeniatec_id, usuario_id);


--
-- Name: proyectos_app_proyectoinngeniatec_tutores proyectos_app_proyectoin_proyectoinngeniatec_id_u_ebebab8a_uniq; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_tutores
    ADD CONSTRAINT proyectos_app_proyectoin_proyectoinngeniatec_id_u_ebebab8a_uniq UNIQUE (proyectoinngeniatec_id, usuario_id);


--
-- Name: proyectos_app_proyectoinngeniatec_integrantes proyectos_app_proyectoinngeniatec_integrantes_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_integrantes
    ADD CONSTRAINT proyectos_app_proyectoinngeniatec_integrantes_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_proyectoinngeniatec proyectos_app_proyectoinngeniatec_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec
    ADD CONSTRAINT proyectos_app_proyectoinngeniatec_pkey PRIMARY KEY (id);


--
-- Name: proyectos_app_proyectoinngeniatec_tutores proyectos_app_proyectoinngeniatec_tutores_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_tutores
    ADD CONSTRAINT proyectos_app_proyectoinngeniatec_tutores_pkey PRIMARY KEY (id);


--
-- Name: semillero_app_semillero semillero_app_semillero_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.semillero_app_semillero
    ADD CONSTRAINT semillero_app_semillero_pkey PRIMARY KEY (id);


--
-- Name: tematica_app_tematica tematica_app_tematica_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.tematica_app_tematica
    ADD CONSTRAINT tematica_app_tematica_pkey PRIMARY KEY (id);


--
-- Name: usuarios_app_usuario usuarios_app_usuario_correo_institicional_key; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.usuarios_app_usuario
    ADD CONSTRAINT usuarios_app_usuario_correo_institicional_key UNIQUE (correo_institicional);


--
-- Name: usuarios_app_usuario usuarios_app_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.usuarios_app_usuario
    ADD CONSTRAINT usuarios_app_usuario_pkey PRIMARY KEY (id);


--
-- Name: usuarios_app_usuario usuarios_app_usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.usuarios_app_usuario
    ADD CONSTRAINT usuarios_app_usuario_username_key UNIQUE (username);


--
-- Name: asignacion_evaluador_asign_asignacionevaluacion_id_3083e40c; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_asign_asignacionevaluacion_id_3083e40c ON public.asignacion_evaluador_asignacionevaluacion_evaluadores USING btree (asignacionevaluacion_id);


--
-- Name: asignacion_evaluador_asign_asignacionevaluacioninngen_36225f31; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_asign_asignacionevaluacioninngen_36225f31 ON public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 USING btree (asignacionevaluacioninngeniatec_id);


--
-- Name: asignacion_evaluador_asign_proyecto_id_fcfeb0ab; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_asign_proyecto_id_fcfeb0ab ON public.asignacion_evaluador_asignacionevaluacioninngeniatec USING btree (proyecto_id);


--
-- Name: asignacion_evaluador_asign_usuario_id_5122b2fa; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_asign_usuario_id_5122b2fa ON public.asignacion_evaluador_asignacionevaluacion_evaluadores USING btree (usuario_id);


--
-- Name: asignacion_evaluador_asign_usuario_id_7bff33c8; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_asign_usuario_id_7bff33c8 ON public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 USING btree (usuario_id);


--
-- Name: asignacion_evaluador_asignacionevaluacion_proyecto_id_f5a6f288; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_asignacionevaluacion_proyecto_id_f5a6f288 ON public.asignacion_evaluador_asignacionevaluacion USING btree (proyecto_id);


--
-- Name: asignacion_evaluador_histo_historiacambiosasignacions_685bb750; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_histo_historiacambiosasignacions_685bb750 ON public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 USING btree (historiacambiosasignacionsemilleros_id);


--
-- Name: asignacion_evaluador_histo_historiacambiosasignacions_fd18a486; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_histo_historiacambiosasignacions_fd18a486 ON public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 USING btree (historiacambiosasignacionsemilleros_id);


--
-- Name: asignacion_evaluador_histo_proyecto_id_fec13826; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_histo_proyecto_id_fec13826 ON public.asignacion_evaluador_historiacambiosasignacionsemilleros USING btree (proyecto_id);


--
-- Name: asignacion_evaluador_histo_usuario_id_94489c7f; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_histo_usuario_id_94489c7f ON public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 USING btree (usuario_id);


--
-- Name: asignacion_evaluador_histo_usuario_id_fcc55e01; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX asignacion_evaluador_histo_usuario_id_fcc55e01 ON public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 USING btree (usuario_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: dynamic_models_fieldschema_model_schema_id_f513910e; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX dynamic_models_fieldschema_model_schema_id_f513910e ON public.dynamic_models_fieldschema USING btree (model_schema_id);


--
-- Name: dynamic_models_modelschema_name_f0dfa24b_like; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX dynamic_models_modelschema_name_f0dfa24b_like ON public.dynamic_models_modelschema USING btree (name varchar_pattern_ops);


--
-- Name: evaluaciones_orales_califi_evaluacion_oral_id_a8a598e7; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_orales_califi_evaluacion_oral_id_a8a598e7 ON public.evaluaciones_orales_calificacionfinalproyecto USING btree (evaluacion_oral_id);


--
-- Name: evaluaciones_orales_califi_evaluacion_preseleccion_id_0e747fdc; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_orales_califi_evaluacion_preseleccion_id_0e747fdc ON public.evaluaciones_orales_calificacionfinalproyecto USING btree (evaluacion_preseleccion_id);


--
-- Name: evaluaciones_orales_evaluacionoral_evaluador_id_a7e70ed2; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_orales_evaluacionoral_evaluador_id_a7e70ed2 ON public.evaluaciones_orales_evaluacionoral USING btree (evaluador_id);


--
-- Name: evaluaciones_orales_evaluacionoral_proyecto_id_c8f26618; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_orales_evaluacionoral_proyecto_id_c8f26618 ON public.evaluaciones_orales_evaluacionoral USING btree (proyecto_id);


--
-- Name: evaluaciones_preseleccion__evaluador_id_906d6853; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_preseleccion__evaluador_id_906d6853 ON public.evaluaciones_preseleccion_valoracionproyectoingeniatec USING btree (evaluador_id);


--
-- Name: evaluaciones_preseleccion__evaluador_id_c240b4a3; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_preseleccion__evaluador_id_c240b4a3 ON public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b USING btree (evaluador_id);


--
-- Name: evaluaciones_preseleccion__evaluador_id_dc37f5ef; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_preseleccion__evaluador_id_dc37f5ef ON public.evaluaciones_preseleccion_evaluacionpreseleccion USING btree (evaluador_id);


--
-- Name: evaluaciones_preseleccion__proyecto_id_b24014ee; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_preseleccion__proyecto_id_b24014ee ON public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b USING btree (proyecto_id);


--
-- Name: evaluaciones_preseleccion__proyecto_id_c50bb10f; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_preseleccion__proyecto_id_c50bb10f ON public.evaluaciones_preseleccion_valoracionproyectoingeniatec USING btree (proyecto_id);


--
-- Name: evaluaciones_preseleccion__proyecto_id_d7b83bde; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX evaluaciones_preseleccion__proyecto_id_d7b83bde ON public.evaluaciones_preseleccion_evaluacionpreseleccion USING btree (proyecto_id);


--
-- Name: proyectos_app_periodo_slug_2d97b799_like; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_periodo_slug_2d97b799_like ON public.proyectos_app_periodo USING btree (slug varchar_pattern_ops);


--
-- Name: proyectos_app_proyecto_autores_proyecto_id_14f616ef; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyecto_autores_proyecto_id_14f616ef ON public.proyectos_app_proyecto_autores USING btree (proyecto_id);


--
-- Name: proyectos_app_proyecto_autores_usuario_id_21c6fb55; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyecto_autores_usuario_id_21c6fb55 ON public.proyectos_app_proyecto_autores USING btree (usuario_id);


--
-- Name: proyectos_app_proyecto_periodo_id_3ddb40e3; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyecto_periodo_id_3ddb40e3 ON public.proyectos_app_proyecto USING btree (periodo_id);


--
-- Name: proyectos_app_proyecto_semillero_id_91e67b89; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyecto_semillero_id_91e67b89 ON public.proyectos_app_proyecto USING btree (semillero_id);


--
-- Name: proyectos_app_proyecto_tematica_id_771a1842; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyecto_tematica_id_771a1842 ON public.proyectos_app_proyecto USING btree (tematica_id);


--
-- Name: proyectos_app_proyecto_tutores_proyecto_id_d885dcb8; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyecto_tutores_proyecto_id_d885dcb8 ON public.proyectos_app_proyecto_tutores USING btree (proyecto_id);


--
-- Name: proyectos_app_proyecto_tutores_usuario_id_18b08759; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyecto_tutores_usuario_id_18b08759 ON public.proyectos_app_proyecto_tutores USING btree (usuario_id);


--
-- Name: proyectos_app_proyectoinng_proyectoinngeniatec_id_6e5968fb; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyectoinng_proyectoinngeniatec_id_6e5968fb ON public.proyectos_app_proyectoinngeniatec_tutores USING btree (proyectoinngeniatec_id);


--
-- Name: proyectos_app_proyectoinng_proyectoinngeniatec_id_c82ed8ef; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyectoinng_proyectoinngeniatec_id_c82ed8ef ON public.proyectos_app_proyectoinngeniatec_integrantes USING btree (proyectoinngeniatec_id);


--
-- Name: proyectos_app_proyectoinng_usuario_id_cd66b509; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyectoinng_usuario_id_cd66b509 ON public.proyectos_app_proyectoinngeniatec_integrantes USING btree (usuario_id);


--
-- Name: proyectos_app_proyectoinngeniatec_periodo_id_c85a6b98; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyectoinngeniatec_periodo_id_c85a6b98 ON public.proyectos_app_proyectoinngeniatec USING btree (periodo_id);


--
-- Name: proyectos_app_proyectoinngeniatec_tutores_usuario_id_fa1cc3c0; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX proyectos_app_proyectoinngeniatec_tutores_usuario_id_fa1cc3c0 ON public.proyectos_app_proyectoinngeniatec_tutores USING btree (usuario_id);


--
-- Name: usuarios_app_usuario_correo_institicional_b56e2c0d_like; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX usuarios_app_usuario_correo_institicional_b56e2c0d_like ON public.usuarios_app_usuario USING btree (correo_institicional varchar_pattern_ops);


--
-- Name: usuarios_app_usuario_programa_academico_id_41c54c24; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX usuarios_app_usuario_programa_academico_id_41c54c24 ON public.usuarios_app_usuario USING btree (programa_academico_id);


--
-- Name: usuarios_app_usuario_universidad_id_13c2d780; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX usuarios_app_usuario_universidad_id_13c2d780 ON public.usuarios_app_usuario USING btree (universidad_id);


--
-- Name: usuarios_app_usuario_username_4f42f961_like; Type: INDEX; Schema: public; Owner: hgmenwrwkjrpsu
--

CREATE INDEX usuarios_app_usuario_username_4f42f961_like ON public.usuarios_app_usuario USING btree (username varchar_pattern_ops);


--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores asignacion_evaluador_asignacionevaluacion_3083e40c_fk_asignacio; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacion_evaluadores
    ADD CONSTRAINT asignacion_evaluador_asignacionevaluacion_3083e40c_fk_asignacio FOREIGN KEY (asignacionevaluacion_id) REFERENCES public.asignacion_evaluador_asignacionevaluacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 asignacion_evaluador_asignacionevaluacion_36225f31_fk_asignacio; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515
    ADD CONSTRAINT asignacion_evaluador_asignacionevaluacion_36225f31_fk_asignacio FOREIGN KEY (asignacionevaluacioninngeniatec_id) REFERENCES public.asignacion_evaluador_asignacionevaluacioninngeniatec(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 asignacion_evaluador_historiacambiosasign_685bb750_fk_asignacio; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048
    ADD CONSTRAINT asignacion_evaluador_historiacambiosasign_685bb750_fk_asignacio FOREIGN KEY (historiacambiosasignacionsemilleros_id) REFERENCES public.asignacion_evaluador_historiacambiosasignacionsemilleros(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 asignacion_evaluador_historiacambiosasign_fd18a486_fk_asignacio; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1
    ADD CONSTRAINT asignacion_evaluador_historiacambiosasign_fd18a486_fk_asignacio FOREIGN KEY (historiacambiosasignacionsemilleros_id) REFERENCES public.asignacion_evaluador_historiacambiosasignacionsemilleros(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_asignacionevaluacion asignacion_evaluador_proyecto_id_f5a6f288_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacion
    ADD CONSTRAINT asignacion_evaluador_proyecto_id_f5a6f288_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec asignacion_evaluador_proyecto_id_fcfeb0ab_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacioninngeniatec
    ADD CONSTRAINT asignacion_evaluador_proyecto_id_fcfeb0ab_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyectoinngeniatec(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros asignacion_evaluador_proyecto_id_fec13826_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros
    ADD CONSTRAINT asignacion_evaluador_proyecto_id_fec13826_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_asignacionevaluacion_evaluadores asignacion_evaluador_usuario_id_5122b2fa_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacion_evaluadores
    ADD CONSTRAINT asignacion_evaluador_usuario_id_5122b2fa_fk_usuarios_ FOREIGN KEY (usuario_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515 asignacion_evaluador_usuario_id_7bff33c8_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_asignacionevaluacioninngeniatec_evalua2515
    ADD CONSTRAINT asignacion_evaluador_usuario_id_7bff33c8_fk_usuarios_ FOREIGN KEY (usuario_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1 asignacion_evaluador_usuario_id_94489c7f_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va13f1
    ADD CONSTRAINT asignacion_evaluador_usuario_id_94489c7f_fk_usuarios_ FOREIGN KEY (usuario_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: asignacion_evaluador_historiacambiosasignacionsemilleros_va9048 asignacion_evaluador_usuario_id_fcc55e01_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.asignacion_evaluador_historiacambiosasignacionsemilleros_va9048
    ADD CONSTRAINT asignacion_evaluador_usuario_id_fcc55e01_fk_usuarios_ FOREIGN KEY (usuario_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_usuarios_app_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuarios_app_usuario_id FOREIGN KEY (user_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dynamic_models_fieldschema dynamic_models_field_model_schema_id_f513910e_fk_dynamic_m; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.dynamic_models_fieldschema
    ADD CONSTRAINT dynamic_models_field_model_schema_id_f513910e_fk_dynamic_m FOREIGN KEY (model_schema_id) REFERENCES public.dynamic_models_modelschema(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_orales_calificacionfinalproyecto evaluaciones_orales__evaluacion_oral_id_a8a598e7_fk_evaluacio; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_calificacionfinalproyecto
    ADD CONSTRAINT evaluaciones_orales__evaluacion_oral_id_a8a598e7_fk_evaluacio FOREIGN KEY (evaluacion_oral_id) REFERENCES public.evaluaciones_orales_evaluacionoral(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_orales_calificacionfinalproyecto evaluaciones_orales__evaluacion_preselecc_0e747fdc_fk_evaluacio; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_calificacionfinalproyecto
    ADD CONSTRAINT evaluaciones_orales__evaluacion_preselecc_0e747fdc_fk_evaluacio FOREIGN KEY (evaluacion_preseleccion_id) REFERENCES public.evaluaciones_preseleccion_evaluacionpreseleccion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_orales_evaluacionoral evaluaciones_orales__evaluador_id_a7e70ed2_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_evaluacionoral
    ADD CONSTRAINT evaluaciones_orales__evaluador_id_a7e70ed2_fk_usuarios_ FOREIGN KEY (evaluador_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_orales_evaluacionoral evaluaciones_orales__proyecto_id_c8f26618_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_orales_evaluacionoral
    ADD CONSTRAINT evaluaciones_orales__proyecto_id_c8f26618_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatec evaluaciones_presele_evaluador_id_906d6853_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_valoracionproyectoingeniatec
    ADD CONSTRAINT evaluaciones_presele_evaluador_id_906d6853_fk_usuarios_ FOREIGN KEY (evaluador_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b evaluaciones_presele_evaluador_id_c240b4a3_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b
    ADD CONSTRAINT evaluaciones_presele_evaluador_id_c240b4a3_fk_usuarios_ FOREIGN KEY (evaluador_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_preseleccion_evaluacionpreseleccion evaluaciones_presele_evaluador_id_dc37f5ef_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_evaluacionpreseleccion
    ADD CONSTRAINT evaluaciones_presele_evaluador_id_dc37f5ef_fk_usuarios_ FOREIGN KEY (evaluador_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b evaluaciones_presele_proyecto_id_b24014ee_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_valoracionproyectoingeniatecprese844b
    ADD CONSTRAINT evaluaciones_presele_proyecto_id_b24014ee_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyectoinngeniatec(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_preseleccion_valoracionproyectoingeniatec evaluaciones_presele_proyecto_id_c50bb10f_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_valoracionproyectoingeniatec
    ADD CONSTRAINT evaluaciones_presele_proyecto_id_c50bb10f_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyectoinngeniatec(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: evaluaciones_preseleccion_evaluacionpreseleccion evaluaciones_presele_proyecto_id_d7b83bde_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.evaluaciones_preseleccion_evaluacionpreseleccion
    ADD CONSTRAINT evaluaciones_presele_proyecto_id_d7b83bde_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyecto proyectos_app_proyec_periodo_id_3ddb40e3_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto
    ADD CONSTRAINT proyectos_app_proyec_periodo_id_3ddb40e3_fk_proyectos FOREIGN KEY (periodo_id) REFERENCES public.proyectos_app_periodo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyectoinngeniatec proyectos_app_proyec_periodo_id_c85a6b98_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec
    ADD CONSTRAINT proyectos_app_proyec_periodo_id_c85a6b98_fk_proyectos FOREIGN KEY (periodo_id) REFERENCES public.proyectos_app_periodo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyecto_autores proyectos_app_proyec_proyecto_id_14f616ef_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_autores
    ADD CONSTRAINT proyectos_app_proyec_proyecto_id_14f616ef_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyecto_tutores proyectos_app_proyec_proyecto_id_d885dcb8_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_tutores
    ADD CONSTRAINT proyectos_app_proyec_proyecto_id_d885dcb8_fk_proyectos FOREIGN KEY (proyecto_id) REFERENCES public.proyectos_app_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyectoinngeniatec_tutores proyectos_app_proyec_proyectoinngeniatec__6e5968fb_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_tutores
    ADD CONSTRAINT proyectos_app_proyec_proyectoinngeniatec__6e5968fb_fk_proyectos FOREIGN KEY (proyectoinngeniatec_id) REFERENCES public.proyectos_app_proyectoinngeniatec(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyectoinngeniatec_integrantes proyectos_app_proyec_proyectoinngeniatec__c82ed8ef_fk_proyectos; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_integrantes
    ADD CONSTRAINT proyectos_app_proyec_proyectoinngeniatec__c82ed8ef_fk_proyectos FOREIGN KEY (proyectoinngeniatec_id) REFERENCES public.proyectos_app_proyectoinngeniatec(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyecto proyectos_app_proyec_semillero_id_91e67b89_fk_semillero; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto
    ADD CONSTRAINT proyectos_app_proyec_semillero_id_91e67b89_fk_semillero FOREIGN KEY (semillero_id) REFERENCES public.semillero_app_semillero(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyecto proyectos_app_proyec_tematica_id_771a1842_fk_tematica_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto
    ADD CONSTRAINT proyectos_app_proyec_tematica_id_771a1842_fk_tematica_ FOREIGN KEY (tematica_id) REFERENCES public.tematica_app_tematica(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyecto_tutores proyectos_app_proyec_usuario_id_18b08759_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_tutores
    ADD CONSTRAINT proyectos_app_proyec_usuario_id_18b08759_fk_usuarios_ FOREIGN KEY (usuario_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyecto_autores proyectos_app_proyec_usuario_id_21c6fb55_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyecto_autores
    ADD CONSTRAINT proyectos_app_proyec_usuario_id_21c6fb55_fk_usuarios_ FOREIGN KEY (usuario_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyectoinngeniatec_integrantes proyectos_app_proyec_usuario_id_cd66b509_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_integrantes
    ADD CONSTRAINT proyectos_app_proyec_usuario_id_cd66b509_fk_usuarios_ FOREIGN KEY (usuario_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_app_proyectoinngeniatec_tutores proyectos_app_proyec_usuario_id_fa1cc3c0_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.proyectos_app_proyectoinngeniatec_tutores
    ADD CONSTRAINT proyectos_app_proyec_usuario_id_fa1cc3c0_fk_usuarios_ FOREIGN KEY (usuario_id) REFERENCES public.usuarios_app_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: usuarios_app_usuario usuarios_app_usuario_programa_academico_i_41c54c24_fk_carrera_a; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.usuarios_app_usuario
    ADD CONSTRAINT usuarios_app_usuario_programa_academico_i_41c54c24_fk_carrera_a FOREIGN KEY (programa_academico_id) REFERENCES public.carrera_app_programa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: usuarios_app_usuario usuarios_app_usuario_universidad_id_13c2d780_fk_carrera_a; Type: FK CONSTRAINT; Schema: public; Owner: hgmenwrwkjrpsu
--

ALTER TABLE ONLY public.usuarios_app_usuario
    ADD CONSTRAINT usuarios_app_usuario_universidad_id_13c2d780_fk_carrera_a FOREIGN KEY (universidad_id) REFERENCES public.carrera_app_universidad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA heroku_ext; Type: ACL; Schema: -; Owner: ub35df37omk60o
--

GRANT USAGE ON SCHEMA heroku_ext TO hgmenwrwkjrpsu;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: hgmenwrwkjrpsu
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO hgmenwrwkjrpsu;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO hgmenwrwkjrpsu;


--
-- PostgreSQL database dump complete
--

