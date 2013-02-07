#/bin/bash

API_TOKEN=`cat ~/.gittoken`
CURRENT_BRANCH=$(git symbolic-ref --short HEAD)
PR_NUMBER=$1

if [ "$API_TOKEN" == "" ];
then
    echo "Please add a file .gittoken in home directory for github api access"
    exit 1;
fi

if [ "$CURRENT_BRANCH" == "" ];
then
    echo "You are not working in a branch"
    exit 1;
fi

if [ "$PR_NUMBER" == "" ];
then
    echo "Please specify PR number you want to merge"
    exit 1;
fi

API_OUTPUT=`curl -s -X GET -H "Authorization: token $API_TOKEN" https://api.github.com/repos/nzzdev/backend-sql/issues/$PR_NUMBER`
echo $API_OUTPUT

#git clean -f -x &&
#git fetch --all &&
#git reset --hard origin/$CURRENT_BRANCH &&
#git pull origin $CURRENT_BRANCH && 
#git merge --no-ff -m \"Merged \\#$1\" pr/$1 && 
#./bin/install.sh --env=dev && 
#phpunit -c app/phpunit.xml.dist && 
#git push origin $CURRENT_BRANCH
