FROM python:3.10

RUN mkdir -p /opt/app/

WORKDIR /opt/app/

COPY requirements.txt /opt/app/
RUN pip install -r requirements.txt

COPY ./* /opt/app/



EXPOSE 5000

CMD ["python", "manage.py runserver"]
