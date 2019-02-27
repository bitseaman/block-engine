FROM python:3.7.1-stretch

COPY requirements.txt ./
COPY ./src/ /src/
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "-u", "/src/update_database.py" ]
