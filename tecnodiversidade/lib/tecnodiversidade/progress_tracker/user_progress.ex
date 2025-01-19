defmodule Tecnodiversidade.ProgressTracker.UserProgress do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_progress" do
    field :block_id, :integer
    belongs_to :user, Tecnodiversidade.Accounts.User
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user_progress, attrs) do
    user_progress
    |> cast(attrs, [:user_id, :block_id])
    |> validate_required([:user_id, :block_id])
  end
end
