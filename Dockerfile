FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1

WORKDIR /rest

COPY requirements.txt ${pwd}

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . /rest/
