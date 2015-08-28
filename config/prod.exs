#use Mix.Config
#
## In this file, we keep production configuration that
## you likely want to automate and keep it away from
## your version control system.
#config :digiramp, Digiramp.Endpoint,
#  secret_key_base: System.get_env("SECRET_KEY_BASE")
#
## Configure your database
#config :digiramp, Digiramp.Repo,
#  adapter: Ecto.Adapters.Postgres,
#  url: System.get_env("DATABASE_URL"),
#  pool_size: 20
#  
  
use Mix.Config

config :digiramp, Digiramp.Endpoint,
  http: [port: System.get_env("PORT")],
  url: [scheme: "https", host: "digiramp.heroku.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/manifest.json"

config :logger, level: :info

config :digiramp, Digiramp.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :digiramp, Digiramp.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20