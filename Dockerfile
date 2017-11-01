FROM python:3-alpine

COPY . /flask

WORKDIR /flask

EXPOSE 5000

RUN pip install -r requirements.txt

CMD [ "python", "./manage.py", "runserver", "--host", "0.0.0.0", "--port", "5000" ]
