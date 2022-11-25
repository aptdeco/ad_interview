defmodule Mix.Tasks.AdInterview.Seeds do
  @moduledoc """
    Mix task to generate db seed data
  """
  use Mix.Task
  alias AdInterview.Release

  def run(_) do
    Release.insert_seeds()
  end
end
