FROM python:slim
RUN useradd pogenerator
WORKDIR /home/pogenerator

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn

COPY app app
COPY POGenerator.py boot.sh ./
RUN chmod +x boot.sh

ENV FLASK_APP POGenerator.py

RUN chown -R pogenerator:pogenerator ./
USER pogenerator

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]