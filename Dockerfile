FROM python:latest
COPY /src/app .
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
RUN pip install flask && pip install --editable . && flask init-db
EXPOSE 5000
CMD ["flask","run","--host=0.0.0.0"]
