#!/usr/bin/env php
<?php

$apiToken = file_get_contents(getenv('HOME') .'/.gittoken');
$currentBranch = system('git symbolic-ref --short HEAD');
$prNumber = $argv[0];

var_dump($apiToken);
var_dump($currentBranch);
var_dump($prNumber);

if (empty($apiToken))
{
    exit("Please add a file .gittoken in home directory for github api access");
}

if (empty($currentBranch))
{
    exit("You are not working in a branch");
}

if (empty($prNumber))
{
    exit("Please specify PR number you want to merge");
}

//curl -H "Authorization: token $API_TOKEN" https://api.github.com/repos/nzzdev/backend-sql/issues/$PR_NUMBER

//git clean -f -x &&
//git fetch --all &&
//git reset --hard origin/$CURRENT_BRANCH &&
//git pull origin $CURRENT_BRANCH && 
//git merge --no-ff -m \"Merged \\#$1\" pr/$1 && 
//./bin/install.sh --env=dev && 
//phpunit -c app/phpunit.xml.dist && 
//git push origin $CURRENT_BRANCH
