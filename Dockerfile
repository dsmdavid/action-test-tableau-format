FROM python:3.8.2-buster

RUN apt-get update -yqq \
  && apt-get install -yqq \
    vim 

# upgrade pip
RUN pip install --upgrade pip

# Install dependencies:
RUN pip install -r requirements.txt


RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

