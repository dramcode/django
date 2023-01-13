FROM python:3

RUN pip3 install virtualenv

RUN python3 -m virtualenv /home/virtualenv

RUN mkdir /home/pyjango

WORKDIR /home/pyjango

COPY ./ricky.txt /home/pyjango/ricky.txt

RUN /home/virtualenv/bin/pip3 install -r ricky.txt

EXPOSE 8000

ENTRYPOINT ["/home/virtualenv/bin/python", "manage.py"]