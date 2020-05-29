defmodule Toto.Repo do
  use Ecto.Repo,
    otp_app: :toto,
    adapter: Ecto.Adapters.Postgres
end
