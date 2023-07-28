FROM python:3.10.6

WORKDIR /app

COPY ./requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 2333

CMD ["python","-m", "flask_apps.app"]