defmodule Tecnodiversidade.LearningBlocks.LearningBlock do
  @enforce_keys [:id, :url]
  defstruct [:id, :url]

  @type t :: %__MODULE__{
          id: integer(),
          url: String.t()
        }
end
