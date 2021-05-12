#!/usr/bin/env bash

export AIRFLOW__CORE__LOAD_EXAMPLES=False
airflow initdb
airflow create_user --username admin \
          --firstname test \
          --lastname test \
          --role Admin \
          --email hzhang@sayrhino.com \
          -p admin

airflow scheduler & exec airflow webserver
