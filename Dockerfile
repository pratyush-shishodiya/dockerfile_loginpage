FROM ubuntu
RUN apt-get update
RUN apt-get -y install pip python3

RUN pip install flask

COPY ./login--page /opt/login--page

CMD ["python3","/opt/login--page/loginpage.py"]

