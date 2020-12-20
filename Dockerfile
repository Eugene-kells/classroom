FROM python:3.9.1-buster

# Get the latest packages lists
RUN apt-get update
# Will be used in a container for testing, debug, or experiments
RUN apt-get install nano
RUN pip install --upgrade pip
RUN pip install virtualenv

WORKDIR classroom

COPY Makefile .
RUN make create-venv

COPY requirements.txt .
RUN make install-deps

COPY src/back .

CMD ["make", "run-dev"]
