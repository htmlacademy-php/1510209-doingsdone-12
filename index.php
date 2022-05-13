<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require('helpers.php');

$showCompleteTasks = rand(0, 1);

$projects = ['Входящие', 'Учеба', 'Работа', 'Домашние дела', 'Авто'];

$tasks = [
    [
        'task' => 'Собеседование в IT компании',
        'date' => '15.05.2022',
        'category' => 'Работа',
        'completed' => false
    ],
    [
        'task' => 'Выполнить тестовое задание',
        'date' => '13.05.2022',
        'category' => 'Работа',
        'completed' => false
    ],
    [
        'task' => 'Сделать задание первого раздела',
        'date' => '12.05.2022',
        'category' => 'Учеба',
        'completed' => true
    ],
    [
        'task' => 'Встреча с другом',
        'date' => '14.05.2022',
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

$page_content = include_template(
    'main.php', 
    [
        'showCompleteTasks' => $showCompleteTasks, 
        'projects' => $projects, 
        'tasks' => $tasks
    ]
);

$layout_content = include_template(
    'layout.php', 
    [
        'content' => $page_content, 
        'title' => 'Дела в порядке'
    ]
);

print($layout_content);

