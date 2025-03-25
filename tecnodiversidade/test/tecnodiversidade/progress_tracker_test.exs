defmodule Tecnodiversidade.ProgressTrackerTest do
  use Tecnodiversidade.DataCase

  import Tecnodiversidade.AccountsFixtures
  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.ProgressTracker.UserProgress

  describe "save_user_progress/2" do
    test "salva o UserProgress com sucesso" do
      user = user_fixture()

      assert {:ok, %UserProgress{} = _} = ProgressTracker.save_user_progress(1, user.id)
    end

    test "retorna erro ao tentar salvar um progresso já existente" do
      user = user_fixture()

      assert {:ok, %UserProgress{} = _} = ProgressTracker.save_user_progress(1, user.id)
      assert {:ok, :already_completed} = ProgressTracker.save_user_progress(1, user.id)
    end

    test "retorna erro quando o user é nil" do
      assert {:error, :user_nil} = ProgressTracker.save_user_progress(1, nil)
    end
  end
end
