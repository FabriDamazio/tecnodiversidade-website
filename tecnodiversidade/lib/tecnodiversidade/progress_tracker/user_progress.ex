defmodule Tecnodiversidade.ProgressTracker.UserProgress do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_progress" do
    field :block_id, :integer
    belongs_to :user, Tecnodiversidade.Accounts.User
    timestamps(type: :utc_datetime)
  end

  @type t :: %__MODULE__{
          id: integer() | nil,
          block_id: integer() | nil,
          user_id: integer() | nil,
          user: Tecnodiversidade.Accounts.User | %Ecto.Association.NotLoaded{},
          inserted_at: DateTime.t() | nil
        }

  @doc false
  @spec changeset(t(), map()) :: Ecto.Changeset.t()
  def changeset(user_progress, attrs) do
    user_progress
    |> cast(attrs, [:user_id, :block_id])
    |> validate_required([:user_id, :block_id])
  end
end
