defmodule Tecnodiversidade.LearningBlocks.LearningBlock do
  @enforce_keys [:id, :url]
  defstruct [:id, :url, :type]

  @type t :: %__MODULE__{
          id: integer(),
          url: String.t(),
          type: atom()
        }
end
