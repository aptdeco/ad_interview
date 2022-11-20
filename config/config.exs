# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :ad_interview,
  ecto_repos: [AdInterview.Repo]

# Configures the endpoint
config :ad_interview, AdInterviewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "j5LifaSms43CB2a90nTUKX2Ng4WqcFlxxz2JEkT+VVFFN7U1HnXRk118YoH6zNaQ",
  render_errors: [view: AdInterviewWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: AdInterview.PubSub,
  live_view: [signing_salt: "Xs1kC+MH"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
