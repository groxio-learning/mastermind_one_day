defmodule Mastermind do
  alias Mastermind.Boundary.GameServer
  
  def new(answer \\ nil) do
    {:ok, pid} = GameServer.start_link(answer)
  end
  
  def state(pid) do
    GameServer.state(pid)
  end
  
  def move(pid, answer) do
    GameServer.move(pid, answer)
  end
end
