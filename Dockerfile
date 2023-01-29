FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /application
COPY . /application/
RUN apt-get update
RUN apt-get -y install vim
RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 8000
CMD python manage.py runserver 0:8000