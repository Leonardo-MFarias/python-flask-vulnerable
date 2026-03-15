FROM selenium/standalone-chrome

WORKDIR /app

COPY . /app

USER root
RUN apt-get update && apt-get install -y python3-pip python3-setuptools \
	&& rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
