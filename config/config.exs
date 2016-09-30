# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :phoenix, :format_encoders,  
  "json-api": Poison

  config :mime, :types, %{
    "application/vnd.api+json" => ["json-api"]
  }

# General application configuration
config :raidbuilder,
  ecto_repos: [Raidbuilder.Repo]

# Configures the endpoint
config :raidbuilder, Raidbuilder.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iPwzYCryNrYBkj4wFozYZjeEETHqsrTLfYb1ZVOHr/HlxcrHF4sstDOqQZEHIrAF",
  render_errors: [view: Raidbuilder.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Raidbuilder.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
