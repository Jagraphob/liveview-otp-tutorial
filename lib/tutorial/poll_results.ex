defmodule Tutorial.PollResults do
  use GenServer

  @initial_state %{"A" => 0, "B" => 0, "C" => 0, "D" => 0 }

  def init(_) do
    {:ok, @initial_state}
  end

  def handle_call(:get_state, _from, state) do
    {:reply, state, state}
  end
end
