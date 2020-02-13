FROM python:2
LABEL mantainer "Ilya Glotov <ilya@ilyaglotov.com>"

RUN pip install https://github.com/williballenthin/vivisect/zipball/master \
  && pip install https://github.com/fireeye/flare-floss/archive/v1.5.0.zip \
  && useradd floss -m

USER floss

ENTRYPOINT ["floss"]
CMD ["-h"]
