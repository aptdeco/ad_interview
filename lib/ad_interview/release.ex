defmodule AdInterview.Release do
  # credo:disable-for-this-file
  @moduledoc """
  Helper functions for release.
  """
  require Logger

  import AdInterview.Factory

  @app :emporos

  def migrate do
    load_app()

    for repo <- repos() do
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :up, all: true))
    end
  end

  def rollback(repo, version) do
    load_app()
    {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :down, to: version))
  end

  def insert_seeds do
    Mix.Task.run("app.start")

    insert_list(5, :address)
    insert_list(5, :product)
    %AdInterview.Products.Product{title: "Fancy shoes"} |> insert

    :ok
  end

  defp repos do
    Application.fetch_env!(@app, :ecto_repos)
  end

  defp load_app do
    Application.load(@app)
  end
end
