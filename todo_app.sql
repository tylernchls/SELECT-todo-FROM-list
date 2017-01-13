\c tylernichols;

DROP USER IF EXISTS MICHAEL;

CREATE USER michael
WITH ENCRYPTED PASSWORD 'stonebreaker';

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;

\c todo_app;

CREATE TABLE tasks(
  id serial primary key,
  title character varying(255),
  description text,
  created_at timestamp,
  updated_at timestamp,
  completed boolean
);

ALTER TABLE tasks DROP COLUMN completed;

ALTER TABLE tasks ADD COLUMN completed_at timestamp NULL DEFAULT NULL;

ALTER TABLE tasks ALTER COLUMN updated_at NOT NULL SET DEFAULT now();

INSERT INTO tasks VALUES(DEFAULT, 'Study SQL', 'Complete this exercise', now(), now(), NULL);

INSERT INTO tasks VALUES(DEFAULT, 'Study PostgreSQL', 'Read all the documentation', now(), now(), NULL);













\dt;