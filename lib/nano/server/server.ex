defmodule Nano.Server do
    use GenServer

    def start_link(opts \\ []) do
        GenServer.start_link(__MODULE__, :ok, opts)
    end

    def init(:ok) do
        {:ok, %{directions: ["N","NE","E","SE","S","SW","W","NW"]}}
    end

    def move(server, direction) do
        GenServer.call(server, {:move, direction})
    end


    def handle_call({:move, direction}, _from, directions) do
        {:reply, Enum.find(directions[:directions],fn(x) -> x == direction end), directions}
    end

end