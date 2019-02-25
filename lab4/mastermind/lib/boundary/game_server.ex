defmodule Mastermind.Boundary.GameServer do
	  use GenServer
	  alias Mastermind.Core.Game
	
	  # Client
	
    def start_link(answer) when is_list(answer) do
      GenServer.start_link(__MODULE__, Game.new(answer))
    end

    def move(pid, answer) do
      GenServer.call(pid, {:move, answer})
    end

    def state(pid) do
      GenServer.call(pid, :state)
    end

    # Server (callbacks)

    def init(game) do
      {:ok, game}
    end

    def handle_call({:move, answer}, _from, game) do
      {:reply, :ok, Game.move(game, answer)}
    end

    def handle_call(:state, _from, game) do
      {:reply, Game.state(game), game }
    end
end 