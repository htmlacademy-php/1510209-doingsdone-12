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
        'date' => '14.05.2022',
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

function getCountsProjects(array $tasks, string $projectName): int {
    $i = 0;
    $sum = 0;

    while($i < count($tasks)) {
        if ($tasks[$i]['category'] === $projectName) {
            $sum++;
        }
        $i++;
    }

    return $sum;
}

function importantDate($time): int {
    $cur_date = strtotime(date("Y-m-d H:i:s")); 
    $task_date = strtotime($time);
    $diff = floor(($task_date - $cur_date)/3600);
    
    return $diff;
}

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

