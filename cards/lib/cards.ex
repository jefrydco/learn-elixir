defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  # def create_deck do
  #   values = ["Ace", "Two", "Three", "Four", "Five"]
  #   suits= ["Spades", "Clubs", "Hearts", "Diamond"]
    
  #   cards = for value <- values do
  #     for suit <- suits do
  #       "#{value} of #{suit}"
  #     end
  #   end

  #   List.flatten(cards)
  # end
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits= ["Spades", "Clubs", "Hearts", "Diamond"]
    
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, hand) do
    Enum.member?(deck, hand)
  end
end
