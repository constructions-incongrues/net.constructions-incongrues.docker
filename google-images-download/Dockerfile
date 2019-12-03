FROM python:2.7.17-alpine3.10

VOLUME [ "/data" ]
WORKDIR /data

RUN pip install google_images_download==2.8.0

ENTRYPOINT [ "googleimagesdownload" ]
