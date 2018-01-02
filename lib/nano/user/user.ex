defmodule Nano.User do
    defstruct name:     :none 

    def new(name) do
        %__MODULE__{name: name}
    end
end