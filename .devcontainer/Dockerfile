FROM elixir:1.14.2-alpine

RUN apt-get install -y ruby \
  && npm i -g yarn \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*