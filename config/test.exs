use Mix.Config


# We don't run a server during test. If one is required,
# you can enable the server option below.
config :digiramp, Digiramp.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Set a higher stacktrace during test
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :digiramp, Digiramp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATABASE_POSTGRESQL_USERNAME") || "synthmax",
  password: System.get_env("DATABASE_POSTGRESQL_PASSWORD") || "",
  database: "digiramp_2_test",
  pool: Ecto.Adapters.SQL.Sandbox


config :arc,
  access_key_id:      System.get_env("AWS_ACCESS_KEY_ID") || '',
  secret_access_key:  System.get_env("AWS_SECRET_ACCESS_KEY") || '',
  bucket: "digiramp2"
  
