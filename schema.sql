CREATE DATABASE doingsdone
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE UTF8_GENERAL_CI;
  
USE doingsdone;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_reg TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата регистрации',
    email CHAR(100) NOT NULL UNIQUE COMMENT 'e-mail',
    name CHAR(50)  NOT NULL COMMENT 'Имя',
    password CHAR(50)  NOT NULL COMMENT 'Пароль',
    UNIQUE INDEX users_email_unique_index (email) USING BTREE,
    INDEX user_name_index (name) USING BTREE
);

CREATE TABLE project (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title CHAR(20)  NOT NULL UNIQUE COMMENT 'Название',
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES users(id),
    UNIQUE INDEX project_title_unique_index (title) USING BTREE,
    INDEX project_id (id) USING BTREE
);

CREATE TABLE task (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_create TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
    status TINYINT DEFAULT 0 COMMENT 'Статус',
    title CHAR(20) NOT NULL COMMENT 'Название',
    file CHAR(100) COMMENT 'Файл',
    limitation TIMESTAMP COMMENT 'Срок',
    author_id INT,
    project_id INT,
    FOREIGN KEY (author_id) REFERENCES users(id),
    FOREIGN KEY (project_id) REFERENCES project(id),
    UNIQUE INDEX task_title_unique_index (title) USING BTREE,
    INDEX task_status_index (status) USING BTREE
);





