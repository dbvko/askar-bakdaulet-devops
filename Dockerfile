FROM python:3.12-slim

WORKDIR /app

COPY app/app.py .

RUN chmod 644 app.py

ENV STUDENT_NAME="Bakdaulet"
ENV STUDENT_SURNAME="Askar"
ENV STUDENT_GROUP="IT2-2306"
ENV STUDENT_ID="38030"

EXPOSE 8080

CMD ["python", "app.py"]

