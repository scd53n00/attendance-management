#!/bin/sh

# 静的ファイルを/home/attendance-management/mysite/static配下に集める
python manage.py collectstatic --no-input

# nginxと接続
uwsgi --socket :8001 --module mysite.wsgi --py-autoreload 1 --logto /tmp/mylog.log