FROM python:3.9
COPY app/requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
RUN rm /tmp/requirements.txt
WORKDIR /app
COPY app/app.py /app/app.py
ENTRYPOINT [ "python" ]
CMD ["app.py" ]
