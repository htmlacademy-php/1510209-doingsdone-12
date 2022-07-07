INSERT INTO users (email, name, password) VALUES ('phil13@bk.ru', 'phil', 'secret'), ('philliusg@gmail.com', 'phillius', 'password13');

INSERT INTO project (title, author_id) VALUES ('Входящие', '1'), ('Учеба', '1'), ('Работа', '1'), ('Домашние дела', '2'), ('Авто', NULL);

INSERT INTO task (created_at, status, title, limitation, author_id, project_id) VALUES
 (NOW(), '0', 'Собеседование в IT компании', '2022-07-16', '1', '3'),
 (NOW(), '0', 'Выполнить тестовое задание', '2022-07-17', '1', '3'),
 (NOW(), '0', 'Сделать задание первого раздела', '2022-07-18', '1', '2'),
 (NOW(), '0', 'Встреча с другом', '2022-07-18', '1', '1'),
 (NOW(), '0', 'Купить корм для кота', NULL, '2', '4'),
 (NOW(), '0', 'Заказать пиццу', NULL, '1', '4');