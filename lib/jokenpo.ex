defmodule Jokenpo do
  @valores_validos [:pedra, :papel, :tesoura]

  def avaliar_jogada(jogador1, jogador2)
      when jogador1 not in @valores_validos or
             jogador2 not in @valores_validos do
    {:error, :entrada_invalida}
  end

  def avaliar_jogada(jogador1, jorgador2) when jogador1 == jorgador2 do
    {:ok, :empate}
  end

  def avaliar_jogada(:papel, :pedra), do: {:ok, :vitoria_jogador1}

  def avaliar_jogada(:pedra, :tesoura), do: {:ok, :vitoria_jogador1}

  def avaliar_jogada(:tesoura, :papel), do: {:ok, :vitoria_jogador1}

  def avaliar_jogada(:pedra, :papel), do: {:ok, :vitoria_jogador2}

  def avaliar_jogada(:tesoura, :pedra), do: {:ok, :vitoria_jogador2}

  def avaliar_jogada(:papel, :tesoura), do: {:ok, :vitoria_jogador2}
end
