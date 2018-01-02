defmodule Nano.PlayerEntity do
    defstruct entity: :none,
            user: :none
            
    def new(entity, user) do
        %__MODULE__{entity: entity, user: user}
    end    
end