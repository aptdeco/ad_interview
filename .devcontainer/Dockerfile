FROM elixir:latest

RUN apt-get update \
  && apt-get install -y ruby npm postgresql-client\
  && npm i -g yarn \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && mix local.hex --force \
  && mix local.rebar --force \
  && rm -rf /var/lib/apt/lists/*