CREATE DATABASE doingsdone
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE UTF8_GENERAL_CI;
  
USE doingsdone;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_reg TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email CHAR(100) NOT NULL UNIQUE,
    name CHAR(50)  NOT NULL,
    password CHAR(50)  NOT NULL,
    CREATE UNIQUE INDEX users_email_unique_index ON users(email);
    CREATE INDEX user_name_index ON users(name);
);

CREATE TABLE project (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title CHAR(20)  NOT NULL UNIQUE,
    FOREIGN KEY (author) REFERENCES users(id)
    CREATE UNIQUE INDEX project_title_unique_index ON project(title),
    CREATE INDEX project_id ON project(id)
);

CREATE TABLE task (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_create TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status TINYINT DEFAULT 0,
    title CHAR(20) NOT NULL,
    file CHAR(100),
    limitation TIMESTAMP,
    FOREIGN KEY (author) REFERENCES users(id),
    FOREIGN KEY (project) REFERENCES project(id),
    CREATE UNIQUE INDEX t_title_project ON task(title_project ),
    CREATE INDEX task_title_index ON task(title)
);



