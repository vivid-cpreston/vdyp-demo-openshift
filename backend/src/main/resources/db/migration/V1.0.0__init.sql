CREATE SCHEMA IF NOT EXISTS java_api;
SET SEARCH_PATH TO java_api;
CREATE SEQUENCE IF NOT EXISTS "user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE;
CREATE SEQUENCE IF NOT EXISTS "user_addresses_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE;

CREATE TABLE "users"
(
    id    INTEGER PRIMARY KEY DEFAULT nextval('user_id_seq'),
    name  VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE "user_addresses"
(
    id       INTEGER PRIMARY KEY DEFAULT nextval('user_addresses_id_seq'),
    street   VARCHAR(50) NOT NULL,
    city     VARCHAR(50) NOT NULL,
    state    VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    user_id  INTEGER     NOT NULL REFERENCES "users" (id) ON DELETE CASCADE
);


delete from USERS where true;

INSERT INTO USERS (NAME, EMAIL)
VALUES ('John', 'John.ipsum@test.com'),
       ('Jane', 'Jane.ipsum@test.com'),
       ('Jack', 'Jack.ipsum@test.com'),
       ('Jill', 'Jill.ipsum@test.com'),
       ('Joe', 'Joe.ipsum@test.com');
