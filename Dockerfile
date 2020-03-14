FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
      inkscape \
      gir1.2-rsvg-2.0 \
      python3-cairo \
      python3-gi \
      python3-gi-cairo \
  && rm -rf /var/lib/apt/lists/*

COPY svgclip.py /svgclip.py
VOLUME ["/project"]
WORKDIR /project
ENTRYPOINT ["/svgclip.py"]
