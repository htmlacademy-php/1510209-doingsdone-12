<?php
require('helpers.php');

$show_complete_tasks = rand(0, 1);

$projects = ['Входящие', 'Учеба', 'Работа', 'Домашние дела', 'Авто'];

$tasks = [
    [
        'task' => 'Собеседование в IT компании',
        'date' => '01.12.2019',
        'category' => 'Работа',
        'completed' => false
    ],
    [
        'task' => 'Выполнить тестовое задание',
        'date' => '25.12.2019',
        'category' => 'Работа',
        'completed' => false
    ],
    [
        'task' => 'Сделать задание первого раздела',
        'date' => '21.12.2019',
        'category' => 'Учеба',
        'completed' => true
    ],
    [
        'task' => 'Встреча с другом',
        'date' => '22.12.2019',
        'category' => 'Входящие',
        'completed' => false
    ],
    [
        'task' => 'Купить корм для кота',
        'date' => null,
        'category' => 'Домашние дела',
        'completed' => false
    ],
    [
        'task' => 'Заказать пиццу',
        'date' => null,
        'category' => 'Домашние дела',
        'completed' => false
    ]
];

function get_counts_projects(array $tasks, string $project_name): int {
    $i = 0;
    $sum = 0;

    while($i < count($tasks)) {
        if ($tasks[$i]['category'] === $project_name) {
            $sum++;
        }
        $i++;
    }

    return $sum;
}

$page_content = include_template('main.php', ['show_complete_tasks' => $show_complete_tasks, 'projects' => $projects, 'tasks' => $tasks]);
$layout_content = include_template('layout.php', ['content' => $page_content, 'title' => 'Дела в порядке']);

print($layout_content);

?>
