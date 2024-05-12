#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <path_to_create_project> <project_name>"
    exit 1
fi

BASE_PATH=$1
PROJECT_NAME=$2

mkdir -p "$BASE_PATH/$PROJECT_NAME"/{docs,{src,tests}/"$PROJECT_NAME",venv}
touch "$BASE_PATH/$PROJECT_NAME"/{docs/{conf.py,index.rst},src/"$PROJECT_NAME"/__init__.py,src/"$PROJECT_NAME"/{module1.py,module2.py},tests/{test_module1.py,test_module2.py},requirements.txt,README.md,.gitignore,setup.py}

echo "Project structure for $PROJECT_NAME created successfully in $BASE_PATH!"
