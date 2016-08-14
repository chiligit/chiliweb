# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chiliweb,
  ecto_repos: [Chiliweb.Repo]

# Configures the endpoint
config :chiliweb, Chiliweb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "C1zQBgwP8TgHmj87tWhfeReM80tszmuab3MmHCoSvBWA/v7YZ/96ARwVqXJRm4x9",
  render_errors: [view: Chiliweb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chiliweb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
