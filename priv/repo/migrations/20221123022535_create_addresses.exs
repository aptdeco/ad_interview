defmodule AdInterview.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses) do
      add :name, :string
      add :line_one, :string
      add :line_two, :string
      add :city, :string
      add :state, :string
      add :zip_code, :string
      add :contact_email, :string

      timestamps()
    end

  end
end
