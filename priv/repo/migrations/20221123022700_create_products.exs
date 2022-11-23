defmodule AdInterview.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :title, :string
      add :description, :string
      add :image_url, :string
      add :height, :decimal
      add :width, :decimal
      add :depth, :decimal
      add :price, :decimal
      add :address_id, references(:addresses, on_delete: :nothing)

      timestamps()
    end

    create index(:products, [:address_id])
  end
end
