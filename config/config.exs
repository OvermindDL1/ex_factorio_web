# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ex_factorio_web,
  ecto_repos: [ExFactorioWeb.Repo]

# Configures the endpoint
config :ex_factorio_web, ExFactorioWeb.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1BlxymEeHybqLFfpUtT/9EDtwBz4VoBa9eaJqjKPN1Ovs2/K45vDpeDhUXFH0/6i",
  render_errors: [view: ExFactorioWeb.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExFactorioWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
