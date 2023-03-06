#!/bin/bash

if [-d ".env"]
then
    echo "Env Exist"
else
    python3 -m venv .env
fi

echo $PWD
source .env/bin/activate

pip3 install -r requirements.txt


if [-d ".env"]
then
    echo "Logs folder Exist"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi
sudo chmod -R 777 logs

echo "Env Setup Complete"