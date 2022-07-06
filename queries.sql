INSERT INTO users (email, name, password) VALUES ('phil13@bk.ru', 'phil', 'secret');
INSERT INTO users (email, name, password) VALUES ('philliusg@gmail.com', 'phillius', 'password13');

INSERT INTO project (title, author_id) VALUES ('Входящие', '1');
INSERT INTO project (title, author_id) VALUES ('Учеба', '1');
INSERT INTO project (title, author_id) VALUES ('Работа', '1');
INSERT INTO project (title, author_id) VALUES ('Домашние дела', '2');
INSERT INTO project (title) VALUES ('Авто');

INSERT INTO task (dt_create, status, title, limitation, author_id, project_id) VALUES (NOW(), '0', 'Собеседование в IT компании', '2022-07-16', '1', '3');
INSERT INTO task (dt_create, status, title, limitation, author_id, project_id) VALUES (NOW(), '0', 'Выполнить тестовое задание', '2022-07-17', '1', '3');
INSERT INTO task (dt_create, status, title, limitation, author_id, project_id) VALUES (NOW(), '0', 'Сделать задание первого раздела', '2022-07-18', '1', '2');
INSERT INTO task (dt_create, status, title, limitation, author_id, project_id) VALUES (NOW(), '0', 'Встреча с другом', '2022-07-18', '1', '1');
INSERT INTO task (dt_create, status, title, author_id, project_id) VALUES (NOW(), '0', 'Купить корм для кота', '2', '4'); 
INSERT INTO task (dt_create, status, title, author_id, project_id) VALUES (NOW(), '0', 'Заказать пиццу', '1', '4');

SELECT * FROM project WHERE author_id = 1;
SELECT * FROM project WHERE author_id = 2;

SELECT * FROM task WHERE project_id = 1;
SELECT * FROM task WHERE project_id = 2;
SELECT * FROM task WHERE project_id = 3;
SELECT * FROM task WHERE project_id = 4;

UPDATE task SET status = '1' WHERE id = 1;

UPDATE task SET title = 'Сделать задание второго раздела' WHERE id = 3;