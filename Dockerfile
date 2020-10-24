FROM python:slim
WORKDIR /usr/src/app

# Install os libraries and dependencies
# RUN apt-get ...

COPY app/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app .

# dev environment
ENTRYPOINT [ "python" ]
CMD ["main.py"]