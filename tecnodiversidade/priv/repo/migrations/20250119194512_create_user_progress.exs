defmodule Tecnodiversidade.Repo.Migrations.CreateUserProgress do
  use Ecto.Migration

  def change do
    create table(:user_progress) do
      add :block_id, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
