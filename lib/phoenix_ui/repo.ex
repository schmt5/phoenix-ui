defmodule PhoenixUi.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_ui,
    adapter: Ecto.Adapters.SQLite3
end
