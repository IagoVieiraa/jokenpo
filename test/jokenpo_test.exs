defmodule JokenpoTest do
  use ExUnit.Case
  doctest Jokenpo

  test "retornar empate quando os dois valores forem iguais" do
    assert Jokenpo.avaliar_jogada(:pedra, :pedra) == {:ok, :empate}
  end

  test "vitoria do jogador 1" do
    assert Jokenpo.avaliar_jogada(:papel, :pedra) == {:ok, :vitoria_jogador1}
    assert Jokenpo.avaliar_jogada(:pedra, :tesoura) == {:ok, :vitoria_jogador1}
    assert Jokenpo.avaliar_jogada(:tesoura, :papel) == {:ok, :vitoria_jogador1}
  end

  test "vitoria do jogador 2" do
    assert Jokenpo.avaliar_jogada(:pedra, :papel) == {:ok, :vitoria_jogador2}
    assert Jokenpo.avaliar_jogada(:tesoura, :pedra) == {:ok, :vitoria_jogador2}
    assert Jokenpo.avaliar_jogada(:papel, :tesoura) == {:ok, :vitoria_jogador2}
  end

  test "retornar entrada inválida quando o valor recebido não é esperado" do
    assert Jokenpo.avaliar_jogada("123", "123") ==
             {:error, :entrada_invalida}
  end
end
