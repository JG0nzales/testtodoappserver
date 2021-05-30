-- CREATE DATABASE authtodo;

-- CREATE TABLE users(
--   user_id uuid DEFAULT uuid_generate_v4(),
--   user_name VARCHAR(255) NOT NULL,
--   user_email VARCHAR(255) NOT NULL UNIQUE,
--   user_password VARCHAR(255) NOT NULL,
--   PRIMARY KEY(user_id)
-- );

-- CREATE TABLE todo(
--   todo_id SERIAL,
--   user_id UUID ,
--   description VARCHAR(255),
--   PRIMARY KEY (todo_id),
--   FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );


CREATE DATABASE authtodolist;

--users

CREATE TABLE users(
  user_id UUID DEFAULT uuid_generate_v4(),
  user_name VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL UNIQUE,
  user_password VARCHAR(255) NOT NULL,
  PRIMARY KEY (user_id)
);

--todos

CREATE TABLE todos(
  todo_id SERIAL,
  user_id UUID,
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (todo_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--fake users data

insert into users (user_name, user_email, user_password) values ('Jacob', 'jacob@gmail.com', 'kthl8822');

--fake todos data

insert into todos (user_id, description) values ('60dc16dd-c7f1-4fde-827a-90c0e101555c', 'clean room');

SELECT u.user_name, t.todo_id, t.description, t.day, t.time, t.date 
FROM todos AS t 
LEFT JOIN users AS u 
ON t.user_id = u.user_id 
WHERE u.user_id = 'c01b7131-d4d7-4453-9843-ace3aaab2184' AND t.day = 'Friday'

-- CREATE OR REPLACE FUNCTION public.total()
--     RETURNS integer
--     LANGUAGE 'plpgsql'
--     VOLATILE
--     PARALLEL UNSAFE
--     COST 100
    
-- AS $BODY$
-- declare
-- total integer;
-- begin
-- select count(*) into total from film;
-- return total;
-- end;
-- $BODY$;