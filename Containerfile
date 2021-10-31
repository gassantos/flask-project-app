FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_project_app create-db
RUN flask_project_app populate-db
RUN flask_project_app add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_project_app", "run"]
