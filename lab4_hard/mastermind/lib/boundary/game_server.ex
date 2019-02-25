defmodule Mastermind.Boundary.GameServer do
  use GenServer
  alias Mastermind.Core.Game
  
  # Client
      
    def start_link(answer) when is_list(answer) do
    end
  
    def move(_pid, _answer) do
    end
  
    def state(_pid) do
    end
  
    # Server (callbacks)
  
    def init(_game) do
    end
  
    def handle_call({:move, _answer}, _from, _game) do
    end
  
    def handle_call(:state, _from, _game) do
    end
end