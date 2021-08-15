FROM python:latest
RUN apt-get update && \
    pip install -U pip
WORKDIR /home/attendance-management
COPY requirements.txt /home/attendance-management/
RUN pip install -r requirements.txt
WORKDIR /home/attendance-management/mysite
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]