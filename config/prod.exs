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
  
config :arc,
  access_key_id: System.get_env("AWS_ACCESS_KEY_ID"),
  secret_access_key: System.get_env("AWS_SECRET_ACCESS_KEY"),
  bucket: "digiramp2"