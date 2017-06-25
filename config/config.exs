# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :office,
  ecto_repos: [Office.Repo]

# Configures the endpoint
config :office, Office.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vUl4ppgjKTfGTDNtPXQBOvP2OQndcSv9RcFJ5kEOCIn8W+xDHWWzA0T2NZfZC1t1",
  render_errors: [view: Office.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Office.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
