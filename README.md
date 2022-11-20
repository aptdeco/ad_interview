# AdInterview
## Steps to start the project

Manually kicking off the project
1. cd .devcontainer/
2. docker compose up -d
3. docker ps
4. docker exec -it <container_id> bash
5. cd app
6. Run the shell script(scripts/init-local.sh) or each command in the shell script manually

Using VS code devcontainer
1. Click Fn + F1 on Mac to open command pallet.
2. Enter “rebuild and reopen in container” into the input bar.
3. Press enter.

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
