defmodule Tecnodiversidade.ProgressTracker do
  @moduledoc """
  The user progress context.
  """

  import Ecto.Query
  alias Tecnodiversidade.ProgressTracker.UserProgress
  alias Tecnodiversidade.Repo
  alias Tecnodiversidade.LearningBlocks
  alias Tecnodiversidade.LearningBlocks.LearningBlock

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

  @spec get_next_block(integer()) :: LearningBlock.t()
  def get_next_block(user_id) when is_integer(user_id) do
    user_progress =
      Repo.one(
        from x in UserProgress,
          where: x.user_id == ^user_id,
          order_by: [desc: x.block_id],
          limit: 1
      )

    get_in(user_progress.block_id)
    |> LearningBlocks.get()
  end

  def get_next_block(user_id) when is_nil(user_id) do
    LearningBlocks.get(user_id)
  end
end
