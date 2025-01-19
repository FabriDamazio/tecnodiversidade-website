defmodule Tecnodiversidade.Repo.Migrations.ProgressBelongsToUser do
  use Ecto.Migration

  def change do
    alter table(:user_progress) do
      add :user_id, references(:users)
    end
  end
end
