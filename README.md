# AdInterview

## Recommended
Installing latest version of elixir on your machine
https://elixir-lang.org/install.html

## Steps to start the project

Manually kicking off the project
1. cd .devcontainer/
2. docker compose up -d
3. docker ps (Copy the container_id of the app)
4. docker exec -it <paste container_id from step 3> bash
5. cd app
6. Run the shell script(scripts/init-local.sh) or each command in the shell script manually
7. Execute command iex -S mix phx.server

Using VS code devcontainer
1. Click Fn + F1 on Mac to open command pallet.
2. Enter “rebuild and reopen in container” into the input bar.
3. Press enter.
4. After the step 3 is done, open a new terminal window
5. Execute command iex -S mix phx.server

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Learn more
  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
