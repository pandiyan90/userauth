﻿-- Table: public.user_role

-- DROP TABLE public.user_role;

CREATE TABLE public.user_role
(
    user_id integer NOT NULL,
    role_id integer NOT NULL,
    CONSTRAINT role_pk FOREIGN KEY (role_id)
        REFERENCES public.rkk_role (role_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT user_pk FOREIGN KEY (user_id)
        REFERENCES public.rkk_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.user_role
    OWNER to userman;

﻿-- Table: public.rkk_role

-- DROP TABLE public.rkk_role;

CREATE TABLE public.rkk_role
(
    role_id integer NOT NULL DEFAULT nextval('"ROLE_role_id_seq"'::regclass),
    role character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "ROLE_pkey" PRIMARY KEY (role_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.rkk_role
    OWNER to userman;

﻿-- Table: public.user_role

-- DROP TABLE public.user_role;

CREATE TABLE public.user_role
(
    user_id integer NOT NULL,
    role_id integer NOT NULL,
    CONSTRAINT role_pk FOREIGN KEY (role_id)
        REFERENCES public.rkk_role (role_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT user_pk FOREIGN KEY (user_id)
        REFERENCES public.rkk_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.user_role
    OWNER to userman;

﻿CREATE SEQUENCE public."ROLE_role_id_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public."ROLE_role_id_seq"
    OWNER TO userman;

﻿CREATE SEQUENCE public."USER_id_seq"
    INCREMENT 1
    START 3
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public."USER_id_seq"
    OWNER TO userman;