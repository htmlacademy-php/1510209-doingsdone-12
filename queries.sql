SELECT * FROM project WHERE author_id = 1;
SELECT * FROM project WHERE author_id = 2;

SELECT * FROM task WHERE project_id = 1;
SELECT * FROM task WHERE project_id = 2;
SELECT * FROM task WHERE project_id = 3;
SELECT * FROM task WHERE project_id = 4;

UPDATE task SET status = '1' WHERE id = 1;

UPDATE task SET title = 'Сделать задание второго раздела' WHERE id = 3;