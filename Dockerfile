FROM beevelop/nodejs-python:latest


COPY requirements.txt /
RUN pip3 install -r /requirements.txt

RUN npm install playwright
RUN npx playwright install-deps

COPY . /app
WORKDIR /app

ENTRYPOINT [ "./entrypoint.sh" ]