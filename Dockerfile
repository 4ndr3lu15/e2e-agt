FROM python:3.11

WORKDIR /ws

COPY requirements.txt /ws/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /ws/requirements.txt

CMD ["bash"]
