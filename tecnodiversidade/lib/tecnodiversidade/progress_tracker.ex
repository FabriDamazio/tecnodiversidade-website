defmodule Tecnodiversidade.ProgressTracker do
  @moduledoc """
  The user progress context.
  """

  import Ecto.Query
  alias Tecnodiversidade.ProgressTracker.UserProgress
  alias Tecnodiversidade.Repo

  @spec save_user_progress(integer(), integer()) :: tuple()
  def save_user_progress(block_id, user_id) do
    already_completed? =
      Repo.exists?(
        from x in UserProgress, where: x.user_id == ^user_id and x.block_id == ^block_id
      )

    if(already_completed?) do
      {:ok, :already_exists}
    else
      %UserProgress{block_id: block_id, user_id: user_id}
      |> Repo.insert()
    end
  end
end
