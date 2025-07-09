From python:3.9

WORKDIR /app

COPY requirements.txt /code/requirements.txt

RUN pip install -r /code/requirements.txt

COPY ./app /code/app

CMD ["fastapi", "app/main.py", "--port", "80"]
