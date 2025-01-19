defmodule Tecnodiversidade.ProgressTracker do
  @moduledoc """
  The user progress context.
  """

  import Ecto.Query
  alias Tecnodiversidade.ProgressTracker.UserProgress
  alias Tecnodiversidade.Repo

  def save_user_progress(attrs) do
    %UserProgress{}
    |> UserProgress.changeset(attrs)
    |> Repo.insert()
  end
end
