# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :apiRestBasic,
  ecto_repos: [ApiRestBasic.Repo]

# Configures the endpoint
config :apiRestBasic, ApiRestBasicWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aHRJC3N5pgvbSiGLxrGxcLM0ezHIK19uLPG679j8PZkjKxV8DFLhSa1rE6rsGqJ9",
  render_errors: [view: ApiRestBasicWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ApiRestBasic.PubSub,
  live_view: [signing_salt: "kngXAssf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
