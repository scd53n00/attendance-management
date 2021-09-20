FROM python:latest
RUN apt-get update && \
    pip install -U pip
WORKDIR /home/attendance-management
COPY requirements.txt /home/attendance-management/
COPY django-polls/dist/django-polls-0.1.tar.gz /home/attendance-management/django-polls/dist/
RUN pip install -r requirements.txt
WORKDIR /home/attendance-management/mysite