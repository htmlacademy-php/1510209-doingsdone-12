CREATE DATABASE doingsdone
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE UTF8_GENERAL_CI;
  
USE doingsdone;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_reg TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email CHAR NOT NULL UNIQUE,
    name CHAR  NOT NULL,
    password CHAR  NOT NULL
);

CREATE UNIQUE INDEX u_email ON users(email);
CREATE INDEX user_index ON users(id, dt_reg, name, password);

CREATE TABLE project (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title CHAR  NOT NULL UNIQUE,
    name_id INT  NOT NULL
);

CREATE UNIQUE INDEX p_title ON project(title);
CREATE INDEX project_index ON project(id, name_id);

CREATE TABLE task (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_create TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status TINYINT DEFAULT 0,
    title CHAR NOT NULL,
    file CHAR,
    limitation TIMESTAMP,
    name_id INT  NOT NULL,
    title_project CHAR  NOT NULL UNIQUE
);

CREATE UNIQUE INDEX t_title_project ON task(title_project );
CREATE INDEX task_index ON task(id, dt_create, status, title, file, limitation, name_id);

