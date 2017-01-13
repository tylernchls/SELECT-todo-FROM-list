\c tylernichols;

DROP USER IF EXISTS MICHAEL;

CREATE USER michael
WITH ENCRYPTED PASSWORD 'stonebreaker';

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;

\c todo_app;

CREATE TABLE tasks(
  id integer primary key,
  title character varying(255),
  description text,
  created_at timestamp(no tz),
  updated_at timestamp(no tz),
  completed boolean
);

\dt;