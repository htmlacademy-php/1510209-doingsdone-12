CREATE DATABASE doingsdone
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE UTF8_GENERAL_CI;
  
USE doingsdone;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_reg TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email CHAR(100) NOT NULL UNIQUE,
    name CHAR(50)  NOT NULL,
    password CHAR(50)  NOT NULL
);

CREATE UNIQUE INDEX users_email_unique_index ON users(email);
CREATE INDEX user_name_index ON users(NAME);

CREATE TABLE project (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title CHAR(20)  NOT NULL UNIQUE,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES users(id)
);

CREATE UNIQUE INDEX project_title_unique_index ON project(title);
CREATE INDEX project_id ON project(id);

CREATE TABLE task (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_create TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status TINYINT DEFAULT 0,
    title CHAR(20) NOT NULL,
    file CHAR(100),
    limitation TIMESTAMP,
    author_id INT,
    project_id INT,
    FOREIGN KEY (author_id) REFERENCES users(id),
    FOREIGN KEY (project_id) REFERENCES project(id)
);

CREATE UNIQUE INDEX task_title_unique_index ON task(title);
CREATE INDEX task_status_index ON task(status);



