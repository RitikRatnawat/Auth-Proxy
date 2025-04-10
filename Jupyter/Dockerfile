FROM python:3.13-slim

# Environment Variables
ENV LC_ALL=en_US.utf-8 \
    LANG=en_US.utf-8 \
    HOME=/app


# Installing Git for Version Control
RUN apt update
RUN apt install -y git

# Setting up the Working Directory
WORKDIR /app
RUN chmod -R 770 /app

COPY ./config /app/config
COPY ./scripts /app/scripts
COPY ./requirements.txt /app/requirements.txt

RUN chmod -R a+x /app/scripts/*

RUN mkdir -p -m 770 /app/.local
RUN mkdir -p -m 770 /app/.jupyter
RUN mkdir -p -m 770 /app/.cache
RUN mkdir -p -m 770 /shared/repos

# Installing Dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Adding local bin to the PATH variable
ENV PATH="/app/.local/bin:${PATH}"

ENTRYPOINT ["/app/scripts/run-jupyter.sh"]