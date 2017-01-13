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

-- task 8i
ALTER TABLE tasks DROP COLUMN completed;

-- task 8ii
ALTER TABLE tasks ADD COLUMN completed_at timestamp NULL DEFAULT NULL;

ALTER TABLE tasks ALTER COLUMN updated_at SET DEFAULT now();

-- 8iv
INSERT INTO tasks VALUES(DEFAULT, 'Study SQL',
 'Complete this exercise', now(), now(), NULL);

-- 8v
INSERT INTO tasks VALUES(DEFAULT, 'Study PostgreSQL',
 'Read all the documentation', now(), now(), NULL);

-- 8vi
SELECT title FROM tasks WHERE completed_at IS NULL;

-- 8vii
UPDATE tasks SET completed_at = now() WHERE title = 'Study SQL';

-- 8viii
SELECT title, description FROM tasks WHERE completed_at IS NULL;

-- 8ix
SELECT * FROM tasks ORDER BY created_at DESC;

-- 8x
INSERT INTO tasks VALUES(DEFAULT, 'mistake 1', 'a test entry', now(), now());

-- 8xi
INSERT INTO tasks VALUES(DEFAULT, 'mistake 2', 'another test entry', now(), now());

-- 8xii
INSERT INTO tasks VALUES(DEFAULT, 'third mistake', 'another test entry', now(), now());

-- 8xiii
SELECT title FROM tasks WHERE title LIKE '%mistake%';

-- 8xiv
DELETE FROM tasks WHERE title = 'mistake 1';

-- 8xv
SELECT title, description FROM tasks WHERE title LIKE '%mistake%';

-- 8xvi
DELETE FROM tasks WHERE title LIKE '%mistake%';

-- 8xvii
SELECT * FROM tasks ORDER BY title ASC;

















\dt;