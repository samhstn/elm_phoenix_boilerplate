# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :boilerplate,
  ecto_repos: [Boilerplate.Repo]

# Configures the endpoint
config :boilerplate, Boilerplate.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TMKbl1XYifNV90CVT9kao8Kxa3o2opSqg/wB5oItr13HPSG98IFHhpVLHh/bnVkd",
  render_errors: [view: Boilerplate.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Boilerplate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
