defmodule Nano.Entity do
    defstruct health: :none, 
        name: :none

    def new(health, name) do
        %__MODULE__{health: health, name: name}
    end
    
    def set_health(entity, health) do
        %{entity | health: health}
    end

end