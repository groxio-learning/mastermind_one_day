defmodule Mastermind do
  alias Mastermind.Boundary.GameServer
  
  def new(answer \\ nil) do
    {:ok, game} = GameServer.start_link(answer)
  end
  
  def state(game) do
    GameServer.state(game)
  end
  
  def move(game, answer) do
    GameServer.move(game, answer)
  end
end
