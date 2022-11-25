#!/bin/bash

echo -e "\n======= \033[1;32mmix do deps.get, compile\e[0m =======\n" &&\
  mix do deps.get, compile &&\
echo -e "\n======= \033[1;32mmix ecto.create\e[0m =======\n" &&\
  mix ecto.create -r AdInterview.Repo &&\
echo -e "\n======= \033[1;32mmix ecto.load\e[0m =======\n" &&\
  mix ecto.load -r AdInterview.Repo --quiet --skip-if-loaded &&\
echo -e "\n======= \033[1;32mmix ecto.migrate\e[0m =======\n" &&\
  mix ecto.migrate -r AdInterview.Repo
echo -e "\n======= \033[1;32mmix ad_interview.seeds\e[0m =======\n" &&\
  mix ad_interview.seeds