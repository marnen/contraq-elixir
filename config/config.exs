# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :contraq,
  ecto_repos: [Contraq.Repo]

# Configures the endpoint
config :contraq, Contraq.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I+ye+MfP0HwO7hopM2APjrFmGaiyReMqZtYic+Gwle7uB72sAXkswfq4q6dJ7FjA",
  render_errors: [view: Contraq.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Contraq.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
