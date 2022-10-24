FROM python:slim
RUN useradd pogenerator
WORKDIR /home/pogenerator

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn
RUN apt-get update && apt-get install -y dos2unix

COPY app app
COPY POGenerator.py boot.sh ./
RUN chmod +x boot.sh
RUN dos2unix ./boot.sh && apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*

ENV FLASK_APP POGenerator.py

RUN chown -R pogenerator:pogenerator ./
USER pogenerator

EXPOSE 5000

ENTRYPOINT ["./boot.sh"]