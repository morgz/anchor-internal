# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :anchor_internal, AnchorInternalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QOGZZgJsClzsUPN9POTSmYv3IztzMdGZjg/8ZjnuGahYqtKeJydhNsTBYng3hc87",
  render_errors: [view: AnchorInternalWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AnchorInternal.PubSub, adapter: Phoenix.PubSub.PG2]

  config :anchor_internal, AnchorInternalWeb.Endpoint,
  live_view: [
    signing_salt: "SECRET_SALT"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
