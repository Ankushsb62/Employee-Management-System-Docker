FROM python:3.12.3-slim-bullseye

ENV PYTHONBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1


WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python","manage.py","runserver","0.0.0.0:7000" ]
