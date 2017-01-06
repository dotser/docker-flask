FROM python:2.7

ADD app/ /app
WORKDIR /app
RUN pip install -r requirements.txt

# ENTRYPOINT ["python", "app.py"]
# CMD ["--port", "5000"]
CMD ["python", "app.py"]

# ENTRYPOINT ["/bin/echo"]
# CMD ["uptime"]
# # CMD ["WORLD"]
# # CMD ["ping localhost"]
