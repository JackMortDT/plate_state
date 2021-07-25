defmodule PlateState.Repo do
  use Ecto.Repo,
    otp_app: :plate_state,
    adapter: Ecto.Adapters.Postgres
end
