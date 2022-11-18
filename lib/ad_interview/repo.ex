defmodule AdInterview.Repo do
  use Ecto.Repo,
    otp_app: :ad_interview,
    adapter: Ecto.Adapters.Postgres
end
