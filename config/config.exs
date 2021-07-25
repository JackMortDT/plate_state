# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :plate_state,
  ecto_repos: [PlateState.Repo]

# Configures the endpoint
config :plate_state, PlateStateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A6NmSKh/+jtGIKPe5uAXkQznysj4thABOmivZQZ2QgrOjJaBm+7gQA0ARtw9Au7D",
  render_errors: [view: PlateStateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PlateState.PubSub,
  live_view: [signing_salt: "0gvdHpc3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
