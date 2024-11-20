FROM python:3.11

WORKDIR /ws

COPY . /ws

RUN pip install --no-cache-dir --upgrade -r /ws/requirements.txt

CMD ["bash"]
