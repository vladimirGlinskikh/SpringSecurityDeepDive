DROP DATABASE IF EXISTS auth2db;
CREATE DATABASE IF NOT EXISTS auth2db;

use auth2db;

DROP TABLE IF EXISTS clients;
CREATE TABLE clients
(
    id             INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    client_id      VARCHAR(45) NULL,
    secret         VARCHAR(45) NULL,
    authentication VARCHAR(45) NULL
);

DROP TABLE IF EXISTS redirect_url;
CREATE TABLE redirect_url
(
    id        INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    url       VARCHAR(500) NULL,
    client_id INT          NOT NULL
);

DROP TABLE IF EXISTS scopes;
CREATE TABLE scopes
(
    id        INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    scope     VARCHAR(45) NULL,
    client_id INT         NULL
);

DROP TABLE IF EXISTS grand_types;
CREATE TABLE grand_types
(
    id         INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    grand_type VARCHAR(45) NULL,
    client_id  INT         NULL
);

INSERT INTO clients (id, client_id, secret, authentication)
VALUES (1, 'Vladimir', 'secret', 'client_secret_basic');

INSERT INTO grand_types(id, grand_type, client_id)
VALUES (1, 'AUTHORIZATION_CODE', 1),
       (2, 'CLIENT_CREDENTIALS', 1);

INSERT INTO redirect_url(id, url, client_id)
VALUES (1, 'https://vladimir-glinskikh.ru', 1);

INSERT INTO scopes(id, scope, client_id)
VALUES (1, 'OPENID', 1);