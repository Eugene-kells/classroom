FROM python:3.9.1-buster

# Get the latest packages lists
RUN apt-get update
# Will be used in a container for testing, debug, or experiments
RUN apt-get install nano

WORKDIR classroom

# The rest should go here
