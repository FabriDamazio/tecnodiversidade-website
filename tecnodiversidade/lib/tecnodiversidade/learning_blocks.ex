defmodule Tecnodiversidade.LearningBlocks do
  alias Tecnodiversidade.LearningBlocks.LearningBlock

  @blocks [
    %LearningBlock{id: 11, url: "/modulos/1/apresentacao", type: :start},
    %LearningBlock{id: 12, url: "/modulos/1/pergunta"},
    %LearningBlock{id: 13, url: "/modulos/1/conceito-tecnologia"},
    %LearningBlock{id: 14, url: "/modulos/1/conceito-tecnologia-feenberg"},
    %LearningBlock{id: 15, url: "/modulos/1/quiz"},
    %LearningBlock{id: 16, url: "/modulos/1/encerramento"},
    %LearningBlock{id: 21, url: "/modulos/2/apresentacao"},
    %LearningBlock{id: 22, url: "/modulos/2/conceito-tecnodiversidade"},
    %LearningBlock{id: 23, url: "/modulos/2/discussoes-tecnodiversidade"},
    %LearningBlock{id: 24, url: "/modulos/2/mapeamento-alternativas-tecnodiversas"},
    %LearningBlock{id: 25, url: "/modulos/2/pergunta"},
    %LearningBlock{id: 26, url: "/modulos/2/quiz"},
    %LearningBlock{id: 27, url: "/modulos/2/encerramento"},
    %LearningBlock{id: 31, url: "/modulos/3/apresentacao"},
    %LearningBlock{id: 32, url: "/modulos/3/questao-tecnologia-ept"},
    %LearningBlock{id: 33, url: "/modulos/3/tecnodiversidade-ept"},
    %LearningBlock{id: 34, url: "/modulos/3/quiz"},
    %LearningBlock{id: 35, url: "/modulos/3/encerramento", type: :end}
  ]

  @spec get(integer() | nil) :: LearningBlock.t()
  def get(block_id) when is_integer(block_id) do
    %LearningBlock{} = block = Enum.find(@blocks, fn x -> x.id == block_id end)
    block
  end

  def get(block_id) when is_nil(block_id), do: List.first(@blocks)
end
