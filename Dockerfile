FROM python:2.7
MAINTAINER ptdorf <ptdorf@gmail.com>

ADD app/ /app
WORKDIR /app
RUN pip install -r requirements.txt
# EXPOSE 5000

ENTRYPOINT ["python", "app.py"]
CMD ["--port", "5000"]
