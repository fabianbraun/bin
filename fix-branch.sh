#/bin/bash

git diff origin/refit --name-only --diff-filter=ACMUX | xargs -i php-cs-fixer fix '{}' --config=sf21
