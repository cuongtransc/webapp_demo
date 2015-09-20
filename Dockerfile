FROM alpine:3.2
MAINTAINER Tran Huu Cuong "tranhuucuong91@gmail.com"

RUN apk --update add py-pip

COPY code/requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY code /code
WORKDIR /code

EXPOSE 5000
CMD ["python", "run.py"]

