FROM docker.io/python:3.7-alpine

EXPOSE 8000

RUN addgroup -S jaxon && \ 
    adduser -S jaxon -G jaxon

USER jaxon

WORKDIR app

COPY . .

RUN pip install --no-cache-dir --requirement requirements.txt

ENTRYPOINT ["python", "hello.py"]
